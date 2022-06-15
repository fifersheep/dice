create or replace function create_participation(player_id bigint, game_id bigint) 
returns uuid
language plpgsql
as $$
declare 
  _participation_cup_id uuid;
begin
  -- create a public participation
  insert into participations(player_id, game_id)
  values (create_participation.player_id, create_participation.game_id);

  -- create a private participation cup
  insert into private.participation_cups(player_id, game_id)
  values (create_participation.player_id, create_participation.game_id)
  returning id into _participation_cup_id;

  return _participation_cup_id;
end;
$$;