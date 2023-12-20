const servises = require("./servises")
const { handleError } = require("../functions")

async function getMessages(req, res) {
    try {
        const filters = {};
        if (req.query.category) filters.category = req.query.category;
        if (req.query.user_id) filters.user_id = req.query.user_id;
        if (req.query.liked) filters.liked = req.query.liked;
        const messages = await servises.getMessages(filters,req.user);
        res.send(messages)
    } catch (err) { handleError(err, res) }
}

async function getMessage(req, res) {
    try {
        if (isNaN(req.params.message_id)) return res.sendStatus(400);
        const [message] = await servises.getMessages({ message_id: req.params.message_id });
        if (!message) return res.sendStatus(404);
        if (req.query.comments == "false") return res.send(message)
        const comments = await servises.getComments(req.params.message_id);
        return res.send({ message, comments })
    } catch (err) { handleError(err, res) }
}

async function createMessage(req, res) {
    if (!req.body || !req.body.title) return res.sendStatus(400);
    if (!req.body.category) req.body.category = "general";
    let message = { title: req.body.title, content: req.body.content, category: req.body.category, user_id: req.user.user_id }
    try {
        message = await servises.createMessage(message);
        res.status(201).send(message);
    } catch (err) { handleError(err, res) }
}

async function deleteMessage(req, res) {
    console.log("deleteMessage", req.params.message_id);
    try {
        const data = await servises.deleteMessage(req.params.message_id);
        return res.send(data);
    } catch (err) { handleError(err, res) }

}

async function editMessage(req, res) {
}

async function deleteAllMessages(req, res) {
}

async function editAllmessages(req, res) {
}

async function updateMessage(req, res) {
    console.log("updatemessages  ", req.params);
    try {
        let data;
        switch (req.params.field) {
            case "likes":
                data = await servises.toggleLike(req.params.message_id, req.user.user_id);
                break;
            default:
                return res.sendStatus(400);
        }
        return res.send(data > 0);
    } catch (err) { handleError(err, res) }
}







module.exports = { getMessages, getMessage, createMessage, deleteMessage, editMessage, deleteAllMessages, editAllmessages, updateMessage }