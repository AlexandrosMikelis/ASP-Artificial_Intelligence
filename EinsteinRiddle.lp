house(1..5).			
col(r;g;b;w;y).		
man(b;s;u;n;j).		
drink(c;w;m;j;t).		
cigatates(c;k;p;o;l).		
pet(z;d;s;f;h).	

1	{	lives(X,Y):house(Y)}1	:-man(X).	
1	{	smokes(X,Y):cigatates(Y)}	1	:-man(X).	
1	{	drinks(X,Y):drink(Y)}	1	:-man(X).	
1	{	hasPet(X,Y):pet(Y)}	1	:-man(X).	
1	{	hasColor(X,Y):col(Y)}	1	:-house(X).	

:-  lives(X,Y),lives(Z,Y),X!=Z.

:-  lives(b,Y),hasColor(Y,Z), Z!=r.	
:-  hasPet(s,Y),Y!=d.	
:-  lives(X,Y),hasColor(Y,g),drinks(X,Z),Z!=c.
:-  drinks(u,Z), Z!=t.
:-  hasColor(X,w),hasColor(Y,g), Y !=X + 1.
:-  smokes(X,o),hasPet(X,Y), Y!=s.
:-  lives(X,Z),hasColor(Z,y),smokes(X,Y),Y != k.
:-  lives(X,3), drinks(X,Y),Y !=m .
:-  lives(n,X),X!=1.
:-  lives(X1,Y1),hasPet(X1,f),lives(X2,Y2),smokes(X2,c),Y1!=Y2+1,Y2!=Y1+1.
:-  lives(X1,Y1),lives(X2,Y2),hasPet(X1,h),smokes(X2,k),Y1!=Y2+1,Y2!=Y1+1.
:-  smokes(X,l),drinks(X,Y),Y!=j.
:-  smokes(j,X),X!=p.
:-  lives(n,Y),	hasColor(Z,b),	Y	!=	Z+1,	Z	!=	Y+1.

#show	hasPet/2.	
#show	drinks/2.	
