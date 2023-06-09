create or replace function private.cycle_next_turn(game_id bigint) 
returns void
language plpgsql
as $$
declare
  _player_order bigint[];
  _current_player_id bigint;
  _current_player_index int;
  _next_player_id bigint;
  _next_participation_cup_id uuid;
begin
  select player_order, current_player_id
  into _player_order, _current_player_id
  from games
  where games.id = cycle_next_turn.game_id;
  
  _current_player_index := (select array_position(_player_order, _current_player_id));
  _next_player_id = _player_order[_current_player_index + 1];

  if (_next_player_id is null) then
    _next_player_id := _player_order[1];
  end if;

  select id
  into _next_participation_cup_id
  from private.participation_cups
  where participation_cups.game_id = cycle_next_turn.game_id
  and participation_cups.player_id = _next_player_id;

  update games
  set current_player_id = _next_player_id
  where id = cycle_next_turn.game_id;

  update private.game_turn
  set turn_participation_cups_id = _next_participation_cup_id
  where game_turn.game_id = cycle_next_turn.game_id;
end;
$$;
