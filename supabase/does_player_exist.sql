create or replace function does_player_exist(name text) 
returns boolean
language plpgsql
as $$
begin
  return exists(select 1 from players where players.name=does_player_exist.name);
end;
$$;
