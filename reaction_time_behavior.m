close all
clear all

%PARAMETERS;
%For reward analysis
align = 20; %all_trials(:,20) = Time of odor;
pre = 0.5; %start XX sec after align; odor stimu ends 0.5s after

First_T = 10;
Last_T = 10;

include_free = 0; %1 = include free choice trials;

%LOAD FILES
for cell_count = 1:128; 				
%DE_Shm				
if cell_count ==	1	load	sham_rat1_session1	; end
if cell_count ==	2	load	sham_rat1_session2	; end
if cell_count ==	3	load	sham_rat1_session3	; end
if cell_count ==	4	load	sham_rat1_session4	; end
if cell_count ==	5	load	sham_rat1_session5	; end
if cell_count ==	6	load	sham_rat1_session6	; end
if cell_count ==	7	load	sham_rat1_session7	; end
if cell_count ==	8	load	sham_rat1_session8	; end
if cell_count ==	9	load	sham_rat1_session9	; end
if cell_count ==	10	load	sham_rat1_session10	; end
if cell_count ==	11	load	sham_rat1_session11	; end
if cell_count ==	12	load	sham_rat1_session12	; end
if cell_count ==	13	load	sham_rat1_session13	; end
if cell_count ==	14	load	sham_rat1_session14	; end
if cell_count ==	15	load	sham_rat1_session15	; end
if cell_count ==	16	load	sham_rat1_session16	; end
if cell_count ==	17	load	sham_rat1_session17	; end
if cell_count ==	18	load	sham_rat1_session18	; end
if cell_count ==	19	load	sham_rat1_session19	; end
if cell_count ==	20	load	sham_rat1_session20	; end
if cell_count ==	21	load	sham_rat1_session21	; end
if cell_count ==	22	load	sham_rat1_session22	; end
if cell_count ==	23	load	sham_rat1_session23	; end
if cell_count ==	24	load	sham_rat1_session24	; end
if cell_count ==	25	load	sham_rat1_session25	; end
if cell_count ==	26	load	sham_rat1_session26	; end
if cell_count ==	27	load	sham_rat1_session27	; end
if cell_count ==	28	load	sham_rat2_session1	; end
if cell_count ==	29	load	sham_rat2_session2	; end
if cell_count ==	30	load	sham_rat2_session3	; end
if cell_count ==	31	load	sham_rat2_session4	; end
if cell_count ==	32	load	sham_rat2_session5	; end
if cell_count ==	33	load	sham_rat2_session6	; end
if cell_count ==	34	load	sham_rat2_session7	; end
if cell_count ==	35	load	sham_rat2_session8	; end
if cell_count ==	36	load	sham_rat2_session9	; end
if cell_count ==	37	load	sham_rat2_session10	; end
if cell_count ==	38	load	sham_rat2_session11	; end
if cell_count ==	39	load	sham_rat2_session12	; end
if cell_count ==	40	load	sham_rat2_session13	; end
if cell_count ==	41	load	sham_rat2_session14	; end
if cell_count ==	42	load	sham_rat2_session15	; end
if cell_count ==	43	load	sham_rat2_session16	; end
if cell_count ==	44	load	sham_rat2_session17	; end
if cell_count ==	45	load	sham_rat2_session18	; end
if cell_count ==	46	load	sham_rat2_session19	; end
if cell_count ==	47	load	sham_rat2_session20	; end
if cell_count ==	48	load	sham_rat2_session21	; end
if cell_count ==	49	load	sham_rat2_session22	; end
if cell_count ==	50	load	sham_rat2_session23	; end
if cell_count ==	51	load	sham_rat2_session24	; end
if cell_count ==	52	load	sham_rat2_session25	; end
if cell_count ==	53	load	sham_rat2_session26	; end
if cell_count ==	54	load	sham_rat2_session27	; end
if cell_count ==	55	load	sham_rat3_session1	; end
if cell_count ==	56	load	sham_rat3_session2	; end
if cell_count ==	57	load	sham_rat3_session3	; end
if cell_count ==	58	load	sham_rat3_session4	; end
if cell_count ==	59	load	sham_rat3_session5	; end
if cell_count ==	60	load	sham_rat3_session6	; end
if cell_count ==	61	load	sham_rat3_session7	; end
if cell_count ==	62	load	sham_rat3_session8	; end
if cell_count ==	63	load	sham_rat3_session9	; end
if cell_count ==	64	load	sham_rat3_session10	; end
if cell_count ==	65	load	sham_rat3_session11	; end
if cell_count ==	66	load	sham_rat3_session12	; end
if cell_count ==	67	load	sham_rat3_session13	; end
if cell_count ==	68	load	sham_rat3_session14	; end
if cell_count ==	69	load	sham_rat3_session15	; end
if cell_count ==	70	load	sham_rat3_session16	; end
if cell_count ==	71	load	sham_rat3_session17	; end
if cell_count ==	72	load	sham_rat3_session18	; end
if cell_count ==	73	load	sham_rat3_session19	; end
if cell_count ==	74	load	sham_rat3_session20	; end
if cell_count ==	75	load	sham_rat3_session21	; end
if cell_count ==	76	load	sham_rat3_session22	; end
if cell_count ==	77	load	sham_rat3_session23	; end
if cell_count ==	78	load	sham_rat3_session24	; end
if cell_count ==	79	load	sham_rat4_session1	; end
if cell_count ==	80	load	sham_rat4_session2	; end
if cell_count ==	81	load	sham_rat4_session3	; end
if cell_count ==	82	load	sham_rat4_session4	; end
if cell_count ==	83	load	sham_rat4_session5	; end
if cell_count ==	84	load	sham_rat4_session6	; end
if cell_count ==	85	load	sham_rat4_session7	; end
if cell_count ==	86	load	sham_rat4_session8	; end
if cell_count ==	87	load	sham_rat4_session9	; end
if cell_count ==	88	load	sham_rat4_session10	; end
if cell_count ==	89	load	sham_rat4_session11	; end
if cell_count ==	90	load	sham_rat4_session12	; end
if cell_count ==	91	load	sham_rat4_session13	; end
if cell_count ==	92	load	sham_rat4_session14	; end
if cell_count ==	93	load	sham_rat4_session15	; end
if cell_count ==	94	load	sham_rat4_session16	; end
if cell_count ==	95	load	sham_rat4_session17	; end
if cell_count ==	96	load	sham_rat4_session18	; end
if cell_count ==	97	load	sham_rat4_session19	; end
if cell_count ==	98	load	sham_rat4_session20	; end
if cell_count ==	99	load	sham_rat4_session21	; end
if cell_count ==	100	load	sham_rat4_session22	; end
if cell_count ==	101	load	sham_rat4_session23	; end
if cell_count ==	102	load	sham_rat4_session24	; end
if cell_count ==	103	load	sham_rat4_session25	; end
if cell_count ==	104	load	sham_rat4_session26	; end
if cell_count ==	105	load	sham_rat5_session1	; end
if cell_count ==	106	load	sham_rat5_session2	; end
if cell_count ==	107	load	sham_rat5_session3	; end
if cell_count ==	108	load	sham_rat5_session4	; end
if cell_count ==	109	load	sham_rat5_session5	; end
if cell_count ==	110	load	sham_rat5_session6	; end
if cell_count ==	111	load	sham_rat5_session7	; end
if cell_count ==	112	load	sham_rat5_session8	; end
if cell_count ==	113	load	sham_rat5_session9	; end
if cell_count ==	114	load	sham_rat5_session10	; end
if cell_count ==	115	load	sham_rat5_session11	; end
if cell_count ==	116	load	sham_rat5_session12	; end
if cell_count ==	117	load	sham_rat5_session13	; end
if cell_count ==	118	load	sham_rat5_session14	; end
if cell_count ==	119	load	sham_rat5_session15	; end
if cell_count ==	120	load	sham_rat5_session16	; end
if cell_count ==	121	load	sham_rat5_session17	; end
if cell_count ==	122	load	sham_rat5_session18	; end
if cell_count ==	123	load	sham_rat5_session19	; end
if cell_count ==	124	load	sham_rat5_session20	; end
if cell_count ==	125	load	sham_rat5_session21	; end
if cell_count ==	126	load	sham_rat5_session22	; end
if cell_count ==	127	load	sham_rat5_session23	; end
if cell_count ==	128	load	sham_rat5_session24	; end

