close all
clear all

%PARAMETERS;
First_T = 8;
Last_T = 8;
Prev_T = 3;

%LOAD FILES
for cell_count = 1:161; 				
%DE_HCx				
if cell_count ==	1	load	HCx_rat1_session1	; end
if cell_count ==	2	load	HCx_rat1_session2	; end
if cell_count ==	3	load	HCx_rat1_session3	; end
if cell_count ==	4	load	HCx_rat1_session4	; end
if cell_count ==	5	load	HCx_rat1_session5	; end
if cell_count ==	6	load	HCx_rat1_session6	; end
if cell_count ==	7	load	HCx_rat1_session7	; end
if cell_count ==	8	load	HCx_rat1_session8	; end
if cell_count ==	9	load	HCx_rat1_session9	; end
if cell_count ==	10	load	HCx_rat1_session10	; end
if cell_count ==	11	load	HCx_rat1_session11	; end
if cell_count ==	12	load	HCx_rat1_session12	; end
if cell_count ==	13	load	HCx_rat1_session13	; end
if cell_count ==	14	load	HCx_rat1_session14	; end
if cell_count ==	15	load	HCx_rat1_session15	; end
if cell_count ==	16	load	HCx_rat2_session1	; end
if cell_count ==	17	load	HCx_rat2_session2	; end
if cell_count ==	18	load	HCx_rat2_session3	; end
if cell_count ==	19	load	HCx_rat2_session4	; end
if cell_count ==	20	load	HCx_rat2_session5	; end
if cell_count ==	21	load	HCx_rat2_session6	; end
if cell_count ==	22	load	HCx_rat2_session7	; end
if cell_count ==	23	load	HCx_rat2_session8	; end
if cell_count ==	24	load	HCx_rat2_session9	; end
if cell_count ==	25	load	HCx_rat2_session10	; end
if cell_count ==	26	load	HCx_rat2_session11	; end
if cell_count ==	27	load	HCx_rat3_session1	; end
if cell_count ==	28	load	HCx_rat3_session2	; end
if cell_count ==	29	load	HCx_rat3_session3	; end
if cell_count ==	30	load	HCx_rat3_session4	; end
if cell_count ==	31	load	HCx_rat3_session5	; end
if cell_count ==	32	load	HCx_rat3_session6	; end
if cell_count ==	33	load	HCx_rat3_session7	; end
if cell_count ==	34	load	HCx_rat3_session8	; end
if cell_count ==	35	load	HCx_rat3_session9	; end
if cell_count ==	36	load	HCx_rat3_session10	; end
if cell_count ==	37	load	HCx_rat3_session11	; end
if cell_count ==	38	load	HCx_rat3_session12	; end
if cell_count ==	39	load	HCx_rat3_session13	; end
if cell_count ==	40	load	HCx_rat3_session14	; end
if cell_count ==	41	load	HCx_rat3_session15	; end
if cell_count ==	42	load	HCx_rat3_session16	; end
if cell_count ==	43	load	HCx_rat3_session17	; end
if cell_count ==	44	load	HCx_rat3_session18	; end
if cell_count ==	45	load	HCx_rat4_session1	; end
if cell_count ==	46	load	HCx_rat4_session2	; end
if cell_count ==	47	load	HCx_rat4_session3	; end
if cell_count ==	48	load	HCx_rat4_session4	; end
if cell_count ==	49	load	HCx_rat4_session5	; end
if cell_count ==	50	load	HCx_rat4_session6	; end
if cell_count ==	51	load	HCx_rat4_session7	; end
if cell_count ==	52	load	HCx_rat4_session8	; end
if cell_count ==	53	load	HCx_rat4_session9	; end
if cell_count ==	54	load	HCx_rat4_session10	; end
if cell_count ==	55	load	HCx_rat4_session11	; end
if cell_count ==	56	load	HCx_rat4_session12	; end
if cell_count ==	57	load	HCx_rat4_session13	; end
if cell_count ==	58	load	HCx_rat4_session14	; end
if cell_count ==	59	load	HCx_rat4_session15	; end
if cell_count ==	60	load	HCx_rat4_session16	; end
if cell_count ==	61	load	HCx_rat4_session17	; end
if cell_count ==	62	load	HCx_rat4_session18	; end
if cell_count ==	63	load	HCx_rat4_session19	; end
if cell_count ==	64	load	HCx_rat4_session20	; end
if cell_count ==	65	load	HCx_rat5_session1	; end
if cell_count ==	66	load	HCx_rat5_session2	; end
if cell_count ==	67	load	HCx_rat5_session3	; end
if cell_count ==	68	load	HCx_rat5_session4	; end
if cell_count ==	69	load	HCx_rat5_session5	; end
if cell_count ==	70	load	HCx_rat5_session6	; end
if cell_count ==	71	load	HCx_rat5_session7	; end
if cell_count ==	72	load	HCx_rat5_session8	; end
if cell_count ==	73	load	HCx_rat5_session9	; end
if cell_count ==	74	load	HCx_rat5_session10	; end
if cell_count ==	75	load	HCx_rat5_session11	; end
if cell_count ==	76	load	HCx_rat5_session12	; end
if cell_count ==	77	load	HCx_rat5_session13	; end
if cell_count ==	78	load	HCx_rat5_session14	; end
if cell_count ==	79	load	HCx_rat6_session1	; end
if cell_count ==	80	load	HCx_rat6_session2	; end
if cell_count ==	81	load	HCx_rat6_session3	; end
if cell_count ==	82	load	HCx_rat6_session4	; end
if cell_count ==	83	load	HCx_rat6_session5	; end
if cell_count ==	84	load	HCx_rat6_session6	; end
if cell_count ==	85	load	HCx_rat6_session7	; end
if cell_count ==	86	load	HCx_rat6_session8	; end
if cell_count ==	87	load	HCx_rat6_session9	; end
if cell_count ==	88	load	HCx_rat6_session10	; end
if cell_count ==	89	load	HCx_rat6_session11	; end
if cell_count ==	90	load	HCx_rat6_session12	; end
if cell_count ==	91	load	HCx_rat6_session13	; end
if cell_count ==	92	load	HCx_rat6_session14	; end
if cell_count ==	93	load	HCx_rat6_session15	; end
if cell_count ==	94	load	HCx_rat6_session16	; end
if cell_count ==	95	load	HCx_rat6_session17	; end
if cell_count ==	96	load	HCx_rat6_session18	; end
if cell_count ==	97	load	HCx_rat6_session19	; end
if cell_count ==	98	load	HCx_rat7_session1	; end
if cell_count ==	99	load	HCx_rat7_session2	; end
if cell_count ==	100	load	HCx_rat7_session3	; end
if cell_count ==	101	load	HCx_rat7_session4	; end
if cell_count ==	102	load	HCx_rat7_session5	; end
if cell_count ==	103	load	HCx_rat7_session6	; end
if cell_count ==	104	load	HCx_rat7_session7	; end
if cell_count ==	105	load	HCx_rat7_session8	; end
if cell_count ==	106	load	HCx_rat7_session9	; end
if cell_count ==	107	load	HCx_rat7_session10	; end
if cell_count ==	108	load	HCx_rat7_session11	; end
if cell_count ==	109	load	HCx_rat7_session12	; end
if cell_count ==	110	load	HCx_rat7_session13	; end
if cell_count ==	111	load	HCx_rat7_session14	; end
if cell_count ==	112	load	HCx_rat7_session15	; end
if cell_count ==	113	load	HCx_rat7_session16	; end
if cell_count ==	114	load	HCx_rat7_session17	; end
if cell_count ==	115	load	HCx_rat7_session18	; end
if cell_count ==	116	load	HCx_rat8_session1	; end
if cell_count ==	117	load	HCx_rat8_session2	; end
if cell_count ==	118	load	HCx_rat8_session3	; end
if cell_count ==	119	load	HCx_rat8_session4	; end
if cell_count ==	120	load	HCx_rat8_session5	; end
if cell_count ==	121	load	HCx_rat8_session6	; end
if cell_count ==	122	load	HCx_rat8_session7	; end
if cell_count ==	123	load	HCx_rat8_session8	; end
if cell_count ==	124	load	HCx_rat8_session9	; end
if cell_count ==	125	load	HCx_rat8_session10	; end
if cell_count ==	126	load	HCx_rat8_session11	; end
if cell_count ==	127	load	HCx_rat8_session12	; end
if cell_count ==	128	load	HCx_rat8_session13	; end
if cell_count ==	129	load	HCx_rat8_session14	; end
if cell_count ==	130	load	HCx_rat8_session15	; end
if cell_count ==	131	load	HCx_rat8_session16	; end
if cell_count ==	132	load	HCx_rat8_session17	; end
if cell_count ==	133	load	HCx_rat8_session18	; end
if cell_count ==	134	load	HCx_rat8_session19	; end
if cell_count ==	135	load	HCx_rat8_session20	; end
if cell_count ==	136	load	HCx_rat8_session21	; end
if cell_count ==	137	load	HCx_rat8_session22	; end
if cell_count ==	138	load	HCx_rat8_session23	; end
if cell_count ==	139	load	HCx_rat8_session24	; end
if cell_count ==	140	load	HCx_rat9_session1	; end
if cell_count ==	141	load	HCx_rat9_session2	; end
if cell_count ==	142	load	HCx_rat9_session3	; end
if cell_count ==	143	load	HCx_rat9_session4	; end
if cell_count ==	144	load	HCx_rat9_session5	; end
if cell_count ==	145	load	HCx_rat9_session6	; end
if cell_count ==	146	load	HCx_rat9_session7	; end
if cell_count ==	147	load	HCx_rat9_session8	; end
if cell_count ==	148	load	HCx_rat9_session9	; end
if cell_count ==	149	load	HCx_rat9_session10	; end
if cell_count ==	150	load	HCx_rat9_session11	; end
if cell_count ==	151	load	HCx_rat9_session12	; end
if cell_count ==	152	load	HCx_rat9_session13	; end
if cell_count ==	153	load	HCx_rat9_session14	; end
if cell_count ==	154	load	HCx_rat9_session15	; end
if cell_count ==	155	load	HCx_rat9_session16	; end
if cell_count ==	156	load	HCx_rat9_session17	; end
if cell_count ==	157	load	HCx_rat9_session18	; end
if cell_count ==	158	load	HCx_rat9_session19	; end
if cell_count ==	159	load	HCx_rat9_session20	; end
if cell_count ==	160	load	HCx_rat9_session21	; end
if cell_count ==	161	load	HCx_rat9_session22	; end

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

