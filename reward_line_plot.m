close all
clear all

%PARAMETERS;
Block1_last = 1% 0 --> use all trials in block 1 for Last_T; otherwise put number of trials;
First_T = 5 %Number of first trials for blocks 2-4
Last_T = 5 %Number of last trials for blocks 2-4

%LOAD FILES
for cell_count = 1:44; 				
%DE_Shm				
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

%CLEAR VARIABLES;
clear all_trials FR_1st FR_2nd FR_1st_np FR_2nd_np  FR_1st_2;
clear FR_1st_norm FR_2nd_norm  FR_1st_np_norm FR_2nd_np_norm FR_1st_2;
clear bk1_sh bk1_lo bk2_sh bk2_lo bk3_bg bk3_sm bk4_bg bk4_sm ;
clear FR_bk1_sh FR_bk1_lo FR_bk2_sh FR_bk2_lo FR_bk2_lo_np FR_bk3_bg1  FR_bk3_bg2 FR_bk3_sm;
clear FR_bk4_bg1 FR_bk4_bg2 FR_bk4_sm1 FR_bk4_sm2 
clear reward_left2 reward_right2

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
%column 5 = baseline for dashed line;

for a = 1:length(all_trials),
   if all_trials(a,18)>0;
       FR_1st(a,1) = (length(find(cell(:,1) <=(all_trials(a,18)+0.5) & cell(:,1) >=(all_trials(a,18)+0.1)))...
           /((all_trials(a,18)+0.5)-(all_trials(a,18)+0.1)));
       FR_1st(a,2) = (length(find(cell(:,1) <=(all_trials(a,21)+ 1.0) & cell(:,1) >=(all_trials(a,21)+ 0.5)))...
            /((all_trials(a,21)+ 1.0)-(all_trials(a,21)+ 0.5)));
       FR_1st(a,3) = (length(find(cell(:,1) <=(all_trials(a,21)+ 1.5) & cell(:,1) >=(all_trials(a,21)+ 1.0)))...
            /((all_trials(a,21)+ 1.5)-(all_trials(a,21)+ 1.0)));
       FR_1st(a,4) = length(find(cell(:,1) <=(all_trials(a,1)-0.5+0.4) & cell(:,1) >=(all_trials(a,1)-0.5)))/0.4;
       FR_1st(a,5) = length(find(cell(:,1) <=(all_trials(a,1)-0.4+0.5) & cell(:,1) >=(all_trials(a,1)-0.4)))/0.5;
           
   else
       FR_1st(a,1:5) = -999;
   end
end
    
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
    FR_bk1_sh = FR_1st(bk1_sh,1); %firing on short reward;
    FR_bk1_lo = FR_1st(bk1_lo,1); %firing on long reward;
    FR_bk1_sh_base = FR_1st(bk1_sh,5); %firing on short reward;
    FR_bk1_lo_base = FR_1st(bk1_lo,5); %firing on long reward;


    %block 2;
    FR_bk2_sh = FR_1st(bk2_sh,1); %firing on short reward; PPE
    FR_bk2_lo = FR_1st(bk2_lo,1); %firing on long reward;
    FR_bk2_lo_np = FR_1st(bk2_lo,2); %firing on short reward omission; NPE
    FR_bk2_sh_base = FR_1st(bk2_sh,5); %firing on short reward; PPE
    FR_bk2_lo_base = FR_1st(bk2_lo,5); %firing on long reward;

    %block 3;
    FR_bk3_bg1 = FR_1st(bk3_bg,1); %firing on short reward; PPE
    FR_bk3_bg2 = FR_1st(bk3_bg,3); %firing on big reward; PPE
    FR_bk3_sm = FR_1st(bk3_sm,1); %firing on small reward;
    FR_bk3_bg_base = FR_1st(bk3_bg,5); %firing on short reward; PPE
    FR_bk3_sm_base = FR_1st(bk3_sm,5); %firing on small reward;
   
    %block 4;
    FR_bk4_bg1 = FR_1st(bk4_bg,1); %firing on 1st drop; PPE
    FR_bk4_bg2 = FR_1st(bk4_bg,3); %firing on 2nd drop; PPE
    FR_bk4_sm1 = FR_1st(bk4_sm,1); %firing on small reward;
    FR_bk4_sm2 = FR_1st(bk4_sm,3); %firing on big reward omission; NPE
    FR_bk4_bg_base = FR_1st(bk4_bg,5); %firing on 2nd drop; PPE
    FR_bk4_sm_base = FR_1st(bk4_sm,5); %firing on small reward;

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

