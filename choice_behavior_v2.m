close all
clear all

%PARAMETERS;
First_T = 8;
Last_T = 8;
Prev_T = 3;

%LOAD FILES
for cell_count = 1:289; 				
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
				
%DE_HCx				
if cell_count ==	129	load	HCx_rat1_session1	; end
if cell_count ==	130	load	HCx_rat1_session2	; end
if cell_count ==	131	load	HCx_rat1_session3	; end
if cell_count ==	132	load	HCx_rat1_session4	; end
if cell_count ==	133	load	HCx_rat1_session5	; end
if cell_count ==	134	load	HCx_rat1_session6	; end
if cell_count ==	135	load	HCx_rat1_session7	; end
if cell_count ==	136	load	HCx_rat1_session8	; end
if cell_count ==	137	load	HCx_rat1_session9	; end
if cell_count ==	138	load	HCx_rat1_session10	; end
if cell_count ==	139	load	HCx_rat1_session11	; end
if cell_count ==	140	load	HCx_rat1_session12	; end
if cell_count ==	141	load	HCx_rat1_session13	; end
if cell_count ==	142	load	HCx_rat1_session14	; end
if cell_count ==	143	load	HCx_rat1_session15	; end
if cell_count ==	144	load	HCx_rat2_session1	; end
if cell_count ==	145	load	HCx_rat2_session2	; end
if cell_count ==	146	load	HCx_rat2_session3	; end
if cell_count ==	147	load	HCx_rat2_session4	; end
if cell_count ==	148	load	HCx_rat2_session5	; end
if cell_count ==	149	load	HCx_rat2_session6	; end
if cell_count ==	150	load	HCx_rat2_session7	; end
if cell_count ==	151	load	HCx_rat2_session8	; end
if cell_count ==	152	load	HCx_rat2_session9	; end
if cell_count ==	153	load	HCx_rat2_session10	; end
if cell_count ==	154	load	HCx_rat2_session11	; end
if cell_count ==	155	load	HCx_rat3_session1	; end
if cell_count ==	156	load	HCx_rat3_session2	; end
if cell_count ==	157	load	HCx_rat3_session3	; end
if cell_count ==	158	load	HCx_rat3_session4	; end
if cell_count ==	159	load	HCx_rat3_session5	; end
if cell_count ==	160	load	HCx_rat3_session6	; end
if cell_count ==	161	load	HCx_rat3_session7	; end
if cell_count ==	162	load	HCx_rat3_session8	; end
if cell_count ==	163	load	HCx_rat3_session9	; end
if cell_count ==	164	load	HCx_rat3_session10	; end
if cell_count ==	165	load	HCx_rat3_session11	; end
if cell_count ==	166	load	HCx_rat3_session12	; end
if cell_count ==	167	load	HCx_rat3_session13	; end
if cell_count ==	168	load	HCx_rat3_session14	; end
if cell_count ==	169	load	HCx_rat3_session15	; end
if cell_count ==	170	load	HCx_rat3_session16	; end
if cell_count ==	171	load	HCx_rat3_session17	; end
if cell_count ==	172	load	HCx_rat3_session18	; end
if cell_count ==	173	load	HCx_rat4_session1	; end
if cell_count ==	174	load	HCx_rat4_session2	; end
if cell_count ==	175	load	HCx_rat4_session3	; end
if cell_count ==	176	load	HCx_rat4_session4	; end
if cell_count ==	177	load	HCx_rat4_session5	; end
if cell_count ==	178	load	HCx_rat4_session6	; end
if cell_count ==	179	load	HCx_rat4_session7	; end
if cell_count ==	180	load	HCx_rat4_session8	; end
if cell_count ==	181	load	HCx_rat4_session9	; end
if cell_count ==	182	load	HCx_rat4_session10	; end
if cell_count ==	183	load	HCx_rat4_session11	; end
if cell_count ==	184	load	HCx_rat4_session12	; end
if cell_count ==	185	load	HCx_rat4_session13	; end
if cell_count ==	186	load	HCx_rat4_session14	; end
if cell_count ==	187	load	HCx_rat4_session15	; end
if cell_count ==	188	load	HCx_rat4_session16	; end
if cell_count ==	189	load	HCx_rat4_session17	; end
if cell_count ==	190	load	HCx_rat4_session18	; end
if cell_count ==	191	load	HCx_rat4_session19	; end
if cell_count ==	192	load	HCx_rat4_session20	; end
if cell_count ==	193	load	HCx_rat5_session1	; end
if cell_count ==	194	load	HCx_rat5_session2	; end
if cell_count ==	195	load	HCx_rat5_session3	; end
if cell_count ==	196	load	HCx_rat5_session4	; end
if cell_count ==	197	load	HCx_rat5_session5	; end
if cell_count ==	198	load	HCx_rat5_session6	; end
if cell_count ==	199	load	HCx_rat5_session7	; end
if cell_count ==	200	load	HCx_rat5_session8	; end
if cell_count ==	201	load	HCx_rat5_session9	; end
if cell_count ==	202	load	HCx_rat5_session10	; end
if cell_count ==	203	load	HCx_rat5_session11	; end
if cell_count ==	204	load	HCx_rat5_session12	; end
if cell_count ==	205	load	HCx_rat5_session13	; end
if cell_count ==	206	load	HCx_rat5_session14	; end
if cell_count ==	207	load	HCx_rat6_session1	; end
if cell_count ==	208	load	HCx_rat6_session2	; end
if cell_count ==	209	load	HCx_rat6_session3	; end
if cell_count ==	210	load	HCx_rat6_session4	; end
if cell_count ==	211	load	HCx_rat6_session5	; end
if cell_count ==	212	load	HCx_rat6_session6	; end
if cell_count ==	213	load	HCx_rat6_session7	; end
if cell_count ==	214	load	HCx_rat6_session8	; end
if cell_count ==	215	load	HCx_rat6_session9	; end
if cell_count ==	216	load	HCx_rat6_session10	; end
if cell_count ==	217	load	HCx_rat6_session11	; end
if cell_count ==	218	load	HCx_rat6_session12	; end
if cell_count ==	219	load	HCx_rat6_session13	; end
if cell_count ==	220	load	HCx_rat6_session14	; end
if cell_count ==	221	load	HCx_rat6_session15	; end
if cell_count ==	222	load	HCx_rat6_session16	; end
if cell_count ==	223	load	HCx_rat6_session17	; end
if cell_count ==	224	load	HCx_rat6_session18	; end
if cell_count ==	225	load	HCx_rat6_session19	; end
if cell_count ==	226	load	HCx_rat7_session1	; end
if cell_count ==	227	load	HCx_rat7_session2	; end
if cell_count ==	228	load	HCx_rat7_session3	; end
if cell_count ==	229	load	HCx_rat7_session4	; end
if cell_count ==	230	load	HCx_rat7_session5	; end
if cell_count ==	231	load	HCx_rat7_session6	; end
if cell_count ==	232	load	HCx_rat7_session7	; end
if cell_count ==	233	load	HCx_rat7_session8	; end
if cell_count ==	234	load	HCx_rat7_session9	; end
if cell_count ==	235	load	HCx_rat7_session10	; end
if cell_count ==	236	load	HCx_rat7_session11	; end
if cell_count ==	237	load	HCx_rat7_session12	; end
if cell_count ==	238	load	HCx_rat7_session13	; end
if cell_count ==	239	load	HCx_rat7_session14	; end
if cell_count ==	240	load	HCx_rat7_session15	; end
if cell_count ==	241	load	HCx_rat7_session16	; end
if cell_count ==	242	load	HCx_rat7_session17	; end
if cell_count ==	243	load	HCx_rat7_session18	; end
if cell_count ==	244	load	HCx_rat8_session1	; end
if cell_count ==	245	load	HCx_rat8_session2	; end
if cell_count ==	246	load	HCx_rat8_session3	; end
if cell_count ==	247	load	HCx_rat8_session4	; end
if cell_count ==	248	load	HCx_rat8_session5	; end
if cell_count ==	249	load	HCx_rat8_session6	; end
if cell_count ==	250	load	HCx_rat8_session7	; end
if cell_count ==	251	load	HCx_rat8_session8	; end
if cell_count ==	252	load	HCx_rat8_session9	; end
if cell_count ==	253	load	HCx_rat8_session10	; end
if cell_count ==	254	load	HCx_rat8_session11	; end
if cell_count ==	255	load	HCx_rat8_session12	; end
if cell_count ==	256	load	HCx_rat8_session13	; end
if cell_count ==	257	load	HCx_rat8_session14	; end
if cell_count ==	258	load	HCx_rat8_session15	; end
if cell_count ==	259	load	HCx_rat8_session16	; end
if cell_count ==	260	load	HCx_rat8_session17	; end
if cell_count ==	261	load	HCx_rat8_session18	; end
if cell_count ==	262	load	HCx_rat8_session19	; end
if cell_count ==	263	load	HCx_rat8_session20	; end
if cell_count ==	264	load	HCx_rat8_session21	; end
if cell_count ==	265	load	HCx_rat8_session22	; end
if cell_count ==	266	load	HCx_rat8_session23	; end
if cell_count ==	267	load	HCx_rat8_session24	; end
if cell_count ==	268	load	HCx_rat9_session1	; end
if cell_count ==	269	load	HCx_rat9_session2	; end
if cell_count ==	270	load	HCx_rat9_session3	; end
if cell_count ==	271	load	HCx_rat9_session4	; end
if cell_count ==	272	load	HCx_rat9_session5	; end
if cell_count ==	273	load	HCx_rat9_session6	; end
if cell_count ==	274	load	HCx_rat9_session7	; end
if cell_count ==	275	load	HCx_rat9_session8	; end
if cell_count ==	276	load	HCx_rat9_session9	; end
if cell_count ==	277	load	HCx_rat9_session10	; end
if cell_count ==	278	load	HCx_rat9_session11	; end
if cell_count ==	279	load	HCx_rat9_session12	; end
if cell_count ==	280	load	HCx_rat9_session13	; end
if cell_count ==	281	load	HCx_rat9_session14	; end
if cell_count ==	282	load	HCx_rat9_session15	; end
if cell_count ==	283	load	HCx_rat9_session16	; end
if cell_count ==	284	load	HCx_rat9_session17	; end
if cell_count ==	285	load	HCx_rat9_session18	; end
if cell_count ==	286	load	HCx_rat9_session19	; end
if cell_count ==	287	load	HCx_rat9_session20	; end
if cell_count ==	288	load	HCx_rat9_session21	; end
if cell_count ==	289	load	HCx_rat9_session22	; end

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%MAKE LINE PLOTS FOR CHOICE BEHAVIOR;
%combine blocks
line_D_P_Ctrl = cat_bk2_P(1:128,:);
line_D_F_Ctrl = (cat_bk1_F(1:128,:) + cat_bk2_F(1:128,:))/2;
line_D_L_Ctrl = (cat_bk1_L(1:128,:) + cat_bk2_L(1:128,:))/2;

