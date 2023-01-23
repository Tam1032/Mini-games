using Match

#Number guessing in Julia
function play_number_guess()
	total_number = 30
	target_number = rand(1:total_number)
	guess = 0
	while guess != target_number
		if abs(guess - target_number) <= 2
			print("\n You are getting closer to the result \n")
		end
		print("Please guess a number between 0 and $total_number : ")
		guess = parse(Int64, readline())
	end
	print("Nice bro, you did it!")
end

#Play rock paper scissors in Julia
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

#Countdown in Julia
function countdown()
	seconds = Base.prompt("Enter the amount of seconds")
	seconds = parse(Int64, seconds)
	while seconds > 0
		println("Seconds left: $seconds")
		seconds = seconds - 1
		sleep(1)
	end
	print("Yay! The countdown is over! Happy New Year!")
end

while true
	println("\n\nPlease choose 1 of the following 3 games:")
	println("1. Guessing number")
	println("2. Rock-Paper-Scissors")
	println("3. Count down")
	println("4. Stop playing the games")
	choice = parse(Int64, readline())
	@match choice begin
		1 => play_number_guess()
		2 => play_rock_scissor_paper()
		3 => countdown()
		_ => break
	end
end