FR_bk1_base_F = (FR_bk1_sh_base(1:First_T,:) + FR_bk1_lo_base(1:First_T,:)/2);
FR_bk2_base_F = (FR_bk2_sh_base(1:First_T,:) + FR_bk2_lo_base(1:First_T,:)/2);
FR_bk3_base_F = (FR_bk3_bg_base(1:First_T,:) + FR_bk3_sm_base(1:First_T,:)/2);
FR_bk4_base_F = (FR_bk4_bg_base(1:First_T,:) + FR_bk4_sm_base(1:First_T,:)/2);

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

FR_bk2_base_L = (FR_bk2_sh_base(length(FR_bk2_sh_base)-Last_T+1:length(FR_bk2_sh_base),:) + ...
    FR_bk2_lo_base(length(FR_bk2_lo_base)-Last_T+1:length(FR_bk2_lo_base),:))/2;
FR_bk3_base_L = (FR_bk3_bg_base(length(FR_bk3_bg_base)-Last_T+1:length(FR_bk3_bg_base),:) + ...
    FR_bk3_sm_base(length(FR_bk3_sm_base)-Last_T+1:length(FR_bk3_sm_base),:))/2;
FR_bk4_base_L = (FR_bk4_bg_base(length(FR_bk4_bg_base)-Last_T+1:length(FR_bk4_bg_base),:) + ...
    FR_bk4_sm_base(length(FR_bk4_sm_base)-Last_T+1:length(FR_bk4_sm_base),:))/2;

%COMBINE blocks;
%Separate analysis for DELAY and SIZE blocks;
%DELAY PPE
dPPE_F = (FR_bk2_sh_F + FR_bk3_bg1_F)/2'; %early;
dPPE_L = (FR_bk2_sh_L + FR_bk3_bg1_L)/2'; %late;

%DELAY NPE;
dNPE_F = FR_bk2_lo_np_F'; %early;
dNPE_L = FR_bk2_lo_np_L'; %late;

%DELAY BASE;
dPE_base_F = (FR_bk2_base_F + FR_bk3_base_F)/2;
dPE_base_L = (FR_bk2_base_L + FR_bk3_base_L)/2;

%SIZE PPE;
sPPE_F = (FR_bk3_bg2_F + FR_bk4_bg2_F)/2'; %early;
sPPE_L = (FR_bk3_bg2_L + FR_bk4_bg2_L)/2'; %late;

%SIZE NPE;
sNPE_F = FR_bk4_sm2_F'; %early;
sNPE_L = FR_bk4_sm2_L'; %late;

%SIZE BASE;
sPE_base_F = (FR_bk3_base_F + FR_bk4_base_F)/2;
sPE_base_L = (FR_bk3_base_L + FR_bk4_base_L)/2;

%COMB base;
PE_base_F = (dPE_base_F + sPE_base_F)/2;
PE_base_L = (dPE_base_L + sPE_base_L)/2;


%PPE and NPE;
PPE_F = (dPPE_F + sPPE_F)/2;
PPE_L = (dPPE_L + sPPE_L)/2;

NPE_F = (dNPE_F + sNPE_F)/2;
NPE_L = (dNPE_L + sNPE_L)/2;


%COMBINE ALL CELLS;
cat_dPPE_F(cell_count,:) = cat(1,dPPE_F);
cat_dPPE_L(cell_count,:) = cat(1,dPPE_L);

