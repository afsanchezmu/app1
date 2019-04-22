package com.webratio.webapp;

public class SequenceFlow implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _label;

    private java.lang.String _condition;

    private java.lang.Boolean __default;

    private java.lang.Double _sortNumber;

    private com.webratio.webapp.ActivityType _nextActivityType;

    private com.webratio.webapp.ActivityType _previousActivityType;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getLabel() {
        return _label;
    }

    public void setLabel(java.lang.String _label) {
        this._label = _label;
    }

    public java.lang.String getCondition() {
        return _condition;
    }

    public void setCondition(java.lang.String _condition) {
        this._condition = _condition;
    }

    public java.lang.Boolean get_default() {
        return __default;
    }

    public void set_default(java.lang.Boolean __default) {
        this.__default = __default;
    }

    public java.lang.Double getSortNumber() {
        return _sortNumber;
    }

    public void setSortNumber(java.lang.Double _sortNumber) {
        this._sortNumber = _sortNumber;
    }

    public com.webratio.webapp.ActivityType getNextActivityType() {
        return _nextActivityType;
    }

    public void setNextActivityType(com.webratio.webapp.ActivityType _nextActivityType) {
        this._nextActivityType = _nextActivityType;
    }

    public com.webratio.webapp.ActivityType getPreviousActivityType() {
        return _previousActivityType;
    }

    public void setPreviousActivityType(com.webratio.webapp.ActivityType _previousActivityType) {
        this._previousActivityType = _previousActivityType;
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
        if (_label != null)
            sb.append("label=" + _label + ',');
        if (_condition != null)
            sb.append("condition=" + _condition + ',');
        if (__default != null)
            sb.append("_default=" + __default + ',');
        if (_sortNumber != null)
            sb.append("sortNumber=" + _sortNumber + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.SequenceFlow)) {
            return false;
        }
        com.webratio.webapp.SequenceFlow __other = (com.webratio.webapp.SequenceFlow) obj;
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
