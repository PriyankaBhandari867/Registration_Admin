﻿using ScoopenAPIModals.Account.UserRegister;
using ScoopenAPIModals.Account;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ScoopenAPI.Controllers
{
    public class UserRegisterApiController : ApiController
    {
        UserRegisterDbEntities db = new UserRegisterDbEntities();
        public IHttpActionResult PostRegisterApi(UserRegisterModel u)
        {
            if(u!=null)
            {
                User user = new User()
                {
                    FirstName = u.FirstName,
                    LastName = u.LastName,
                    UserName = u.UserName,
                    MobileNumber = u.MobileNumber.ToString(),
                    Email=u.Email,
                    Password = u.Password.ToString(),
                };
                db.Users.Add(user);
                db.SaveChanges();
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }
    }
}
