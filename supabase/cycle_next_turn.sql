create or replace function cycle_next_turn(game_id bigint) 
returns void
language plpgsql
as $$
declare
  _participation_order bigint[];
  _current_participation_id bigint;
  _current_participation_index int;
  _next_participation_id bigint;
begin
  select participation_order, current_participation_id
  into _participation_order, _current_participation_id
  from games
  where games.id = cycle_next_turn.game_id;
  
  _current_participation_index := (select array_position(_participation_order, _current_participation_id));
  _next_participation_id = _participation_order[_current_participation_index + 1];

  if (_next_participation_id is null) then
    _next_participation_id := _participation_order[1];
  end if;

  update games
  set current_participation_id = _next_participation_id
  where id = cycle_next_turn.game_id;
end;
$$;
