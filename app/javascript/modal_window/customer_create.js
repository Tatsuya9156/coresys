function customerCreate() {
  const open = document.getElementById("customer-create-btn");
  const firstModal = document.getElementById("customer-create-first");
  const secondModal = document.getElementById("customer-create-second");
  const toFirst = document.getElementById("to-first");
  const toSecond = document.getElementById("to-second");
  const firstClose = document.getElementById("first-customer-create-close-btn");
  const secondClose = document.getElementById("second-customer-create-close-btn");
  // 物件作成をクリックしたらモーダルウィンドウが表示される
  open.addEventListener("click", function() {
    firstModal.classList.remove("hidden");
  });
  // 「次へ」をクリックしたら2ページ目が表示される
  toSecond.addEventListener("click", function() {
    firstModal.classList.add("hidden");
    secondModal.classList.remove("hidden");
  });
  // 「前へ」をクリックしたら1ページ目が表示される
  toFirst.addEventListener("click", function() {
    firstModal.classList.remove("hidden");
    secondModal.classList.add("hidden");
  });
  // 1ページ目の右上の×ボタンを押したらモーダルウィンドウを閉じる
  firstClose.addEventListener("click", function() {
    firstModal.classList.add("hidden");
  });
  // 1ページ目のモーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
  firstModal.addEventListener("click", function(e) {
    if (e.target == firstModal) {
      firstModal.classList.add("hidden");
    }
  });
  // 2ページ目の右上の×ボタンを押したらモーダルウィンドウを閉じる
  secondClose.addEventListener("click", function() {
    secondModal.classList.add("hidden");
  });
  // 2ページ目のモーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
  secondModal.addEventListener("click", function(e) {
    if (e.target == secondModal) {
      secondModal.classList.add("hidden");
    }
  });
};
window.addEventListener('load', customerCreate);