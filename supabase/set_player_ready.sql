create or replace function set_player_ready(player_id bigint, game_id bigint, player_ready boolean) 
returns void
language plpgsql
as $$
declare
  _enough_participants boolean := false;
  _all_players_ready boolean := false;
  _player_order bigint[];
  _participation_dice_id uuid;
begin
  update participations
  set player_ready = set_player_ready.player_ready
  where participations.player_id = set_player_ready.player_id and participations.game_id = set_player_ready.game_id;

  select count(*) > 1
  into _enough_participants
  from participations
  where participations.player_ready = true
  and participations.game_id = set_player_ready.game_id;

  _all_players_ready := not exists (select from participations where participations.player_ready = false);
  
  if (_enough_participants and _all_players_ready) then
    -- randomly decide on a player order for this game
    select array(select participations.player_id
    into _player_order
    from participations
    where participations.game_id = set_player_ready.game_id
    order by random());

    -- change the status of the game to Rolling, set the player order and current player
    update games
    set status = 'Rolling',
    player_order = _player_order,
    current_player_id = _player_order[1]
    where id = set_player_ready.game_id;

    -- for each participations uuid, roll 5 dice
    for _participation_dice_id in
      select participation_dice_id
      from private.game_participation_uuids
      where game_participation_uuids.game_id = set_player_ready.game_id
    loop
      update private.participation_dice
      set dice = (array[ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6)])
      where private.participation_dice.id = _participation_dice_id;
    end loop;

    -- set the dice count for each participant
    update participations
    set dice_quantity = 5
    where participations.game_id = set_player_ready.game_id;

    -- change the status of the game to InPlay
    update games
    set status = 'InPlay'
    where id = set_player_ready.game_id;
  end if;
end;
$$;
