const express = require('express');
const app = express();

app.get('/status', (req, res) => {
    // res.status(320)
    res.send('The server is alive!')
})





const port = 5000;
app.listen(port, () => console.log(`Listening on port ${port}...`))