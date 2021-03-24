function searchForm() {
  const btn = document.getElementById('js-menu-button');
  const menu = document.getElementById('js-menu');
  const menuH = menu.clientHeight;
  
menu.style.height = '0px';

btn.addEventListener( 'click', function () {
menu.style.height === '0px' ? menu.style.height = menuH + 'px' : menu.style.height = '0px';
}, false );
}
window.addEventListener('load', searchForm);