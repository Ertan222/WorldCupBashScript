#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOAL OPPO_GOAL
do
#ignore the first letter
if [[ $YEAR != "year" ]]
then
# |-------------------------------------------------------------------------|
  #get team id for check
  WINN_RESULT="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
if [[ -z $WINN_RESULT ]]
then  
  #if it's not in team table,add
  ADDED_WINN="$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER')")"
  #check if team added to table
  if [[ $ADDED_WINN == "INSERT 0 1" ]]
  then
    # if answer is yes, echo to terminal with result
    echo "Inserted: $WINNER"
  fi
fi
# |-------------------------------------------------------------------------|
# |-------------------------------------------------------------------------|
  #get team id for check
  OPPO_RESULT="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
if [[ -z $OPPO_RESULT ]]
then
  #if it's not in team table,add
  ADDED_OPPO="$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')")"
  #check if team added to table
  if [[ $ADDED_OPPO == "INSERT 0 1" ]]
  then 
    # if answer is yes, echo to terminal with result
    echo "Inserted: $OPPONENT"
  fi 
fi
# |-------------------------------------------------------------------------|
  # get winner id for games table
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  # get opponent id for games table
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  # Insert everything to games table
  FINAL_RESULT="$($PSQL "INSERT INTO games (year,winner_id,opponent_id,winner_goals,opponent_goals,round)
  VALUES ($YEAR,$WINNER_ID,$OPPONENT_ID,$WIN_GOAL,$OPPO_GOAL,'$ROUND')")"
  #check if game added to table
  if [[ $FINAL_RESULT == "INSERT 0 1" ]]
  then
  #if answer is yes, echo to terminal with result
    echo -e "Inserted:\n Year: $YEAR, Round: $ROUND,Winner: $WINNER, Opponent: $OPPONENT, Winner_goals: $WIN_GOAL ,Opponent_goals:$OPPO_GOAL"
  fi
fi
  # |-------------------------------------------------------------------------|
done

