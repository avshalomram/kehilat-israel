const servises = require('./services');
const accessData = require('./accessData');


async function login(req, res) {
      req.user ? res.send({ user_id: req.user.user_id }) : res.status(401).send("unidentified") 
}
async function register(req, res) {
    try {
        //todo: validate req.body
        const user = await accessData.addUser(req.body);
        res.status(201).send(user);
    } catch (err) { handleError(err, res) }
}