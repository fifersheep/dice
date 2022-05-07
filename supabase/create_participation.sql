create or replace function create_participation(player_id bigint, game_id bigint) 
returns uuid
language plpgsql
as $$
declare 
  _private_id uuid;
begin
  insert into participations(player_id, game_id)
  values (create_participation.player_id, create_participation.game_id);

  insert into private.participation_dice default values
  returning id into _private_id;

  insert into private.game_participation_uuids(game_id, participation_dice_id)
  values (create_participation.game_id, _private_id);

  return _private_id;
end;
$$;