%CLEAR VARIABLES;
clear all_trials FR_1st FR_2nd FR_1st_np FR_2nd_np  FR_1st_2;
clear bk1_sh bk1_lo bk2_sh bk2_lo bk3_sh bk3_lo bk4_bg bk4_sm ;
clear FR_bk1_sh FR_bk1_lo FR_bk2_sh FR_bk2_lo FR_bk3_sh FR_bk3_lo;
clear FR_bk4_bg FR_bk4_bg FR_bk4_bg FR_bk4_sm
clear reward_left2 reward_right2
clear valid all_trials_valid;
 
if length(light_on) > length(light_off);
    light_off(length(light_off)+1) = light_on(length(light_on))+30;
end

all_trials=cat(2,light_on,light_off); 

for a = 2:length(reward_left);
    if reward_left(a) - reward_left(a-1) < 1;
        reward_left2(a,2) = -999;
    else if reward_left(a) - reward_left(a-1) > 1;
            reward_left2(a,2) = 1;
        end
    end
end
reward_left2(:,1) = reward_left;
junk = find(reward_left2(:,2)== -999);
reward_left2(junk,:) = [];
clear a junk;

for a = 2:length(reward_right);
    if reward_right(a) - reward_right(a-1) < 1;
        reward_right2(a,2) = -999;
    else if reward_right(a) - reward_right(a-1) > 1;
        reward_right2(a,2) = 1;
        end
    end
