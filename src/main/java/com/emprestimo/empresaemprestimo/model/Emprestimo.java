package com.emprestimo.empresaemprestimo.model;

import java.io.Serializable;

public class Emprestimo  implements Serializable {
    private static final long serialVersionUID = 1L;

    private float valor;
    private int qtdparcelas;
    private String dataemp;
    private int idEmp;

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public int getQtdparcelas() {
        return qtdparcelas;
    }

    public void setQtdparcelas(int qtdparcelas) {
        this.qtdparcelas = qtdparcelas;
    }

    public String getDataemp() {
        return dataemp;
    }

    public void setDataemp(String dataemp) {
        this.dataemp = dataemp;
    }

    public int getIdEmp() {
        return idEmp;
    }

    public void setIdEmp(int idEmp) {
        this.idEmp = idEmp;
    }
}
