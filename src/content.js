
let b = document.createElement("button"), h = !1; 
b.textContent = "UI", b.style.opacity = "0.1", b.style.position = "absolute", b.style.right = "0", b.style.zIndex = "99999", 
b.onclick = () => { 
    h = !h, 
    document.querySelectorAll(".main-top, .game-area").forEach(e => e.classList[h ? "add" : "remove"]("hide-ui")) 
}, 
b.onmouseenter = () => b.style.opacity = "1", 
b.onmouseleave = () => b.style.opacity = "0.1", 
document.head.appendChild(document.createElement("style")).sheet.insertRule(".hide-ui { display:none }"), 
document.getElementById("app").appendChild(b);

console.log('content.js注入工作已完成。\n感谢劫君JJ在BV1tEcdewEHm视频中提供的指引！\n【猜拳卸甲-无遮挡小开关-辰星【尘白禁区】-哔哩哔哩】 https://b23.tv/UMEUTJX');
