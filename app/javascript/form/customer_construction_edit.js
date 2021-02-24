if (document.URL.match( /customers/ )) {
  function constructionEdit() {
    const constructionEditOpen = document.getElementById("construction-edit-btn");
    const constructionEditModal = document.getElementById("construction-modal-edit");
    const constructionEditClose = document.getElementById("construction-edit-close-btn");
    // 工事情報登録ボタンをクリックしたらモーダルウィンドウが表示される
    constructionEditOpen.addEventListener("click", function() {
      constructionEditModal.classList.remove("hidden");
    });
    // 右上の×ボタンを押したらモーダルウィンドウを閉じる
    constructionEditClose.addEventListener("click", function() {
      constructionEditModal.classList.add("hidden");
    });
    // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
    constructionEditModal.addEventListener("click", function(e) {
      if (e.target == constructionEditModal) {
        constructionEditModal.classList.add("hidden");
      }
    });
  };
  window.addEventListener('load', constructionEdit);
}