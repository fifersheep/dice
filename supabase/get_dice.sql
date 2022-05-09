create or replace function get_dice(id uuid) 
returns smallint[]
language sql
as $$
  select dice
  from private.participation_dice
  where participation_dice.id = get_dice.id;
$$;