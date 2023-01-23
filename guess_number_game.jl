#Number guessing in Julia
function play_number_guess()
	total_number = 30
	target_number = rand(0:total_number)
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

play_number_guess()