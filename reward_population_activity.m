close all
clear all

%PARAMETERS;
bin_size = 0.01;

Block1_last = 0 % 0 --> use all trials in block 1 for Last_T; otherwise put number of trials;
First_T = 5 %Number of first trials for blocks 2-5
Last_T = 5 %Number of last trials for blocks 2-5

filtering = 1;
windowSize = 10;

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
clear all_trials FR_base spike_times_idx spike_times spike_idx spike_idx_n;
clear spike_times_idx2 spike_times2 spike_idx2 spike_idx_n2;
clear bk1_sh bk1_lo bk2_sh bk2_lo bk3_bg bk3_sm bk4_bg bk4_sm ;
clear FR_bk1_sh FR_bk1_lo FR_bk2_sh FR_bk2_lo FR_bk3_bg FR_bk3_sm;
clear FR_bk4_bg FR_bk4_sm FR_bk3_bg2 FR_bk4_bg2 FR_bk4_sm2 ;
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

%CALCULATE FIRING RATE IN EACH BIN;
bin_centers = -0.5: bin_size: 1.5;

for a = 1:length(all_trials);
    spike_times_idx = find(cell(:,1) <= (all_trials(a,21)+1.5)  & cell(:,1) >= (all_trials(a,21)-0.5)); %Find Y-axix of Spikes in Cell during Reward Delivery 
    spike_times = cell(spike_times_idx); %Find Times of Spikes based on Y-axis,
    spike_times_normalized = spike_times - all_trials(a,21); %Normalized by Reward Delivery,
    if filtering == 0
        spike_idx(a,:) = smooth2(hist(spike_times_normalized,bin_centers),0)/bin_size; %Smoothing
    else if filtering == 1
            spike_idx(a,:) = filter(ones(1,windowSize)/windowSize,1,(smooth2(hist(spike_times_normalized,bin_centers),0)/bin_size)); %Smoothing
        end
    end
end

for a = 1:length(all_trials(:,1));
        FR_base(a,1) = length(find(cell(:,1) <=(all_trials(a,1)-0.5+0.4) & cell(:,1) >=(all_trials(a,1)-0.5)))/0.4;
        spike_idx_n(a,:) = spike_idx(a,:)- FR_base(a,1);
end

%for 2nd reward delivery and omission;
for a = 1:length(all_trials);
    spike_times_idx2 = find(cell(:,1) <= (all_trials(a,21)+0.5+1.5)  & cell(:,1) >= (all_trials(a,21)+0.5-0.5)); %Find Y-axix of Spikes in Cell during Reward Delivery 
    spike_times2 = cell(spike_times_idx2); %Find Times of Spikes based on Y-axis,
    spike_times_normalized2 = spike_times2 - (all_trials(a,21)+0.5); %Normalized by Reward Delivery,
    if filtering == 0
        spike_idx2(a,:) = smooth2(hist(spike_times_normalized2,bin_centers),0)/bin_size; %Smoothing
    else if filtering == 1
            spike_idx2(a,:) = filter(ones(1,windowSize)/windowSize,1,(smooth2(hist(spike_times_normalized2,bin_centers),0)/bin_size)); %Smoothing
        end
    end
end

for a = 1:length(all_trials(:,1));
        FR_base(a,1) = length(find(cell(:,1) <=(all_trials(a,1)-0.5+0.4) & cell(:,1) >=(all_trials(a,1)-0.5)))/0.4;
        spike_idx_n2(a,:) = spike_idx2(a,:)- FR_base(a,1);
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
FR_bk1_sh = spike_idx_n(bk1_sh,:); %firing on short reward;
FR_bk1_lo = spike_idx_n(bk1_lo,:); %firing on long reward;

%block 2;
FR_bk2_sh = spike_idx_n(bk2_sh,:); %firing on short reward; PPE
FR_bk2_lo = spike_idx_n(bk2_lo,:); %firing on long reward;

%block 3;
FR_bk3_bg = spike_idx_n(bk3_bg,:); %firing on big reward; PPE
FR_bk3_bg2 = spike_idx_n2(bk3_bg,:); %firing on big reward; PPE
FR_bk3_sm = spike_idx_n(bk3_sm,:); %firing on small reward;

%block 4;
FR_bk4_bg = spike_idx_n(bk4_bg,:); %firing on big reward
FR_bk4_bg2 = spike_idx_n2(bk4_bg,:); %firing on big reward
FR_bk4_sm = spike_idx_n(bk4_sm,:); %firing on small reward;
FR_bk4_sm2 = spike_idx_n2(bk4_sm,:); %firing on small reward;

%Extract first and last some trials; defined by First_T and Last_T;
%First trials;
FR_bk1_sh_F = FR_bk1_sh(1:First_T,:);
FR_bk1_lo_F = FR_bk1_lo(1:First_T,:);

FR_bk2_sh_F = FR_bk2_sh(1:First_T,:);
FR_bk2_lo_F = FR_bk2_lo(1:First_T,:);

FR_bk3_bg_F = FR_bk3_bg(1:First_T,:);
FR_bk3_sm_F = FR_bk3_sm(1:First_T,:);
FR_bk3_bg2_F = FR_bk3_bg2(1:First_T,:);

