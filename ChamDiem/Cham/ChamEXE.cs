﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;
using ChamDiem.Exceptions;

namespace ChamDiem
{
    public class ChamEXE : IChamDiem
    {
        public KetQuaCham Cham(string FileExe, List<ITestCase> lstTestcase, IFileComparer FileCham)
        {
            KetQuaCham kq = new KetQuaCham();
            foreach (ITestCase test in lstTestcase)
            {                
                RunResult rs = RunUtility.RunFile(FileExe, test.TimeOut, test.Input);
                KetQuaTestCase kqTest = new KetQuaTestCase();
                kqTest.TestCase = test;
                kqTest.Output = rs.Output;
                kqTest.Error = rs.Error;
                kqTest.ThoiGianChay = rs.ExecuteTime;                                
                switch (rs.Result)
                {
                    case RunResult.ResultState.Error:
                        kqTest.KetQua = KetQuaTestCase.LoaiKetQua.Loi;
                        kqTest.ThongDiep = "Bị lỗi: " + rs.Error;
                        break;
                    case RunResult.ResultState.Timeout:
                        kqTest.KetQua = KetQuaTestCase.LoaiKetQua.QuaGio;
                        kqTest.ThongDiep = "Quá giờ";                                
                        break;
                    case RunResult.ResultState.Success:
                        if (kqTest.ThoiGianChay> test.TimeOut)
                        {
                            kqTest.KetQua = KetQuaTestCase.LoaiKetQua.QuaGio;
                            kqTest.Score = 0;
                            kqTest.ThongDiep = "Quá giờ";
                        }
                        else
                        {
                            try
                            {
                                string message;
                                if (FileCham.SoSanh(kqTest.Output, test, out message))
                                {                                    
                                    kqTest.KetQua = KetQuaTestCase.LoaiKetQua.Dung;
                                    kqTest.ThongDiep = "Đúng";
                                    kqTest.Score = test.Score;
                                }
                                else
                                {
                                    kqTest.KetQua = KetQuaTestCase.LoaiKetQua.Sai;
                                    kqTest.ThongDiep = "Sai";
                                    kqTest.Score = 0;
                                }
                            }                            
                            catch (Exception ex)
                            {
                                kqTest.KetQua = KetQuaTestCase.LoaiKetQua.Loi;                                
                                kqTest.ThongDiep = "Chương trình chấm bị lỗi";                                                                
                            }
                        }
                        break;
                }
                kq.KetQuaTestCases.Add(kqTest);
            }
            return kq;
        }
    }
}
