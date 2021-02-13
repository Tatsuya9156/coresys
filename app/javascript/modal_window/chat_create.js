function chatCreate() {
  const open = document.getElementById("chat-create-btn");
  const modal = document.getElementById("chat-modal");
  const close = document.getElementById("chat-close-btn");
  // チャット作成をクリックしたらモーダルウィンドウが表示される
  open.addEventListener("click", function() {
    modal.classList.remove("hidden");
  });
  // 右上の×ボタンを押したらモーダルウィンドウを閉じる
  close.addEventListener("click", function() {
    modal.classList.add("hidden");
  });
  // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
  modal.addEventListener("click", function(e) {
    if (e.target == modal) {
      modal.classList.add("hidden");
    }
  });
};
window.addEventListener('load', chatCreate);