FR_bk4_bg_F = FR_bk4_bg(1:First_T,:);
FR_bk4_sm_F = FR_bk4_sm(1:First_T,:);
FR_bk4_bg2_F = FR_bk4_bg2(1:First_T,:);
FR_bk4_sm2_F = FR_bk4_sm2(1:First_T,:);

%last trials;
if Block1_last == 0;
    %FOR block1, average of last trials uses average of all trials in block1;
    FR_bk1_sh_L = FR_bk1_sh;
    FR_bk1_lo_L = FR_bk1_lo;
else if Block1_last > 0;
    FR_bk1_sh_L = FR_bk1_sh(length(FR_bk1_sh(:,1))-Last_T+1:length(FR_bk1_sh(:,1)),:);
    FR_bk1_lo_L = FR_bk1_lo(length(FR_bk1_lo(:,1))-Last_T+1:length(FR_bk1_lo(:,1)),:);
    end
end

FR_bk2_sh_L = FR_bk2_sh(length(FR_bk2_sh(:,1))-Last_T+1:length(FR_bk2_sh(:,1)),:);
FR_bk2_lo_L = FR_bk2_lo(length(FR_bk2_lo(:,1))-Last_T+1:length(FR_bk2_lo(:,1)),:);

FR_bk3_bg_L = FR_bk3_bg(length(FR_bk3_bg(:,1))-Last_T+1:length(FR_bk3_bg(:,1)),:);
FR_bk3_bg2_L = FR_bk3_bg2(length(FR_bk3_bg2(:,1))-Last_T+1:length(FR_bk3_bg2(:,1)),:);
FR_bk3_sm_L = FR_bk3_sm(length(FR_bk3_sm(:,1))-Last_T+1:length(FR_bk3_sm(:,1)),:);

FR_bk4_bg_L = FR_bk4_bg(length(FR_bk4_bg(:,1))-Last_T+1:length(FR_bk4_bg(:,1)),:);
FR_bk4_sm_L = FR_bk4_sm(length(FR_bk4_sm(:,1))-Last_T+1:length(FR_bk4_sm(:,1)),:);
FR_bk4_bg2_L = FR_bk4_bg2(length(FR_bk4_bg2(:,1))-Last_T+1:length(FR_bk4_bg2(:,1)),:);
FR_bk4_sm2_L = FR_bk4_sm2(length(FR_bk4_sm2(:,1))-Last_T+1:length(FR_bk4_sm2(:,1)),:);

%divide bk3_bg into Delay and Size,
drop2 = find(bin_centers(1,:) > 1.0);

%COMBINE blocks;
%Separate analysis for DELAY and SIZE blocks;
%DELAY PPE
dPPE_Fa = (FR_bk2_sh_F(:,1:drop2(1,1)-1) + FR_bk3_bg_F(:,1:drop2(1,1)-1))/2; %early;
dPPE_F = cat(2,dPPE_Fa,FR_bk2_sh_F(:,drop2(1,1):length(bin_centers)));

dPPE_La = (FR_bk2_sh_L(:,1:drop2(1,1)-1) + FR_bk3_bg_L(:,1:drop2(1,1)-1))/2; %early;
dPPE_L = cat(2,dPPE_La,FR_bk2_sh_L(:,drop2(1,1):length(bin_centers)));


%DELAY NPE;
dNPE_F = FR_bk2_lo_F; %early;
dNPE_L = FR_bk2_lo_L; %late;

%SIZE PPE;
sPPE_Fb = (FR_bk3_bg_F(:,drop2(1,1):length(bin_centers)) + FR_bk4_bg_F(:,drop2(1,1):length(bin_centers)))/2; %early;
sPPE_F = cat(2,FR_bk4_bg_F(:,1:drop2(1,1)-1),sPPE_Fb);

sPPE_Lb = (FR_bk3_bg_L(:,drop2(1,1):length(bin_centers)) + FR_bk4_bg_L(:,drop2(1,1):length(bin_centers)))/2; %early;
sPPE_L = cat(2,FR_bk4_bg_L(:,1:drop2(1,1)-1),sPPE_Lb);


%SIZE NPE;
sNPE_F = FR_bk4_sm_F; %early;
sNPE_L = FR_bk4_sm_L; %late;

%Combine delay and size;
%PPE all;
PPE_F = (FR_bk2_sh_F + FR_bk3_bg_F + FR_bk3_bg2_F + FR_bk4_bg2_F)/4; %early;
PPE_L = (FR_bk2_sh_L + FR_bk3_bg_L + FR_bk3_bg2_L + FR_bk4_bg2_L)/4;%late;

%NPE all;
NPE_F = (FR_bk2_lo_F + FR_bk4_sm2_F)/2; %early;
NPE_L = (FR_bk2_lo_L + FR_bk4_sm2_L)/2; %late;

%Average all trials;
%DELAY;
array_dPPE_F = mean(dPPE_F,1);
array_dPPE_L = mean(dPPE_L,1);
array_dNPE_F = mean(dNPE_F,1);
array_dNPE_L = mean(dNPE_L,1);

%SIZE;
array_sPPE_F = mean(sPPE_F,1);
array_sPPE_L = mean(sPPE_L,1);
array_sNPE_F = mean(sNPE_F,1);
array_sNPE_L = mean(sNPE_L,1);

