if (document.URL.match( /workers/ )) {
  function workerCreate() {
    // １ページ
    const firstPage = document.getElementById("first-info");
    // 2ページ
    const secondPage = document.getElementById("second-info");
    // ３ページ
    const thirdPage = document.getElementById("third-info");
    // １ページから２ページへのリンク
    const firstToSecond = document.getElementById("first-to-second");
    // 2ページから1ページへのリンク
    const secondToFirst = document.getElementById("second-to-first");
    // 2ページから3ページへのリンク
    const secondToThird = document.getElementById("second-to-third");
    // 3ページから2ページへのリンク
    const thirdToSecond = document.getElementById("third-to-second");
    // 3ページから1ページへのリンク
    const thirdToFirst = document.getElementById("third-to-first");

    // 1ページ目で「次へ」を押すと2ページ目が表示される
    firstToSecond.addEventListener("click", function() {
      firstPage.classList.add("hidden");
      secondPage.classList.remove("hidden");
    });
    // 2ページ目で「前へ」を押すと1ページ目が表示される
    secondToFirst.addEventListener("click", function() {
      firstPage.classList.remove("hidden");
      secondPage.classList.add("hidden");
    })
    // 2ページ目で「次へ」を押すと3ページ目が表示される
    secondToThird.addEventListener("click", function() {
      secondPage.classList.add("hidden");
      thirdPage.classList.remove("hidden");
    })
    // 3ページ目で「前へ」を押すと2ページ目が表示される
    thirdToSecond.addEventListener("click", function() {
      secondPage.classList.remove("hidden");
      thirdPage.classList.add("hidden");
    })
    // 3ページ目で「最初へ」を押すと1ページ目が表示される
    thirdToFirst.addEventListener("click", function() {
      firstPage.classList.remove("hidden");
      thirdPage.classList.add("hidden");
    })
  };
  window.addEventListener('load', workerCreate);
}