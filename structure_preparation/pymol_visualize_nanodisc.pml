# dsDNA
select solvent, solvent
select ions, resn NA+CL+MG
remove ions 
remove solvent;
remove (hydro); 
hide; 
show cartoon; 
color gray80; 
select bases, name c2+c4+c5+c6+c7+c8+n1+n2+n3+n4+n6+n7+n9+o2+o4+o6+c5m; 
select backbone_, resn DA+DC+DT+DG+DG3+DG5+DT3+DT5+DA3+DA5+DC3+DC5+HFA+HFT+HFC+HFG+HSA+HST+HSG+HSC and name o1p+o2p+op1+op2+p+c1'+c2'+c3'+c4'+c5'+o3'+o4'+o5'; 


select chainA, resi 1-147; 
#nonmodified chain
select chainB, resi 148-295; 
select chainA, chainA and backbone_; 
select chainB, chainB and backbone_; 
set_color myblue, [ 0.106, 0.627, 1 ]; 
set_color mygray, [0.35, 0.35, 0.35]; 
color mygray, chainA; 

color myblue, chainB; 
cartoon oval; set cartoon_ring_mode, 1; 
set cartoon_ring_transparency, 0.5;
set cartoon_ring_width, 0.7; 
color gray90, bases; bg_color white; set fog, off; 
set cartoon_oval_width, 0.2; 
set cartoon_oval_length, 1.3; 
set cartoon_ring_finder, 3


# alkyl chains
select alkyl_chains_red, resn HFA+HFT+HFC+HFG and  name C11L+C12L+C13L+C14L+C15L+C16L+C17L+C18L+C19L+C110L+C111L+C112L+C113L+C114L+C115L+C116L+C117L; 
select alkyl_chains_blue, resn HSA+HST+HSG+HSC and  name C11L+C12L+C13L+C14L+C15L+C16L+C17L+C18L+C19L+C110L+C111L+C112L+C113L+C114L+C115L+C116L+C117L; 
select alkyl_chains_connect1, resn HFA+HFT+HFC+HFG and name P+O1P;
select alkyl_chains_connect2, resn HSA+HST+HSG+HSC and name P+O2P;
# select alkyl_chains_connect, alkyl_chains_connect or name oa;

# show sticks, alkyl_chains_connect;
# set stick_radius, 0.6;
set_color mygray, [0.35, 0.35, 0.35];
color mygray, alkyl_chains_connect1;
show spheres, alkyl_chains_connect1;
color mygray, alkyl_chains_connect2;
show spheres, alkyl_chains_connect2;
set_color myred, [ 0.902, 0, 0 ];
color myred, alkyl_chains_red;
color blue, alkyl_chains_blue;
show spheres, alkyl_chains_red;
set sphere_scale, 0.6


#lipids
select lipids, resn DMPC+DMTAP

select hydrophilic_DMPC, resn DMPC and name C21+O22+O21+C2+C31+O32+O31+C3+HX+HY+HS+O11+P+O14+O13+O12+C11+C12+H12B+H12A+H11A+H11B+N+C15+H15A+H15C+H15B+H14A+H14B+H14C+C14+C13+H13A+H13B+H13C+C1+HB+HA
select  hydrophobic_DMPC, resn DMPC and name H14Z+C22+H2R+H2S+C23+C24+C25+C26+C27+C28+C29+C210+C211+C212+C213+C214+C314+C313+C312+C311+C310+C39+C38+C37+C36+C35+C34+C33+C32+H3R+H3S+H4S+H4R+H5R+H5S+H6R+H6S+H7R+H7S+H8R+H8S+H9R+H9S+H10R+H10S+H11R+H11S+H12R+H12S+H13R+H13S+H14R+H14S+H14T+H2X+H2Y+H3X+H3Y+H4X+H4Y+H5X+H5Y+H6X+H6Y+H7X+H7Y+H8X+H8Y+H9X+H9Y+H10X+H10Y+H11X+H11Y+H12X+H12Y+H13X+H13Y+H14X+H14Y+H14T
select hydrophilic_DMTAP, resn DMTAP and name N+C13+H13A+H13B+H13C+C14+H14A+H14B+H14C+C15+H15A+H15B+H15C+C12+H12A+H12B+C2+HS+O21+C21+O22+C3+HX+HY+O31+C31+O32
select  hydrophobic_DMTAP, resn DMTAP and name C22+H2R+H2S+C32+H2X+H2Y+C23+H3R+H3S+C24+H4R+H4S+C25+H5R+H5S+C26+H6R+H6S+C27+H7R+H7S+C28+H8R+H8S+C29+H9R+H9S+C210+H10R+H10S+C211+H11R+H11S+C212+H12R+H12S+C213+H13R+H13S+C214+H14R+H14S+H14T+C33+H3X+H3Y+C34+H4X+H4Y+C35+H5X+H5Y+C36+H6X+H6Y+C37+H7X+H7Y+C38+H8X+H8Y+C39+H9X+H9Y+C310+H10X+H10Y+C311+H11X+H11Y+C312+H12X+H12Y+C313+H13X+H13Y+C314+H14X+H14Y+H14Z

#show spheres, lipids
set sphere_scale, 0.6

#lipis02
set_color sand, [0.85, 0.8, 0.7]
color sand, lipids
#show surface, lipids
set transparency, 0.35, lipids

set surface_quality, 1
set specular, 0.2

set_color sand_dark1, [0.75, 0.70, 0.60]
color sand_dark1, lipids
set line_width, 3