package com.webratio.webapp;

public class RepairFile implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _OID;

    private java.lang.String _problemAbstract;

    private java.lang.String _computerCharacteristic;

    private java.lang.String _defectDescription;

    private java.sql.Date _requestDate;

    private java.math.BigDecimal _repairPrice;

    private java.lang.String _repairProgress;

    private float _searchScore;

    public java.lang.Integer getOID() {
        return _OID;
    }

    public void setOID(java.lang.Integer _OID) {
        this._OID = _OID;
    }

    public java.lang.String getProblemAbstract() {
        return _problemAbstract;
    }

    public void setProblemAbstract(java.lang.String _problemAbstract) {
        this._problemAbstract = _problemAbstract;
    }

    public java.lang.String getComputerCharacteristic() {
        return _computerCharacteristic;
    }

    public void setComputerCharacteristic(java.lang.String _computerCharacteristic) {
        this._computerCharacteristic = _computerCharacteristic;
    }

    public java.lang.String getDefectDescription() {
        return _defectDescription;
    }

    public void setDefectDescription(java.lang.String _defectDescription) {
        this._defectDescription = _defectDescription;
    }

    public java.sql.Date getRequestDate() {
        return _requestDate;
    }

    public void setRequestDate(java.sql.Date _requestDate) {
        this._requestDate = _requestDate;
    }

    public java.math.BigDecimal getRepairPrice() {
        return _repairPrice;
    }

    public void setRepairPrice(java.math.BigDecimal _repairPrice) {
        this._repairPrice = _repairPrice;
    }

    public java.lang.String getRepairProgress() {
        return _repairProgress;
    }

    public void setRepairProgress(java.lang.String _repairProgress) {
        this._repairProgress = _repairProgress;
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
        if (_OID != null)
            sb.append("OID=" + _OID + ',');
        if (_problemAbstract != null)
            sb.append("problemAbstract=" + _problemAbstract + ',');
        if (_computerCharacteristic != null)
            sb.append("computerCharacteristic=" + _computerCharacteristic + ',');
        if (_defectDescription != null)
            sb.append("defectDescription=" + _defectDescription + ',');
        if (_requestDate != null)
            sb.append("requestDate=" + _requestDate + ',');
        if (_repairPrice != null)
            sb.append("repairPrice=" + _repairPrice + ',');
        if (_repairProgress != null)
            sb.append("repairProgress=" + _repairProgress + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.RepairFile)) {
            return false;
        }
        com.webratio.webapp.RepairFile __other = (com.webratio.webapp.RepairFile) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOID();
        otherKey = __other.getOID();
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
        key = this.getOID();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
