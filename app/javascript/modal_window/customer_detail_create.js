function detailCreate() {
  // 現調情報登録
  const meetingOpen = document.getElementById("meeting-create-btn");
  const meetingModal = document.getElementById("meeting-modal-create");
  const meetingClose = document.getElementById("meeting-close-btn");
  // 現調情報登録ボタンをクリックしたらモーダルウィンドウが表示される
  meetingOpen.addEventListener("click", function() {
    meetingModal.classList.remove("hidden");
  });
  // 右上の×ボタンを押したらモーダルウィンドウを閉じる
  meetingClose.addEventListener("click", function() {
    meetingModal.classList.add("hidden");
  });
  // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
  meetingModal.addEventListener("click", function(e) {
    if (e.target == meetingModal) {
      meetingModal.classList.add("hidden");
    }
  });

  // 工事情報登録
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
window.addEventListener('load', detailCreate);