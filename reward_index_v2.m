close all
clear all

%PARAMETERS;
Block1_last = 0 % 0 --> use all trials in block 1 for Last_T; otherwise put number of trials;
First_T = 5 %Number of first trials for blocks 2-4
Last_T = 5 %Number of last trials for blocks 2-4


%LOAD FILES
for cell_count = 1:110; 				
%Ctrl				
if cell_count ==	1	load	sham_DA_unit1	; end
if cell_count ==	2	load	sham_DA_unit2	; end
if cell_count ==	3	load	sham_DA_unit3	; end
if cell_count ==	4	load	sham_DA_unit4	; end
if cell_count ==	5	load	sham_DA_unit5	; end
if cell_count ==	6	load	sham_DA_unit6	; end
if cell_count ==	7	load	sham_DA_unit7	; end
if cell_count ==	8	load	sham_DA_unit8	; end
if cell_count ==	9	load	sham_DA_unit9	; end
if cell_count ==	10	load	sham_DA_unit10	; end
if cell_count ==	11	load	sham_DA_unit11	; end
if cell_count ==	12	load	sham_DA_unit12	; end
if cell_count ==	13	load	sham_DA_unit13	; end
if cell_count ==	14	load	sham_DA_unit14	; end
if cell_count ==	15	load	sham_DA_unit15	; end
if cell_count ==	16	load	sham_DA_unit16	; end
if cell_count ==	17	load	sham_DA_unit17	; end
if cell_count ==	18	load	sham_DA_unit18	; end
if cell_count ==	19	load	sham_DA_unit19	; end
if cell_count ==	20	load	sham_DA_unit20	; end
if cell_count ==	21	load	sham_DA_unit21	; end
if cell_count ==	22	load	sham_DA_unit22	; end
if cell_count ==	23	load	sham_DA_unit23	; end
if cell_count ==	24	load	sham_DA_unit24	; end
if cell_count ==	25	load	sham_DA_unit25	; end
if cell_count ==	26	load	sham_DA_unit26	; end
if cell_count ==	27	load	sham_DA_unit27	; end
if cell_count ==	28	load	sham_DA_unit28	; end
if cell_count ==	29	load	sham_DA_unit29	; end
if cell_count ==	30	load	sham_DA_unit30	; end
if cell_count ==	31	load	sham_DA_unit31	; end
if cell_count ==	32	load	sham_DA_unit32	; end
if cell_count ==	33	load	sham_DA_unit33	; end
if cell_count ==	34	load	sham_DA_unit34	; end
if cell_count ==	35	load	sham_DA_unit35	; end
if cell_count ==	36	load	sham_DA_unit36	; end
if cell_count ==	37	load	sham_DA_unit37	; end
if cell_count ==	38	load	sham_DA_unit38	; end
if cell_count ==	39	load	sham_DA_unit39	; end
if cell_count ==	40	load	sham_DA_unit40	; end
if cell_count ==	41	load	sham_DA_unit41	; end
if cell_count ==	42	load	sham_DA_unit42	; end
if cell_count ==	43	load	sham_DA_unit43	; end
if cell_count ==	44	load	sham_DA_unit44	; end
%HCx				
if cell_count ==	45	load	HCx_DA_unit1	; end
if cell_count ==	46	load	HCx_DA_unit2	; end
if cell_count ==	47	load	HCx_DA_unit3	; end
if cell_count ==	48	load	HCx_DA_unit4	; end
if cell_count ==	49	load	HCx_DA_unit5	; end
if cell_count ==	50	load	HCx_DA_unit6	; end
if cell_count ==	51	load	HCx_DA_unit7	; end
if cell_count ==	52	load	HCx_DA_unit8	; end
if cell_count ==	53	load	HCx_DA_unit9	; end
if cell_count ==	54	load	HCx_DA_unit10	; end
if cell_count ==	55	load	HCx_DA_unit11	; end
if cell_count ==	56	load	HCx_DA_unit12	; end
if cell_count ==	57	load	HCx_DA_unit13	; end
if cell_count ==	58	load	HCx_DA_unit14	; end
if cell_count ==	59	load	HCx_DA_unit15	; end
if cell_count ==	60	load	HCx_DA_unit16	; end
if cell_count ==	61	load	HCx_DA_unit17	; end
if cell_count ==	62	load	HCx_DA_unit18	; end
if cell_count ==	63	load	HCx_DA_unit19	; end
if cell_count ==	64	load	HCx_DA_unit20	; end
if cell_count ==	65	load	HCx_DA_unit21	; end
if cell_count ==	66	load	HCx_DA_unit22	; end
if cell_count ==	67	load	HCx_DA_unit23	; end
if cell_count ==	68	load	HCx_DA_unit24	; end
if cell_count ==	69	load	HCx_DA_unit25	; end
if cell_count ==	70	load	HCx_DA_unit26	; end
if cell_count ==	71	load	HCx_DA_unit27	; end
if cell_count ==	72	load	HCx_DA_unit28	; end
if cell_count ==	73	load	HCx_DA_unit29	; end
if cell_count ==	74	load	HCx_DA_unit30	; end
if cell_count ==	75	load	HCx_DA_unit31	; end
if cell_count ==	76	load	HCx_DA_unit32	; end
if cell_count ==	77	load	HCx_DA_unit33	; end
if cell_count ==	78	load	HCx_DA_unit34	; end
if cell_count ==	79	load	HCx_DA_unit35	; end
if cell_count ==	80	load	HCx_DA_unit36	; end
if cell_count ==	81	load	HCx_DA_unit37	; end
if cell_count ==	82	load	HCx_DA_unit38	; end
if cell_count ==	83	load	HCx_DA_unit39	; end
if cell_count ==	84	load	HCx_DA_unit40	; end
if cell_count ==	85	load	HCx_DA_unit41	; end
if cell_count ==	86	load	HCx_DA_unit42	; end
if cell_count ==	87	load	HCx_DA_unit43	; end
if cell_count ==	88	load	HCx_DA_unit44	; end
if cell_count ==	89	load	HCx_DA_unit45	; end
if cell_count ==	90	load	HCx_DA_unit46	; end
if cell_count ==	91	load	HCx_DA_unit47	; end
if cell_count ==	92	load	HCx_DA_unit48	; end
if cell_count ==	93	load	HCx_DA_unit49	; end
if cell_count ==	94	load	HCx_DA_unit50	; end
if cell_count ==	95	load	HCx_DA_unit51	; end
if cell_count ==	96	load	HCx_DA_unit52	; end
if cell_count ==	97	load	HCx_DA_unit53	; end
if cell_count ==	98	load	HCx_DA_unit54	; end
if cell_count ==	99	load	HCx_DA_unit55	; end
if cell_count ==	100	load	HCx_DA_unit56	; end
if cell_count ==	101	load	HCx_DA_unit57	; end
if cell_count ==	102	load	HCx_DA_unit58	; end
if cell_count ==	103	load	HCx_DA_unit59	; end
if cell_count ==	104	load	HCx_DA_unit60	; end
if cell_count ==	105	load	HCx_DA_unit61	; end
if cell_count ==	106	load	HCx_DA_unit62	; end
if cell_count ==	107	load	HCx_DA_unit63	; end
if cell_count ==	108	load	HCx_DA_unit64	; end
if cell_count ==	109	load	HCx_DA_unit65	; end
if cell_count ==	110	load	HCx_DA_unit66	; end

