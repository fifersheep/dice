create or replace function place_bet(game_id bigint, player_id bigint, participation_cups_id uuid, bet_quantity smallint, bet_value smallint) 
returns void
language plpgsql
as $$
declare 
  _turn_participation_cups_id uuid;
  _current_player_id bigint;
  _player_id_matches boolean := false;
  _participation_cups_id_matches boolean := false;
begin
  set search_path to public, private;

  -- does the player_id match current_player_id in public.games?
  select current_player_id
  into _current_player_id
  from games
  where games.id = place_bet.game_id;

  _player_id_matches := _current_player_id = place_bet.player_id;

  -- does the participation_cups_id match the id declared in private.game_turn?
  select turn_participation_cups_id
  into _turn_participation_cups_id
  from private.game_turn
  where private.game_turn.game_id = place_bet.game_id;

  _participation_cups_id_matches := _turn_participation_cups_id = place_bet.participation_cups_id;

  -- is the bet higher than all previous bets for this game id?
  -- TODO: do this later, once we can successfully place bet for first participation

  -- write bet to public participations
  if (_player_id_matches and _participation_cups_id_matches) then
    update participations
    set bet_quantity = place_bet.bet_quantity,
    bet_value = place_bet.bet_value
    where participations.game_id = place_bet.game_id
    and participations.player_id = place_bet.player_id;

    -- cycle next player
    perform private."cycle_next_turn"(place_bet.game_id);
  end if;
end;
$$;
