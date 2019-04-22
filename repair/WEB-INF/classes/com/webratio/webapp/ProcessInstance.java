package com.webratio.webapp;

public class ProcessInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _code;

    private java.lang.String _name;

    private java.lang.String _processName;

    private java.lang.Integer _subProcessIndex;

    private java.lang.String _status;

    private java.sql.Timestamp _activeSince;

    private java.sql.Timestamp _completedAt;

    private java.sql.Timestamp _cancelledAt;

    private java.sql.Timestamp _abortedAt;

    private java.lang.String _description;

    private java.lang.Integer _attachmentCount;

    private com.webratio.webapp.ProcessInstance_AttachmentCountBean _attachmentCountBean;

    private com.webratio.webapp.Process _process;

    private java.util.Set _activityInstances = new java.util.HashSet();

    private java.util.Set _parameterInstances = new java.util.HashSet();

    private java.util.Set _processNotes = new java.util.HashSet();

    private java.util.Set _processAttachments = new java.util.HashSet();

    private com.webratio.webapp.ProcessInstance _parentProcessInstance;

    private java.util.Set _subprocessInstances = new java.util.HashSet();

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getCode() {
        if (_code != null) {
            return _code;
        }
        java.lang.Object processInstance2ProcessObject = this.getProcess();
        if (processInstance2ProcessObject != null) {
            com.webratio.webapp.Process processInstance2Process = processInstance2ProcessObject instanceof java.util.Set ? (((java.util.Set) processInstance2ProcessObject)
                    .isEmpty() ? null : (com.webratio.webapp.Process) ((java.util.Set) processInstance2ProcessObject).iterator()
                    .next()) : (com.webratio.webapp.Process) processInstance2ProcessObject;
            if (processInstance2Process != null) {
                return processInstance2Process.getCode();
            }
        }
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
        java.lang.Object processInstance2ProcessObject = this.getProcess();
        if (processInstance2ProcessObject != null) {
            com.webratio.webapp.Process processInstance2Process = processInstance2ProcessObject instanceof java.util.Set ? (((java.util.Set) processInstance2ProcessObject)
                    .isEmpty() ? null : (com.webratio.webapp.Process) ((java.util.Set) processInstance2ProcessObject).iterator()
                    .next()) : (com.webratio.webapp.Process) processInstance2ProcessObject;
            if (processInstance2Process != null) {
                return processInstance2Process.getName();
            }
        }
        return _processName;
    }

    public void setProcessName(java.lang.String _processName) {
        this._processName = _processName;
    }

    public java.lang.Integer getSubProcessIndex() {
        return _subProcessIndex;
    }

    public void setSubProcessIndex(java.lang.Integer _subProcessIndex) {
        this._subProcessIndex = _subProcessIndex;
    }

    public java.lang.String getStatus() {
        return _status;
    }

    public void setStatus(java.lang.String _status) {
        this._status = _status;
    }

    public java.sql.Timestamp getActiveSince() {
        return _activeSince;
    }

    public void setActiveSince(java.sql.Timestamp _activeSince) {
        this._activeSince = _activeSince;
    }

    public java.sql.Timestamp getCompletedAt() {
        return _completedAt;
    }

    public void setCompletedAt(java.sql.Timestamp _completedAt) {
        this._completedAt = _completedAt;
    }

    public java.sql.Timestamp getCancelledAt() {
        return _cancelledAt;
    }

    public void setCancelledAt(java.sql.Timestamp _cancelledAt) {
        this._cancelledAt = _cancelledAt;
    }

    public java.sql.Timestamp getAbortedAt() {
        return _abortedAt;
    }

    public void setAbortedAt(java.sql.Timestamp _abortedAt) {
        this._abortedAt = _abortedAt;
    }

    public java.lang.String getDescription() {
        if (_description != null) {
            return _description;
        }
        java.lang.Object processInstance2ProcessObject = this.getProcess();
        if (processInstance2ProcessObject != null) {
            com.webratio.webapp.Process processInstance2Process = processInstance2ProcessObject instanceof java.util.Set ? (((java.util.Set) processInstance2ProcessObject)
                    .isEmpty() ? null : (com.webratio.webapp.Process) ((java.util.Set) processInstance2ProcessObject).iterator()
                    .next()) : (com.webratio.webapp.Process) processInstance2ProcessObject;
            if (processInstance2Process != null) {
                return processInstance2Process.getDescription();
            }
        }
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.Integer getAttachmentCount() {
        if (_attachmentCount != null) {
            return _attachmentCount;
        }
        com.webratio.webapp.ProcessInstance_AttachmentCountBean __attachmentCount = this.getAttachmentCountBean();
        if (__attachmentCount != null) {
            return __attachmentCount.getValue();
        }
        return _attachmentCount;
    }

    public void setAttachmentCount(java.lang.Integer _attachmentCount) {
        this._attachmentCount = _attachmentCount;
    }

    public com.webratio.webapp.ProcessInstance_AttachmentCountBean getAttachmentCountBean() {
        return _attachmentCountBean;
    }

    public void setAttachmentCountBean(com.webratio.webapp.ProcessInstance_AttachmentCountBean _attachmentCountBean) {
        this._attachmentCountBean = _attachmentCountBean;
    }

    public com.webratio.webapp.Process getProcess() {
        return _process;
    }

    public void setProcess(com.webratio.webapp.Process _process) {
        this._process = _process;
    }

    public java.util.Set getActivityInstances() {
        return _activityInstances;
    }

    public void setActivityInstances(java.util.Set _activityInstances) {
        this._activityInstances = _activityInstances;
    }

    public java.util.Set getParameterInstances() {
        return _parameterInstances;
    }

    public void setParameterInstances(java.util.Set _parameterInstances) {
        this._parameterInstances = _parameterInstances;
    }

    public java.util.Set getProcessNotes() {
        return _processNotes;
    }

    public void setProcessNotes(java.util.Set _processNotes) {
        this._processNotes = _processNotes;
    }

    public java.util.Set getProcessAttachments() {
        return _processAttachments;
    }

    public void setProcessAttachments(java.util.Set _processAttachments) {
        this._processAttachments = _processAttachments;
    }

    public com.webratio.webapp.ProcessInstance getParentProcessInstance() {
        return _parentProcessInstance;
    }

    public void setParentProcessInstance(com.webratio.webapp.ProcessInstance _parentProcessInstance) {
        this._parentProcessInstance = _parentProcessInstance;
    }

    public java.util.Set getSubprocessInstances() {
        return _subprocessInstances;
    }

    public void setSubprocessInstances(java.util.Set _subprocessInstances) {
        this._subprocessInstances = _subprocessInstances;
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
        if (_code != null)
            sb.append("code=" + _code + ',');
        if (_name != null)
            sb.append("name=" + _name + ',');
        if (_processName != null)
            sb.append("processName=" + _processName + ',');
        if (_subProcessIndex != null)
            sb.append("subProcessIndex=" + _subProcessIndex + ',');
        if (_status != null)
            sb.append("status=" + _status + ',');
        if (_activeSince != null)
            sb.append("activeSince=" + _activeSince + ',');
        if (_completedAt != null)
            sb.append("completedAt=" + _completedAt + ',');
        if (_cancelledAt != null)
            sb.append("cancelledAt=" + _cancelledAt + ',');
        if (_abortedAt != null)
            sb.append("abortedAt=" + _abortedAt + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_attachmentCount != null)
            sb.append("attachmentCount=" + _attachmentCount + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ProcessInstance)) {
            return false;
        }
        com.webratio.webapp.ProcessInstance __other = (com.webratio.webapp.ProcessInstance) obj;
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
