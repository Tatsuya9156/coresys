function taskCreate() {
  const newTask = document.getElementById("new-task");
  const taskModal = document.getElementById("task-modal");
  const closeTask = document.getElementById("close-task");
  newTask.addEventListener("click", function() {
    taskModal.classList.remove("hidden");
  });
  closeTask.addEventListener("click", function() {
    taskModal.classList.add("hidden");
  });
  taskModal.addEventListener("click", function(e) {
    if (e.target == taskModal) {
      taskModal.classList.add("hidden");
    }
  });
};
window.addEventListener('load', taskCreate);