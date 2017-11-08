                                                                 MainProgram:
   gosub Initialization
   gosub PATHLINE
   while TRUE
     gosub Move
     gosub Turn
   wend
end

PATHLINE:
LineWidth 8
Line 80,130,80,50
LineTo 350,50
LineTo 350,130 
LineTo 550,130
LineTo 550,50
LineTo 750,50
LineTo 750,300
LineTo 650,300
LineTo 650,400
LineTo 750,400
LineTo 750,550
LineTo 450,550
LineTo 450,470
LineTo 300,470
LineTo 300,550
LineTo 80,550
LineTo 80,450
'second line
Line 80,230,520,230
LineTo 520,330
LineTo 80,330
LineTo 80,230
return

Initialization:
rLocate 100,150
return

Move:
while rBumper()=0
   rForward 1
   wend
return

Turn:
 if rBumper()=4
      rTurn 150+random(61)
   elseif rBumper()=2
      rTurn -90
   elseif rBumper()=8  
      rTurn 90
   elseif rBumper()=12
      rTurn -90
   elseif rBumper()=6
      rTURN 90      
   elseif rBumper()= 9
      rTurn -90
   elseif rBumper()= 3
      rTurn 90
   elseif rBumper()= 7
      rturn 90
   elseif rBumper()= 13
      rturn -90
   endif    
   rForward 1
return