%CLEAR VARIABLES;
clear all_trials FR_1st FR_2nd FR_1st_np FR_2nd_np  FR_1st_2;
clear FR_1st_norm FR_2nd_norm  FR_1st_np_norm FR_2nd_np_norm FR_1st_2;
clear bk1_sh bk1_lo bk2_sh bk2_lo bk3_bg bk3_sm bk4_bg bk4_sm ;
clear FR_bk1_sh FR_bk1_lo FR_bk2_sh FR_bk2_lo FR_bk2_lo_np FR_bk3_bg1  FR_bk3_bg2 FR_bk3_sm;
clear FR_bk4_bg1 FR_bk4_bg2 FR_bk4_sm1 FR_bk4_sm2 
clear reward_left2 reward_right2;
clear valid_trials FR_all;

cell=unit;

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

%COLUMN 16 =FIND TIME OF WHEN BROKE BEAM IN ODOR PORT;;
b=1;
for a = 1:length(all_trials),
    if b > length(odor_poke(:,1))
        break
    end
    if odor_poke(b,1) < all_trials(a,2) &  odor_poke(b,1) > all_trials(a,1)
        all_trials(a,16) = odor_poke(b,1);
        b=b+1;
    else
        all_trials(a,16) = -999;
    end
end

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
%5 = short in block 3
%6 = long in block 3;
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
    bk5_first = big_R_first;
