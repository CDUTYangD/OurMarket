/**
 * Created by 16558 on 2017/7/14.
 */
var dragt=document.getElementsByClassName("drag_text");
var drag=document.getElementsByClassName("drag");
var handler =document.getElementsByClassName("handler");
var drag_bg =document.getElementsByClassName("drag_bg");
var suitDrag=function () {
    var bigDiv=document.getElementById("sbody");
    drag.style.width=0.4*bigDiv.width;
    // 0.4*bigDiv.width
    dragt.style()
    dragt.style.width=0.4*bigDiv.width;
    drag_bg.style.width=0.4*bigDiv.width;
    handler.style.width=0.4*bigDiv.width;
}