%PE ALL;
array_PPE_F = mean(PPE_F,1);
array_PPE_L = mean(PPE_L,1);
array_NPE_F = mean(NPE_F,1);
array_NPE_L = mean(NPE_L,1);

array_bk2_sh_F = mean(FR_bk2_sh_F,1);
array_bk2_sh_L = mean(FR_bk2_sh_L,1);
array_bk2_lo_F = mean(FR_bk2_lo_F,1);
array_bk2_lo_L = mean(FR_bk2_lo_L,1);
array_bk3_bg_F = mean(FR_bk3_bg_F,1);
array_bk3_bg_L = mean(FR_bk3_bg_L,1);
array_bk3_sm_F = mean(FR_bk3_sm_F,1);
array_bk3_sm_L = mean(FR_bk3_sm_L,1);
array_bk4_bg_F = mean(FR_bk4_bg_F,1);
array_bk4_bg_L = mean(FR_bk4_bg_L,1);
array_bk4_sm_F = mean(FR_bk4_sm_F,1);
array_bk4_sm_L = mean(FR_bk4_sm_L,1);

%COMBINE ALL CELLS;
cat_dPPE_F(cell_count,:) = cat(1,array_dPPE_F);
cat_dPPE_L(cell_count,:) = cat(1,array_dPPE_L);
cat_dNPE_F(cell_count,:) = cat(1,array_dNPE_F);
cat_dNPE_L(cell_count,:) = cat(1,array_dNPE_L);

cat_sPPE_F(cell_count,:) = cat(1,array_sPPE_F);
cat_sPPE_L(cell_count,:) = cat(1,array_sPPE_L);
cat_sNPE_F(cell_count,:) = cat(1,array_sNPE_F);
cat_sNPE_L(cell_count,:) = cat(1,array_sNPE_L);

cat_PPE_F(cell_count,:) = cat(1,array_PPE_F);
cat_PPE_L(cell_count,:) = cat(1,array_PPE_L);
cat_NPE_F(cell_count,:) = cat(1,array_NPE_F);
cat_NPE_L(cell_count,:) = cat(1,array_NPE_L);

cat_bk2_sh_F(cell_count,:) = cat(1,array_bk2_sh_F);
cat_bk2_sh_L(cell_count,:) = cat(1,array_bk2_sh_L);
cat_bk2_lo_F(cell_count,:) = cat(1,array_bk2_lo_F);
cat_bk2_lo_L(cell_count,:) = cat(1,array_bk2_lo_L);
cat_bk3_bg_F(cell_count,:) = cat(1,array_bk3_bg_F);
cat_bk3_bg_L(cell_count,:) = cat(1,array_bk3_bg_L);
cat_bk3_sm_F(cell_count,:) = cat(1,array_bk3_sm_F);
cat_bk3_sm_L(cell_count,:) = cat(1,array_bk3_sm_L);
cat_bk4_bg_F(cell_count,:) = cat(1,array_bk4_bg_F);
cat_bk4_bg_L(cell_count,:) = cat(1,array_bk4_bg_L);
cat_bk4_sm_F(cell_count,:) = cat(1,array_bk4_sm_F);
cat_bk4_sm_L(cell_count,:) = cat(1,array_bk4_sm_L);


end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculate difference lines (First - Last);
cat_dPPE_D = cat_dPPE_F - cat_dPPE_L;
cat_dNPE_D = cat_dNPE_F - cat_dNPE_L;
cat_sPPE_D = cat_sPPE_F - cat_sPPE_L;
cat_sNPE_D = cat_sNPE_F - cat_sNPE_L;

cat_PPE_D = cat_PPE_F - cat_PPE_L;
cat_NPE_D = cat_NPE_F - cat_NPE_L;

cat_bk2_sh_D = cat_bk2_sh_F - cat_bk2_sh_L;
cat_bk2_lo_D = cat_bk2_lo_F - cat_bk2_lo_L;
cat_bk3_bg_D = cat_bk3_bg_F - cat_bk3_bg_L;
cat_bk3_sm_D = cat_bk3_sm_F - cat_bk3_sm_L;
cat_bk4_bg_D = cat_bk4_bg_F - cat_bk4_bg_L;
cat_bk4_sm_D = cat_bk4_sm_F - cat_bk4_sm_L;

%average;
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

avg_dPPE_D = mean(cat_dPPE_D,1);
avg_dNPE_D = mean(cat_dNPE_D,1);
avg_sPPE_D = mean(cat_sPPE_D,1);
avg_sNPE_D = mean(cat_sNPE_D,1);
avg_PPE_D = mean(cat_PPE_D,1);
avg_NPE_D = mean(cat_NPE_D,1);

avg_bk2_sh_F = mean(cat_bk2_sh_F,1);
avg_bk2_lo_F = mean(cat_bk2_lo_F,1);
avg_bk3_bg_F = mean(cat_bk3_bg_F,1);
avg_bk3_sm_F = mean(cat_bk3_sm_F,1);
avg_bk4_bg_F = mean(cat_bk4_bg_F,1);
avg_bk4_sm_F = mean(cat_bk4_sm_F,1);

