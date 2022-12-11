local setup, pomodoro = pcall(require, "pomodoro")

if not setup then
	print("Pomodoro failed to load!")
end

pomodoro.setup({
	time_work = 25,
	time_break_short = 5,
	time_break_long = 20,
	timers_to_long_break = 4,
})
