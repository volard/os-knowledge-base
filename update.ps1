$lines = (git status --porcelain | Measure-Object).Count

if ($lines -eq 0){
	Exit
}

git add .

$message =  (":memo: Last sync " + (Get-Date -Format "MM/dd/yyyy HH:mm"))

git commit -m $message

git push