line_S_P_Ctrl = (cat_bk3_P(1:128,:) + cat_bk4_P(1:128,:))/2;
line_S_F_Ctrl = (cat_bk3_F(1:128,:) +  cat_bk4_F(1:128,:))/2;
line_S_L_Ctrl = (cat_bk3_L(1:128,:) + cat_bk4_L(1:128,:))/2;

line_all_P_Ctrl = (line_D_P_Ctrl + line_S_P_Ctrl)/2;
line_all_F_Ctrl = (line_D_F_Ctrl + line_S_F_Ctrl)/2;
line_all_L_Ctrl = (line_D_L_Ctrl + line_S_L_Ctrl)/2;

line_D_P_HCx = cat_bk2_P(129:289,:);
line_D_F_HCx = (cat_bk1_F(129:289,:) + cat_bk2_F(129:289,:))/2;
line_D_L_HCx = (cat_bk1_L(129:289,:) + cat_bk2_L(129:289,:))/2;

line_S_P_HCx = (cat_bk3_P(129:289,:) + cat_bk4_P(129:289,:))/2;
line_S_F_HCx = (cat_bk3_F(129:289,:) +  cat_bk4_F(129:289,:))/2;
line_S_L_HCx = (cat_bk3_L(129:289,:) + cat_bk4_L(129:289,:))/2;

