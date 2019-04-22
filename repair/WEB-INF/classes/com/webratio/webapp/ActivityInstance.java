package com.webratio.webapp;

public class ActivityInstance implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _code;

    private java.lang.String _name;

    private java.lang.String _processInstanceName;

    private java.lang.String _processName;

    private java.lang.String _activityName;

    private java.lang.String _description;

    private java.lang.String _userName;

    private java.lang.String _group;

    private java.lang.String _execution;

    private java.lang.String _type;

    private java.lang.String _status;

    private java.sql.Timestamp _readySince;

    private java.sql.Timestamp _activeSince;

    private java.sql.Timestamp _completedAt;

    private java.sql.Timestamp _abortedAt;

    private java.sql.Timestamp _cancelledAt;

    private java.sql.Timestamp _workedAt;

    private java.sql.Timestamp _processActiveSince;

    private java.lang.Integer _processAttachmentCount;

    private java.lang.Boolean _rollbackable;

    private java.lang.String _context;

    private com.webratio.webapp.ActivityType _activityType;

    private com.webratio.webapp.ProcessInstance _processInstance;

    private java.util.Set _parameterInstances = new java.util.HashSet();

    private java.util.Set _nextActivityInstances = new java.util.HashSet();

    private java.util.Set _previousActivityInstances = new java.util.HashSet();

    private com.webratio.webapp.User _user;

    private java.util.Set _activityInstanceCandidateUsers = new java.util.HashSet();

    private java.util.Set _notifications = new java.util.HashSet();

    private java.util.Set _activityInstanceNotes = new java.util.HashSet();

    private java.util.Set _nextActivityInstanceNote = new java.util.HashSet();

    private com.webratio.webapp.Group _activityInstanceGroup;

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
        java.lang.Object activityInstance2ActivityTypeObject = this.getActivityType();
        if (activityInstance2ActivityTypeObject != null) {
            com.webratio.webapp.ActivityType activityInstance2ActivityType = activityInstance2ActivityTypeObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ActivityTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ActivityType) ((java.util.Set) activityInstance2ActivityTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ActivityType) activityInstance2ActivityTypeObject;
            if (activityInstance2ActivityType != null) {
                return activityInstance2ActivityType.getCode();
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

    public java.lang.String getProcessInstanceName() {
        if (_processInstanceName != null) {
            return _processInstanceName;
        }
        java.lang.Object activityInstance2ProcessInstanceObject = this.getProcessInstance();
        if (activityInstance2ProcessInstanceObject != null) {
            com.webratio.webapp.ProcessInstance activityInstance2ProcessInstance = activityInstance2ProcessInstanceObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ProcessInstanceObject)
                    .isEmpty() ? null : (com.webratio.webapp.ProcessInstance) ((java.util.Set) activityInstance2ProcessInstanceObject)
                    .iterator().next()) : (com.webratio.webapp.ProcessInstance) activityInstance2ProcessInstanceObject;
            if (activityInstance2ProcessInstance != null) {
                return activityInstance2ProcessInstance.getName();
            }
        }
        return _processInstanceName;
    }

    public void setProcessInstanceName(java.lang.String _processInstanceName) {
        this._processInstanceName = _processInstanceName;
    }

    public java.lang.String getProcessName() {
        if (_processName != null) {
            return _processName;
        }
        java.lang.Object activityInstance2ProcessInstanceObject = this.getProcessInstance();
        if (activityInstance2ProcessInstanceObject != null) {
            com.webratio.webapp.ProcessInstance activityInstance2ProcessInstance = activityInstance2ProcessInstanceObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ProcessInstanceObject)
                    .isEmpty() ? null : (com.webratio.webapp.ProcessInstance) ((java.util.Set) activityInstance2ProcessInstanceObject)
                    .iterator().next()) : (com.webratio.webapp.ProcessInstance) activityInstance2ProcessInstanceObject;
            if (activityInstance2ProcessInstance != null) {
                java.lang.Object activityInstance2ProcessInstanceprocessInstance2ProcessObject = activityInstance2ProcessInstance
                        .getProcess();
                if (activityInstance2ProcessInstanceprocessInstance2ProcessObject != null) {
                    com.webratio.webapp.Process activityInstance2ProcessInstanceprocessInstance2Process = activityInstance2ProcessInstanceprocessInstance2ProcessObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ProcessInstanceprocessInstance2ProcessObject)
                            .isEmpty() ? null
                            : (com.webratio.webapp.Process) ((java.util.Set) activityInstance2ProcessInstanceprocessInstance2ProcessObject)
                                    .iterator().next())
                            : (com.webratio.webapp.Process) activityInstance2ProcessInstanceprocessInstance2ProcessObject;
                    if (activityInstance2ProcessInstanceprocessInstance2Process != null) {
                        return activityInstance2ProcessInstanceprocessInstance2Process.getName();
                    }
                }
            }
        }
        return _processName;
    }

    public void setProcessName(java.lang.String _processName) {
        this._processName = _processName;
    }

    public java.lang.String getActivityName() {
        if (_activityName != null) {
            return _activityName;
        }
        java.lang.Object activityInstance2ActivityTypeObject = this.getActivityType();
        if (activityInstance2ActivityTypeObject != null) {
            com.webratio.webapp.ActivityType activityInstance2ActivityType = activityInstance2ActivityTypeObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ActivityTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ActivityType) ((java.util.Set) activityInstance2ActivityTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ActivityType) activityInstance2ActivityTypeObject;
            if (activityInstance2ActivityType != null) {
                return activityInstance2ActivityType.getName();
            }
        }
        return _activityName;
    }

    public void setActivityName(java.lang.String _activityName) {
        this._activityName = _activityName;
    }

    public java.lang.String getDescription() {
        if (_description != null) {
            return _description;
        }
        java.lang.Object activityInstance2ActivityTypeObject = this.getActivityType();
        if (activityInstance2ActivityTypeObject != null) {
            com.webratio.webapp.ActivityType activityInstance2ActivityType = activityInstance2ActivityTypeObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ActivityTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ActivityType) ((java.util.Set) activityInstance2ActivityTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ActivityType) activityInstance2ActivityTypeObject;
            if (activityInstance2ActivityType != null) {
                return activityInstance2ActivityType.getDescription();
            }
        }
        return _description;
    }

    public void setDescription(java.lang.String _description) {
        this._description = _description;
    }

    public java.lang.String getUserName() {
        if (_userName != null) {
            return _userName;
        }
        java.lang.Object activityInstance2UserObject = this.getUser();
        if (activityInstance2UserObject != null) {
            com.webratio.webapp.User activityInstance2User = activityInstance2UserObject instanceof java.util.Set ? (((java.util.Set) activityInstance2UserObject)
                    .isEmpty() ? null : (com.webratio.webapp.User) ((java.util.Set) activityInstance2UserObject).iterator().next())
                    : (com.webratio.webapp.User) activityInstance2UserObject;
            if (activityInstance2User != null) {
                return activityInstance2User.getUserName();
            }
        }
        return _userName;
    }

    public void setUserName(java.lang.String _userName) {
        this._userName = _userName;
    }

    public java.lang.String getGroup() {
        if (_group != null) {
            return _group;
        }
        java.lang.Object activityInstance2GroupObject = this.getActivityInstanceGroup();
        if (activityInstance2GroupObject != null) {
            com.webratio.webapp.Group activityInstance2Group = activityInstance2GroupObject instanceof java.util.Set ? (((java.util.Set) activityInstance2GroupObject)
                    .isEmpty() ? null : (com.webratio.webapp.Group) ((java.util.Set) activityInstance2GroupObject).iterator().next())
                    : (com.webratio.webapp.Group) activityInstance2GroupObject;
            if (activityInstance2Group != null) {
                return activityInstance2Group.getGroupName();
            }
        }
        return _group;
    }

    public void setGroup(java.lang.String _group) {
        this._group = _group;
    }

    public java.lang.String getExecution() {
        if (_execution != null) {
            return _execution;
        }
        java.lang.Object activityInstance2ActivityTypeObject = this.getActivityType();
        if (activityInstance2ActivityTypeObject != null) {
            com.webratio.webapp.ActivityType activityInstance2ActivityType = activityInstance2ActivityTypeObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ActivityTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ActivityType) ((java.util.Set) activityInstance2ActivityTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ActivityType) activityInstance2ActivityTypeObject;
            if (activityInstance2ActivityType != null) {
                return activityInstance2ActivityType.getExecution();
            }
        }
        return _execution;
    }

    public void setExecution(java.lang.String _execution) {
        this._execution = _execution;
    }

    public java.lang.String getType() {
        if (_type != null) {
            return _type;
        }
        java.lang.Object activityInstance2ActivityTypeObject = this.getActivityType();
        if (activityInstance2ActivityTypeObject != null) {
            com.webratio.webapp.ActivityType activityInstance2ActivityType = activityInstance2ActivityTypeObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ActivityTypeObject)
                    .isEmpty() ? null : (com.webratio.webapp.ActivityType) ((java.util.Set) activityInstance2ActivityTypeObject)
                    .iterator().next()) : (com.webratio.webapp.ActivityType) activityInstance2ActivityTypeObject;
            if (activityInstance2ActivityType != null) {
                return activityInstance2ActivityType.getType();
            }
        }
        return _type;
    }

    public void setType(java.lang.String _type) {
        this._type = _type;
    }

    public java.lang.String getStatus() {
        return _status;
    }

    public void setStatus(java.lang.String _status) {
        this._status = _status;
    }

    public java.sql.Timestamp getReadySince() {
        return _readySince;
    }

    public void setReadySince(java.sql.Timestamp _readySince) {
        this._readySince = _readySince;
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

    public java.sql.Timestamp getAbortedAt() {
        return _abortedAt;
    }

    public void setAbortedAt(java.sql.Timestamp _abortedAt) {
        this._abortedAt = _abortedAt;
    }

    public java.sql.Timestamp getCancelledAt() {
        return _cancelledAt;
    }

    public void setCancelledAt(java.sql.Timestamp _cancelledAt) {
        this._cancelledAt = _cancelledAt;
    }

    public java.sql.Timestamp getWorkedAt() {
        return _workedAt;
    }

    public void setWorkedAt(java.sql.Timestamp _workedAt) {
        this._workedAt = _workedAt;
    }

    public java.sql.Timestamp getProcessActiveSince() {
        if (_processActiveSince != null) {
            return _processActiveSince;
        }
        java.lang.Object activityInstance2ProcessInstanceObject = this.getProcessInstance();
        if (activityInstance2ProcessInstanceObject != null) {
            com.webratio.webapp.ProcessInstance activityInstance2ProcessInstance = activityInstance2ProcessInstanceObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ProcessInstanceObject)
                    .isEmpty() ? null : (com.webratio.webapp.ProcessInstance) ((java.util.Set) activityInstance2ProcessInstanceObject)
                    .iterator().next()) : (com.webratio.webapp.ProcessInstance) activityInstance2ProcessInstanceObject;
            if (activityInstance2ProcessInstance != null) {
                return activityInstance2ProcessInstance.getActiveSince();
            }
        }
        return _processActiveSince;
    }

    public void setProcessActiveSince(java.sql.Timestamp _processActiveSince) {
        this._processActiveSince = _processActiveSince;
    }

    public java.lang.Integer getProcessAttachmentCount() {
        if (_processAttachmentCount != null) {
            return _processAttachmentCount;
        }
        java.lang.Object activityInstance2ProcessInstanceObject = this.getProcessInstance();
        if (activityInstance2ProcessInstanceObject != null) {
            com.webratio.webapp.ProcessInstance activityInstance2ProcessInstance = activityInstance2ProcessInstanceObject instanceof java.util.Set ? (((java.util.Set) activityInstance2ProcessInstanceObject)
                    .isEmpty() ? null : (com.webratio.webapp.ProcessInstance) ((java.util.Set) activityInstance2ProcessInstanceObject)
                    .iterator().next()) : (com.webratio.webapp.ProcessInstance) activityInstance2ProcessInstanceObject;
            if (activityInstance2ProcessInstance != null) {
                com.webratio.webapp.ProcessInstance_AttachmentCountBean __attachmentCount = activityInstance2ProcessInstance
                        .getAttachmentCountBean();
                if (__attachmentCount != null) {
                    return __attachmentCount.getValue();
                }
            }
        }
        return _processAttachmentCount;
    }

    public void setProcessAttachmentCount(java.lang.Integer _processAttachmentCount) {
        this._processAttachmentCount = _processAttachmentCount;
    }

    public java.lang.Boolean getRollbackable() {
        return _rollbackable;
    }

    public void setRollbackable(java.lang.Boolean _rollbackable) {
        this._rollbackable = _rollbackable;
    }

    public java.lang.String getContext() {
        return _context;
    }

    public void setContext(java.lang.String _context) {
        this._context = _context;
    }

    public com.webratio.webapp.ActivityType getActivityType() {
        return _activityType;
    }

    public void setActivityType(com.webratio.webapp.ActivityType _activityType) {
        this._activityType = _activityType;
    }

    public com.webratio.webapp.ProcessInstance getProcessInstance() {
        return _processInstance;
    }

    public void setProcessInstance(com.webratio.webapp.ProcessInstance _processInstance) {
        this._processInstance = _processInstance;
    }

    public java.util.Set getParameterInstances() {
        return _parameterInstances;
    }

    public void setParameterInstances(java.util.Set _parameterInstances) {
        this._parameterInstances = _parameterInstances;
    }

    public java.util.Set getNextActivityInstances() {
        return _nextActivityInstances;
    }

    public void setNextActivityInstances(java.util.Set _nextActivityInstances) {
        this._nextActivityInstances = _nextActivityInstances;
    }

    public java.util.Set getPreviousActivityInstances() {
        return _previousActivityInstances;
    }

    public void setPreviousActivityInstances(java.util.Set _previousActivityInstances) {
        this._previousActivityInstances = _previousActivityInstances;
    }

    public com.webratio.webapp.User getUser() {
        return _user;
    }

    public void setUser(com.webratio.webapp.User _user) {
        this._user = _user;
    }

    public java.util.Set getActivityInstanceCandidateUsers() {
        return _activityInstanceCandidateUsers;
    }

    public void setActivityInstanceCandidateUsers(java.util.Set _activityInstanceCandidateUsers) {
        this._activityInstanceCandidateUsers = _activityInstanceCandidateUsers;
    }

    public java.util.Set getNotifications() {
        return _notifications;
    }

    public void setNotifications(java.util.Set _notifications) {
        this._notifications = _notifications;
    }

    public java.util.Set getActivityInstanceNotes() {
        return _activityInstanceNotes;
    }

    public void setActivityInstanceNotes(java.util.Set _activityInstanceNotes) {
        this._activityInstanceNotes = _activityInstanceNotes;
    }

    public java.util.Set getNextActivityInstanceNote() {
        return _nextActivityInstanceNote;
    }

    public void setNextActivityInstanceNote(java.util.Set _nextActivityInstanceNote) {
        this._nextActivityInstanceNote = _nextActivityInstanceNote;
    }

    public com.webratio.webapp.Group getActivityInstanceGroup() {
        return _activityInstanceGroup;
    }

    public void setActivityInstanceGroup(com.webratio.webapp.Group _activityInstanceGroup) {
        this._activityInstanceGroup = _activityInstanceGroup;
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
        if (_processInstanceName != null)
            sb.append("processInstanceName=" + _processInstanceName + ',');
        if (_processName != null)
            sb.append("processName=" + _processName + ',');
        if (_activityName != null)
            sb.append("activityName=" + _activityName + ',');
        if (_description != null)
            sb.append("description=" + _description + ',');
        if (_userName != null)
            sb.append("userName=" + _userName + ',');
        if (_group != null)
            sb.append("group=" + _group + ',');
        if (_execution != null)
            sb.append("execution=" + _execution + ',');
        if (_type != null)
            sb.append("type=" + _type + ',');
        if (_status != null)
            sb.append("status=" + _status + ',');
        if (_readySince != null)
            sb.append("readySince=" + _readySince + ',');
        if (_activeSince != null)
            sb.append("activeSince=" + _activeSince + ',');
        if (_completedAt != null)
            sb.append("completedAt=" + _completedAt + ',');
        if (_abortedAt != null)
            sb.append("abortedAt=" + _abortedAt + ',');
        if (_cancelledAt != null)
            sb.append("cancelledAt=" + _cancelledAt + ',');
        if (_workedAt != null)
            sb.append("workedAt=" + _workedAt + ',');
        if (_processActiveSince != null)
            sb.append("processActiveSince=" + _processActiveSince + ',');
        if (_processAttachmentCount != null)
            sb.append("processAttachmentCount=" + _processAttachmentCount + ',');
        if (_rollbackable != null)
            sb.append("rollbackable=" + _rollbackable + ',');
        if (_context != null)
            sb.append("context=" + _context + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.ActivityInstance)) {
            return false;
        }
        com.webratio.webapp.ActivityInstance __other = (com.webratio.webapp.ActivityInstance) obj;
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
