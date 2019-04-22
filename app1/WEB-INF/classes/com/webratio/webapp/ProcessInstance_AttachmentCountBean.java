package com.webratio.webapp;

public class ProcessInstance_AttachmentCountBean implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.Integer value;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.Integer getValue() {
        return value;
    }

    public void setValue(java.lang.Integer value) {
        this.value = value;
    }

    public String toString() {
        return (value != null) ? value.toString() : "";
    }
}
