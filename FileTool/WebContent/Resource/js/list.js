 var all = document.getElementById("j_cbAll");
 var tbody = document.getElementById("j_tb");
 var checkboxs = tbody.getElementsByTagName("input");
 all.onclick = function() {
     for (var i = 0; i < checkboxs.length; i++) {
         var checkbox = checkboxs[i];
         checkbox.checked = this.checked;
     }
 };
 for (var i = 0; i < checkboxs.length; i++) {
     checkboxs[i].onclick = function() {
         var isCheckedAll = true;
         for (var i = 0; i < checkboxs.length; i++) {
             if (!checkboxs[i].checked) {
                 isCheckedAll = false;
                 break;
             }
         }
         all.checked = isCheckedAll;
     };
 }