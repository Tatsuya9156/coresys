if (document.URL.match( /chats/ )) {
  function chatCreate() {
    // 新規作成の場合
    const createOpen = document.getElementById("chat-create-btn");
    const createModal = document.getElementById("chat-create-modal");
    const createClose = document.getElementById("chat-create-close-btn");
    // チャット作成をクリックしたらモーダルウィンドウが表示される
    createOpen.addEventListener("click", function() {
      createModal.classList.remove("hidden");
    });
    // 右上の×ボタンを押したらモーダルウィンドウを閉じる
    createClose.addEventListener("click", function() {
      createModal.classList.add("hidden");
    });
    // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
    createModal.addEventListener("click", function(e) {
      if (e.target == createModal) {
        createModal.classList.add("hidden");
      }
    });

    // 編集の場合
    const editOpen = document.getElementById("chat-edit-btn");
    const editModal = document.getElementById("chat-edit-modal");
    const editClose = document.getElementById("chat-edit-close-btn");
    // チャット名前横の編集ボタンをクリックしたらモーダルウィンドウが表示される
    editOpen.addEventListener("click", function() {
      editModal.classList.remove("hidden");
    });
    // 右上の×ボタンを押したらモーダルウィンドウを閉じる
    editClose.addEventListener("click", function() {
      editModal.classList.add("hidden");
    });
    // モーダルウィンドウ外のグレー部分を押してもモーダルウィンドウを閉じることができる
    editModal.addEventListener("click", function(e) {
      if (e.target == editModal) {
        editModal.classList.add("hidden");
      }
    });
  };
  window.addEventListener('load', chatCreate);
}