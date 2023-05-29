if [ "$#" -ne 3 ]; then
	echo "Usage: sh run_referee.sh [CMD PLAYER1] [CMD PLAYER 2] [LEAGUE LEVEL]"
	echo "CMD needs to be runnable here, likes \"./a.out\" or \"python3 script.py\""
	echo "League level is 1 for Wood2, 2 for Wood1, 3 for Bronze"
	exit 1
fi

java -Dleague.level=$3 --add-opens java.base/java.lang=ALL-UNNAMED -jar referee.jar -p1 "$1" -p2 "$2"
