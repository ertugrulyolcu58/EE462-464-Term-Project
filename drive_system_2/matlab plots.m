plot(out.wm*0.3/8.5*3.6);
ylabel('Speed(km/h)');
xlabel('Time(s)');
title('Speed vs Time Driver Model 2');
grid minor

figure
plot(out.Vab);
ylabel('Line to Line Voltages(V)');
xlabel('Time(s)');
title('Line to Line Voltages vs Time Driver Model 2');
hold on 
plot(out.Vbc);
hold on
plot(out.Vca);
legend('Phase A to Phase B Voltage','Phase B to Phase C Voltage', 'Phase C to Phase A Voltage');
grid minor

figure
plot(out.Ia);
ylabel('Line Currents(A)');
xlabel('Time(s)');
title('Line Currents vs Time Driver Model 2');
hold on 
plot(out.Ib);
hold on
plot(out.Ic);
legend('Phase A','Phase B','Phase C ');
grid minor

figure
plot(out.Electrical_torque);
ylabel('Torque(Nm)');
xlabel('Time(s)');
title('Torque vs Time Driver Model 2');
grid minor

figure
plot(out.d_current);
ylabel('dq Currents(A)');
xlabel('Time(s)');
title('dq Currents vs Time Driver Model 2');
hold on 
plot(out.q_current);
legend('I_d','I_q');
grid minor