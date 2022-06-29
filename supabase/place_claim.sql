create or replace function place_claim(game_id bigint, player_id bigint, participation_cup_id uuid) 
returns boolean
language plpgsql
as $$
begin
  return false;
end;
$$;
