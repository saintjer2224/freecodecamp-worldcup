#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != 'winner' ]]
  then
    #get team_id
    TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #if not found
    if [[ -z $TEAM_ID1 ]]
    then
    #insert team name
      INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    #get new team_id
    TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
  fi



  if [[ $OPPONENT != 'opponent' ]]
  then
    #get team_id
    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #if not found
    if [[ -z $TEAM_ID2 ]]
    then
    #insert team name
      INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    #get new team_id
    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
  fi



  if [[ $YEAR != 'year' ]]
  then
    #get game_id        
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE game_id IS NULL")    
    #if not found
    if [[ -z $GAME_ID ]]
    then
    #insert values
      INSERT_RESULTS=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$TEAM_ID1,$TEAM_ID2,$WINNER_GOALS,$OPPONENT_GOALS)")
    #get new game_id
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE game_id IS NULL")    
    fi
  fi
done