avg_bk2_sh_L = mean(cat_bk2_sh_L,1);
avg_bk2_lo_L = mean(cat_bk2_lo_L,1);
avg_bk3_bg_L = mean(cat_bk3_bg_L,1);
avg_bk3_sm_L = mean(cat_bk3_sm_L,1);
avg_bk4_bg_L = mean(cat_bk4_bg_L,1);
avg_bk4_sm_L = mean(cat_bk4_sm_L,1);

avg_bk2_sh_D = mean(cat_bk2_sh_D,1);
avg_bk2_lo_D = mean(cat_bk2_lo_D,1);
avg_bk3_bg_D = mean(cat_bk3_bg_D,1);
avg_bk3_sm_D = mean(cat_bk3_sm_D,1);
avg_bk4_bg_D = mean(cat_bk4_bg_D,1);
avg_bk4_sm_D = mean(cat_bk4_sm_D,1);


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
    
    case_mean_dPPE_D = mean(cat_dPPE_D,2);
    case_mean_sPPE_D = mean(cat_sPPE_D,2);
    case_mean_dNPE_D = mean(cat_dNPE_D,2);
    case_mean_sNPE_D = mean(cat_sNPE_D,2);
    
    case_mean_PPE_D = mean(cat_PPE_D,2);
    case_mean_NPE_D = mean(cat_NPE_D,2);
    
    case_mean_bk2_sh_F = mean(cat_bk2_sh_F,2);
    case_mean_bk2_lo_F = mean(cat_bk2_lo_F,2);
    case_mean_bk3_bg_F = mean(cat_bk3_bg_F,2);
    case_mean_bk3_sm_F = mean(cat_bk3_sm_F,2);
    case_mean_bk4_bg_F = mean(cat_bk4_bg_F,2);
    case_mean_bk4_sm_F = mean(cat_bk4_sm_F,2);
    
    case_mean_bk2_sh_L = mean(cat_bk2_sh_L,2);
    case_mean_bk2_lo_L = mean(cat_bk2_lo_L,2);
    case_mean_bk3_bg_L = mean(cat_bk3_bg_L,2);
    case_mean_bk3_sm_L = mean(cat_bk3_sm_L,2);
    case_mean_bk4_bg_L = mean(cat_bk4_bg_L,2);
    case_mean_bk4_sm_L = mean(cat_bk4_sm_L,2);
    
    case_mean_bk2_sh_D = mean(cat_bk2_sh_D,2);
    case_mean_bk2_lo_D = mean(cat_bk2_lo_D,2);
    case_mean_bk3_bg_D = mean(cat_bk3_bg_D,2);
    case_mean_bk3_sm_D = mean(cat_bk3_sm_D,2);
    case_mean_bk4_bg_D = mean(cat_bk4_bg_D,2);
    case_mean_bk4_sm_D = mean(cat_bk4_sm_D,2);

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
    
    grand_mean_dPPE_D = mean(mean(cat_dPPE_D,1),2);
    grand_mean_sPPE_D = mean(mean(cat_sPPE_D,1),2);
    grand_mean_dNPE_D = mean(mean(cat_dNPE_D,1),2);
    grand_mean_sNPE_D = mean(mean(cat_sNPE_D,1),2);
    
    grand_mean_PPE_D = mean(mean(cat_PPE_D,1),2);
    grand_mean_NPE_D = mean(mean(cat_NPE_D,1),2);
    
    grand_mean_bk2_sh_F = mean(mean(cat_bk2_sh_F,1),2);
    grand_mean_bk2_lo_F = mean(mean(cat_bk2_lo_F,1),2);
    grand_mean_bk3_bg_F = mean(mean(cat_bk3_bg_F,1),2);
    grand_mean_bk3_sm_F = mean(mean(cat_bk3_sm_F,1),2);
    grand_mean_bk4_bg_F = mean(mean(cat_bk4_bg_F,1),2);
    grand_mean_bk4_sm_F = mean(mean(cat_bk4_sm_F,1),2);
    
    grand_mean_bk2_sh_L = mean(mean(cat_bk2_sh_L,1),2);
    grand_mean_bk2_lo_L = mean(mean(cat_bk2_lo_L,1),2);
    grand_mean_bk3_bg_L = mean(mean(cat_bk3_bg_L,1),2);
    grand_mean_bk3_sm_L = mean(mean(cat_bk3_sm_L,1),2);
    grand_mean_bk4_bg_L = mean(mean(cat_bk4_bg_L,1),2);
    grand_mean_bk4_sm_L = mean(mean(cat_bk4_sm_L,1),2);
    
    grand_mean_bk2_sh_D = mean(mean(cat_bk2_sh_D,1),2);
    grand_mean_bk2_lo_D = mean(mean(cat_bk2_lo_D,1),2);
    grand_mean_bk3_bg_D = mean(mean(cat_bk3_bg_D,1),2);
    grand_mean_bk3_sm_D = mean(mean(cat_bk3_sm_D,1),2);
    grand_mean_bk4_bg_D = mean(mean(cat_bk4_bg_D,1),2);
    grand_mean_bk4_sm_D = mean(mean(cat_bk4_sm_D,1),2);
    
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
    
    adj_value_dPPE_D = grand_mean_dPPE_D- case_mean_dPPE_D;
    adj_value_sPPE_D = grand_mean_sPPE_D - case_mean_sPPE_D;
    adj_value_dNPE_D = grand_mean_dNPE_D - case_mean_dNPE_D;
    adj_value_sNPE_D = grand_mean_sNPE_D - case_mean_sNPE_D;
    
    adj_value_PPE_D = grand_mean_PPE_D - case_mean_PPE_D;
    adj_value_NPE_D = grand_mean_NPE_D - case_mean_NPE_D;
    
    adj_value_bk2_sh_F = grand_mean_bk2_sh_F- case_mean_bk2_sh_F;
    adj_value_bk2_lo_F = grand_mean_bk2_lo_F- case_mean_bk2_lo_F;
    adj_value_bk3_bg_F = grand_mean_bk3_bg_F- case_mean_bk3_bg_F;
    adj_value_bk3_sm_F = grand_mean_bk3_sm_F- case_mean_bk3_sm_F;
    adj_value_bk4_bg_F = grand_mean_bk4_bg_F- case_mean_bk4_bg_F;
    adj_value_bk4_sm_F = grand_mean_bk4_sm_F- case_mean_bk4_sm_F;
    
    adj_value_bk2_sh_L = grand_mean_bk2_sh_L- case_mean_bk2_sh_L;
    adj_value_bk2_lo_L = grand_mean_bk2_lo_L- case_mean_bk2_lo_L;
    adj_value_bk3_bg_L = grand_mean_bk3_bg_L- case_mean_bk3_bg_L;
    adj_value_bk3_sm_L = grand_mean_bk3_sm_L- case_mean_bk3_sm_L;
    adj_value_bk4_bg_L = grand_mean_bk4_bg_L- case_mean_bk4_bg_L;
    adj_value_bk4_sm_L = grand_mean_bk4_sm_L- case_mean_bk4_sm_L;
    
    adj_value_bk2_sh_D = grand_mean_bk2_sh_D- case_mean_bk2_sh_D;
    adj_value_bk2_lo_D = grand_mean_bk2_lo_D- case_mean_bk2_lo_D;
    adj_value_bk3_bg_D = grand_mean_bk3_bg_D- case_mean_bk3_bg_D;
    adj_value_bk3_sm_D = grand_mean_bk3_sm_D- case_mean_bk3_sm_D;
    adj_value_bk4_bg_D = grand_mean_bk4_bg_D- case_mean_bk4_bg_D;
    adj_value_bk4_sm_D = grand_mean_bk4_sm_D- case_mean_bk4_sm_D;
    
     %calculate adjusted numbers; actual number + adjusted value
    for a = 1:length(bin_centers);
        adj_dPPE_F(:,a) = cat_dPPE_F(:,a) + adj_value_dPPE_F;
        adj_dNPE_F(:,a) = cat_dNPE_F(:,a) + adj_value_dNPE_F;
        adj_dPPE_L(:,a) = cat_dPPE_L(:,a) + adj_value_dPPE_L;
        adj_dNPE_L(:,a) = cat_dNPE_L(:,a) + adj_value_dNPE_L;
        
        adj_sPPE_F(:,a) = cat_sPPE_F(:,a) + adj_value_sPPE_F;
        adj_sNPE_F(:,a) = cat_sNPE_F(:,a) + adj_value_sNPE_F;
        adj_sPPE_L(:,a) = cat_sPPE_L(:,a) + adj_value_sPPE_L;
        adj_sNPE_L(:,a) = cat_sNPE_L(:,a) + adj_value_sNPE_L;
        
        adj_PPE_F(:,a) = cat_PPE_F(:,a) + adj_value_dPPE_F;
        adj_NPE_F(:,a) = cat_NPE_F(:,a) + adj_value_NPE_F;
        adj_PPE_L(:,a) = cat_PPE_L(:,a) + adj_value_PPE_L;
        adj_NPE_L(:,a) = cat_NPE_L(:,a) + adj_value_NPE_L;
        
        adj_dPPE_D(:,a) = cat_dPPE_D(:,a) + adj_value_dPPE_D;
        adj_sPPE_D(:,a) = cat_sPPE_D(:,a) + adj_value_sPPE_D;
        adj_dNPE_D(:,a) = cat_dNPE_D(:,a) + adj_value_dNPE_D;
        adj_sNPE_D(:,a) = cat_sNPE_D(:,a) + adj_value_sNPE_D;
        
        adj_PPE_D(:,a) = cat_PPE_D(:,a) + adj_value_PPE_D;
        adj_NPE_D(:,a) = cat_NPE_D(:,a) + adj_value_NPE_D;
        
        adj_bk2_sh_F(:,a) = cat_bk2_sh_F(:,a) + adj_value_bk2_sh_F;
        adj_bk2_lo_F(:,a) = cat_bk2_lo_F(:,a) + adj_value_bk2_lo_F;
        adj_bk3_bg_F(:,a) = cat_bk3_bg_F(:,a) + adj_value_bk3_bg_F;
        adj_bk3_sm_F(:,a) = cat_bk3_sm_F(:,a) + adj_value_bk3_sm_F;
        adj_bk4_bg_F(:,a) = cat_bk4_bg_F(:,a) + adj_value_bk4_bg_F;
        adj_bk4_sm_F(:,a) = cat_bk4_sm_F(:,a) + adj_value_bk4_sm_F;
        
        adj_bk2_sh_L(:,a) = cat_bk2_sh_L(:,a) + adj_value_bk2_sh_L;
        adj_bk2_lo_L(:,a) = cat_bk2_lo_L(:,a) + adj_value_bk2_lo_L;
        adj_bk3_bg_L(:,a) = cat_bk3_bg_L(:,a) + adj_value_bk3_bg_L;
        adj_bk3_sm_L(:,a) = cat_bk3_sm_L(:,a) + adj_value_bk3_sm_L;
        adj_bk4_bg_L(:,a) = cat_bk4_bg_L(:,a) + adj_value_bk4_bg_L;
        adj_bk4_sm_L(:,a) = cat_bk4_sm_L(:,a) + adj_value_bk4_sm_L;
        
        adj_bk2_sh_D(:,a) = cat_bk2_sh_D(:,a) + adj_value_bk2_sh_D;
        adj_bk2_lo_D(:,a) = cat_bk2_lo_D(:,a) + adj_value_bk2_lo_D;
        adj_bk3_bg_D(:,a) = cat_bk3_bg_D(:,a) + adj_value_bk3_bg_D;
        adj_bk3_sm_D(:,a) = cat_bk3_sm_D(:,a) + adj_value_bk3_sm_D;
        adj_bk4_bg_D(:,a) = cat_bk4_bg_D(:,a) + adj_value_bk4_bg_D;
        adj_bk4_sm_D(:,a) = cat_bk4_sm_D(:,a) + adj_value_bk4_sm_D;
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
    
    sem_dPPE_D = std(adj_dPPE_D,1)/sqrt(length(adj_dPPE_D(:,1)));
    sem_sPPE_D = std(adj_sPPE_D,1)/sqrt(length(adj_sPPE_D(:,1)));
    sem_dNPE_D = std(adj_dNPE_D,1)/sqrt(length(adj_dNPE_D(:,1)));
    sem_sNPE_D = std(adj_sNPE_D,1)/sqrt(length(adj_sNPE_D(:,1)));
    
    sem_PPE_F = std(adj_PPE_F,1)/sqrt(length(adj_PPE_F(:,1)));
    sem_PPE_L = std(adj_PPE_L,1)/sqrt(length(adj_PPE_L(:,1)));
    sem_NPE_F = std(adj_NPE_F,1)/sqrt(length(adj_NPE_F(:,1)));
    sem_NPE_L = std(adj_NPE_L,1)/sqrt(length(adj_NPE_L(:,1)));
    
    sem_PPE_D = std(adj_PPE_D,1)/sqrt(length(adj_PPE_D(:,1)));
    sem_NPE_D = std(adj_NPE_D,1)/sqrt(length(adj_NPE_D(:,1)));
    
     sem_bk2_sh_F = std(adj_bk2_sh_F,1)/sqrt(length(adj_bk2_sh_F(:,1)));
     sem_bk2_lo_F = std(adj_bk2_lo_F,1)/sqrt(length(adj_bk2_lo_F(:,1)));
     sem_bk3_bg_F = std(adj_bk3_bg_F,1)/sqrt(length(adj_bk3_bg_F(:,1)));
     sem_bk3_sm_F = std(adj_bk3_sm_F,1)/sqrt(length(adj_bk3_sm_F(:,1)));
     sem_bk4_bg_F = std(adj_bk4_bg_F,1)/sqrt(length(adj_bk4_bg_F(:,1)));
     sem_bk4_sm_F = std(adj_bk4_sm_F,1)/sqrt(length(adj_bk4_sm_F(:,1)));
     
     sem_bk2_sh_L = std(adj_bk2_sh_L,1)/sqrt(length(adj_bk2_sh_L(:,1)));
     sem_bk2_lo_L = std(adj_bk2_lo_L,1)/sqrt(length(adj_bk2_lo_L(:,1)));
     sem_bk3_bg_L = std(adj_bk3_bg_L,1)/sqrt(length(adj_bk3_bg_L(:,1)));
     sem_bk3_sm_L = std(adj_bk3_sm_L,1)/sqrt(length(adj_bk3_sm_L(:,1)));
     sem_bk4_bg_L = std(adj_bk4_bg_L,1)/sqrt(length(adj_bk4_bg_L(:,1)));
     sem_bk4_sm_L = std(adj_bk4_sm_L,1)/sqrt(length(adj_bk4_sm_L(:,1)));
     
     sem_bk2_sh_D = std(adj_bk2_sh_D,1)/sqrt(length(adj_bk2_sh_D(:,1)));
     sem_bk2_lo_D = std(adj_bk2_lo_D,1)/sqrt(length(adj_bk2_lo_D(:,1)));
     sem_bk3_bg_D = std(adj_bk3_bg_D,1)/sqrt(length(adj_bk3_bg_D(:,1)));
     sem_bk3_sm_D = std(adj_bk3_sm_D,1)/sqrt(length(adj_bk3_sm_D(:,1)));
     sem_bk4_bg_D = std(adj_bk4_bg_D,1)/sqrt(length(adj_bk4_bg_D(:,1)));
     sem_bk4_sm_D = std(adj_bk4_sm_D,1)/sqrt(length(adj_bk4_sm_D(:,1)));
    
    %Calcualte bottom varience with reversal order;
    r_sem_dPPE_F = avg_dPPE_F(length(bin_centers):-1:1) - sem_dPPE_F(length(bin_centers):-1:1);
    r_sem_dPPE_L = avg_dPPE_L(length(bin_centers):-1:1) - sem_dPPE_L(length(bin_centers):-1:1);
    r_sem_dNPE_F = avg_dNPE_F(length(bin_centers):-1:1) - sem_dNPE_F(length(bin_centers):-1:1);
    r_sem_dNPE_L = avg_dNPE_L(length(bin_centers):-1:1) - sem_dNPE_L(length(bin_centers):-1:1);
    
    r_sem_sPPE_F = avg_sPPE_F(length(bin_centers):-1:1) - sem_sPPE_F(length(bin_centers):-1:1);
    r_sem_sPPE_L = avg_sPPE_L(length(bin_centers):-1:1) - sem_sPPE_L(length(bin_centers):-1:1);
    r_sem_sNPE_F = avg_sNPE_F(length(bin_centers):-1:1) - sem_sNPE_F(length(bin_centers):-1:1);
    r_sem_sNPE_L = avg_sNPE_L(length(bin_centers):-1:1) - sem_sNPE_L(length(bin_centers):-1:1);
    
    r_sem_PPE_F = avg_PPE_F(length(bin_centers):-1:1) - sem_PPE_F(length(bin_centers):-1:1);
    r_sem_PPE_L = avg_PPE_L(length(bin_centers):-1:1) - sem_PPE_L(length(bin_centers):-1:1);
    r_sem_NPE_F = avg_NPE_F(length(bin_centers):-1:1) - sem_NPE_F(length(bin_centers):-1:1);
    r_sem_NPE_L = avg_NPE_L(length(bin_centers):-1:1) - sem_NPE_L(length(bin_centers):-1:1);
    
    r_sem_dPPE_D = avg_dPPE_D(length(bin_centers):-1:1) - sem_dPPE_D(length(bin_centers):-1:1);
    r_sem_sPPE_D = avg_sPPE_D(length(bin_centers):-1:1) - sem_sPPE_D(length(bin_centers):-1:1);
    r_sem_dNPE_D = avg_dNPE_D(length(bin_centers):-1:1) - sem_dNPE_D(length(bin_centers):-1:1);
    r_sem_sNPE_D = avg_sNPE_D(length(bin_centers):-1:1) - sem_sNPE_D(length(bin_centers):-1:1);
    
    r_sem_PPE_D = avg_PPE_D(length(bin_centers):-1:1) - sem_PPE_D(length(bin_centers):-1:1);
    r_sem_NPE_D = avg_NPE_D(length(bin_centers):-1:1) - sem_NPE_D(length(bin_centers):-1:1);
    
    r_sem_bk2_sh_F = avg_bk2_sh_F(length(bin_centers):-1:1) - sem_bk2_sh_F(length(bin_centers):-1:1);
    r_sem_bk2_lo_F = avg_bk2_lo_F(length(bin_centers):-1:1) - sem_bk2_lo_F(length(bin_centers):-1:1);
    r_sem_bk3_bg_F = avg_bk3_bg_F(length(bin_centers):-1:1) - sem_bk3_bg_F(length(bin_centers):-1:1);
    r_sem_bk3_sm_F = avg_bk3_sm_F(length(bin_centers):-1:1) - sem_bk3_sm_F(length(bin_centers):-1:1);
    r_sem_bk4_bg_F = avg_bk4_bg_F(length(bin_centers):-1:1) - sem_bk4_bg_F(length(bin_centers):-1:1);
    r_sem_bk4_sm_F = avg_bk4_sm_F(length(bin_centers):-1:1) - sem_bk4_sm_F(length(bin_centers):-1:1);
    
    r_sem_bk2_sh_L = avg_bk2_sh_L(length(bin_centers):-1:1) - sem_bk2_sh_L(length(bin_centers):-1:1);
    r_sem_bk2_lo_L = avg_bk2_lo_L(length(bin_centers):-1:1) - sem_bk2_lo_L(length(bin_centers):-1:1);
    r_sem_bk3_bg_L = avg_bk3_bg_L(length(bin_centers):-1:1) - sem_bk3_bg_L(length(bin_centers):-1:1);
    r_sem_bk3_sm_L = avg_bk3_sm_L(length(bin_centers):-1:1) - sem_bk3_sm_L(length(bin_centers):-1:1);
    r_sem_bk4_bg_L = avg_bk4_bg_L(length(bin_centers):-1:1) - sem_bk4_bg_L(length(bin_centers):-1:1);
    r_sem_bk4_sm_L = avg_bk4_sm_L(length(bin_centers):-1:1) - sem_bk4_sm_L(length(bin_centers):-1:1);
    
    r_sem_bk2_sh_D = avg_bk2_sh_D(length(bin_centers):-1:1) - sem_bk2_sh_D(length(bin_centers):-1:1);
    r_sem_bk2_lo_D = avg_bk2_lo_D(length(bin_centers):-1:1) - sem_bk2_lo_D(length(bin_centers):-1:1);
    r_sem_bk3_bg_D = avg_bk3_bg_D(length(bin_centers):-1:1) - sem_bk3_bg_D(length(bin_centers):-1:1);
    r_sem_bk3_sm_D = avg_bk3_sm_D(length(bin_centers):-1:1) - sem_bk3_sm_D(length(bin_centers):-1:1);
    r_sem_bk4_bg_D = avg_bk4_bg_D(length(bin_centers):-1:1) - sem_bk4_bg_D(length(bin_centers):-1:1);
    r_sem_bk4_sm_D = avg_bk4_sm_D(length(bin_centers):-1:1) - sem_bk4_sm_D(length(bin_centers):-1:1);


