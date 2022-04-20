create or replace function set_player_ready(player_id bigint, game_id bigint, player_ready boolean) 
returns void
language plpgsql
as $$
declare 
  _count integer;
begin
  update participations
  set player_ready = set_player_ready.player_ready
  where participations.player_id = set_player_ready.player_id and participations.game_id = set_player_ready.game_id;

  if not exists (select from participations where participations.player_ready = false) then
    update games
    set status = 'Started'
    where id = set_player_ready.game_id;
  end if;
end;
$$;
