create or replace function bootstrap() 
returns void
language plpgsql
as $$
begin
    perform "add_player"('Player 1');
    perform "add_player"('Player 2');
    perform "add_game"('Game 1');
    perform "create_participation"(1,1);
    perform "create_participation"(2,1);
    perform "set_player_ready"(1,1,true);
end;
$$;