end
reward_right2(:,1) = reward_right;
junk = find(reward_right2(:,2)== -999);
reward_right2(junk,:) = [];
clear junk;

all_trials(:,3:25) = zeros(1:length(all_trials),1);
all_trials(:,3:25) = -999;

%Column 3 = Reward Delivery on LEFT well,
b=1;
for a=1:length(all_trials),
    if b>length(reward_left2(:,1)),
        break
    end
    if reward_left2(b,1) < all_trials(a,2) & reward_left2(b,1) > all_trials(a,1),
        all_trials(a,3) = reward_left2(b,1);
        b=b+1;
    else
        all_trials(a,3) = -999;
    end
end

%Column 4 = Reward Delivery on RIGHT well,
b=1;
for a=1:length(all_trials),
    if b>length(reward_right2(:,1)),
        break
    end
    if reward_right2(b,1) < all_trials(a,2) & reward_right2(b,1) > all_trials(a,1),
        all_trials(a,4) = reward_right2(b,1);
        b=b+1;
    else
        all_trials(a,4) = -999;
    end
end

%Column 5 = left_odor;
b=1;
for a = 1:length(all_trials),
    if b > length(left_odor(:,1))
        break
    end
    if left_odor(b,1) < all_trials(a,2) &  left_odor(b,1) > all_trials(a,1)
        all_trials(a,5) =  left_odor(b,1);
        b=b+1;
    else
        all_trials(a,5) = -999;
    end
end

%Column 6 = choice_odor;
b=1;
for a = 1:length(all_trials),
    if b > length(choice_odor(:,1))
        break
    end
    if choice_odor(b,1) < all_trials(a,2) &  choice_odor(b,1) > all_trials(a,1),
        all_trials(a,6) = choice_odor(b,1);
        b=b+1;
    else
        all_trials(a,6) = -999;
    end
end

%Column 7 = right_odor;
b=1;
for a = 1:length(all_trials),
    if b > length(right_odor(:,1))
        break
    end
    if right_odor(b,1) < all_trials(a,2) &  right_odor(b,1) > all_trials(a,1)
        all_trials(a,7) = right_odor(b,1);
        b=b+1;
    else
        all_trials(a,7) = -999;
    end
end

