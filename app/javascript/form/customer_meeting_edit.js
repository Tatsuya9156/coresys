if (document.URL.match( /customers/ )) {
  function meetingEdit() {
    // 編集の場合
    const meetingEditOpen = document.getElementById("meeting-edit-btn");
    const meetingEditModal = document.getElementById("meeting-modal-edit");
    const meetingEditClose = document.getElementById("meeting-edit-close-btn");
    // 現調情報編集ボタンをクリックしたらモーダルウィンドウが表示される
    meetingEditOpen.addEventListener("click", function() {
      meetingEditModal.classList.remove("hidden");
    });
    // 右上の×ボタンを押したらモーダルウィンドウを閉じる
    meetingEditClose.addEventListener("click", function() {
      meetingEditModal.classList.add("hidden");
    });
    // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
    meetingEditModal.addEventListener("click", function(e) {
      if (e.target == meetingEditModal) {
        meetingEditModal.classList.add("hidden");
      }
    });
  };
  window.addEventListener('load', meetingEdit);
}