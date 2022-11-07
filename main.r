print("Welcome to my Game")
print("Strat")

print('input answer number')
print('1 = hammer 2 = scissors 3 = paper 0 = Exit')
pao <- readLines("stdin",n=1)
game <- 0
win <- 0
loss <- 0
equal <- 0
computer <- sample(1:3, 1)
while(pao != "0"){
  game <- game + 1
  
  if(computer == "1" & pao == "1" | 
     computer == "2" & pao == "2" | 
     computer == "3" & pao == "3")
  {
    equal <- equal + 1
    print(paste("computer: ",computer))
    print("equal")
    print("-------------------------------")
  }
  else if(computer == "1" & pao == "2")
  {
    loss <- loss + 1
    print(paste("computer: ",computer))
    print("computer win")
    print("-------------------------------")
  }
  else if(computer == "1" & pao == "3")
  {
    win <- win + 1
    print(paste("computer: ",computer))
    print("You win")
    print("-------------------------------")
  }
  else if(computer == "2" & pao == "1")
  {
    win <- win + 1
    print(paste("computer: ",computer))
    print("You win")
    print("-------------------------------")
  }
  else if(computer == "2" & pao == "3")
  {
    loss <- loss + 1
    print(paste("computer: ",computer))
    print("computer win")
    print("-------------------------------")
  }
  else if(computer == "3" & pao == "1")
  {
    loss <- loss + 1
    print(paste("computer: ",computer))
    print("computer win")
    print("-------------------------------")
  }
  else if(computer == "3" & pao == "2")
  {
    win <- win + 1
    print(paste("computer: ",computer))
    print("You win")
    print("-------------------------------")
  }
    
  print('input answer number')
  print('1.hammer 2.scissors 3.paper 0 = Exit')
  computer <- sample(1:3, 1)
  pao <- readLines("stdin",n=1)
}
print(paste(game, "game", "win:", win, "loss:", loss, "equal", equal))
print("End")