%extract free trials;
valid = find(all_trials(:,6) > -999);
all_trials_valid = all_trials(valid,:);

%Column 22 = choice ID; 1 = high, -1 = low;
for a = 1:length(all_trials_valid(:,1));
    if all_trials_valid(a,19) ==1 | all_trials_valid(a,19) == 3 | all_trials_valid(a,19) == 5 | all_trials_valid(a,19) == 7;
        all_trials_valid(a,22) = 1;
    else if all_trials_valid(a,19) ==2 | all_trials_valid(a,19) == 4 | all_trials_valid(a,19) == 6 | all_trials_valid(a,19) == 8;
            all_trials_valid(a,22) = -1;
        end
    end
end

%Column 23 = block ID;
for a = 1:length(all_trials_valid(:,1));
    if all_trials_valid(a,19) == 1 | all_trials_valid(a,19) == 2;
        all_trials_valid(a,23) = 1;
    else if all_trials_valid(a,19) == 3 | all_trials_valid(a,19) == 4;
            all_trials_valid(a,23) = 2;
        else if all_trials_valid(a,19) == 5 | all_trials_valid(a,19) == 6;
                all_trials_valid(a,23) = 3;
            else if all_trials_valid(a,19) == 7 | all_trials_valid(a,19) == 8;
                    all_trials_valid(a,23) = 4;
                end
            end
        end
    end
