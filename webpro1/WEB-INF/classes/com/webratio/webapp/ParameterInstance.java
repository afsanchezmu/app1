package com.webratio.webapp;

public class ParameterInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _name;

    private java.lang.String _value;

    private java.lang.Boolean _current;

    private java.sql.Timestamp _timestamp;

    private com.webratio.webapp.ParameterType _parameterType;

    private com.webratio.webapp.ProcessInstance _processInstance;

    private com.webratio.webapp.ActivityInstance _activityInstance;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getName() {
        if (_name != null) {
            return _name;
        }
        java.lang.Object parameterInstance2ParameterTypeObject = this.getParameterType();
        if (parameterInstance2ParameterTypeObject != null) {
            com.webratio.webapp.ParameterType parameterInstance2ParameterType = parameterInstance2ParameterTypeObject instanceof java.util.Set ? (((java.util.Set) parameterInstance2ParameterTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ParameterType) ((java.util.Set) parameterInstance2ParameterTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ParameterType) parameterInstance2ParameterTypeObject;
            if (parameterInstance2ParameterType != null) {
                return parameterInstance2ParameterType.getName();
            }
        }
        return _name;
    }

    public void setName(java.lang.String _name) {
        this._name = _name;
    }

    public java.lang.String getValue() {
        return _value;
    }

    public void setValue(java.lang.String _value) {
        this._value = _value;
    }

    public java.lang.Boolean getCurrent() {
        return _current;
    }

    public void setCurrent(java.lang.Boolean _current) {
        this._current = _current;
    }

    public java.sql.Timestamp getTimestamp() {
        return _timestamp;
    }

    public void setTimestamp(java.sql.Timestamp _timestamp) {
        this._timestamp = _timestamp;
    }

    public com.webratio.webapp.ParameterType getParameterType() {
        return _parameterType;
    }

    public void setParameterType(com.webratio.webapp.ParameterType _parameterType) {
        this._parameterType = _parameterType;
    }

    public com.webratio.webapp.ProcessInstance getProcessInstance() {
        return _processInstance;
    }

    public void setProcessInstance(com.webratio.webapp.ProcessInstance _processInstance) {
        this._processInstance = _processInstance;
    }

    public com.webratio.webapp.ActivityInstance getActivityInstance() {
        return _activityInstance;
    }

    public void setActivityInstance(com.webratio.webapp.ActivityInstance _activityInstance) {
        this._activityInstance = _activityInstance;
    }

    public float getSearchScore() {
        return _searchScore;
    }

    public void setSearchScore(float _searchScore) {
        this._searchScore = _searchScore;
    }

    public String toString() {
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        sb.append(super.toString());
        int n = sb.length() - 1;
        if (sb.charAt(n) == ']') {
            sb.setCharAt(n, ',');
        } else {
            sb.append('[');
        }
        if (_oid != null)
            sb.append("oid=" + _oid + ',');
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_value != null)
            sb.append("value=" + _value + ',');
        if (_current != null)
            sb.append("current=" + _current + ',');
        if (_timestamp != null)
            sb.append("timestamp=" + _timestamp + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ParameterInstance)) {
            return false;
        }
        com.webratio.webapp.ParameterInstance __other = (com.webratio.webapp.ParameterInstance) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid();
        otherKey = __other.getOid();
        if (key == null) {
            if (otherKey != null) {
                return false;
            }
        } else {
            if (otherKey == null) {
                return false;
            } else if (!key.equals(otherKey)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 0;
        java.lang.Object key = null;
        key = this.getOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
