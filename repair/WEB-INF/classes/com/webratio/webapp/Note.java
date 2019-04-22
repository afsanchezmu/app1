package com.webratio.webapp;

public class Note implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _text;

    private java.sql.Timestamp _timestamp;

    private java.lang.String _userName;

    private java.util.Set _processInstances = new java.util.HashSet();

    private java.util.Set _activityInstances = new java.util.HashSet();

    private com.webratio.webapp.ActivityInstance _activityInstance;

    private com.webratio.webapp.User _user;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getText() {
        return _text;
    }

    public void setText(java.lang.String _text) {
        this._text = _text;
    }

    public java.sql.Timestamp getTimestamp() {
        return _timestamp;
    }

    public void setTimestamp(java.sql.Timestamp _timestamp) {
        this._timestamp = _timestamp;
    }

    public java.lang.String getUserName() {
        if (_userName != null) {
            return _userName;
        }
        java.lang.Object note2UserObject = this.getUser();
        if (note2UserObject != null) {
            com.webratio.webapp.User note2User = note2UserObject instanceof java.util.Set ? (((java.util.Set) note2UserObject)
                    .isEmpty() ? null : (com.webratio.webapp.User) ((java.util.Set) note2UserObject).iterator().next())
                    : (com.webratio.webapp.User) note2UserObject;
            if (note2User != null) {
                return note2User.getUserName();
            }
        }
        return _userName;
    }

    public void setUserName(java.lang.String _userName) {
        this._userName = _userName;
    }

    public java.util.Set getProcessInstances() {
        return _processInstances;
    }

    public void setProcessInstances(java.util.Set _processInstances) {
        this._processInstances = _processInstances;
    }

    public java.util.Set getActivityInstances() {
        return _activityInstances;
    }

    public void setActivityInstances(java.util.Set _activityInstances) {
        this._activityInstances = _activityInstances;
    }

    public com.webratio.webapp.ActivityInstance getActivityInstance() {
        return _activityInstance;
    }

    public void setActivityInstance(com.webratio.webapp.ActivityInstance _activityInstance) {
        this._activityInstance = _activityInstance;
    }

    public com.webratio.webapp.User getUser() {
        return _user;
    }

    public void setUser(com.webratio.webapp.User _user) {
        this._user = _user;
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
        if (_text != null)
            sb.append("text=" + _text + ',');
        if (_timestamp != null)
            sb.append("timestamp=" + _timestamp + ',');
        if (_userName != null)
            sb.append("userName=" + _userName + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.Note)) {
            return false;
        }
        com.webratio.webapp.Note __other = (com.webratio.webapp.Note) obj;
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
