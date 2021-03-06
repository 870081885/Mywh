﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Utility
{
    public class MySession
    {
        /// <summary>
        /// 添加Session,有效期为默认
        /// </summary>
        /// <param name="vSessionName">session名称</param>
        /// <param name="vSessionValue">session值</param>
        /// <returns></returns>
        public static void Add(string vSessionName, object vSessionValue)
        {
            HttpContext.Current.Session[vSessionName] = vSessionValue;
        }

        /// <summary>
        /// 添加Session，并调整有效期
        /// </summary>
        /// <param name="vSessionName">session名称</param>
        /// <param name="vSessionValue">session值</param>
        /// <param name="vTimeout">session过期时间(以分钟为单位)</param>
        /// <returns></returns>
        public static void Add(string vSessionName, string vSessionValue, int vTimeout)
        {
            HttpContext.Current.Session[vSessionName] = vSessionValue;
            HttpContext.Current.Session.Timeout = vTimeout;
        }

        /// <summary>
        /// 获取session的值
        /// </summary>
        /// <param name="vSessionName"></param>
        /// <returns></returns>
        public static object GetSessionObjectValue(string vSessionName)
        {
            return HttpContext.Current.Session[vSessionName];
        }

        /// <summary>
        /// 获取session的值
        /// </summary>
        /// <param name="vSessionName"></param>
        /// <returns></returns>
        public static string GetSessionStringValue(string vSessionName)
        {
            if (HttpContext.Current.Session[vSessionName] != null)
            {
                return HttpContext.Current.Session[vSessionName].ToString();
            }
            else
            {
                return "";
            }

        }

        /// <summary>
        /// 获取session值
        /// </summary>
        /// <param name="vSessionName"></param>
        /// <returns></returns>
        public static int GetSessionIntValue(string vSessionName)
        {
            try
            {
                if (HttpContext.Current.Session[vSessionName] != null)
                {
                    return Int32.Parse(HttpContext.Current.Session[vSessionName].ToString());
                }
                else
                {
                    return -1;
                }
            }
            catch (FormatException ex)
            {
                return -1;
            }
        }

        /// <summary>
        /// 获取UserId
        /// </summary>
        /// <returns></returns>
        public static int GetUserID()
        {
            return GetSessionIntValue("userId");
        }

        /// <summary>
        /// 清空所有session
        /// </summary>
        public static void Clear()
        {
            HttpContext.Current.Session.Clear();
        }

        /// <summary>
        /// 删除某个Session对象
        /// </summary>
        /// <param name="strSessionName">Session对象名称</param>
        public static void Remove(string vSessionName)
        {
            HttpContext.Current.Session[vSessionName] = null;
        }

    }
}
