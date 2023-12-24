const db = require('../database/db');
const util = require('../utils/accessData');


async function getUsers(filters) {
    try {
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



module.exports = { getUsers, addUser, updateUser }