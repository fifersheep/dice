create or replace function add_game(name text) 
returns bigint
language plpgsql
as $$
declare 
  new_row bigint;
begin
  insert into games(name, status)
  values (add_game.name, 'Created')
  returning id into new_row;

  return new_row;
end;
$$;
