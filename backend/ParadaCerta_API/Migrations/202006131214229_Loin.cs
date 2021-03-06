﻿namespace ParadaCerta_API.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Loin : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Credencials",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Usuario = c.String(),
                        Senha = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Credencials");
        }
    }
}
