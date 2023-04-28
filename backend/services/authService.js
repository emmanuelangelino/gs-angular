const { loginValidation, registerValidation } = require("../middleware/validation");
const db = require("../database/db");
const jwt = require("jsonwebtoken");

exports.loginUser = async (params) => {
  const { error } = loginValidation(params);
  if (error) throw { message: error.details[0].message, statusCode: 400 };

  const { email, password } = params;

  return new Promise((resolve, reject) => {
    db.query(
      "SELECT * FROM users WHERE email = ? AND password = ?",
      [email, password],
      (err, result) => {
        if (err) {
          reject({
            data: err,
            message: "Algo deu errado, por favor tente novamente",
            statusCode: 400,
          });
        }

        if (result.length === 0) {
          reject({
            message: "Credenciais erradas, por favor tente novamente",
            statusCode: 400,
          });
        }

        if (result.length > 0) {
          const token = jwt.sign({ data: result }, "secret");
          resolve({
            message: "Login realizado com sucesso.",
            data: result,
            token,
          });
        }
      }
    );
  });
};

exports.registerUser = async (params) => {
  const { error } = registerValidation(params);
  if (error) throw { message: error.details[0].message, statusCode: 400 };

  const { fullName, email, password } = params;

  return new Promise((resolve, reject) => {
    db.query(
      `SELECT email FROM users WHERE email = ?`,
      [email],
      (err, result) => {
        if (result.length > 0) {
          reject({
            message: "Email já está em uso, tente novamente",
            statusCode: 400,
          });
        } else if (result.length === 0) {
          db.query(
            `INSERT INTO users (fname, email, password) VALUES (?,?,?)`,
            [fullName, email, password],
            (err, result) => {
              if (err) {
                reject({
                  message: "Algo deu errado, por favor tente novamente",
                  statusCode: 400,
                  data: err,
                });
              } else {
                const token = jwt.sign({ data: result }, "secret");
                resolve({
                  data: result,
                  message: "Cadastro realizado com sucesso.",
                  token: token,
                  statusCode: 200,
                });
              }
            }
          );
        }
      }
    );
  });
};
