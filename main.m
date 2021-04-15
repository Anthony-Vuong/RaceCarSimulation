import wheel.*

wheel1 = wheel(2, 15);

%Change in velocity
dV = 0 - wheel1.velocity(2320);

%Change in time
dT = 0 - 5;

%km/h^2
acc = wheel1.acceleration(dV, dT);

%m/s^2
acc1 = acc * (1000 / 3600);

disp(acc1)





