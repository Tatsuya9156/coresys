function statusColor() {
  // ステータスの取得
  const status = document.getElementById("customer-status");
  const statusValue = status.innerHTML;
  // ステータスと中間のバー
  const one = document.getElementById("one");
  const toTwo = document.getElementById("to-two");
  const two = document.getElementById("two");
  const toThree = document.getElementById("to-three");
  const three = document.getElementById("three");
  const toFour = document.getElementById("to-four");
  const four = document.getElementById("four");
  const toFive = document.getElementById("to-five");
  const five = document.getElementById("five");
  const toSix = document.getElementById("to-six");
  const six = document.getElementById("six");
  const toSeven = document.getElementById("to-seven");
  const seven = document.getElementById("seven");
  const toEight = document.getElementById("to-eight");
  const eight = document.getElementById("eight");
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