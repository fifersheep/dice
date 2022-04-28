create or replace function set_player_ready(player_id bigint, game_id bigint, player_ready boolean) 
returns void
language plpgsql
as $$
declare
  _enough_participants boolean := false;
  _all_players_ready boolean := false;
  _player_order bigint[];
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
    select array(select participations.player_id
    into _player_order
    from participations
    where participations.game_id = set_player_ready.game_id
    order by random());

    update games
    set status = 'Started',
    player_order = _player_order,
    current_player_id = _player_order[1]
    where id = set_player_ready.game_id;

    update participations
    set dice = (ARRAY[ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6),ceil(random() * 6)])
    where participations.game_id = set_player_ready.game_id;
  end if;
end;
$$;

