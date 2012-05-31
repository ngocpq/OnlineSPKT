﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SPKTOnline.Models;
using SPKTOnline.BussinessLayer;

namespace SPKTOnline.Controllers
{
    public class ContestController : Controller
    {
        //
        // GET: /Contest/
        OnlineSPKTEntities db = new OnlineSPKTEntities();
        IContestBL contestBL;
        public ContestController()
        {
            contestBL = new ContestBL(db);
        }
        public ActionResult Index()
        {
            Session["CurrentUrl"] = Request.Url.ToString();
            if (User.IsInRole("Student"))
            {
                foreach (var i in contestBL.LayDanhSachKyThiCuaSinhVien(User.Identity.Name))
                {
                    contestBL.UpdateScoreForContest(i.ID, User.Identity.Name);
                }
            }
            return View(contestBL.LayDanhSach());
        }

        [Authorize]
        public ActionResult MyContest()
        {
            Session["CurrentUrl"] = Request.Url.ToString();
            if (User.IsInRole("Student"))
            {
                foreach (var i in contestBL.LayDanhSachKyThiCuaSinhVien(User.Identity.Name))
                {
                    contestBL.UpdateScoreForContest(i.ID, User.Identity.Name);
                }
                ViewBag.IsStudent = true;
                return View(contestBL.LayDanhSachKyThiCuaSinhVien(User.Identity.Name));
            }
            else
            {
                ViewBag.IsStudent = false;
                return View(contestBL.LayDanhSachKyThiCuaGiaoVien(User.Identity.Name));
            }
        }

        [Authorize(Roles = "Lecturer,Admin")]
        public ActionResult CreateContest(int ClassID = 0)
        {
            Class cl = db.Classes.FirstOrDefault(p => p.ID == ClassID);
            Contest c = new Contest();
            c.Class = cl;
            c.ClassID = ClassID;
            if (ClassID != 0)
            {
                c.ClassID = ClassID;
            }
            return View(c);

        }

        [HttpPost]
        [Authorize(Roles = "Lecturer")]
        public ActionResult CreateContest(Contest contest)
        {
            contestBL.ThemKyThiChoLop(contest, contest.ClassID);
            contestBL.SaveChange();
            return RedirectToAction("CreateContestCont", "Contest", new { ContestID = contest.ID });

        }
        [Authorize(Roles = "Lecturer")]
        public ActionResult CreateContestCont(int ContestID)
        {
            Contest contest = db.Contests.FirstOrDefault(p => p.ID == ContestID);
            return View(contest);
        }

        [HttpPost]
        [Authorize(Roles = "Lecturer")]
        public ActionResult CreateContestCont(Contest contest)
        {
            Contest cont = db.Contests.FirstOrDefault(p => p.ID == contest.ID);
            return RedirectToAction("ClassDetailOfLecturer", "Class", new { ID = cont.ClassID });
        }
        [Authorize]
        public ActionResult ContestDetail(int contestID)
        {
            Contest ct = contestBL.LayTheoMa(contestID);
            if ((!contestBL.IsRegisterContest(contestID, User.Identity.Name) && !contestBL.IsLecturerOfClass(contestID, User.Identity.Name))&& ct.EndTime>DateTime.Now)
            {
                return RedirectToAction("ClassDetail", "Class", new { ID = contestBL.LayTheoMa(contestID).ClassID });
            }
            
            return View(ct);
        }
        public ActionResult EditContest(int contestID)
        {
            Contest ct = db.Contests.FirstOrDefault(c => c.ID == contestID);
            return View(ct);
        }
        public ActionResult DeleteContest(int contestID, string URL)
        {
            contestBL.XoaKyThi(contestID);
            contestBL.SaveChange();
            return Redirect(Session["CurrentUrl"].ToString());

            //return View(ct);
        }

        [Authorize(Roles = "Student")]
        public ActionResult RegisterContest(int contestID)
        {
            Contest ct = contestBL.LayTheoMa(contestID);
            if (ct != null)
            {
                string studentID = User.Identity.Name;
                contestBL.ThemSinhVienThi(studentID, contestID);
                contestBL.SaveChange();
                return Redirect(Session["CurrentUrl"].ToString());
            }
            else
            {
                ViewBag.Error = "Lổi: không có kỳ thi này";
                return Redirect(Session["CurrentUrl"].ToString());
            }
        }
        
    }
}
