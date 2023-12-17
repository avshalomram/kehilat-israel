const servises = require("./servises")


async function getMessages(req, res) {
    try {
        const messages = await servises.getMessages();
        res.send(messages)
    } catch (err) { handleError(err, res) }
}

async function getMessage(req, res) {
    try {
        if (isNaN(req.params.message_id)) return res.sendStatus(400);
        const [message] = await servises.getMessages(req.params.message_id);
        if(!message) return res.sendStatus(404);
        if(req.query.comments == "false") return res.send(message)
        const comments = await servises.getComments(req.params.message_id);
        return res.send({message, comments})
    } catch (err) { handleError(err, res) }
}

async function createMessage(req, res) {
    if(!req.body || !req.body.title) return res.sendStatus(400);
    if(!req.body.category) req.body.category = "general";
    let message = {title: req.body.title, category: req.body.category, user_id: req.user.user_id}
    try{
       await servises.createMessage(req.body);
         res.sendStatus(201);
    }catch(err){handleError(err, res)}
}

async function deleteMessage(req, res) {
}

async function editMessage(req, res) {
}

async function deleteAllMessages(req, res) {
}

async function editAllmessages(req, res) {
}



function handleError(err, res) {
    console.log(err);
    res.sendStatus(400)
}



module.exports = { getMessages, getMessage, createMessage, deleteMessage, editMessage, deleteAllMessages, editAllmessages}