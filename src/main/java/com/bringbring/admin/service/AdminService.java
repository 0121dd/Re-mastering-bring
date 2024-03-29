package com.bringbring.admin.service;

import com.bringbring.admin.domain.Admin;
import com.bringbring.admin.domain.AdminDetails;
import com.bringbring.admin.domain.Role;
import com.bringbring.common.PageInfo;
import com.bringbring.report.domain.ReportDetails;
import com.bringbring.reservation.domain.Reservation;
import com.bringbring.reservation.domain.ReservationAdmin;
import com.bringbring.user.domain.User;

import java.util.List;
import java.util.Map;

public interface AdminService {

    /**
     * 관리자 추가 service
     * @param admin
     * @return int
     */
    int insertAdmin(Admin admin);

    /**
     * 관리자 수 조회 service
     * @return int
     */
    int selectListCount();

    /**
     * 과리자 리스트 조회 service
     * @param pInfo
     * @return List<Admin>
     */
    List<AdminDetails> selectAdminDetailsList(PageInfo pInfo);

    /**
     * 회원 권한 추가 service
     * @param
     * @return int
     */
    int insertRole();

    /**
     * 권한 수정 service
     * @param userNo
     * @return int
     */
    int updateRole(int userNo);

    /**
     * 유저 번호로 권한 조회 service
     * @param userNo
     * @return role
     */
    Role selectRoleByNo(int userNo);

    /**
     * 탈퇴한 유저 수 조회 service
     * @return int
     */
    int selectDeletedUserCount();

    /**
     * 관리자 확인 service
     * @param userNo
     * @return int
     */
    int countAlreadyAdmin(int userNo);

    /**
     * 조건에 따라 키워드에 맞는 갯수 수 조회 service
     * @param paramMap
     * @return int
     */
    int getListCount(Map<String, String> paramMap);

    /**
     * 조건에 따라 키워드로 검색 Service
     * @param pageInfo
     * @param paramMap
     * @return List<User>
     */
    List<User> searchUserByKeyword(PageInfo pageInfo, Map<String, String> paramMap);

    /**
     * 조건에 따라 키워드에 맞는 갯수 수 조회 service
     * @param paramMap
     * @return int
     */
    int getListAdminCount(Map<String, String> paramMap);

    /**
     * 조건에 따라 키워드로 검색 Service
     * @param pInfo
     * @param paramMap
     * @return List<AdminDetails>
     */
    List<AdminDetails> searchAdminByKeyword(PageInfo pInfo, Map<String, String> paramMap);

    /**
     * 관리자 삭제 service
     * @param adminDetails
     * @return int
     */
    int deleteAdmin(AdminDetails adminDetails);

    /**
     * 권한 수정 관리자->일반 service
     * @param userNo
     * @return int
     */
    int updateRoleDownGrade(int userNo);

    /**
     * 유저 회원탈퇴 service
     * @param user
     * @return int
     */
    int deleteUser(User user);

    /**
     * 유저 권한 삭제 service
     * @param userNo
     * @return int
     */
    int deleteRole(int userNo);

    /**
     * 예약 건수 service
     * @return int
     */
    int selectListResCount();

    /**
     * 예약 완료 건수 service
     * @return int
     */
    int selectListCountByCompletionY();

    /**
     * 신청 완료 건수 service
     * @return int
     */
    int selectListCountByCompletionN();

    /**
     * 예약 리스트 조회 service
     * @param pInfo
     * @return
     */
    List<ReservationAdmin> selectReservationList(PageInfo pInfo);

    /**
     * 예약 상세 조회 service
     * @param rvNo
     * @return
     */
    List<ReservationAdmin> selectReservationDetail(Integer rvNo);

    /**
     * 예약 처리 service
     * @param rvNo
     * @return int
     */
    int updateReservation(Integer rvNo);

    /**
     * 유저 번호로 관리자 확인 service
     * @param userNo
     * @return
     */
    Admin selectAdminByNo(int userNo);

    /**
     * 관할 지역 예약 조회 Service
     * @param pInfo
     * @return
     */
    List<ReservationAdmin> selectReservationListByNo(Integer regionNo, PageInfo pInfo);

    /**
     * 관할 지역 예약 수 조회 service
     * @return
     */
    int selectListResCountByNo(Integer regionNo);

    /**
     * 관할 지역 예약 완료 수 조회 service
     * @return
     */
    int selectListCountByCompletionYByNo(Integer regionNo);

    /**
     * 관할 지역 신청 접수 수 조회 service
     * @param regionNo
     * @return
     */
    int selectListCountByCompletionNByNo(Integer regionNo);

    /**
     * 검색된 예약 갯수 조회 service
     * @param paramMap
     * @return
     */
    int searchResListCount(Map<String, String> paramMap);

    /**
     * 검색된 예약 리스트 조회 service
     * @param pInfo
     * @param paramMap
     * @return
     */
    List<ReservationAdmin> searchResByKeyword(PageInfo pInfo, Map<String, String> paramMap);

    /**
     * 지역별 검색된 예약 갯수 조회 service
     * @param paramMap
     * @return
     */
    int searchResLocalListCount(Map<String, String> paramMap);

    /**
     * 지역별 검색된 예약 리스트 조회 service
     * @param pInfo
     * @param paramMap
     * @return
     */
    List<ReservationAdmin> searchResLocalByKeyword(PageInfo pInfo, Map<String, String> paramMap);
}
