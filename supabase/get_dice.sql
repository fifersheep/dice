create or replace function get_dice(id uuid) 
returns smallint[]
language sql
as $$
  select dice
  from private.participation_cups
  where participation_cups.id = get_dice.id;
$$;