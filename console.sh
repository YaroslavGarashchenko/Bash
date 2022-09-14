##create console.sh script that does the following:
#implements console functionality - infinite loop that reads user input on each iteration
#supports commands:
#ls [dir] - lists the contents of specified directory
#pwd - shows the path to current directory
#hi - outputs "Hello <name of the current user>" 
#exit - ends the script
echo "Write command:"
while read comm; do
  if [[ "$comm" == 'ls' ]]; then
    echo "Enter path for command ls"
    read path
    ls $path    
    continue
  fi
  if [[ "$comm" == 'pwd' ]]; then
    pwd ~    
    continue
  fi
  if [[ "$comm" == 'hi' || "$comm" == 'Hi' ]]; then
    echo "Hi" $USER    
    continue
  fi
  if [[ "$comm" == "exit" || "$comm" == "Exit" ]]; then
    echo "Exit"   
    break
  fi
done
