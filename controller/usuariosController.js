import * as usuariosRepository from '../repository/usuariosRepository.js';

export const getAll = async (req, res) => {
  try {
    const usuarios = await usuariosRepository.getAll();
    res
      .status(200)
      .json({ message: "Usuários retornados com êxito!", data: usuarios });
  } catch (err) {
    console.error(err);
    res
      .status(500)
      .json({ error: "Internal Server Error", details: err.message });
  }
};

export const getOne = async (req, res) => {
  try {
    const { id } = req.params;
    const usuario = await usuariosRepository.getOne(id);
    if (!usuario) {
      return res.status(404).json({ error: "Usuário não encontrado" });
    }
    res
      .status(200)
      .json({ message: "Usuário encontrado com sucesso!", data: usuario });
  } catch (err) {
    console.error(err);
    res
      .status(500)
      .json({ error: "Internal Server Error", details: err.message });
  }
};

export const deletar = async (req, res) => {
  try {
    const { id } = req.params;
    await usuariosRepository.deletar(id);
    res.status(200).json({ message: "Usuário deletado com sucesso!" });
  } catch (err) {
    console.error(err);
    res
      .status(500)
      .json({ error: "Internal Server Error", details: err.message });
  }
};

export const cadastrar = async (req, res) => {
  try {
    const usuario = await usuariosRepository.cadastrar(req.body);
    res
      .status(201)
      .json({ message: "Usuário cadastrado com sucesso!", data: usuario });
  } catch (err) {
    console.error(err);
    res
      .status(500)
      .json({ error: "Internal Server Error", details: err.message });
  }
};

export const atualizar = async (req, res) => {
  try {
    const { id } = req.params;
    const usuario = await usuariosRepository.atualizar(id, req.body);
    res
      .status(200)
      .json({ message: "Usuário atualizado com sucesso!", data: usuario });
  } catch (err) {
    console.error(err);
    res
      .status(500)
      .json({ error: "Internal Server Error", details: err.message });
  }
};

export const loginUser = async (req, res) => {
  try {
    const { email, password } = req.body;
    const usuario = await usuariosRepository.login(email, password);
    res
      .status(200)
      .json({ message: "Usuário logado com sucesso!", data: usuario });
  } catch (err) {
    console.error(err);
    res.status(401).json({ error: err.message });
  }
};
