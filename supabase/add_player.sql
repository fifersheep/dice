create or replace function add_player(name text) 
returns bigint
language plpgsql
as $$
declare 
  new_row bigint;
begin
  insert into players(name)
  values (add_player.name)
  returning id into new_row;

  return new_row;
end;
$$;