cat_dNPE_F(cell_count,:) = cat(1,dNPE_F);
cat_dNPE_L(cell_count,:) = cat(1,dNPE_L);

cat_sPPE_F(cell_count,:) = cat(1,sPPE_F);
cat_sPPE_L(cell_count,:) = cat(1,sPPE_L);

cat_sNPE_F(cell_count,:) = cat(1,sNPE_F);
cat_sNPE_L(cell_count,:) = cat(1,sNPE_L);

cat_PPE_F(cell_count,:) = cat(1,PPE_F);
cat_PPE_L(cell_count,:) = cat(1,PPE_L);
cat_NPE_F(cell_count,:) = cat(1,NPE_F);
cat_NPE_L(cell_count,:) = cat(1,NPE_L);

cat_bk3_bg1_F(cell_count,:) = cat(1,FR_bk3_bg1_F);
cat_bk3_bg1_L(cell_count,:) = cat(1,FR_bk3_bg1_L);
cat_bk3_bg2_F(cell_count,:) = cat(1,FR_bk3_bg2_F);
cat_bk3_bg2_L(cell_count,:) = cat(1,FR_bk3_bg2_L);
cat_bk3_sm_F(cell_count,:) = cat(1,FR_bk3_sm_F);
cat_bk3_sm_L(cell_count,:) = cat(1,FR_bk3_sm_L);

cat_bk4_bg1_F(cell_count,:) = cat(1,FR_bk4_bg1_F);
cat_bk4_bg1_L(cell_count,:) = cat(1,FR_bk4_bg1_L);
cat_bk4_bg2_F(cell_count,:) = cat(1,FR_bk4_bg2_F);
cat_bk4_bg2_L(cell_count,:) = cat(1,FR_bk4_bg2_L);
cat_bk4_sm1_F(cell_count,:) = cat(1,FR_bk4_sm1_F);
cat_bk4_sm1_L(cell_count,:) = cat(1,FR_bk4_sm1_L);
cat_bk4_sm2_F(cell_count,:) = cat(1,FR_bk4_sm2_F);
cat_bk4_sm2_L(cell_count,:) = cat(1,FR_bk4_sm2_L);


cat_dPE_F(cell_count,:) = cat(1,dPE_base_F);
cat_dPE_L(cell_count,:) = cat(1,dPE_base_L);
cat_sPE_F(cell_count,:) = cat(1,sPE_base_F);
cat_sPE_L(cell_count,:) = cat(1,sPE_base_L);

cat_PE_F(cell_count,:) = cat(1,PE_base_F);
cat_PE_L(cell_count,:) = cat(1,PE_base_L);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CALCULATE AVERAGE AND SE;
avg_dPPE_F = mean(cat_dPPE_F,1);
avg_dPPE_L = mean(cat_dPPE_L,1);
avg_dNPE_F = mean(cat_dNPE_F,1);
avg_dNPE_L = mean(cat_dNPE_L,1);

avg_sPPE_F = mean(cat_sPPE_F,1);
avg_sPPE_L = mean(cat_sPPE_L,1);
avg_sNPE_F = mean(cat_sNPE_F,1);
avg_sNPE_L = mean(cat_sNPE_L,1);

avg_PPE_F = mean(cat_PPE_F,1);
avg_PPE_L = mean(cat_PPE_L,1);
avg_NPE_F = mean(cat_NPE_F,1);
avg_NPE_L = mean(cat_NPE_L,1);

avg_dPE_F = mean(cat_dPE_F,1);
avg_dPE_L = mean(cat_dPE_L,1);
avg_sPE_F = mean(cat_sPE_F,1);
avg_sPE_L = mean(cat_sPE_L,1);

avg_PE_F = mean(cat_PE_F,1);
avg_PE_L = mean(cat_PE_L,1);

avg_bk3_bg1_F = mean(cat_bk3_bg1_F,1);
avg_bk3_bg2_F = mean(cat_bk3_bg2_F,1);
avg_bk3_bg1_L = mean(cat_bk3_bg1_L,1);
avg_bk3_bg2_L = mean(cat_bk3_bg2_L,1);