%Colum 8 =FIND BIG REWARD LEFT;
b=1;
for a = 1:length(all_trials),
    if b > length(big_left(:,1))
        break
    end
    if a ~= length(all_trials) & big_left(b,1) <= all_trials(a+1,1) &  big_left(b,1) >= all_trials(a,2)
        all_trials(a,8) = big_left(b,1);
        b=b+1;
        %FOR THE LAST TRIAL THERE WILL BE NO UPCOMING LIGHT ON
        else if  a == length(all_trials)   &  big_left(b,1) > all_trials(a,2)
                all_trials(a,8) = big_left(b,1);
                b=b+1;
            else
                all_trials(a,8) = -999;
            end
    end
end

%Column 9 =FIND BIG REWARD RIGHT;
b=1;
for a = 1:length(all_trials),
    if b > length(big_right(:,1))
        break
    end
    if a ~= length(all_trials) & big_right(b,1) <= all_trials(a+1,1) &  big_right(b,1) >= all_trials(a,2)
        all_trials(a,9) = big_right(b,1);
        b=b+1;
        %FOR THE LAST TRIAL THERE WILL BE NO UPCOMING LIGHT ON
        else if  a == length(all_trials)   &  big_right(b,1) > all_trials(a,2)
                all_trials(a,9) = big_right(b,1);
                b=b+1;
            else
                all_trials(a,9) = -999;
            end
    end
end

%Column 10 =FIND LONG DELAY LEFT;
b=1;
for a = 1:length(all_trials),
    if b > length(long_left(:,1))
        break
    end
    if a ~= length(all_trials) & long_left(b,1) <= all_trials(a+1,1) &  long_left(b,1) >= all_trials(a,2)
        all_trials(a,10) = long_left(b,1);
        b=b+1;
        %FOR THE LAST TRIAL THERE WILL BE NO UPCOMING LIGHT ON
        else if  a == length(all_trials)   &  long_left(b,1) > all_trials(a,2)
                all_trials(a,10) = long_left(b,1);
                b=b+1;
            else
                all_trials(a,10) = -999;
            end
    end
end

%Column 11 =FIND LONG DELAY RIGHT;
b=1;
for a = 1:length(all_trials),
    if b > length(long_right(:,1))
        break
    end
    if a ~= length(all_trials) & long_right(b,1) <= all_trials(a+1,1) &  long_right(b,1) >= all_trials(a,2)
        all_trials(a,11) = long_right(b,1);
        b=b+1;
        %FOR THE LAST TRIAL THERE WILL BE NO UPCOMING LIGHT ON
        else if  a == length(all_trials)   &  long_right(b,1) > all_trials(a,2)
                all_trials(a,11) = long_right(b,1);
                b=b+1;
            else
                all_trials(a,11) = -999;
            end
    end
end

%Column 12 =FIND TIME OF WHEN BROKE BEAM IN LEFT WELL;
b=1;
for a = 1:length(all_trials)
    if b > length(well_entry_left(:,1))
        break
    end
    if well_entry_left(b,1) < all_trials(a,2) &  well_entry_left(b,1) > all_trials(a,1)
        all_trials(a,12) = well_entry_left(b,1);
        b=b+1;
    else
        all_trials(a,12) = -999;
    end
end

%Column 13 =FIND TIME OF WHEN BROKE BEAM IN RIGHT WELL;
b=1;
for a = 1:length(all_trials),
    if b > length(well_entry_right(:,1))
        break
    end
    if well_entry_right(b,1) < all_trials(a,2) &  well_entry_right(b,1) > all_trials(a,1)
        all_trials(a,13) = well_entry_right(b,1);
        b=b+1;
    else
        all_trials(a,13) = -999;
    end
end

%COLUMN 14 =FIND TIME OF WHEN LEFT THE LEFT WELL;
b=1;
for a = 1:length(all_trials),
    if b > length(well_exit_left(:,1))
        break
    end
    if well_exit_left(b,1) < all_trials(a,2) &  well_exit_left(b,1) > all_trials(a,1)
        all_trials(a,14) = well_exit_left(b,1);
        b=b+1;
    else
        all_trials(a,14) = -999;
    end
end

%COLUMN 15 =FIND TIME OF WHEN LEFT THE RIGHT WELL;
b=1;
for a = 1:length(all_trials),
    if b > length(well_exit_right(:,1))
        break
    end
    if well_exit_right(b,1) < all_trials(a,2) &  well_exit_right(b,1) > all_trials(a,1)
        all_trials(a,15) = well_exit_right(b,1);
        b=b+1;
    else
        all_trials(a,15) = -999;
    end
