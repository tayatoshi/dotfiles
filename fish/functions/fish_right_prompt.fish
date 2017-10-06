function fish_right_prompt --description '右側にカレント・ディレクトリを表示'
	set cwd (set_color cyan)([ PWD ])
	echo $cwd
end
