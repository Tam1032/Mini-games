function play_rock_scissor_paper()
	moves = ["Rock", "Paper", "Scissors"]
	computer_move = moves[rand(1:3)]
	human_move = Base.prompt("Please enter 'Rock', 'Paper' or 'Scissors'")

	println("\nRock...")
    sleep(1)
    println("Paper...")
    sleep(1)
    println("Scissors...\n")
    sleep(1)
	
	if human_move == computer_move
		print("We tied, please play again")
	elseif computer_move == "Rock" && human_move == "Scissors"
		print("You lose, please try again")
	elseif computer_move == "Paper" && human_move == "Rock"
		print("You lose, please try again")
	elseif computer_move == "Scissors" && human_move == "Paper"
		print("You lose, please try again")
	else
		print("Congratulation, you win!")
	end
end

play_rock_scissor_paper()