else
    bk2_first = long_L_first;
    bk3_first = long_L_last + 1;
    bk4_first = big_R_first;
    bk5_first = big_L_first;
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
        all_trials(a,19) = 6; %long bk3;
    end
    if all_trials(a,4) > -999 & all_trials(a,13) > -999 & a < bk4_first & a >= bk3_first;
        all_trials(a,19) = 5; %short bk3;
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

%FOR FIDING REWARD RESPONSIVE NEURONS;
%CALCULATE FIRING RATE DURING ALL REWARD DELIVERY AND BASELINE;
%column 1 = reward response on 1st drop, 
%column 2 = firing at 0.5 s
%column 3 = firing at 1.0 s
%column 4 = baseline firing

for a = 1:length(all_trials),
   if all_trials(a,18)>0;
       FR_1st(a,1) = (length(find(cell(:,1) <=(all_trials(a,18)+0.5) & cell(:,1) >=(all_trials(a,18)+0.1)))...
           /((all_trials(a,18)+0.5)-(all_trials(a,18)+0.1)));
       FR_1st(a,2) = (length(find(cell(:,1) <=(all_trials(a,21)+ 1.0) & cell(:,1) >=(all_trials(a,21)+ 0.5)))...
            /((all_trials(a,21)+ 1.0)-(all_trials(a,21)+ 0.5)));
       FR_1st(a,3) = (length(find(cell(:,1) <=(all_trials(a,21)+ 1.5) & cell(:,1) >=(all_trials(a,21)+ 1.0)))...
            /((all_trials(a,21)+ 1.5)-(all_trials(a,21)+ 1.0)));
       FR_1st(a,4) = length(find(cell(:,1) <=(all_trials(a,1)-0.5+0.4) & cell(:,1) >=(all_trials(a,1)-0.5)))/0.4;
   else
       FR_1st(a,1:4) = -999;
   end
end

%baseline and reward;
valid_trials = find(FR_1st(:,1)>-999)
FR_all(:,1) = FR_1st(valid_trials,1);
FR_all(:,2) = FR_1st(valid_trials,4);

%COMBINE ALL CELLS;
if cell_count <=44;
    Ctrl(cell_count,:) = cat(1,mean(FR_all,1));
else if cell_count > 44;
        HCx(cell_count-44,:) = cat(1,mean(FR_all,1));
    end
end

FR_1st_norm(:,1) = FR_1st(:,1) - FR_1st(:,4);
FR_1st_norm(:,2) = FR_1st(:,2) - FR_1st(:,4);
FR_1st_norm(:,3) = FR_1st(:,3) - FR_1st(:,4);
    
%EXTRACT EACH CONDITION;
bk1_sh = find(all_trials(:,19) == 1);
bk1_lo = find(all_trials(:,19) == 2);
bk2_sh = find(all_trials(:,19) == 3);
bk2_lo = find(all_trials(:,19) == 4);
bk3_bg = find(all_trials(:,19) == 5);
bk3_sm = find(all_trials(:,19) == 6);
bk4_bg = find(all_trials(:,19) == 7);
bk4_sm = find(all_trials(:,19) == 8);

    %block 1;
    FR_bk1_sh = FR_1st_norm(bk1_sh,1); %firing on short reward;
    FR_bk1_lo = FR_1st_norm(bk1_lo,1); %firing on long reward;

    %block 2;
    FR_bk2_sh = FR_1st_norm(bk2_sh,1); %firing on short reward; PPE
    FR_bk2_lo = FR_1st_norm(bk2_lo,1); %firing on long reward;
    FR_bk2_lo_np = FR_1st_norm(bk2_lo,2); %firing on short reward omission; NPE

    %block 3;
    FR_bk3_bg1 = FR_1st_norm(bk3_bg,1); %firing on short reward; PPE
    FR_bk3_bg2 = FR_1st_norm(bk3_bg,3); %firing on big reward; PPE
    FR_bk3_sm = FR_1st_norm(bk3_sm,1); %firing on small reward;
   
    %block 4;
    FR_bk4_bg1 = FR_1st_norm(bk4_bg,1); %firing on 1st drop; PPE
    FR_bk4_bg2 = FR_1st_norm(bk4_bg,3); %firing on 2nd drop; PPE
    FR_bk4_sm1 = FR_1st_norm(bk4_sm,1); %firing on small reward;
    FR_bk4_sm2 = FR_1st_norm(bk4_sm,3); %firing on big reward omission; NPE