line_all_P_HCx = (line_D_P_HCx + line_S_P_HCx)/2;
line_all_F_HCx = (line_D_F_HCx + line_S_F_HCx)/2;
line_all_L_HCx = (line_D_L_HCx + line_S_L_HCx)/2;

%average of individual rats;
Ctrl_P(1,:) = mean(line_all_P_Ctrl(1:27,:),1);
Ctrl_P(2,:) = mean(line_all_P_Ctrl(28:54,:),1);
Ctrl_P(3,:) = mean(line_all_P_Ctrl(55:78,:),1);
Ctrl_P(4,:) = mean(line_all_P_Ctrl(79:104,:),1);
Ctrl_P(5,:) = mean(line_all_P_Ctrl(105:128,:),1);
Ctrl_F(1,:) = mean(line_all_F_Ctrl(1:27,:),1);
Ctrl_F(2,:) = mean(line_all_F_Ctrl(28:54,:),1);
Ctrl_F(3,:) = mean(line_all_F_Ctrl(55:78,:),1);
Ctrl_F(4,:) = mean(line_all_F_Ctrl(79:104,:),1);
Ctrl_F(5,:) = mean(line_all_F_Ctrl(105:128,:),1);
Ctrl_L(1,:) = mean(line_all_L_Ctrl(1:27,:),1);
Ctrl_L(2,:) = mean(line_all_L_Ctrl(28:54,:),1);
Ctrl_L(3,:) = mean(line_all_L_Ctrl(55:78,:),1);
Ctrl_L(4,:) = mean(line_all_L_Ctrl(79:104,:),1);
Ctrl_L(5,:) = mean(line_all_L_Ctrl(105:128,:),1);

