function countdown()
	seconds = Base.prompt("Enter the amount of seconds")
	seconds = parse(Int64, seconds)
	while seconds > 0
		println("Seconds left: $seconds")
		seconds = seconds - 1
		sleep(1)
	end
	println("The countdown is over! Happy New Year!")
end
countdown()