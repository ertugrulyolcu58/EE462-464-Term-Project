clc
clear
close all

load("model1_data.mat")

time = out.rotor_speed.Time;
rotor_speed = out.rotor_speed.Data;
v_ll = out.voltage.Data;
i_ll = out.current.Data;
torque = out.torque.Data;
d_current = out.d_current.Data;
q_current = out.q_current.Data;

car_speed = rotor_speed*0.3/8.5*3.6;

[~,start_time] = min(abs(car_speed-35));
[~,end_time] = min(abs(car_speed-40));

figure
plot(time(start_time:end_time), car_speed(start_time:end_time),LineWidth=2);
xlabel("Time(s)")
ylabel("Speed of car(km/h)")
title("Speed of car vs time")
grid minor
xlim([time(start_time), time(end_time)])

figure
plot(time(start_time:end_time), v_ll(start_time:end_time,1),LineWidth=2);
hold on
plot(time(start_time:end_time), v_ll(start_time:end_time,2),LineWidth=2);
plot(time(start_time:end_time), v_ll(start_time:end_time,3),LineWidth=2);
xlabel("Time(s)")
ylabel("Line to Line voltages(V)")
title("Line to line voltages vs time")
grid minor
xlim([time(start_time), time(end_time)])
legend("Phase A to B voltage", "Phase B to C voltage", "Phase C to A voltage")

figure
plot(time(start_time:end_time), i_ll(start_time:end_time,1),LineWidth=2);
hold on
plot(time(start_time:end_time), i_ll(start_time:end_time,2),LineWidth=2);
plot(time(start_time:end_time), i_ll(start_time:end_time,3),LineWidth=2);
xlabel("Time(s)")
ylabel("Line currents(A)")
title("Line currents vs time")
grid minor
xlim([time(start_time), time(end_time)])
legend("A", "B", "C")

figure
plot(time(start_time:end_time), torque(start_time:end_time),LineWidth=2);
xlabel("Time(s)")
ylabel("Electromagnetic Torque(Nm)")
title("Electromagnetic Torque vs Time")
grid minor
xlim([time(start_time), time(end_time)])

figure
plot(time(start_time:end_time), q_current(start_time:end_time),LineWidth=2);
xlabel("Time(s)")
ylabel("Current(A)")
title("q current vs Time")
grid minor
xlim([time(start_time), time(end_time)])

figure
plot(time(start_time:end_time), d_current(start_time:end_time),LineWidth=2);
xlabel("Time(s)")
ylabel("Current(A)")
title("d current vs Time")
grid minor
xlim([time(start_time), time(end_time)])