end

%extract choice trials in each block;
FR_bk1 = all_trials_valid(find(all_trials_valid(:,23) == 1),22);
FR_bk2 = all_trials_valid(find(all_trials_valid(:,23) == 2),22);
FR_bk3 = all_trials_valid(find(all_trials_valid(:,23) == 3),22);
FR_bk4 = all_trials_valid(find(all_trials_valid(:,23) == 4),22);

%extract first some trials;
FR_bk1_F = FR_bk1(1:First_T,1);
FR_bk2_F = FR_bk2(1:First_T,1);
FR_bk3_F = FR_bk3(1:First_T,1);
FR_bk4_F = FR_bk4(1:First_T,1);

%extract last some trials;
FR_bk1_L = FR_bk1(length(FR_bk1)-Last_T+1:length(FR_bk1),1);
FR_bk2_L = FR_bk2(length(FR_bk2)-Last_T+1:length(FR_bk2),1);
FR_bk3_L = FR_bk3(length(FR_bk3)-Last_T+1:length(FR_bk3),1);
FR_bk4_L = FR_bk4(length(FR_bk4)-Last_T+1:length(FR_bk4),1);

%extract previous some trials;
FR_bk2_P = FR_bk1(length(FR_bk1)-Prev_T+1:length(FR_bk1),1);
FR_bk3_P = FR_bk2(length(FR_bk2)-Prev_T+1:length(FR_bk2),1);
FR_bk4_P = FR_bk3(length(FR_bk3)-Prev_T+1:length(FR_bk3),1);

