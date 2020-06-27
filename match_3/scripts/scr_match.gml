if matched exit;
nomatch=false;
var t1=false;
var t2=false;
var l1=false;
var l2=false;
var b1=false;
var b2=false;
var r1=false;
var r2=false;
var tw=false;
var lw=false;
var bw=false;
var rw=false;

//top
if position_meeting(x,y-64,o_block) {
    var t1o=instance_position(x,y-64,o_block);
    if t1o.i==i
        t1=true;
}
if position_meeting(x,y-128,o_block) {
    var t2o=instance_position(x,y-128,o_block);
    if t2o.i==i
        t2=true;
}

//left
if position_meeting(x-64,y,o_block) {
    var l1o=instance_position(x-64,y,o_block);
    if l1o.i==i
        l1=true;
}
if position_meeting(x-128,y,o_block) {
    var l2o=instance_position(x-128,y,o_block);
    if l2o.i==i
        l2=true;
}

//bottom
if position_meeting(x,y+64,o_block) {
    var b1o=instance_position(x,y+64,o_block);
    if b1o.i==i
        b1=true;
}
if position_meeting(x,y+128,o_block) {
    var b2o=instance_position(x,y+128,o_block);
    if b2o.i==i
        b2=true;
}

//right
if position_meeting(x+64,y,o_block) {
    var r1o=instance_position(x+64,y,o_block);
    if r1o.i==i
        r1=true;
}
if position_meeting(x+128,y,o_block) {
    var r2o=instance_position(x+128,y,o_block);
    if r2o.i==i
        r2=true;
}

if (t1 and t2) {
    tw=true;
}

if (l1 and l2) {
    lw=true;
}

if (b1 and b2) {
    bw=true;
}

if (r1 and r2) {
    rw=true;
}

if (tw and bw) {
    matched=true;
    alarm[0]=delay;
    t1o.alarm[0]=delay;
    t2o.alarm[0]=delay;
    b1o.alarm[0]=delay;
    b2o.alarm[0]=delay;
    t1o.matched=true;
    t2o.matched=true;
    b1o.matched=true;
    b2o.matched=true;
    exit;
}

if (rw and lw) {
    matched=true;
    alarm[0]=delay;
    r1o.alarm[0]=delay;
    r2o.alarm[0]=delay;
    l1o.alarm[0]=delay;
    l2o.alarm[0]=delay;
    r1o.matched=true;
    r2o.matched=true;
    l1o.matched=true;
    l2o.matched=true;
    exit;
}

if (tw and b1) {
    matched=true;
    alarm[0]=delay;
    t1o.alarm[0]=delay;
    t2o.alarm[0]=delay;
    b1o.alarm[0]=delay;
    t1o.matched=true;
    t2o.matched=true;
    b1o.matched=true;
    exit;
}

if (lw and r1) {
    matched=true;
    alarm[0]=delay;
    l1o.alarm[0]=delay;
    l2o.alarm[0]=delay;
    r1o.alarm[0]=delay;
    l1o.matched=true;
    l2o.matched=true;
    r1o.matched=true;
    exit;
}

if (bw and t1) {
    matched=true;
    alarm[0]=delay;
    b1o.alarm[0]=delay;
    b2o.alarm[0]=delay;
    t1o.alarm[0]=delay;
    b1o.matched=true;
    b2o.matched=true;
    t1o.matched=true;
    exit;
}

if (rw and l1) {
    matched=true;
    alarm[0]=delay;
    r1o.alarm[0]=delay;
    r2o.alarm[0]=delay;
    l1o.alarm[0]=delay;
    r1o.matched=true;
    r2o.matched=true;
    l1o.matched=true;
    exit;
}

if (tw) {
    matched=true;
    alarm[0]=delay;
    t1o.alarm[0]=delay;
    t2o.alarm[0]=delay;
    t1o.matched=true;
    t2o.matched=true;
    exit;
}

if (bw) {
    matched=true;
    alarm[0]=delay;
    b1o.alarm[0]=delay;
    b2o.alarm[0]=delay;
    b1o.matched=true;
    b2o.matched=true;
    exit;
}

if (lw) {
    matched=true;
    alarm[0]=delay;
    l1o.alarm[0]=delay;
    l2o.alarm[0]=delay;
    l1o.matched=true;
    l2o.matched=true;
    exit;
}

if (rw) {
    matched=true;
    alarm[0]=delay;
    r1o.alarm[0]=delay;
    r2o.alarm[0]=delay;
    r1o.matched=true;
    r2o.matched=true;
    exit;
}

if (l1 and r1) {
    matched=true;
    alarm[0]=delay;
    l1o.alarm[0]=delay;
    r1o.alarm[0]=delay;
    l1o.matched=true;
    r1o.matched=true;
    exit;
}

if (t1 and b1) {
    matched=true;
    alarm[0]=delay;
    t1o.alarm[0]=delay;
    b1o.alarm[0]=delay;
    t1o.matched=true;
    b1o.matched=true;
    exit;
}

nomatch=true;
