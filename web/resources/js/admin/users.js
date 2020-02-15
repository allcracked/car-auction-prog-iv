"use strict";

document.addEventListener('DOMContentLoaded', event => {
        document.querySelector("#addUserBtn").addEventListener('click', newUserModal);
});

function newUserModal() {
    console.log("Modal opened");
    $("#addUserModal").modal("toggle");
}