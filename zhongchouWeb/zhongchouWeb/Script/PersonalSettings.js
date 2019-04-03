function ChangeDiv(divId, divName, zDivCount) {
    for (i = 0; i <= zDivCount; i++) {
        document.getElementById(divName + i).style.display = "none";
    }
    document.getElementById(divName + divId).style.display = "block";
}