%Extract first and last some trials; defined by First_T and Last_T;
%First trials;
FR_bk1_sh_F = FR_bk1_sh(1:First_T,:);
FR_bk1_lo_F = FR_bk1_lo(1:First_T,:);

FR_bk2_sh_F = FR_bk2_sh(1:First_T,:);
FR_bk2_lo_F = FR_bk2_lo(1:First_T,:);
FR_bk2_lo_np_F = FR_bk2_lo_np(1:First_T,:);

FR_bk3_bg1_F = FR_bk3_bg1(1:First_T,:);
FR_bk3_bg2_F = FR_bk3_bg2(1:First_T,:);
FR_bk3_sm_F = FR_bk3_sm(1:First_T,:);

FR_bk4_bg1_F = FR_bk4_bg1(1:First_T,:);
FR_bk4_bg2_F = FR_bk4_bg2(1:First_T,:);
FR_bk4_sm1_F = FR_bk4_sm1(1:First_T,:);
FR_bk4_sm2_F = FR_bk4_sm2(1:First_T,:);

%last trials;
if Block1_last == 0;
    %FOR block1, average of last trials uses average of all trials in block1;
    FR_bk1_sh_L = FR_bk1_sh;
    FR_bk1_lo_L = FR_bk1_lo;
else if Block1_last > 0;
    FR_bk1_sh_L = FR_bk1_sh(length(FR_bk1_sh)-Last_T+1:length(FR_bk1_sh),:);
    FR_bk1_lo_L = FR_bk1_lo(length(FR_bk1_lo)-Last_T+1:length(FR_bk1_lo),:);
    end
end

FR_bk2_sh_L = FR_bk2_sh(length(FR_bk2_sh)-Last_T+1:length(FR_bk2_sh),:);
FR_bk2_lo_L = FR_bk2_lo(length(FR_bk2_lo)-Last_T+1:length(FR_bk2_lo),:);
FR_bk2_lo_np_L = FR_bk2_lo_np(length(FR_bk2_lo_np)-Last_T+1:length(FR_bk2_lo_np),:);

FR_bk3_bg1_L = FR_bk3_bg1(length(FR_bk3_bg1)-Last_T+1:length(FR_bk3_bg1),:);
FR_bk3_bg2_L = FR_bk3_bg2(length(FR_bk3_bg2)-Last_T+1:length(FR_bk3_bg2),:);
FR_bk3_sm_L = FR_bk3_sm(length(FR_bk3_sm)-Last_T+1:length(FR_bk3_sm),:);

FR_bk4_bg1_L = FR_bk4_bg1(length(FR_bk4_bg1)-Last_T+1:length(FR_bk4_bg1),:);
FR_bk4_bg2_L = FR_bk4_bg2(length(FR_bk4_bg2)-Last_T+1:length(FR_bk4_bg2),:);
FR_bk4_sm1_L = FR_bk4_sm1(length(FR_bk4_sm1)-Last_T+1:length(FR_bk4_sm1),:);
FR_bk4_sm2_L = FR_bk4_sm2(length(FR_bk4_sm2)-Last_T+1:length(FR_bk4_sm2),:);

%COMBINE blocks;
%PPE all;
PPE_F = cat(1,FR_bk2_sh_F,FR_bk3_bg1_F,FR_bk3_bg2_F,FR_bk4_bg2_F); %early;
PPE_L = cat(1,FR_bk2_sh_L,FR_bk3_bg1_L,FR_bk3_bg2_L,FR_bk4_bg2_L); %late;

%NPE all;
NPE_F = cat(1,FR_bk2_lo_np_F,FR_bk4_sm2_F); %early;
NPE_L = cat(1,FR_bk2_lo_np_L,FR_bk4_sm2_L); %late;

%STATISTICS; comparison between early and late trials;
%PPE all;
[h_PPE,p_PPE] = ttest2(PPE_F(:,1),PPE_L(:,1));
[h_NPE,p_NPE] = ttest2(NPE_F(:,1),NPE_L(:,1));

%Make results array;
array_PE = cat(2,h_PPE,p_PPE,mean(PPE_F(:,1)),mean(PPE_L(:,1)),h_NPE,p_NPE,mean(NPE_F(:,1)),mean(NPE_L(:,1)));

%COMBINE ALL CELLS;
if cell_count <=44;
    Ctrl_PE(cell_count,:) = cat(1,array_PE);
