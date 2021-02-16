// 工事情報登録
function constructionCreate() {
  const constructionOpen = document.getElementById("construction-create-btn");
  const constructionModal = document.getElementById("construction-modal-create");
  const constructionClose = document.getElementById("construction-close-btn");
  // 工事情報登録ボタンをクリックしたらモーダルウィンドウが表示される
  constructionOpen.addEventListener("click", function() {
    constructionModal.classList.remove("hidden");
  });
  // 右上の×ボタンを押したらモーダルウィンドウを閉じる
  constructionClose.addEventListener("click", function() {
    constructionModal.classList.add("hidden");
  });
  // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
  constructionModal.addEventListener("click", function(e) {
    if (e.target == constructionModal) {
      constructionModal.classList.add("hidden");
    }
  });
};
window.addEventListener('load', constructionCreate);