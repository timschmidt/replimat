/*
   folding nets of platonic solids
   kit wallace

*/
//thickness of 'paper'
thickness=3;
// length of side
length=10;

//quality of curves
steps=20;
scale=2;

colors=["green","blue","red","gold","Hotpink","silver","teal","purple",];

//  functions for creating the matrices for transforming a single point

function m_translate(v) = [ [1, 0, 0, 0],
                            [0, 1, 0, 0],
                            [0, 0, 1, 0],
                            [v.x, v.y, v.z, 1  ] ];

function m_scale(v) =    [ [v.x, 0, 0, 0],
                            [0, v.y, 0, 0],
                            [0, 0, v.z, 0],
                            [0, 0, 0, 1  ] ];
                                                      
function m_rotate(v) =  [ [1,  0,         0,        0],
                          [0,  cos(v.x),  sin(v.x), 0],
                          [0, -sin(v.x),  cos(v.x), 0],
                          [0,  0,         0,        1] ]
                      * [ [ cos(v.y), 0,  -sin(v.y), 0],
                          [0,         1,  0,        0],
                          [ sin(v.y), 0,  cos(v.y), 0],
                          [0,         0,  0,        1] ]
                      * [ [ cos(v.z),  sin(v.z), 0, 0],
                          [-sin(v.z),  cos(v.z), 0, 0],
                          [ 0,         0,        1, 0],
                          [ 0,         0,        0, 1] ];
                            
function m_to(centre,normal) = 
      m_rotate([0, atan2(sqrt(pow(normal.x, 2) + pow(normal.y, 2)), normal.z), 0]) 
    * m_rotate([0, 0, atan2(normal.y, normal.x)]) 
    * m_translate(centre);   
   
function m_from(centre,normal) = 
      m_translate(-centre)
    * m_rotate([0, 0, -atan2(normal.y, normal.x)]) 
    * m_rotate([0, -atan2(sqrt(pow(normal.x, 2) + pow(normal.y, 2)), normal.z), 0]); 

function m_rotate_about_line(a,v1,v2) =
      m_from(v1,v2-v1)*m_rotate([0,0,a])*m_to(v1,v2-v1);

function vec3(v) = [v.x, v.y, v.z];
function m_transform(v, m)  = vec3([v.x, v.y, v.z, 1] * m);
 
function face_transform(face,m) =
     [ for (v = face) m_transform(v,m) ];

function rotate_about_edge(a,face,edge) =
     let (v1 = face[edge], v2= face[(edge+1) %len(face)])
     let (m = m_rotate_about_line(a,v1,v2))
     face_transform(face,m);

function orthogonal(v0,v1,v2) =  cross(v1-v0,v2-v1);

function normal(face) =
     let (n=orthogonal(face[0],face[1],face[2]))
     - n / norm(n);
     
function vsum(points,i=0) =  
      i < len(points)
        ?  (points[i] + vsum(points,i+1))
        :  [0,0,0];

function centre(points) = 
      vsum(points) / len(points);
     
function reverse(l,shift=0) = 
     [for (i=[0:len(l)-1]) l[(len(l)-1-i + shift)%len(l)]];   
                        
function r(a,face,edge) = 
// replicate the face rotated about edge so the two faces have an internal angle of a
// vertices are reordered so that the edge of rotation is edge 0 in the rotated face 
// and vertices are ordered anticlockwise   
     reverse(rotate_about_edge(a,face,edge),shift=edge+2);

function rr(a,face,edges,i=0)  =
// apply r to a sequence of edges
     i < len(edges)
       ? rr(a,r(a,face,edges[i]),edges,i+1) 
       : face;

function place(faces,face_i) =
   let (pface=faces[face_i])
   let (n = normal(pface), c=centre(pface))
   let (m=m_from(c,-n))
   [for(face=faces) face_transform(face,m)]
;
    
module show_face(s,t=thickness) {
// render (convex) face by hulling spheres placed at the vertices
    hull()
    for (i=[0:len(s) -1])
       translate(s[i]) sphere(t/2);     
    } 

module show_faces(faces,t=thickness) {
   for (i=[0:len(faces)-1]) {
      face=faces[i];
      color(colors[i])
       show_face(face,t=thickness);
   }
}

function depth(a) =
   len(a)== undef 
       ? 0
       : 1+depth(a[0]);

function flatten(l) = [ for (a = l) for (b = a) b ] ;

