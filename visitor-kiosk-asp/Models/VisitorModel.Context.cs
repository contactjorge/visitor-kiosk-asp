﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace visitor_kiosk_asp.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class VisitorModelContainer : DbContext
    {
        public VisitorModelContainer()
            : base("name=VisitorModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Registration> Registrations { get; set; }
        public virtual DbSet<Visitor> Visitors { get; set; }
        public virtual DbSet<Guest> Guests { get; set; }
    }
}
