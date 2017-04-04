package com.gxufe.smarcampus.models;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * SysUsers entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "sys_users", catalog = "smartcampus")
public class SysUsers implements java.io.Serializable {

	// Fields

	private String userId;
	private SysStudent sysStudent;
	private SysTeacher sysTeacher;
	private String username;
	private String name;
	private String password;
	private String status;
	private Timestamp dtCreate;
	private Timestamp lastLogin;
	private Timestamp deadline;
	private String loginIp;
	private String VQzjgid;
	private String VQzjgmc;
	private String depId;
	private String depName;
	private Integer enabled;
	private Integer accountNonExpired1;
	private Integer accountNonLocked1;
	private Integer credentialsNonExpired1;
	private Integer isCampusAuthentication;
	private Set<SysUsersRoles> sysUsersRoleses = new HashSet<SysUsersRoles>(0);
	private Set<SysLeaveInfoRecord> sysLeaveInfoRecord = new HashSet<SysLeaveInfoRecord>(0);

	// Constructors

	/** default constructor */
	public SysUsers() {
	}

	/** minimal constructor */
	public SysUsers(String username, String password) {
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public SysUsers(Set<SysLeaveInfoRecord> sysLeaveInfoRecord,
			SysStudent sysStudent, SysTeacher sysTeacher, String username,
			String name, String password, Timestamp dtCreate,
			Timestamp lastLogin, Timestamp deadline, String loginIp,
			String VQzjgid, String VQzjgmc, String depId, String depName,
			Integer enabled, Integer accountNonExpired,
			Integer accountNonLocked, Integer credentialsNonExpired,
			Integer isCampusAuthentication, Set<SysUsersRoles> sysUsersRoleses ) {
		this.sysLeaveInfoRecord = sysLeaveInfoRecord;
		this.sysStudent = sysStudent;
		this.sysTeacher = sysTeacher;
		this.username = username;
		this.name = name;
		this.password = password;
		this.dtCreate = dtCreate;
		this.lastLogin = lastLogin;
		this.deadline = deadline;
		this.loginIp = loginIp;
		this.VQzjgid = VQzjgid;
		this.VQzjgmc = VQzjgmc;
		this.depId = depId;
		this.depName = depName;
		this.enabled = enabled;
		this.accountNonExpired1 = accountNonExpired1;
		this.accountNonLocked1 = accountNonLocked1;
		this.credentialsNonExpired1 = credentialsNonExpired1;
		this.isCampusAuthentication = isCampusAuthentication;
		this.sysUsersRoleses = sysUsersRoleses;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "USER_ID", unique = true, nullable = false, length = 100)
	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "STUDENT_ID")
	public SysStudent getSysStudent() {
		return this.sysStudent;
	}

	public void setSysStudent(SysStudent sysStudent) {
		this.sysStudent = sysStudent;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "teacher_id")
	public SysTeacher getSysTeacher() {
		return this.sysTeacher;
	}

	public void setSysTeacher(SysTeacher sysTeacher) {
		this.sysTeacher = sysTeacher;
	}

	@Column(name = "USERNAME", nullable = false, length = 100)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "NAME", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "PASSWORD", nullable = false, length = 100)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Column(name = "status", nullable = false, length = 5)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "DT_CREATE", length = 19)
	public Timestamp getDtCreate() {
		return this.dtCreate;
	}

	public void setDtCreate(Timestamp dtCreate) {
		this.dtCreate = dtCreate;
	}

	@Column(name = "LAST_LOGIN", length = 19)
	public Timestamp getLastLogin() {
		return this.lastLogin;
	}

	public void setLastLogin(Timestamp lastLogin) {
		this.lastLogin = lastLogin;
	}

	@Column(name = "DEADLINE", length = 19)
	public Timestamp getDeadline() {
		return this.deadline;
	}

	public void setDeadline(Timestamp deadline) {
		this.deadline = deadline;
	}

	@Column(name = "LOGIN_IP", length = 100)
	public String getLoginIp() {
		return this.loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	@Column(name = "V_QZJGID", length = 100)
	public String getVQzjgid() {
		return this.VQzjgid;
	}

	public void setVQzjgid(String VQzjgid) {
		this.VQzjgid = VQzjgid;
	}

	@Column(name = "V_QZJGMC", length = 100)
	public String getVQzjgmc() {
		return this.VQzjgmc;
	}

	public void setVQzjgmc(String VQzjgmc) {
		this.VQzjgmc = VQzjgmc;
	}

	@Column(name = "DEP_ID", length = 100)
	public String getDepId() {
		return this.depId;
	}

	public void setDepId(String depId) {
		this.depId = depId;
	}

	@Column(name = "DEP_NAME", length = 100)
	public String getDepName() {
		return this.depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	@Column(name = "ENABLED", precision = 8, scale = 0)
	public Integer getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}


	@Column(name = "is_campus_authentication")
	public Integer getIsCampusAuthentication() {
		return this.isCampusAuthentication;
	}

	public void setIsCampusAuthentication(Integer isCampusAuthentication) {
		this.isCampusAuthentication = isCampusAuthentication;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "sysUsers")
	public Set<SysUsersRoles> getSysUsersRoleses() {
		return this.sysUsersRoleses;
	}

	public void setSysUsersRoleses(Set<SysUsersRoles> sysUsersRoleses) {
		this.sysUsersRoleses = sysUsersRoleses;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "sysUsers")
	public Set<SysLeaveInfoRecord> getSysLeaveInfoRecord() {
		return this.sysLeaveInfoRecord;
	}

	public void setSysLeaveInfoRecord(Set<SysLeaveInfoRecord> sysLeaveInfoRecord) {
		this.sysLeaveInfoRecord = sysLeaveInfoRecord;
	}
	
	@Column(name = "ACCOUNT_NON_EXPIRED", precision = 8, scale = 0)
	public Integer getAccountNonExpired1() {
		return this.accountNonExpired1;
	}

	public void setAccountNonExpired1(Integer accountNonExpired1) {
		this.accountNonExpired1 = accountNonExpired1;
	}

	@Column(name = "ACCOUNT_NON_LOCKED", precision = 8, scale = 0)
	public Integer getAccountNonLocked1() {
		return this.accountNonExpired1;
	}

	public void setAccountNonLocked1(Integer accountNonExpired1) {
		this.accountNonExpired1 = accountNonExpired1;
	}

	@Column(name = "CREDENTIALS_NON_EXPIRED", precision = 8, scale = 0)
	public Integer getCredentialsNonExpired1() {
		return this.credentialsNonExpired1;
	}

	public void setCredentialsNonExpired1(Integer credentialsNonExpired1) {
		this.credentialsNonExpired1 = credentialsNonExpired1;
	}

}