%for 0 line in diff plots;
x_line = [-0.5 1.5];

pre_epoch = find(bin_centers < 0.5);
epoch = find(bin_centers >= 0.5 & bin_centers <= 1.0); 
post_epoch = find(bin_centers > 1.0);

%figure 1; PPE;
figure;
patch([.5 .5 1 1],[-3 4 4 -3],'k', 'facecolor',[.6 .6 .6],'edgecolor',[1 1 1],'facealpha',0.3,'edgealpha',0.3);
x = bin_centers;
d=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_PPE_L + sem_PPE_L r_sem_PPE_L],[0.8 1 1]); hold on;
e=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_PPE_F + sem_PPE_F r_sem_PPE_F],[0.8 1 1]); hold on;
set(d,'EdgeColor',[0.8 1 1]);hold on;
set(e,'EdgeColor',[0.8 1 1]);hold on;

H = plot(bin_centers(pre_epoch),avg_PPE_L(:,pre_epoch),'c','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(pre_epoch),avg_PPE_F(:,pre_epoch),'b','LineWidth',3,'LineStyle','--'); hold on;

H = plot(bin_centers(epoch),avg_PPE_L(:,epoch),'c','LineWidth',4); hold on;
H = plot(bin_centers(epoch),avg_PPE_F(:,epoch),'b','LineWidth',4); hold on;

H = plot(bin_centers(post_epoch),avg_PPE_L(:,post_epoch),'c','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(post_epoch),avg_PPE_F(:,post_epoch),'b','LineWidth',3,'LineStyle','--'); hold on;

%figure 2; NPE;
figure;
patch([.5 .5 1 1],[-3 4 4 -3],'k', 'facecolor',[.6 .6 .6],'edgecolor',[1 1 1],'facealpha',0.3,'edgealpha',0.3);
x = bin_centers;
d=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_NPE_L + sem_NPE_L r_sem_NPE_L],[1 0.8 1]); hold on;
e=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_NPE_F + sem_NPE_F r_sem_NPE_F],[1 0.8 1]); hold on;
set(d,'EdgeColor',[1 0.8 1]);hold on;
set(e,'EdgeColor',[1 0.8 1]);hold on;

