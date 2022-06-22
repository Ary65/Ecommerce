//& imports from packages
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");

//& imports from other files
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

//& initializations
const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://ecommerce:ecommerce2222@cluster0.timsm.mongodb.net/?retryWrites=true&w=majority";

//? middleware
//^ CLIENT => SERVER => CLIENT
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

//*connection to mongodb || promise = future
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connected to mongodb");
  })
  .catch((err) => {
    console.log(err);
  });
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server is listening on port ${PORT}`);
});
