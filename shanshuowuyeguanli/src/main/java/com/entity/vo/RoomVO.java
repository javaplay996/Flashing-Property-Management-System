package com.entity.vo;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 房间
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-04-23
 */
@TableName("room")
public class RoomVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 楼幢
     */

    @TableField(value = "building")
    private String building;


    /**
     * 单元
     */

    @TableField(value = "unit")
    private String unit;


    /**
     * 房间号
     */

    @TableField(value = "room_number")
    private String roomNumber;


    /**
     * 房产编号
     */

    @TableField(value = "fangchan_number")
    private String fangchanNumber;


    /**
     * 房间信息
     */

    @TableField(value = "room_content")
    private String roomContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：楼幢
	 */
    public String getBuilding() {
        return building;
    }


    /**
	 * 获取：楼幢
	 */

    public void setBuilding(String building) {
        this.building = building;
    }
    /**
	 * 设置：单元
	 */
    public String getUnit() {
        return unit;
    }


    /**
	 * 获取：单元
	 */

    public void setUnit(String unit) {
        this.unit = unit;
    }
    /**
	 * 设置：房间号
	 */
    public String getRoomNumber() {
        return roomNumber;
    }


    /**
	 * 获取：房间号
	 */

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }
    /**
	 * 设置：房产编号
	 */
    public String getFangchanNumber() {
        return fangchanNumber;
    }


    /**
	 * 获取：房产编号
	 */

    public void setFangchanNumber(String fangchanNumber) {
        this.fangchanNumber = fangchanNumber;
    }
    /**
	 * 设置：房间信息
	 */
    public String getRoomContent() {
        return roomContent;
    }


    /**
	 * 获取：房间信息
	 */

    public void setRoomContent(String roomContent) {
        this.roomContent = roomContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
