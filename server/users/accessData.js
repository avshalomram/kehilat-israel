const db = require('../database/db');
const util = require('../utils/accessData');


async function getUsers(filters) {
    try {
        console.log("filters: ", filters);
        const { keys, values } = util.extractKeyValues(filters);
        return await db.get("users", ['*'], keys, values);
    } catch (err) { console.log(err); }
}

async function addUser(user) {
    try {
        const { keys, values } = util.extractKeyValues(user);
        return await db.add("users", keys, values);
    } catch (err) { console.log(err); }
}

async function updateUser(user_id, data) {
    try {
        const { keys, values } = util.extractKeyValues(data);
        return await db.update("users", keys, values, ["user_id"], [user_id]);
    } catch (err) { console.log(err); }
}

async function getDebt(filters) {
    try {
        const { keys, values } = util.extractKeyValues(filters);
        const [[debt]] = await db.get("debts", ['*'], keys, values);
        return debt
    } catch (err) { console.log(err); }
}

async function deleteUser(user_id) {
    try {
        return await db.update("users", ["role"], ["לא פעיל"], ["user_id"], [user_id]);
    } catch (err) { console.log(err); }
}

async function newDebt({amount, user_id}) {
    try {
        const [{insertId}] = await db.add("debts", ["debt", "user_id"], [amount, user_id]);
        return insertId;
    } catch (err) { console.log(err);return err }
}

async function updateDebt({amount, user_id}) {
    try {
        const[{affectedRows}] = await db.update("debts", ["debt"], [amount], ["user_id"], [user_id]);
        return affectedRows;
    } catch (err) { console.log(err); }
}

async function getDebts() {
    try {
        return await db.get("debts", ['*']);
    } catch (err) { console.log(err); }
}



module.exports = {getDebts,deleteUser, getUsers, addUser, updateUser, getDebt, updateDebt, newDebt }