function dflatten(l,d=2) =
// hack to flattened mixed list and list of lists
   flatten([for (a = l) depth(a) > d ? dflatten(a, d) : [a]]);
        
function ramp(t,dwell) =
// to shape the animation to give a dwell at begining and end
   t < dwell 
       ? 0
       : t > 1 - dwell 
         ? 1
         :  ( t-dwell) /(1 - 2 * dwell);
   
// platonic solid functions

function T_net(length,a) =
   let(base = [for (i=[0:2])  // anticlockwise order 
          [ length * cos(i*120), length*sin(i*120),0]] ,
     bs = [for (i=[0:2]) r(a,base,i)])
   dflatten([base,bs]);

function C_net(length,a) =
   let(base = [for (i=[0:3])  // anticlockwise order 
          [ length * cos(i*90), length*sin(i*90),0]] ,
       bs = [for (i=[0:3]) r(a,base,i)],
       top = r(a,bs[0],2))
   dflatten([base,bs,top]);
   
function O_net(length,a) =
   let(base = [for (i=[0:2])  // anticlockwise order 
          [ length * cos(i*120), length*sin(i*120),0]] ,
     bs = [for (i=[0:2]) r(a,base,i)],
     sa= r(a,bs[2],2),
     sb= r(a,bs[1],2),
     sc= r(a,bs[1],1),
     sd= r(a,sc,2))        
   dflatten([base,bs,sa,sb,sc,sd]); 
     
function dodecahedron_half(a,base) =
  dflatten([base,[for (i=[0:4]) r(a,base,i)]],2);
     
function D_net(length,a) =
  let(base = 
       [for (i=[0:4])  // anticlockwise order 
          [ length * cos(i*72), length*sin(i*72),0]] , 
      bottom_half = dodecahedron_half(a,base),
      top_half= dodecahedron_half(a,rr(a,base,[0,2,3])))
  dflatten([bottom_half,top_half],2);
     
function icosa_strip(base,a,n) =
   n==0 
      ? []
      :  concat( 
           [base,r(a,base,2),r(a,base,0), r(a,r(a,base,0),2)],
            icosa_strip(r(a,r(a,base,1),2),a,n-1)
         );
           
function I_net(length,a) =
   let(base = [for (i=[0:2])  // anticlockwise order 
          [ length * cos(i*120), length * sin(i*120), 0]]) 
     icosa_strip(base,a,5);    
   
function TDi_net(length,a,b) =
   let(base = [for (i=[0:2])  // anticlockwise order 
          [ length * cos(i*120), length*sin(i*120),0]] ,
     
     sa= r(a,base,1),
     sb= r(a,base,2),
     sc =r(b,base,0),
     sd = r(a,sc,1),
     se = r(a,sc,2))        
   dflatten([base,sa,sb,sc,sd,se]); 
     
function PDi_net(length,a,b) =
   let(base = [for (i=[0:2])  // anticlockwise order 
          [ length * cos(i*120), length*sin(i*120),0]] ,
     
     ta= r(a,base,1),
     tb= r(a,ta,2),
     tc =r(a,tb,2),
     td =r(a,tc,2),
   
     ba = r(b,base,0),
     bb = r(a,ba,2),
     bc = r(a,bb,1),
     bd = r(a,bc,1),
     be = r(a,bd,1)
   )        
   dflatten([base,ta,tb,tc,td,ba,bb,bc,bd,be]); 
     
function find(key,array) =  array[search([key],array)[0]];
   
dihedral_angles = [
    ["T", 70.53],
    ["C",90],
    ["O",109.47],
    ["D",116.57],
    ["I",138.19],
    ["TDi",70.53,2*70.53],
    ["PDi",138,75]  
   ];

$fn=steps; 
$t=0.7;    // remove to animate
complete=ramp($t,0.04) ;  // 0 .. 1
dihedral_angle =  find("I",dihedral_angles)[1];
a= 180 - (180 - dihedral_angle)*complete;  

net = I_net(length,a);
pnet = place(net,8);   // so modle is printable
echo(len(pnet),pnet);
scale(scale) show_faces(pnet);


/*
dihedral_angle_a =  find("TDi",dihedral_angles)[1];
dihedral_angle_b =  find("TDi",dihedral_angles)[2];
a= 180 - (180 - dihedral_angle_a)*complete;  
b= 180 - (180 - dihedral_angle_b)*complete;  

net = TDi_net(length,a,b);
echo(len(net),net);
show_faces(net);
   
*/
