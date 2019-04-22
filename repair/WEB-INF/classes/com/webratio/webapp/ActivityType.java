package com.webratio.webapp;

public class ActivityType implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _ID;

    private java.lang.String _code;

    private java.lang.String _name;

    private java.lang.String _processName;

    private java.lang.String _defaultInstanceName;

    private java.lang.String _description;

    private java.lang.String _type;

    private java.lang.String _execution;

    private java.lang.Double _sortNumber;

    private java.lang.String _uuid;

    private java.util.Set _activityInstances = new java.util.HashSet();

    private com.webratio.webapp.Process _process;

    private java.util.Set _previousConditions = new java.util.HashSet();

    private java.util.Set _nextConditions = new java.util.HashSet();

    private java.util.Set _groups = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getID() {
        return _ID;
    }

    public void setID(java.lang.String _ID) {
        this._ID = _ID;
    }

    public java.lang.String getCode() {
        return _code;
    }

    public void setCode(java.lang.String _code) {
        this._code = _code;
    }

    public java.lang.String getName() {
        return _name;
    }

    public void setName(java.lang.String _name) {
        this._name = _name;
    }

    public java.lang.String getProcessName() {
        if (_processName != null) {
            return _processName;
        }
        java.lang.Object activityType2ProcessObject = this.getProcess();
        if (activityType2ProcessObject != null) {
            com.webratio.webapp.Process activityType2Process = activityType2ProcessObject instanceof java.util.Set ? (((java.util.Set) activityType2ProcessObject)
                    .isEmpty() ? null : (com.webratio.webapp.Process) ((java.util.Set) activityType2ProcessObject).iterator().next())
                    : (com.webratio.webapp.Process) activityType2ProcessObject;
            if (activityType2Process != null) {
                return activityType2Process.getName();
            }
        }
        return _processName;
    }

    public void setProcessName(java.lang.String _processName) {
        this._processName = _processName;
    }

    public java.lang.String getDefaultInstanceName() {
        return _defaultInstanceName;
    }

    public void setDefaultInstanceName(java.lang.String _defaultInstanceName) {
        this._defaultInstanceName = _defaultInstanceName;
    }

    public java.lang.String getDescription() {
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.String getType() {
        return _type;
    }

    public void setType(java.lang.String _type) {
        this._type = _type;
    }

    public java.lang.String getExecution() {
        return _execution;
    }

    public void setExecution(java.lang.String _execution) {
        this._execution = _execution;
    }

    public java.lang.Double getSortNumber() {
        return _sortNumber;
    }

    public void setSortNumber(java.lang.Double _sortNumber) {
        this._sortNumber = _sortNumber;
    }

    public java.lang.String getUuid() {
        return _uuid;
    }

    public void setUuid(java.lang.String _uuid) {
        this._uuid = _uuid;
    }

    public java.util.Set getActivityInstances() {
        return _activityInstances;
    }

    public void setActivityInstances(java.util.Set _activityInstances) {
        this._activityInstances = _activityInstances;
    }

    public com.webratio.webapp.Process getProcess() {
        return _process;
    }

    public void setProcess(com.webratio.webapp.Process _process) {
        this._process = _process;
    }

    public java.util.Set getPreviousConditions() {
        return _previousConditions;
    }

    public void setPreviousConditions(java.util.Set _previousConditions) {
        this._previousConditions = _previousConditions;
    }

    public java.util.Set getNextConditions() {
        return _nextConditions;
    }

    public void setNextConditions(java.util.Set _nextConditions) {
        this._nextConditions = _nextConditions;
    }

    public java.util.Set getGroups() {
        return _groups;
    }

    public void setGroups(java.util.Set _groups) {
        this._groups = _groups;
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
        if (_ID != null)
            sb.append("ID=" + _ID + ',');
        if (_code != null)
            sb.append("code=" + _code + ',');
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_processName != null)
            sb.append("processName=" + _processName + ',');
        if (_defaultInstanceName != null)
            sb.append("defaultInstanceName=" + _defaultInstanceName + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_type != null)
            sb.append("type=" + _type + ',');
        if (_execution != null)
            sb.append("execution=" + _execution + ',');
        if (_sortNumber != null)
            sb.append("sortNumber=" + _sortNumber + ',');
        if (_uuid != null)
            sb.append("uuid=" + _uuid + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ActivityType)) {
            return false;
        }
        com.webratio.webapp.ActivityType __other = (com.webratio.webapp.ActivityType) obj;
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
