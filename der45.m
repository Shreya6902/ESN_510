a=input('Enter your marks')
if (a<28)
    fprintf("You have failed");
elseif ((a<40)&&(a>=28))
    fprintf("You need to improve.Your Grade is C.And your mark is %d \n" ,a);
elseif ((a<75)&&(a>=40))
    fprintf("Grade B by securing %d \n" ,a);
elseif ((a<95)&&(a>=75))
    fprintf("Grade A by securing %d \n" ,a);
else 
    fprintf("Congrats!! You are the gold maedalist by securing %d \n" ,a);  
end