HCx_P(1,:) = mean(line_all_P_HCx(1:15,:),1);
HCx_P(2,:) = mean(line_all_P_HCx(16:26,:),1);
HCx_P(3,:) = mean(line_all_P_HCx(27:44,:),1);
HCx_P(4,:) = mean(line_all_P_HCx(45:64,:),1);
HCx_P(5,:) = mean(line_all_P_HCx(65:78,:),1);
HCx_P(6,:) = mean(line_all_P_HCx(79:97,:),1);
HCx_P(7,:) = mean(line_all_P_HCx(98:115,:),1);
HCx_P(8,:) = mean(line_all_P_HCx(116:139,:),1);
HCx_P(9,:) = mean(line_all_P_HCx(140:161,:),1);
HCx_F(1,:) = mean(line_all_F_HCx(1:15,:),1);
HCx_F(2,:) = mean(line_all_F_HCx(16:26,:),1);
HCx_F(3,:) = mean(line_all_F_HCx(27:44,:),1);
HCx_F(4,:) = mean(line_all_F_HCx(45:64,:),1);
HCx_F(5,:) = mean(line_all_F_HCx(65:78,:),1);
HCx_F(6,:) = mean(line_all_F_HCx(79:97,:),1);
HCx_F(7,:) = mean(line_all_F_HCx(98:115,:),1);
HCx_F(8,:) = mean(line_all_F_HCx(116:139,:),1);
HCx_F(9,:) = mean(line_all_F_HCx(140:161,:),1);
HCx_L(1,:) = mean(line_all_L_HCx(1:15,:),1);
HCx_L(2,:) = mean(line_all_L_HCx(16:26,:),1);
HCx_L(3,:) = mean(line_all_L_HCx(27:44,:),1);
HCx_L(4,:) = mean(line_all_L_HCx(45:64,:),1);
HCx_L(5,:) = mean(line_all_L_HCx(65:78,:),1);
HCx_L(6,:) = mean(line_all_L_HCx(79:97,:),1);
HCx_L(7,:) = mean(line_all_L_HCx(98:115,:),1);
HCx_L(8,:) = mean(line_all_L_HCx(116:139,:),1);
HCx_L(9,:) = mean(line_all_L_HCx(140:161,:),1);

%average and sem;
avg_all_P_Ctrl = mean(Ctrl_P,1);
avg_all_F_Ctrl = mean(Ctrl_F,1);
avg_all_L_Ctrl = mean(Ctrl_L,1);

sem_all_P_Ctrl = std(Ctrl_P,1)/sqrt(length(Ctrl_P(:,1)));
sem_all_F_Ctrl = std(Ctrl_F,1)/sqrt(length(Ctrl_F(:,1)));
sem_all_L_Ctrl = std(Ctrl_L,1)/sqrt(length(Ctrl_L(:,1)));

avg_all_P_HCx = mean(HCx_P,1);
avg_all_F_HCx = mean(HCx_F,1);
avg_all_L_HCx = mean(HCx_L,1);

sem_all_P_HCx = std(HCx_P,1)/sqrt(length(HCx_P(:,1)));
sem_all_F_HCx = std(HCx_F,1)/sqrt(length(HCx_F(:,1)));
sem_all_L_HCx = std(HCx_L,1)/sqrt(length(HCx_L(:,1)));

%make figure for line plot;
x_P = 1:Prev_T;
x_F = Prev_T + 1:Prev_T + First_T;
x_L = Prev_T + First_T + 1:Prev_T + First_T + Last_T;

%figure 1;
figure1 = figure;
axes1 = axes('XTick',[1 4 7 11 15 19],'XTickLabel',{'-3','1','4','8','12','16'},...
  'YTick',[-1 -0.5 0 0.5 1],'YTickLabel',{'1','0.75','0.5','0.75','1'},'Parent',figure1);
ylim(axes1,[-1 1]);
hold(axes1,'all');