end

%COLUMN 16 =FIND TIME OF WHEN BROKE BEAM IN ODOR PORT;
%b=1;
%for a = 1:length(all_trials),
%    if b > length(StrobedDIO00224(:,1))
%        break
%    end
%    if StrobedDIO00224(b,1) < all_trials(a,2) &  StrobedDIO00224(b,1) > all_trials(a,1)
%        all_trials(a,16) = StrobedDIO00224(b,1);
%        b=b+1;
%    else
%        all_trials(a,16) = -999;
%    end
%end

%COLUMN 17 =FIND TIME OF WHEN LEFT ODOR PORT;
b=1;
for a = 1:length(all_trials),
    if b > length(left_odor_port(:,1))
        break
    end
    if left_odor_port(b,1) < all_trials(a,2) &  left_odor_port(b,1) > all_trials(a,1)
        all_trials(a,17) = left_odor_port(b,1);
        b=b+1;
    else
        all_trials(a,17) = -999;
    end
end

%Column 18 =REWARD DELIVERED right and left
for a = 1:length(all_trials),
    if all_trials(a,3) > -999 
        all_trials(a,18) = all_trials(a,3);
    end
    if all_trials(a,4) > -999
        all_trials(a,18) = all_trials(a,4);
    end
end

%Column 19 =CONDITION;
%1 = short in block 1
%2 = long in block 1;
%3 = short in block 2
%4 = long in block 2;
%5 = big in block 3
%6 = small in block 3;
%7 = big in block 4
%8 = small in block 4;

%Find which well was short in bk1; long_first_L =1 --> Left well long delay
long_L_first = find(all_trials(:,10) > -999,1,'first');
long_R_first = find(all_trials(:,11) > -999,1,'first');
long_L_last = find(all_trials(:,10) > -999,1,'last');
long_R_last = find(all_trials(:,11) > -999,1,'last');
big_L_first = find(all_trials(:,8) > -999,1,'first');
big_R_first = find(all_trials(:,9) > -999,1,'first');
big_L_last = find(all_trials(:,8) > -999,1,'last');
big_R_last = find(all_trials(:,9) > -999,1,'last');

if long_L_first < long_R_first;
    bk2_first = long_R_first;
    bk3_first = long_R_last + 1;
    bk4_first = big_L_first;
else
    bk2_first = long_L_first;
    bk3_first = long_L_last + 1;
    bk4_first = big_R_first;
end

if long_L_first < long_R_first;
for a = 1:length(all_trials(:,1));
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk2_first;
        all_trials(a,19) = 2; %long bk1;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk2_first;
        all_trials(a,19) = 1; %short bk1;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk3_first & a >= bk2_first;
        all_trials(a,19) = 3; %short bk2;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk3_first & a >= bk2_first;
        all_trials(a,19) = 4; %long bk2;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk4_first & a >= bk3_first;
        all_trials(a,19) = 6; %small bk3;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk4_first & a >= bk3_first;
        all_trials(a,19) = 5; %big bk3;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a >= bk4_first;
        all_trials(a,19) = 7; %big bk4;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a >= bk4_first;
        all_trials(a,19) = 8; %small bk4;
    end
end
end

if long_L_first > long_R_first;
for a = 1:length(all_trials(:,1));
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk2_first;
        all_trials(a,19) = 1; %short bk1;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk2_first;
        all_trials(a,19) = 2; %long bk1;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk3_first & a >= bk2_first;
        all_trials(a,19) = 4; %long bk2;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk3_first & a >= bk2_first;
        all_trials(a,19) = 3; %short bk2;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a < bk4_first & a >= bk3_first;
        all_trials(a,19) = 5; %short bk3;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk4_first & a >= bk3_first;
        all_trials(a,19) = 6; %long bk3;
    end
    if all_trials(a,3) > -999 & all_trials(a,12) > -999 & a >= bk4_first;
        all_trials(a,19) = 8; %small bk4;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a >= bk4_first;
        all_trials(a,19) = 7; %big bk4;
    end
end
end