else if cell_count > 44;
        HCx_PE(cell_count - 44,:) = cat(1,array_PE);
    end
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%MAKE DISTRIBUTION FIGURES;
%CALCULATE INDEX;
idx_Ctrl_PE(:,1) = Ctrl_PE(:,3) - Ctrl_PE(:,4); %PPE;
idx_Ctrl_PE(:,2) = Ctrl_PE(:,7) - Ctrl_PE(:,8); %NPP;
idx_HCx_PE(:,1) = HCx_PE(:,3) - HCx_PE(:,4); %PPE;
idx_HCx_PE(:,2) = HCx_PE(:,7) - HCx_PE(:,8); %NPP;

x = -20:0.5:20;
idx_Ctrl_PE_score(:,1) = histc(idx_Ctrl_PE(:,1),x); %PPE; 
idx_Ctrl_PE_score(:,2) = histc(idx_Ctrl_PE(:,2),x); %NPE;
idx_HCx_PE_score(:,1) = histc(idx_HCx_PE(:,1),x); %PPE; 
idx_HCx_PE_score(:,2) = histc(idx_HCx_PE(:,2),x); %NPE;

%MAKE FIGURES; 
x2 = x + 0.25;

figure1 = figure; %PPE;
axes1 = axes('XTick',[-12 -6 0 6 12],'YTick',[0 4 8 12],'Parent',figure1);
axis(axes1,[-12 12 0 12]);
hold(axes1,'all');

bar(x2,idx_Ctrl_PE_score(:,1),'BarWidth',1,'FaceColor',[0.5 0.5 0.5]);hold on;
plot([0 0],[0 12],'LineStyle','--','Color','k'); hold on;
box off;


figure2 = figure; %PPE;
axes1 = axes('XTick',[-12 -6 0 6 12],'YTick',[0 6 12 18],'Parent',figure2);
axis(axes1,[-12 12 0 18]);
hold(axes1,'all');

bar(x2,idx_HCx_PE_score(:,1),'BarWidth',1,'FaceColor',[0.5 0.5 0.5]);hold on;
plot([0 0],[0 18],'LineStyle','--','Color','k'); hold on;
box off;


figure3 = figure; %NPE;
axes1 = axes('XTick',[-12 -6 0 6 12],'YTick',[0 4 8 12],'Parent',figure3);
axis(axes1,[-12 12 0 12]);
hold(axes1,'all');

bar(x2,idx_Ctrl_PE_score(:,2),'BarWidth',1,'FaceColor',[0.5 0.5 0.5]);hold on;
plot([0 0],[0 12],'LineStyle','--','Color','k'); hold on;
box off;


figure4 = figure; %NPE;
axes1 = axes('XTick',[-12 -6 0 6 12],'YTick',[0 6 12 18],'Parent',figure4);
axis(axes1,[-12 12 0 18]);
hold(axes1,'all');

bar(x2,idx_HCx_PE_score(:,2),'BarWidth',1,'FaceColor',[0.5 0.5 0.5]);hold on;
plot([0 0],[0 18],'LineStyle','--','Color','k'); hold on;
box off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ctrl_avg = mean(Ctrl,1);
HCx_avg = mean(HCx,1);
Ctrl_sem = std(Ctrl)/sqrt(length(Ctrl(:,1)));
HCx_sem = std(HCx)/sqrt(length(HCx(:,1)));


%baseline and reward;
figure5 = figure;
axes1 = axes('XTick',[1 2 3.5 4.5],'XTickLabel',{'Reward','Baseline','Reward','Baseline'},...
    'YTick',[0 1 2 3 4],'Parent',figure5);
hold(axes1,'all');

bar(1,Ctrl_avg(:,1),'FaceColor',[0 0 0]); hold on;
bar(2,Ctrl_avg(:,2),'FaceColor',[0 0 0]); hold on;
bar(3.5,HCx_avg(:,1),'FaceColor',[.5 .5 .5]); hold on;
bar(4.5,HCx_avg(:,2),'FaceColor',[.5 .5 .5]); hold on;
errorbar(1,Ctrl_avg(:,1),Ctrl_sem(:,1),'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(2,Ctrl_avg(:,2),Ctrl_sem(:,2),'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(3.5,HCx_avg(:,1),HCx_sem(:,1),'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(4.5,HCx_avg(:,2),HCx_sem(:,2),'Color',[0 0 0],'LineStyle','none');hold on;