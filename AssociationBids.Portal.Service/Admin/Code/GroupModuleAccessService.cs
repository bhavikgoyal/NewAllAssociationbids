using System;
using System.Collections.Generic;

using AssociationBids.Portal.Common;
using AssociationBids.Portal.Model;
using AssociationBids.Portal.Repository.Admin;

namespace AssociationBids.Portal.Service.Admin
{
    public class GroupModuleAccessService : AssociationBids.Portal.Service.Site.GroupModuleAccessService, IGroupModuleAccessService
    {
        new protected IGroupModuleAccessRepository __repository;

        public GroupModuleAccessService()
            : this(new GroupModuleAccessRepository()) { }

        public GroupModuleAccessService(string connectionString)
            : this(new GroupModuleAccessRepository(connectionString)) { }

        public GroupModuleAccessService(IGroupModuleAccessRepository repository)
            : base(repository)
        {
            __repository = repository;
        }

        public override GroupModuleAccessFilterModel UpdateFilter(GroupModuleAccessFilterModel filter)
        {
            return base.UpdateFilter<GroupModuleAccessFilterModel>(filter);
        }
    }
}