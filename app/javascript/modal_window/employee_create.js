function employeeCreate() {
  // １ページ
  const firstPage = document.getElementById("first-employee-info");
  // 2ページ
  const secondPage = document.getElementById("second-employee-info");
  // １ページから２ページへのリンク
  const firstToSecond = document.getElementById("to-info-second");
  // 2ページから1ページへのリンク
  const secondToFirst = document.getElementById("to-info-first");

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
};
window.addEventListener('load', employeeCreate);