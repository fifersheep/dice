create or replace function is_game_joinable(name text) 
returns boolean
language plpgsql
as $$
declare
  _result boolean := false;
  _status game_statuses;
begin
  select into _status status from games where games.name=is_game_joinable.name;

  if _status = 'Created' then
    _result := true;
  end if;

  return _result;
end;
$$;