%calculate percent choice ;
p_bk1_sh_F = (length(find(FR_bk1_F == 1))/length(FR_bk1_F))*100;
p_bk1_lo_F = (length(find(FR_bk1_F == -1))/length(FR_bk1_F))*100;
p_bk2_sh_F = (length(find(FR_bk2_F == 1))/length(FR_bk2_F))*100;
p_bk2_lo_F = (length(find(FR_bk2_F == -1))/length(FR_bk2_F))*100;
p_bk3_bg_F = (length(find(FR_bk3_F == 1))/length(FR_bk3_F))*100;
p_bk3_sm_F = (length(find(FR_bk3_F == -1))/length(FR_bk3_F))*100;
p_bk4_bg_F = (length(find(FR_bk4_F == 1))/length(FR_bk4_F))*100;
p_bk4_sm_F = (length(find(FR_bk4_F == -1))/length(FR_bk4_F))*100;

p_bk1_sh_L = (length(find(FR_bk1_L == 1))/length(FR_bk1_L))*100;
p_bk1_lo_L = (length(find(FR_bk1_L == -1))/length(FR_bk1_L))*100;
p_bk2_sh_L = (length(find(FR_bk2_L == 1))/length(FR_bk2_L))*100;
p_bk2_lo_L = (length(find(FR_bk2_L == -1))/length(FR_bk2_L))*100;
p_bk3_bg_L = (length(find(FR_bk3_L == 1))/length(FR_bk3_L))*100;
p_bk3_sm_L = (length(find(FR_bk3_L == -1))/length(FR_bk3_L))*100;
p_bk4_bg_L = (length(find(FR_bk4_L == 1))/length(FR_bk4_L))*100;
p_bk4_sm_L = (length(find(FR_bk4_L == -1))/length(FR_bk4_L))*100;

p_sh_F = (p_bk1_sh_F + p_bk2_sh_F)/2;
p_lo_F = (p_bk1_lo_F + p_bk2_lo_F)/2;
p_bg_F = (p_bk3_bg_F + p_bk4_bg_F)/2;
p_sm_F = (p_bk3_sm_F + p_bk4_sm_F)/2;

