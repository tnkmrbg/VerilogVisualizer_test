let express = require('express');
let app = express();
app.use(express.static('app'));

let port = 8080;
app.listen(port, () => {
    console.log('Lanuch Server');
});