errorbar(x_P,avg_all_P_Ctrl,sem_all_P_Ctrl,'LineWidth',3,'Color',[0 0 0]);hold on; %
errorbar(x_F,avg_all_F_Ctrl,sem_all_F_Ctrl,'LineWidth',3,'Color',[0 0 0]);hold on; %
errorbar(x_L,avg_all_L_Ctrl,sem_all_L_Ctrl,'LineWidth',3,'Color',[0 0 0]);hold on; %

errorbar(x_P,avg_all_P_HCx,sem_all_P_HCx,'LineWidth',3,'Color',[.5 .5 .5]);hold on; %
errorbar(x_F,avg_all_F_HCx,sem_all_F_HCx,'LineWidth',3,'Color',[.5 .5 .5]);hold on; %
errorbar(x_L,avg_all_L_HCx,sem_all_L_HCx,'LineWidth',3,'Color',[.5 .5 .5]);hold on; %
box off;

%make figure for bar-graph; Extract Percent choice for Ctrl and HCx;
Ctrl = cat_p_all(1:128,:);
HCx = cat_p_all(129:289,:);

%average and SEM;
avg_Ctrl_H(1,1) = mean(Ctrl(:,1)); %high
avg_Ctrl_L(1,1) = mean(Ctrl(:,2)); %low

avg_HCx_H(1,1) = mean(HCx(:,1)); %high
avg_HCx_L(1,1) = mean(HCx(:,2)); %low

sem_Ctrl_H(1,1) = std(Ctrl(:,1))/sqrt(length(Ctrl(:,1)));
sem_Ctrl_L(1,1) = std(Ctrl(:,2))/sqrt(length(Ctrl(:,2)));

sem_HCx_H(1,1) = std(HCx(:,1))/sqrt(length(HCx(:,1)));
sem_HCx_L(1,1) = std(HCx(:,2))/sqrt(length(HCx(:,2)));

%for scatter plot;
Ctrl_scat_H(1:length(Ctrl(:,1)),1) = rand(length(Ctrl(:,1)),1);
for a = 1:length(Ctrl(:,1));
    Ctrl_scat_H(a,1) = (Ctrl_scat_H(a,1)/10 - 0.05)+1;
end
Ctrl_scat_H(:,2) = Ctrl(:,1);

Ctrl_scat_L(1:length(Ctrl(:,1)),1) = rand(length(Ctrl(:,1)),1);
for a = 1:length(Ctrl(:,1));
    Ctrl_scat_L(a,1) = (Ctrl_scat_L(a,1)/10 - 0.05)+2;
end
Ctrl_scat_L(:,2) = Ctrl(:,2);

HCx_scat_H(1:length(HCx(:,1)),1) = rand(length(HCx(:,1)),1);
for a = 1:length(HCx(:,1));
    HCx_scat_H(a,1) = (HCx_scat_H(a,1)/10 - 0.05)+3.5;
end
HCx_scat_H(:,2) = HCx(:,1);

HCx_scat_L(1:length(HCx(:,1)),1) = rand(length(HCx(:,1)),1);
for a = 1:length(HCx(:,1));
    HCx_scat_L(a,1) = (HCx_scat_L(a,1)/10 - 0.05)+4.5;
end
HCx_scat_L(:,2) = HCx(:,2);

figure2 = figure;
axes1 = axes('XTick',[1 2 3.5 4.5],'XTickLabel',{'H','L','H','L'},...
  'YTick',[0 50 100],'Parent',figure2);
hold(axes1,'all');

bar(1,avg_Ctrl_H,'FaceColor',[0 0 0]); hold on;
bar(2,avg_Ctrl_L,'FaceColor',[0 0 0]); hold on;
bar(3.5,avg_HCx_H,'FaceColor',[.5 .5 .5]); hold on;
bar(4.5,avg_HCx_L,'FaceColor',[.5 .5 .5]); hold on;

errorbar(1,avg_Ctrl_H,sem_Ctrl_H,'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(2,avg_Ctrl_L,sem_Ctrl_L,'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(3.5,avg_HCx_H,sem_HCx_H,'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(4.5,avg_HCx_L,sem_HCx_L,'Color',[0 0 0],'LineStyle','none');hold on;

scatter(Ctrl_scat_H(:,1),Ctrl_scat_H(:,2),'MarkerEdgeColor',[1 0 0]); hold on;
scatter(Ctrl_scat_L(:,1),Ctrl_scat_L(:,2),'MarkerEdgeColor',[1 0 0]); hold on;
scatter(HCx_scat_H(:,1),HCx_scat_H(:,2),'MarkerEdgeColor',[1 0 0]); hold on;
scatter(HCx_scat_L(:,1),HCx_scat_L(:,2),'MarkerEdgeColor',[1 0 0]); hold on;

box off;
