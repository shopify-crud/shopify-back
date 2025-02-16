import express from "express";
import * as usuariosController from "../controller/usuariosController.js";

const route = express.Router();

route.get("/", usuariosController.getAll);
route.get("/getone/:id", usuariosController.getOne);
route.delete("/:id", usuariosController.deletar);
route.post("/", usuariosController.cadastrar);
route.put("/:id", usuariosController.atualizar);
route.post("/login", usuariosController.loginUser);

export default route;