H = plot(bin_centers(pre_epoch),avg_NPE_L(:,pre_epoch),'m','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(pre_epoch),avg_NPE_F(:,pre_epoch),'r','LineWidth',3,'LineStyle','--'); hold on;

H = plot(bin_centers(epoch),avg_NPE_L(:,epoch),'m','LineWidth',4); hold on;
H = plot(bin_centers(epoch),avg_NPE_F(:,epoch),'r','LineWidth',4); hold on;

H = plot(bin_centers(post_epoch),avg_NPE_L(:,post_epoch),'m','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(post_epoch),avg_NPE_F(:,post_epoch),'r','LineWidth',3,'LineStyle','--'); hold on;

%figure 3;PE diff;
figure;
patch([.5 .5 1 1],[-3 4 4 -3],'k', 'facecolor',[.6 .6 .6],'edgecolor',[1 1 1],'facealpha',0.3,'edgealpha',0.3);
x = bin_centers;
d=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_PPE_D + sem_PPE_D r_sem_PPE_D],[0.8 1 1]); hold on;
e=patch([-0.5:bin_size:1.5 1.5:-bin_size:-0.5],[avg_NPE_D + sem_NPE_D r_sem_NPE_D],[1 0.8 1]); hold on;
set(d,'EdgeColor',[0.8 1 1]);hold on;
set(e,'EdgeColor',[1 0.8 1]);hold on;

H = plot(bin_centers(pre_epoch),avg_PPE_D(:,pre_epoch),'b','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(pre_epoch),avg_NPE_D(:,pre_epoch),'r','LineWidth',3,'LineStyle','--'); hold on;

H = plot(bin_centers(epoch),avg_PPE_D(:,epoch),'b','LineWidth',4); hold on;
H = plot(bin_centers(epoch),avg_NPE_D(:,epoch),'r','LineWidth',4); hold on;

H = plot(bin_centers(post_epoch),avg_PPE_D(:,post_epoch),'b','LineWidth',3,'LineStyle','--'); hold on;
H = plot(bin_centers(post_epoch),avg_NPE_D(:,post_epoch),'r','LineWidth',3,'LineStyle','--'); hold on;
plot(x_line,[0 0],'LineStyle','--','Color','k'); hold on;


