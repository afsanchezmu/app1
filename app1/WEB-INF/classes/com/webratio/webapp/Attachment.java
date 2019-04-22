package com.webratio.webapp;

public class Attachment implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _fileRef;

    private java.lang.Object _file;

    private java.lang.String _title;

    private java.sql.Timestamp _timestamp;

    private java.lang.String _userName;

    private java.util.Set _processInstances = new java.util.HashSet();

    private com.webratio.webapp.User _user;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getFileRef() {
        return _fileRef;
    }

    public void setFileRef(java.lang.String _fileRef) {
        this._fileRef = _fileRef;
    }

    public java.lang.Object getFile() {
        return _file;
    }

    public void setFile(java.lang.Object _file) {
        this._file = _file;
    }

    public java.lang.String getTitle() {
        return _title;
    }

    public void setTitle(java.lang.String _title) {
        this._title = _title;
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
        java.lang.Object attachment2UserObject = this.getUser();
        if (attachment2UserObject != null) {
            com.webratio.webapp.User attachment2User = attachment2UserObject instanceof java.util.Set ? (((java.util.Set) attachment2UserObject)
                    .isEmpty() ? null : (com.webratio.webapp.User) ((java.util.Set) attachment2UserObject).iterator().next())
                    : (com.webratio.webapp.User) attachment2UserObject;
            if (attachment2User != null) {
                return attachment2User.getUserName();
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
        if (_file != null)
            sb.append("file=" + _file + ',');
        if (_title != null)
            sb.append("title=" + _title + ',');
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
        if (!(obj instanceof com.webratio.webapp.Attachment)) {
            return false;
        }
        com.webratio.webapp.Attachment __other = (com.webratio.webapp.Attachment) obj;
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
