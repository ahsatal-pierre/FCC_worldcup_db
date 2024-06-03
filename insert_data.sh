#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi


$PSQL "TRUNCATE TABLE games, teams;"


teams=$(awk -F, 'NR>1 {print $3; print $4}' games.csv | sort | uniq | tr '\n' ',' | sed 's/,$//')


IFS=',' read -r -a team_array <<< "$teams"
for team in "${team_array[@]}"
do

  team_id=$($PSQL "SELECT team_id FROM teams WHERE name='$team';")
  
 
  if [[ -z $team_id ]]
  then
    insert_result=$($PSQL "INSERT INTO teams(name) VALUES('$team');")
    if [[ $insert_result == "INSERT 0 1" ]]
    then
      echo "Inserted team: $team"
    else
      echo "Failed to insert team: $team"
    fi
  else
    echo "Team $team already exists with ID $team_id"
  fi
done


tail -n +2 games.csv | while IFS=',' read -r year round winner opponent winner_goals opponent_goals
do

  winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner';")
  opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent';")


  if [[ -z $winner_id ]] || [[ -z $opponent_id ]]
  then
    echo "Failed to find team IDs for game: $year, $round, $winner vs $opponent"
    continue
  fi


  insert_game=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);")
  if [[ $insert_game == "INSERT 0 1" ]]
  then
    echo "Inserted game: $year, $round, $winner vs $opponent"
  else
    echo "Failed to insert game: $year, $round, $winner vs $opponent"
  fi
done

