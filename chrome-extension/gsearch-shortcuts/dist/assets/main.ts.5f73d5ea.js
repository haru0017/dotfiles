const p=["table","g-inner-card","g-expandable-container","g-accordion-expander","g-scrolling-carousel","[jsslot]"];let u=0,a=[];const y=()=>{const e=document.createElement("style");document.body.appendChild(e),a=E(),a.forEach(t=>{t.setAttribute("data-gsrks-anchor","")})},E=()=>{const e=["g-link > a:first-of-type","a > h3"],t=Array.from(document.querySelectorAll(e.map(n=>`#search ${n}`).join(","))),o=Array.from(document.querySelectorAll(e.map(n=>`#botstuff ${n}`).join(","))),s=Array.from(document.querySelectorAll(p.map(n=>e.map(r=>`#search ${n} ${r}`).join(",")).join(","))),c=Array.from(document.querySelectorAll(p.map(n=>e.map(r=>`#botstuff ${n} ${r}`).join(",")).join(","))),l=t.filter(n=>!s.includes(n)),v=o.filter(n=>!c.includes(n)),b=l.reduce((n,r)=>(r.tagName==="H3"?n.push(r.parentElement):r.children.length===0&&n.push(r),n),[]),K=v.reduce((n,r)=>(r.tagName==="H3"?n.push(r.parentElement):r.children.length===0&&n.push(r),n),[]);let f=b.concat(K);return f=f.slice(0,-2),f},k=()=>document.querySelector("#pnnext"),w=()=>document.querySelector("#pnprev"),h=e=>e<0||e>=a.length&&(y(),e>=a.length)?!1:(u=e,a[u].focus(),!0),j=()=>h(u+1),P=()=>h(u-1),$=()=>{const e=k();return e?(e.click(),!0):!1},q=()=>{const e=w();return e?(e.click(),!0):!1},x=()=>h(0),N={start:"",tbs:"",tbm:""},i=e=>{const t=new URL(document.location.href),o=t.searchParams;Object.entries({...N,...e}).forEach(([s,c])=>o.set(s,c)),location.href=t.href},S=()=>{i({tbm:""})},D=()=>{i({tbm:"isch"})},H=()=>{i({tbm:"vid"})},I=()=>{i({tbm:"nws"})},R=()=>{i({tbs:"li:1"})},T=()=>{const t=new URL(document.location.href).searchParams.get("q");location.href=`/maps/search/${t}`},M=[[["ArrowDown","j"],()=>j()],[["ArrowUp","k"],()=>P()],[["ArrowRight","l"],()=>$()],[["ArrowLeft","h"],()=>q()],[["g"],()=>d=!0]];let d=!1;const U=[[["a"],()=>S()],[["i"],()=>D()],[["m"],()=>T()],[["v"],()=>H()],[["n"],()=>I()],[[["shift","V"]],()=>R()]],L=e=>e.map(t=>t.toLowerCase()).sort().join("-"),A=e=>e.map(([t,o])=>{const s=t.map(c=>Array.isArray(c)?L(c):c).join("|");return[new RegExp(`^(${s})$`,"i"),o]}),V=A(M),C=A(U),F=/^(shift|alt|control|meta)$/i,O=e=>{const t={shift:e.shiftKey,alt:e.altKey,ctrl:e.ctrlKey,meta:e.metaKey},o=Object.entries(t).reduce((s,[c,l])=>l?[...s,c]:s,[e.key]);return L(o)},g=e=>{if(F.test(e.key))return;const t=O(e);d&&(d=!1,C.some(([s,c])=>s.test(t)?(c(),e.preventDefault(),!0):!1))||V.some(([o,s])=>o.test(t)?(s()&&e.preventDefault(),!0):!1)},m=e=>{e?(document.addEventListener("keydown",g),x()):document.removeEventListener("keydown",g)},W=()=>{y(),document.querySelectorAll("input, textarea").forEach(t=>{t.addEventListener("focusin",()=>m(!1)),t.addEventListener("focusout",()=>m(!0))}),m(!0)};W();