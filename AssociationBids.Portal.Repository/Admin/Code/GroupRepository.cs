using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

using AssociationBids.Portal.Model;

namespace AssociationBids.Portal.Repository.Admin
{
    public class GroupRepository : AssociationBids.Portal.Repository.Site.GroupRepository, IGroupRepository
    {
        public GroupRepository() 
            : base() { }

        public GroupRepository(string connectionString)
            : base(connectionString) { }
    }
}