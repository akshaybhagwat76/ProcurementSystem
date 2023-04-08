// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
$(document).ready(function () {
    loadDiscription();
    loadBalance();
});
function loadDiscription() {
    var AccountNo = $("#AccountNo").find(":selected").val();
    $.get("/Page1/LoadData", { AccountNo: AccountNo }, function (res) {
        document.getElementById("DESCRIPT").value = res.descript;
        document.getElementById("Curr_Code").value = res.curR_Code;
    })

}
function loadBalance() {
    document.getElementById("currentBalance").value = 0;
    document.getElementById("previouseBalance").value = 0;
    var year = $("#FiscalYear").find(":selected").val();
    $.get("/Page1/LoadBalance", { year: year }, function (res) {
        document.getElementById("currentBalance").value = res.currentbalance;
        document.getElementById("previouseBalance").value = res.previousBalance;
    })
    loadTableData();
}
function loadTableData() {
    $("#t1").empty();
    var total1 = 0;
    var year = $("#FiscalYear").find(":selected").val();
    $.get("Page1/LoadTableData", { year: year }, function (res) {



        res.forEach(function (dt) {
            total1 += dt.activity;
            $("#t1").append("<tr>" +
                "<td>" + dt.perioddesc + "</td>" +
                "<td>" + dt.balance + "</td>" +
                "<td>" + dt.activity + "</td>"
                + "</tr>")
        })
        $("#t1").append("<tr>" +
            "<td colspan='2'>" + "</td>" + "<td>" + total1 + "</td>");
    });
    $("#t2").empty();

    var year = $("#FiscalYear").find(":selected").val();
    $.get("Page1/LoadSecondTableData", { year: year }, function (res) {

        var total = 0;
        console.log(res);
        res.forEach(function (dt) {
            total += dt.previouseyearactivity;
            $("#t2").append("<tr>" +
                "<td>" + dt.perviousyeardesc + "</td>" +
                "<td>" + dt.previouseyearbalance + "</td>" +
                "<td>" + dt.previouseyearactivity + "</td>"
                + "</tr>")
        })
        $("#t2").append("<tr>" +
            "<td colspan='2'>" + "</td>" + "<td>" + total + "</td>");
    })
}