%Column 20 =TIME OF ODOR ONSET for all odors
for a = 1:length(all_trials),
    if all_trials(a,5) > -999
        all_trials(a,20) = all_trials(a,5); %LEFT ODOR
    end
    if all_trials(a,6) > -999
        all_trials(a,20) = all_trials(a,6); %CHOICE ODOR
    end
    if all_trials(a,7) > -999
        all_trials(a,20) = all_trials(a,7); %RIGHT ODOR
    end
end

%Column 21 =WELL ENTRY right and left
for a = 1:length(all_trials),
    if all_trials(a,12) > -999 
        all_trials(a,21) = all_trials(a,12);
    end
    if all_trials(a,13) > -999
        all_trials(a,21) = all_trials(a,13);
    end
end

%FR_1st column 1 = reaction time;
for a = 1:length(all_trials),
   if all_trials(a,18)>0;
      FR_1st(a,1) = all_trials(a,17) - (all_trials(a,align)+pre)'
      else
       FR_1st(a,1) = -999;
   end
end
FR_1st(:,2) = all_trials(:,19); %add condition ID;


 %EXTRACT EACH CONDITION;
bk1_sh = find(all_trials(:,19) == 1);
bk1_lo = find(all_trials(:,19) == 2);
bk2_sh = find(all_trials(:,19) == 3);
bk2_lo = find(all_trials(:,19) == 4);
bk3_bg = find(all_trials(:,19) == 5);
bk3_sm = find(all_trials(:,19) == 6);
bk4_bg = find(all_trials(:,19) == 7);
bk4_sm = find(all_trials(:,19) == 8);

%extract trials in each condition;
FR_bk1_sh = FR_1st(bk1_sh,:);
FR_bk1_lo = FR_1st(bk1_lo,:);
FR_bk2_sh = FR_1st(bk2_sh,:);
FR_bk2_lo = FR_1st(bk2_lo,:);
FR_bk3_bg = FR_1st(bk3_bg,:);
FR_bk3_sm = FR_1st(bk3_sm,:);
FR_bk4_bg = FR_1st(bk4_bg,:);
FR_bk4_sm = FR_1st(bk4_sm,:);

%extract last some trials;
FR_bk1_sh_L = FR_bk1_sh(length(FR_bk1_sh)-Last_T+1:length(FR_bk1_sh),1);
FR_bk1_lo_L = FR_bk1_lo(length(FR_bk1_lo)-Last_T+1:length(FR_bk1_lo),1);
FR_bk2_sh_L = FR_bk2_sh(length(FR_bk2_sh)-Last_T+1:length(FR_bk2_sh),1);
FR_bk2_lo_L = FR_bk2_lo(length(FR_bk2_lo)-Last_T+1:length(FR_bk2_lo),1);
FR_bk3_bg_L = FR_bk3_bg(length(FR_bk3_bg)-Last_T+1:length(FR_bk3_bg),1);
FR_bk3_sm_L = FR_bk3_sm(length(FR_bk3_sm)-Last_T+1:length(FR_bk3_sm),1);
FR_bk4_bg_L = FR_bk4_bg(length(FR_bk4_bg)-Last_T+1:length(FR_bk4_bg),1);
FR_bk4_sm_L = FR_bk4_sm(length(FR_bk4_sm)-Last_T+1:length(FR_bk4_sm),1);

%Combine blocks;
%delay blocks
FR_D_sh_L = cat(1,FR_bk1_sh_L,FR_bk2_sh_L);
FR_D_lo_L = cat(1,FR_bk1_lo_L,FR_bk2_lo_L);
%size blocks
FR_S_bg_L = cat(1,FR_bk3_bg_L,FR_bk3_bg_L);
FR_S_sm_L = cat(1,FR_bk3_sm_L,FR_bk3_sm_L);
%all blocks
FR_H_L = cat(1,FR_D_sh_L,FR_S_bg_L);
FR_L_L = cat(1,FR_D_lo_L,FR_S_sm_L);

%COMBINE ALL CELLS;
RT_array = cat(2,mean(FR_H_L),mean(FR_L_L));
cat_RT(cell_count,:) = cat(1,RT_array);

end
