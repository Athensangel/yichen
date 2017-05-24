package com.yichen.model;

public class DictVo extends DbBaseVo<DictVo> {
	
	private String type;  //类型
	
	private String value;  //数据值
	
	private String label;  //标签名
	
	private Integer sort;  //排序（升序）
	
	private String description;  //描述
	
	private String remark;  //备注

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "DictVo [type=" + type + ", value=" + value + ", label=" + label + ", sort=" + sort + ", description="
				+ description + ", remark=" + remark + "]";
	}
}