avg_bk4_bg1_F = mean(cat_bk4_bg1_F,1);
avg_bk4_bg2_F = mean(cat_bk4_bg2_F,1);
avg_bk4_bg1_L = mean(cat_bk4_bg1_L,1);
avg_bk4_bg2_L = mean(cat_bk4_bg2_L,1);
avg_bk4_sm1_F = mean(cat_bk4_sm1_F,1);
avg_bk4_sm2_F = mean(cat_bk4_sm2_F,1);
avg_bk4_sm1_L = mean(cat_bk4_sm1_L,1);
avg_bk4_sm2_L = mean(cat_bk4_sm2_L,1);


%Calculate case mean = mean of all trials in each case(cell);
    case_mean_dPPE_F = mean(cat_dPPE_F,2);
    case_mean_dPPE_L = mean(cat_dPPE_L,2);
    case_mean_dNPE_F = mean(cat_dNPE_F,2);
    case_mean_dNPE_L = mean(cat_dNPE_L,2);
    
    case_mean_sPPE_F = mean(cat_sPPE_F,2);
    case_mean_sPPE_L = mean(cat_sPPE_L,2);
    case_mean_sNPE_F = mean(cat_sNPE_F,2);
    case_mean_sNPE_L = mean(cat_sNPE_L,2);
    
    case_mean_PPE_F = mean(cat_PPE_F,2);
    case_mean_PPE_L = mean(cat_PPE_L,2);
    case_mean_NPE_F = mean(cat_NPE_F,2);
    case_mean_NPE_L = mean(cat_NPE_L,2);
    
    case_mean_dPE_F = mean(cat_dPE_F,2);
    case_mean_dPE_L = mean(cat_dPE_L,2);
    case_mean_sPE_F = mean(cat_sPE_F,2);
    case_mean_sPE_L = mean(cat_sPE_L,2);
    
    case_mean_PE_F = mean(cat_PE_F,2);
    case_mean_PE_L = mean(cat_PE_L,2);
    
    case_mean_bk3_bg1_F = mean(cat_bk3_bg1_F,2);
    case_mean_bk3_bg1_L = mean(cat_bk3_bg1_L,2);
    case_mean_bk3_bg2_F = mean(cat_bk3_bg2_F,2);
    case_mean_bk3_bg2_L = mean(cat_bk3_bg2_L,2);
    
    case_mean_bk4_bg1_F = mean(cat_bk4_bg1_F,2);
    case_mean_bk4_bg1_L = mean(cat_bk4_bg1_L,2);
    case_mean_bk4_bg2_F = mean(cat_bk4_bg2_F,2);
    case_mean_bk4_bg2_L = mean(cat_bk4_bg2_L,2);
    case_mean_bk4_sm1_F = mean(cat_bk4_sm1_F,2);
    case_mean_bk4_sm1_L = mean(cat_bk4_sm1_L,2);
    case_mean_bk4_sm2_F = mean(cat_bk4_sm2_F,2);
    case_mean_bk4_sm2_L = mean(cat_bk4_sm2_L,2);
    
    %calculate 'grand mean" (average of all trials on all subjects);
    grand_mean_dPPE_F = mean(mean(cat_dPPE_F,1),2);
    grand_mean_dPPE_L = mean(mean(cat_dPPE_L,1),2);
    grand_mean_dNPE_F = mean(mean(cat_dNPE_F,1),2);
    grand_mean_dNPE_L = mean(mean(cat_dNPE_L,1),2);
    
    grand_mean_sPPE_F = mean(mean(cat_sPPE_F,1),2);
    grand_mean_sPPE_L = mean(mean(cat_sPPE_L,1),2);
    grand_mean_sNPE_F = mean(mean(cat_sNPE_F,1),2);
    grand_mean_sNPE_L = mean(mean(cat_sNPE_L,1),2);
    
    grand_mean_PPE_F = mean(mean(cat_PPE_F,1),2);
    grand_mean_PPE_L = mean(mean(cat_PPE_L,1),2);
    grand_mean_NPE_F = mean(mean(cat_NPE_F,1),2);
    grand_mean_NPE_L = mean(mean(cat_NPE_L,1),2);
    
    grand_mean_dPE_F = mean(mean(cat_dPE_F,1),2);
    grand_mean_dPE_L = mean(mean(cat_dPE_L,1),2);
    grand_mean_sPE_F = mean(mean(cat_sPE_F,1),2);
    grand_mean_sPE_L = mean(mean(cat_sPE_L,1),2);
    
    grand_mean_PE_F = mean(mean(cat_PE_F,1),2);
    grand_mean_PE_L = mean(mean(cat_PE_L,1),2);
    
    
    grand_mean_bk3_bg1_F = mean(mean(cat_bk3_bg1_F,1),2);
    grand_mean_bk3_bg1_L = mean(mean(cat_bk3_bg1_L,1),2);
    grand_mean_bk3_bg2_F = mean(mean(cat_bk3_bg2_F,1),2);
    grand_mean_bk3_bg2_L = mean(mean(cat_bk3_bg2_L,1),2);
    
    grand_mean_bk4_bg1_F = mean(mean(cat_bk4_bg1_F,1),2);
    grand_mean_bk4_bg1_L = mean(mean(cat_bk4_bg1_L,1),2);
    grand_mean_bk4_bg2_F = mean(mean(cat_bk4_bg2_F,1),2);
    grand_mean_bk4_bg2_L = mean(mean(cat_bk4_bg2_L,1),2);
    grand_mean_bk4_sm1_F = mean(mean(cat_bk4_sm1_F,1),2);
    grand_mean_bk4_sm1_L = mean(mean(cat_bk4_sm1_L,1),2);
    grand_mean_bk4_sm2_F = mean(mean(cat_bk4_sm2_F,1),2);
    grand_mean_bk4_sm2_L = mean(mean(cat_bk4_sm2_L,1),2);
    
    
    %calcuate adjusted value  = 'grand mean - case mean';
    adj_value_dPPE_F = grand_mean_dPPE_F - case_mean_dPPE_F;
    adj_value_dPPE_L = grand_mean_dPPE_L - case_mean_dPPE_L;
    adj_value_dNPE_F = grand_mean_dNPE_F - case_mean_dNPE_F;
    adj_value_dNPE_L = grand_mean_dNPE_L - case_mean_dNPE_L;
    
    adj_value_sPPE_F = grand_mean_sPPE_F - case_mean_sPPE_F;
    adj_value_sPPE_L = grand_mean_sPPE_L - case_mean_sPPE_L;
    adj_value_sNPE_F = grand_mean_sNPE_F - case_mean_sNPE_F;
    adj_value_sNPE_L = grand_mean_sNPE_L - case_mean_sNPE_L;
    
    adj_value_PPE_F = grand_mean_PPE_F - case_mean_PPE_F;
    adj_value_PPE_L = grand_mean_PPE_L - case_mean_PPE_L;
    adj_value_NPE_F = grand_mean_NPE_F - case_mean_NPE_F;
    adj_value_NPE_L = grand_mean_NPE_L - case_mean_NPE_L;
    
    adj_value_dPE_F = grand_mean_dPE_F - case_mean_dPE_F;
    adj_value_dPE_L = grand_mean_dPE_L - case_mean_dPE_L;
    adj_value_sPE_F = grand_mean_sPE_F - case_mean_sPE_F;
    adj_value_sPE_L = grand_mean_sPE_L - case_mean_sPE_L;
    
    adj_value_PE_F = grand_mean_PE_F - case_mean_PE_F;
    adj_value_PE_L = grand_mean_PE_L - case_mean_PE_L;
    
    adj_value_bk3_bg1_F = grand_mean_bk3_bg1_F - case_mean_bk3_bg1_F;
    adj_value_bk3_bg1_L = grand_mean_bk3_bg1_L - case_mean_bk3_bg1_L;
    adj_value_bk3_bg2_F = grand_mean_bk3_bg2_F - case_mean_bk3_bg2_F;
    adj_value_bk3_bg2_L = grand_mean_bk3_bg2_L - case_mean_bk3_bg2_L;
    
    adj_value_bk4_bg1_F = grand_mean_bk4_bg1_F - case_mean_bk4_bg1_F;
    adj_value_bk4_bg1_L = grand_mean_bk4_bg1_L - case_mean_bk4_bg1_L;
    adj_value_bk4_bg2_F = grand_mean_bk4_bg2_F - case_mean_bk4_bg2_F;
    adj_value_bk4_bg2_L = grand_mean_bk4_bg2_L - case_mean_bk4_bg2_L;
    adj_value_bk4_sm1_F = grand_mean_bk4_sm1_F - case_mean_bk4_sm1_F;
    adj_value_bk4_sm1_L = grand_mean_bk4_sm1_L - case_mean_bk4_sm1_L;
    adj_value_bk4_sm2_F = grand_mean_bk4_sm2_F - case_mean_bk4_sm2_F;
    adj_value_bk4_sm2_L = grand_mean_bk4_sm2_L - case_mean_bk4_sm2_L;
    
    %calculate adjusted numbers; actual number + adjusted value
    for a = 1:First_T;
        adj_dPPE_F(:,a) = cat_dPPE_F(:,a) + adj_value_dPPE_F;
        adj_dNPE_F(:,a) = cat_dNPE_F(:,a) + adj_value_dNPE_F;
        
        adj_sPPE_F(:,a) = cat_sPPE_F(:,a) + adj_value_sPPE_F;
        adj_sNPE_F(:,a) = cat_sNPE_F(:,a) + adj_value_sNPE_F;
        
        adj_PPE_F(:,a) = cat_PPE_F(:,a) + adj_value_PPE_F;
        adj_NPE_F(:,a) = cat_NPE_F(:,a) + adj_value_NPE_F
        
        adj_dPE_F(:,a) = cat_dPE_F(:,a) + adj_value_dPE_F;
        adj_sPE_F(:,a) = cat_sPE_F(:,a) + adj_value_sPE_F;
        
        adj_PE_F(:,a) = cat_PE_F(:,a) + adj_value_PE_F;
        
        adj_bk3_bg1_F(:,a) = cat_bk3_bg1_F(:,a) + adj_value_bk3_bg1_F;
        adj_bk3_bg2_F(:,a) = cat_bk3_bg2_F(:,a) + adj_value_bk3_bg2_F;
        
        adj_bk4_bg1_F(:,a) = cat_bk4_bg1_F(:,a) + adj_value_bk4_bg1_F;
        adj_bk4_bg2_F(:,a) = cat_bk4_bg2_F(:,a) + adj_value_bk4_bg2_F;
        adj_bk4_sm1_F(:,a) = cat_bk4_sm1_F(:,a) + adj_value_bk4_sm1_F;
        adj_bk4_sm2_F(:,a) = cat_bk4_sm2_F(:,a) + adj_value_bk4_sm2_F;
    end
    
    for a = 1:Last_T;
        adj_dPPE_L(:,a) = cat_dPPE_L(:,a) + adj_value_dPPE_L;
        adj_dNPE_L(:,a) = cat_dNPE_L(:,a) + adj_value_dNPE_L;
        
        adj_sPPE_L(:,a) = cat_sPPE_L(:,a) + adj_value_sPPE_L;
        adj_sNPE_L(:,a) = cat_sNPE_L(:,a) + adj_value_sNPE_L;
        
        adj_PPE_L(:,a) = cat_PPE_L(:,a) + adj_value_PPE_L;
        adj_NPE_L(:,a) = cat_NPE_L(:,a) + adj_value_NPE_L;
        
        adj_dPE_L(:,a) = cat_dPE_L(:,a) + adj_value_dPE_L;
        adj_sPE_L(:,a) = cat_sPE_L(:,a) + adj_value_sPE_L;
        
        adj_PE_L(:,a) = cat_PE_L(:,a) + adj_value_PE_L;
        
        adj_bk3_bg1_L(:,a) = cat_bk3_bg1_L(:,a) + adj_value_bk3_bg1_L;
        adj_bk3_bg2_L(:,a) = cat_bk3_bg2_L(:,a) + adj_value_bk3_bg2_L;
        
        adj_bk4_bg1_L(:,a) = cat_bk4_bg1_L(:,a) + adj_value_bk4_bg1_L;
        adj_bk4_bg2_L(:,a) = cat_bk4_bg2_L(:,a) + adj_value_bk4_bg2_L;
        adj_bk4_sm1_L(:,a) = cat_bk4_sm1_L(:,a) + adj_value_bk4_sm1_L;
        adj_bk4_sm2_L(:,a) = cat_bk4_sm2_L(:,a) + adj_value_bk4_sm2_L;
    end
    
    %Calculate within subject sem;
    sem_dPPE_F = std(adj_dPPE_F,1)/sqrt(length(adj_dPPE_F(:,1)));
    sem_dPPE_L = std(adj_dPPE_L,1)/sqrt(length(adj_dPPE_L(:,1)));
    sem_dNPE_F = std(adj_dNPE_F,1)/sqrt(length(adj_dNPE_F(:,1)));
    sem_dNPE_L = std(adj_dNPE_L,1)/sqrt(length(adj_dNPE_L(:,1)));

    sem_sPPE_F = std(adj_sPPE_F,1)/sqrt(length(adj_sPPE_F(:,1)));
    sem_sPPE_L = std(adj_sPPE_L,1)/sqrt(length(adj_sPPE_L(:,1)));
    sem_sNPE_F = std(adj_sNPE_F,1)/sqrt(length(adj_sNPE_F(:,1)));
    sem_sNPE_L = std(adj_sNPE_L,1)/sqrt(length(adj_sNPE_L(:,1)));
    
    sem_PPE_F = std(adj_PPE_F,1)/sqrt(length(adj_PPE_F(:,1)));
    sem_PPE_L = std(adj_PPE_L,1)/sqrt(length(adj_PPE_L(:,1)));
    sem_NPE_F = std(adj_NPE_F,1)/sqrt(length(adj_NPE_F(:,1)));
    sem_NPE_L = std(adj_NPE_L,1)/sqrt(length(adj_NPE_L(:,1)));
    
    sem_dPE_F = std(adj_dPE_F,1)/sqrt(length(adj_dPE_F(:,1)));
    sem_dPE_L = std(adj_dPE_L,1)/sqrt(length(adj_dPE_L(:,1)));
    sem_sPE_F = std(adj_sPE_F,1)/sqrt(length(adj_sPE_F(:,1)));
    sem_sPE_L = std(adj_sPE_L,1)/sqrt(length(adj_sPE_L(:,1)));
    
    sem_PE_F = std(adj_PE_F,1)/sqrt(length(adj_PE_F(:,1)));
    sem_PE_L = std(adj_PE_L,1)/sqrt(length(adj_PE_L(:,1)));
    
    sem_bk3_bg1_F = std(adj_bk3_bg1_F,1)/sqrt(length(adj_bk3_bg1_F(:,1)));
    sem_bk3_bg1_L = std(adj_bk3_bg1_L,1)/sqrt(length(adj_bk3_bg1_L(:,1)));
    sem_bk3_bg2_F = std(adj_bk3_bg2_F,1)/sqrt(length(adj_bk3_bg2_F(:,1)));
    sem_bk3_bg2_L = std(adj_bk3_bg2_L,1)/sqrt(length(adj_bk3_bg2_L(:,1)));
    
    sem_bk4_bg1_F = std(adj_bk4_bg1_F,1)/sqrt(length(adj_bk4_bg1_F(:,1)));
    sem_bk4_bg1_L = std(adj_bk4_bg1_L,1)/sqrt(length(adj_bk4_bg1_L(:,1)));
    sem_bk4_bg2_F = std(adj_bk4_bg2_F,1)/sqrt(length(adj_bk4_bg2_F(:,1)));
    sem_bk4_bg2_L = std(adj_bk4_bg2_L,1)/sqrt(length(adj_bk4_bg2_L(:,1)));
    sem_bk4_sm1_F = std(adj_bk4_sm1_F,1)/sqrt(length(adj_bk4_sm1_F(:,1)));
    sem_bk4_sm1_L = std(adj_bk4_sm1_L,1)/sqrt(length(adj_bk4_sm1_L(:,1)));
    sem_bk4_sm2_F = std(adj_bk4_sm2_F,1)/sqrt(length(adj_bk4_sm2_F(:,1)));
    sem_bk4_sm2_L = std(adj_bk4_sm2_L,1)/sqrt(length(adj_bk4_sm2_L(:,1)));
    
        dPE_single = mean(cat(2,avg_dPE_F,avg_dPE_L));
        sPE_single = mean(cat(2,avg_sPE_F,avg_sPE_L));
        PE_single = mean(cat(2,avg_PE_F,avg_PE_L));
        bk3_bg_single = mean(cat(2,avg_bk3_bg1_F,avg_bk3_bg1_L));
        bk4_bg_single = mean(cat(2,avg_bk4_bg1_F,avg_bk4_bg1_L));
        
        avg_dPE_F = [];
        avg_dPE_L = [];
        avg_sPE_F = [];
        avg_sPE_L = [];
        avg_PE_F = [];
        avg_PE_L = [];
        avg_bk3_bg_F = [];
        avg_bk3_bg_L = [];
        avg_bk4_bg_F = [];
        avg_bk4_bg_L = [];
        
        avg_dPE_F(1,1:First_T) = dPE_single;
        avg_dPE_L(1,1:Last_T) = dPE_single;
        avg_sPE_F(1,1:First_T) = sPE_single;
        avg_sPE_L(1,1:Last_T) = sPE_single;
        avg_PE_F(1,1:First_T) = PE_single;
        avg_PE_L(1,1:Last_T) = PE_single;
        avg_bk3_bg_F(1,1:First_T) = bk3_bg_single;
        avg_bk3_bg_L(1,1:Last_T) = bk3_bg_single;
        avg_bk4_bg_F(1,1:First_T) = bk4_bg_single;
        avg_bk4_bg_L(1,1:Last_T) = bk4_bg_single;
        
        avg_bk34_bg_F = (avg_bk3_bg_F + avg_bk4_bg_F)/2;
        avg_bk34_bg_L = (avg_bk3_bg_L + avg_bk4_bg_L)/2;

    %Make figures;
x_F = 1:First_T; 
x_L = First_T + 1: First_T + Last_T;

%figure 1; PE;
figure;
plot(x_F,avg_PE_F,'LineWidth',3,'Color',[.8 .8 .8],'LineStyle',':');hold on; %gray dashed = base
plot(x_L,avg_PE_L,'LineWidth',3,'Color',[.8 .8 .8],'LineStyle',':');hold on; %gray dashed = base

errorbar(x_F,avg_NPE_F,sem_NPE_F,'LineWidth',3,'Color',[.7 .7 .7]);hold on; %gray = NPE
errorbar(x_F,avg_PPE_F,sem_PPE_F,'LineWidth',3,'Color',[0 0 0]);hold on; %black = PPE

errorbar(x_L,avg_NPE_L,sem_NPE_L,'LineWidth',3,'Color',[.7 .7 .7]);hold on; %gray = NPE
errorbar(x_L,avg_PPE_L,sem_PPE_L,'LineWidth',3,'Color',[0 0 0]);hold on; %black = PPE

title('fig1. PE');
box off;
    
    