create or replace function place_bet(game_id bigint, player_id bigint, participation_cup_id uuid, bet_quantity smallint, bet_value smallint) 
returns text
language plpgsql
as $$
declare 
  _turn_participation_cups_id uuid;
  _current_player_id bigint;
  _current_player_index int;
  _previous_player_index int;
  _game_player_order bigint[];
  _game_dice_quantity smallint;
  _is_bet_combo_valid boolean := true;
  _current_bet_quantity smallint;
  _current_bet_value smallint;
begin
  set search_path to public, private;

  -- does the player_id match current_player_id in public.games?
  select current_player_id, player_order
  into _current_player_id, _game_player_order
  from games
  where games.id = place_bet.game_id;

  if _current_player_id != place_bet.player_id then
    return 'MismatchedPlayerId';
  end if;

  -- does the participation_cups_id match the id declared in private.game_turn?
  select turn_participation_cups_id
  into _turn_participation_cups_id
  from private.game_turn
  where private.game_turn.game_id = place_bet.game_id;

  if _turn_participation_cups_id != place_bet.participation_cup_id then
    return 'MismatchedParticipationCupId';
  end if;

  -- get the current bet
  _current_player_index := (select array_position(_game_player_order, _current_player_id));
  _previous_player_index := _game_player_order[_current_player_index - 1];

  if _previous_player_index is null then
    _previous_player_index := _game_player_order[array_length(_game_player_order, 1)];
  end if;

  select participations.bet_quantity, participations.bet_value
  into _current_bet_quantity, _current_bet_value
  from participations
  where participations.player_id = _previous_player_index
  and participations.game_id = place_bet.game_id;

  -- get the game dice quantity
  select sum(participations.dice_quantity)
  into _game_dice_quantity
  from participations
  where participations.game_id = place_bet.game_id;

  -- adjust _current_bet_quantity for ones
  if place_bet.bet_value != 1::smallint and _current_bet_value = 1::smallint then
    _current_bet_quantity := _current_bet_quantity * 2;
  elsif place_bet.bet_value = 1::smallint and _current_bet_value != 1::smallint then
    _current_bet_quantity := ceil(_current_bet_quantity / 2);
  end if;

  -- is the bet valid for this game?
  if not (place_bet.bet_quantity > _current_bet_quantity or (place_bet.bet_quantity = _current_bet_quantity and place_bet.bet_value > _current_bet_value)) then
    return 'LowBetQuantity';
  end if;
  
  if not  (place_bet.bet_value > 0 and place_bet.bet_value < 7) then
    return 'InvalidBetValue';
  end if;
  
  if place_bet.bet_quantity > _game_dice_quantity then
    return 'HighBetQuantity';
  end if;

  -- write bet to public participations
  update participations
  set bet_quantity = place_bet.bet_quantity,
  bet_value = place_bet.bet_value
  where participations.game_id = place_bet.game_id
  and participations.player_id = place_bet.player_id;

  -- cycle next player
  perform private."cycle_next_turn"(place_bet.game_id);

  return 'BetPlaced';
end;
$$;
