if (document.URL.match( /customers/ )) {
  function statusColor() {
    // ステータスの取得
    const status = document.getElementById("customer-status");
    const statusValue = status.innerHTML;
    // ステータスと中間のバー
    const one = document.getElementById("box-1");
    const toTwo = document.getElementById("bar-2");
    const two = document.getElementById("box-2");
    const toThree = document.getElementById("bar-3");
    const three = document.getElementById("box-3");
    const toFour = document.getElementById("bar-4");
    const four = document.getElementById("box-4");
    const toFive = document.getElementById("bar-5");
    const five = document.getElementById("box-5");
    const toSix = document.getElementById("bar-6");
    const six = document.getElementById("box-6");
    const toSeven = document.getElementById("bar-7");
    const seven = document.getElementById("box-7");
    const toEight = document.getElementById("bar-8");
    const eight = document.getElementById("box-8");
    // ステータスが1〜8のときそれぞれの処理を行う
    switch (statusValue) {
      case "1":
        one.classList.add("after-color");
        break;
      case "2":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        break;
      case "3":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        break;
      case "4":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        toFour.classList.add("after-color");
        four.classList.add("after-color");
        break;
      case "5":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        toFour.classList.add("after-color");
        four.classList.add("after-color");
        toFive.classList.add("after-color");
        five.classList.add("after-color");
        break;
      case "6":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        toFour.classList.add("after-color");
        four.classList.add("after-color");
        toFive.classList.add("after-color");
        five.classList.add("after-color");
        toSix.classList.add("after-color");
        six.classList.add("after-color");
        break;
      case "7":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        toFour.classList.add("after-color");
        four.classList.add("after-color");
        toFive.classList.add("after-color");
        five.classList.add("after-color");
        toSix.classList.add("after-color");
        six.classList.add("after-color");
        toSeven.classList.add("after-color");
        seven.classList.add("after-color");
        break;
      case "7":
        one.classList.add("after-color");
        toTwo.classList.add("after-color");
        two.classList.add("after-color");
        toThree.classList.add("after-color");
        three.classList.add("after-color");
        toFour.classList.add("after-color");
        four.classList.add("after-color");
        toFive.classList.add("after-color");
        five.classList.add("after-color");
        toSix.classList.add("after-color");
        six.classList.add("after-color");
        toSeven.classList.add("after-color");
        seven.classList.add("after-color");
        toEight.classList.add("after-color");
        eight.classList.add("after-color");
        break;
    }
  };
  window.addEventListener('load', statusColor);
}