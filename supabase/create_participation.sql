create or replace function create_participation(player_id bigint, game_id bigint) 
returns void
language plpgsql
as $$
begin
  insert into participations(player_id, game_id)
  values (create_participation.player_id, create_participation.game_id);

  insert into private_participations(player_id, game_id)
  values (create_participation.player_id, create_participation.game_id);
end;
$$;