%KDP crystal growth simulator
clc
clear all
x1=-2;
x2=2;
y1=0;
y2=9;
%plot a rectangle
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];
plot(x, y, 'k-', 'LineWidth', 3);
hold on;
grid on
axis ([-10 10 0 9])
axis square
 m= 1; 
 c = 0.5;
 d= -0.5;
 M=input('nhap mode (0 hoac 1 hoac 2):' )
   %cyan/black line
  x4=0.28:0.01:0.35
  y4= -4.1*x4 + c -d +0.7
  plot(x4,y4,'-k','LineWidth', 2)
  hold on
  x2=0:0.1:0.32
   y2 = m*x2 + c + d
    %green/black line
  plot(x2,y2,'-k','LineWidth', 2)
  hold on

 % y1,y3 have the same generated speed
 if M==0
 for t=0:0.5:8
     x1=-2:1:2
 y1 = m*x1 + c + t
 plot(x1,y1,'-b','LineWidth', 2)
  hold on
  x3=-2:1:2
      y3= tan(0.03*pi)*x3 + c + t
  plot(x3,y3,'-r','LineWidth', 2)
  hold on
  pause(0.5)
 end
 %(101) slower than (100) 0.4 times
 elseif M==1 
     speed = input('Nhap toc do phat trien: ');
      for t=0:speed:8
  x1=-2:1:2        
 y1 = m*x1 + c + t
 plot(x1,y1,'-b','LineWidth', 2)
  hold on
  x3=-2:1:2
    y3= tan(0.03*pi)*x3 + c + 0.6*t
  plot(x3,y3,'-r','LineWidth', 2)
  hold on
  pause(0.5)
      end
      %(101) slower than (100)0.4 times
 elseif M==2
     speed = input('Nhap toc do phat trien: ');
           for t=0:speed:8
 x1=-2:1:2 
 y1 = m*x + c + 0.6*t
 plot(x,y1,'-b','LineWidth', 2)
  hold on
  x3=-2:1:2
    y3= tan(0.03*pi)*x3 +c + t
  plot(x3,y3,'-r','LineWidth', 2)
  hold on
  pause(0.5)
 end
end