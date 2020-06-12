module.exports = {
    getHomePage: (req, res) => {
        let query = "SELECT * FROM `route`"; // query database to get all the players

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('index.ejs', {      // Renderiza lo que se encuentra en este archivo
                title: "Welcome to my program | Add route"
                ,routes: result
            });
        });
    },
};
