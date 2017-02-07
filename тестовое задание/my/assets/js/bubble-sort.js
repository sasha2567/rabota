var sort = {
   sortedArray : null,
   lengthFlag : false,
   unsortedArray : null
}

/*---Навешивания события генерации выборки---*/
$("#formation").click(function() {
   $('.output').empty();
   if(sort.lengthFlag){
      sort.unsortedArray = generateRandomShuffledArray('#array-output', 1, $('#arrayLength').val());
      bubbleOutput (sort.unsortedArray, '#bubble-output');
   }
   else {
      alert('Вы не выбрали длину последовательности');
   }
});

$("#start").click(function() {
   if(sort.unsortedArray){
      sort.sortedArray = bubble_sort(sort.unsortedArray);
   }
   else {
      alert('К сожалению нечего сортировать');
   }
});

/*---Навешивания события изменения длины выборки---*/
$(document).ready(function(){
   $("#arrayLength").change(function() {
      if($("#arrayLength").val() != 0) {
         sort.lengthFlag = true;
      }
   });
});

/*---Анимация перестановки элементов выборки---*/
function animationSwap(ind1, ind2) {
   $('.bubbleId-' + ind2).animate({
      "top": "+=20px"
   }, {
      duration: 1000,
   });
   $('.bubbleId-' + ind1).animate({
      "top": "-=20px"
   }, {
      duration: 1000,
   });
   $('.bubbleId-' + ind2).animate({
      "left": "-=50px"
   }, {
      duration: 1000,
   });
   $('.bubbleId-' + ind1).animate({
      "left": "+=50px"
   }, {
      duration: 1000,
   });
   $('.bubbleId-' + ind2).animate({
      "top": "-=20px"
   }, {
      duration: 1000,
   });
   $('.bubbleId-' + ind1).animate({
      "top": "+=20px"
   }, {
      duration: 1000,
   });
}

function selectSwap(ind1, ind2) {
   $('.bubbleId-' + ind2).addClass('select');
   $('.bubbleId-' + ind1).addClass('select');
}

function unselectSwap(ind1, ind2) {
   $('.bubbleId-' + ind2).removeClass('select');
   $('.bubbleId-' + ind1).removeClass('select');
}

/*---Сортировка пузырьком---*/
function bubble_sort(array) {
   var arr = array;
   //animationSwap(0,1);
   //animationSwap(1,2);
   //animationSwap(2,3);
   for (var j = 0, len = arr.length - 1; j < len; j++) {
      var swapped = false;
      var i = 0;
      while (i < len) {
         selectSwap(i, (i + 1));
         if (arr[i] > arr[i + 1]) {
            var c = arr[i];
            arr[i] = arr[i + 1];
            arr[i + 1] = c;
            swapped = true;
            animationSwap(i, (i + 1));
         }
         unselectSwap(i, (i + 1));
         i++;
      }
      if(!swapped)
         break;
   }
   alert(arr);
   return arr;
}

function bubbleOutput (array, outputId) {
   for (var j = 0, len = array.length; j < len; j++){
      $(outputId).append('<div class="bubble bubbleId-' + j + '"><span>' + array[j] + '</span></div>');
   }
   //<g fill="#33C3F0" stroke-width="1px" stroke="#f3f3f3" transform="translate(330,0)"><circle fill="#33C3F0" stroke="#1EAEDB" stroke-width="1px" r="24" cy="75"></circle><text stroke="#fff" stroke-width="1px" fill="#fff" font-size="18px" dy="80" text-anchor="middle">4</text></g>
}

/*---Генерация выборки путем перемешивания---*/
function generateRandomShuffledArray(outputId, min, max) {
   if (max != 0) {
         var totalNumbers = max - min + 1,
         arrayTotalNumbers = [],
         arrayRandomNumbers = [],
         tempRandomNumber;

         while (totalNumbers--) {
               arrayTotalNumbers.push(totalNumbers + min);
         }

         while (arrayTotalNumbers.length) {
               tempRandomNumber = Math.round(Math.random() * (arrayTotalNumbers.length - 1));
               arrayRandomNumbers.push(arrayTotalNumbers[tempRandomNumber]);
               arrayTotalNumbers.splice(tempRandomNumber, 1);
         }
         $(outputId).empty();
         $(outputId).append("<span>Сгенерированная выборка: arr = [ " + arrayRandomNumbers + " ]</span>");
         
         return arrayRandomNumbers;
   }
   else {
      alert('Вы не сгенерировали последовательность');
      return false;
   }
}

/*---Очистка данных объекта сортировки---*/
function clearAll() {
   $('.output').empty();
   sort.sortedArray = null;
   sort.lengthFlag = false;
   sort.unsortedArray = null;
}
