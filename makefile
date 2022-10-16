
check: discord.timer discord.service
	systemd-analyze verify discord.service
	systemd-analyze verify discord.timer

install: check
	install discord.service discord.timer "$(HOME)/.config/systemd/user/"

