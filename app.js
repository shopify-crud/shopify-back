import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import usuariosRoutes from "./routes/usuariosRoutes.js";

const app = express();
const PORT = 3000;

app.use(cors());
app.use(bodyParser.json());
app.use(express.json());

app.use("/usuarios", usuariosRoutes);

app.listen(PORT, () => {
  console.log(`Servidor rodando em http://localhost:${PORT}`);
});