p_sh_L = (p_bk1_sh_L + p_bk2_sh_L)/2;
p_lo_L = (p_bk1_lo_L + p_bk2_lo_L)/2;
p_bg_L = (p_bk3_bg_L + p_bk4_bg_L)/2;
p_sm_L = (p_bk3_sm_L + p_bk4_sm_L)/2;

p_high_F = (p_sh_F + p_bg_F)/2;
p_high_L = (p_sh_L + p_bg_L)/2;
p_low_F = (p_lo_F + p_sm_F)/2;
p_low_L = (p_lo_L + p_sm_L)/2;

%Combine all sessions;
%for bar-graphs,
p_all_array = cat(2,p_high_F,p_high_L,p_low_F, p_low_L);
cat_p_all(cell_count,:) = cat(1,p_all_array);

%for choice line plots
cat_bk1_F(cell_count,:) = cat(1,FR_bk1_F);
cat_bk2_F(cell_count,:) = cat(1,FR_bk2_F);
cat_bk3_F(cell_count,:) = cat(1,FR_bk3_F);
cat_bk4_F(cell_count,:) = cat(1,FR_bk4_F);

cat_bk1_L(cell_count,:) = cat(1,FR_bk1_L);
cat_bk2_L(cell_count,:) = cat(1,FR_bk2_L);
cat_bk3_L(cell_count,:) = cat(1,FR_bk3_L);
cat_bk4_L(cell_count,:) = cat(1,FR_bk4_L);

cat_bk2_P(cell_count,:) = cat(1,FR_bk2_P);
cat_bk3_P(cell_count,:) = cat(1,FR_bk3_P);
cat_bk4_P(cell_count,:) = cat(1,FR_bk4_P);

cat_comb_F(cell_count,:) = cat(1,(FR_bk1_F + FR_bk2_F + FR_bk3_F + FR_bk4_F)/4);
cat_comb_L(cell_count,:) = cat(1,(FR_bk1_L + FR_bk2_L + FR_bk3_L + FR_bk4_L)/4);
cat_comb_P(cell_count,:) = cat(1,(FR_bk2_P + FR_bk3_P + FR_bk4_P)/3);

end

%MAKE LINE PLOTS FOR CHOICE BEHAVIOR;
%combine blocks
line_D_P = cat_bk2_P;
line_D_F = (cat_bk1_F + cat_bk2_F)/2;
line_D_L = (cat_bk1_L + cat_bk2_L)/2;

line_S_P = (cat_bk3_P + cat_bk4_P)/2;
line_S_F = (cat_bk3_F +  cat_bk4_F)/2;
line_S_L = (cat_bk3_L + cat_bk4_L)/2;

line_all_P = (line_D_P + line_S_P)/2;
line_all_F = (line_D_F + line_S_F)/2;
line_all_L = (line_D_L + line_S_L)/2;

%average and sem;
avg_all_P = mean(line_all_P,1);
avg_all_F = mean(line_all_F,1);
avg_all_L = mean(line_all_L,1);

sem_all_P = std(avg_all_P,1)/sqrt(length(avg_all_P(:,1)));
sem_all_F = std(avg_all_F,1)/sqrt(length(avg_all_F(:,1)));
sem_all_L = std(avg_all_L,1)/sqrt(length(avg_all_L(:,1)));

%make figures;
x_P = 1:Prev_T;
x_F = Prev_T + 1:Prev_T + First_T;
x_L = Prev_T + First_T + 1:Prev_T + First_T + Last_T;

%figure 1;
figure;
errorbar(x_P,avg_all_P,sem_all_P,'LineWidth',3,'Color',[0 0 0]);hold on; %
errorbar(x_F,avg_all_F,sem_all_F,'LineWidth',3,'Color',[0 0 0]);hold on; %
errorbar(x_L,avg_all_L,sem_all_L,'LineWidth',3,'Color',[0 0 0]);hold on; %
title('fig1. choice');
box off;