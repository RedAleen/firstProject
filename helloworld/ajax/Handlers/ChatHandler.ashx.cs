using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ajax.Handlers
{
    /// <summary>
    /// ChatHandler 的摘要说明
    /// </summary>
    public class ChatHandler : IHttpHandler
    {
        /// <summary>
        /// Ajax后台程序
        /// </summary>
        /// <param name="context">当前上下文</param>
        public void ProcessRequest(HttpContext context)
        {
            //获取http发过来的数据
            string m = context.Request["m"].ToString();
            string n = context.Request["n"].ToString();

            //设置传输给浏览器的响应结果
            context.Response.ContentType = "text/plain";
            context.Response.Write("{result:true,msg:'从服务器接受数据成功'}");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}