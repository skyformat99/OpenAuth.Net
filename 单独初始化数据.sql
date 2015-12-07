USE [OpenAuthDB]
GO
/****** Object:  Table [dbo].[UserExt]    Script Date: 12/06/2015 23:45:41 ******/
/****** Object:  Table [dbo].[UserCfg]    Script Date: 12/06/2015 23:45:41 ******/
/****** Object:  Table [dbo].[User]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [Account], [Password], [Name], [Sex], [Status], [Type], [BizCode], [CreateTime], [CreateId]) VALUES (21, N'test', N'', N'test', 0, 0, 0, N'', CAST(0x0000A5650128CCDC AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([Id], [Name], [Status], [Type], [CreateTime], [CreateId], [OrgId], [OrgCascadeId], [OrgName]) VALUES (1, N'管理员', 0, 0, CAST(0x0000A5650171F3DC AS DateTime), N'', 1, N'0.1', N'集团总部')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Relevance]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[Relevance] ON
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (27, 21, 1, N'', N'UserOrg', 0, CAST(0x0000A565016D4CC5 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (28, 2, 0, N'', N'RoleModule', 0, CAST(0x0000A5650188DE18 AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (29, 2, 2, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (30, 2, 1, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
INSERT [dbo].[Relevance] ([Id], [FirstId], [SecondId], [Description], [Key], [Status], [OperateTime], [OperatorId]) VALUES (31, 2, 3, N'', N'RoleModule', 0, CAST(0x0000A5650188DE1A AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Relevance] OFF
/****** Object:  Table [dbo].[Org]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[Org] ON
INSERT [dbo].[Org] ([Id], [CascadeId], [Name], [HotKey], [ParentId], [ParentName], [IsLeaf], [IsAutoExpand], [IconName], [Status], [Type], [BizCode], [CustomCode], [CreateTime], [CreateId], [SortNo]) VALUES (1, N'0.1', N'集团总部', N'', 0, N'根节点', 0, 0, N'', 0, 0, N'', N'', CAST(0x0000A56501683E57 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Org] OFF
/****** Object:  Table [dbo].[ModuleElement]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[ModuleElement] ON
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (2, N'btnAdd', N'添加', N'a', 3, N'href=''/UserManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (3, N'btnEdit', N'编辑', N'button', 3, N'', N'editOrg()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (4, N'btnAccessModule', N'为用户分配模块', N'button', 3, N'', N'openModuleAccess(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (5, N'btnAccessRole', N'为用户分配角色', N'button', 3, N'', N'openRoleAccess(this)', N'pencil', N'btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (6, N'btnRefresh', N'刷新', N'button', 3, N'', N'refreshGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (7, N'btnDel', N'删除', N'button', 3, N'', N'del()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (10, N'btnRefresh', N'刷新', N'button', 4, N'', N'refreshGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (11, N'btnAdd', N'添加', N'a', 4, N'href=''/OrgManager/AddOrg/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (12, N'btnDel', N'删除', N'button', 4, N'', N'del()', N'del', N'btn-red', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (19, N'btnAdd', N'添加', N'a', 5, N'href=''/RoleManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (20, N'btnEdit', N'编辑', N'button', 5, N'', N'editRole()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (21, N'btnAccessModule', N'为角色分配模块', N'button', 5, N'', N'openModuleAccess(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (23, N'btnRefresh', N'刷新', N'button', 5, N'', N'refreshGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (24, N'btnDel', N'删除', N'button', 5, N'', N'del()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (25, N'btnAdd', N'添加', N'a', 1, N'href=''/ModuleManager/Add/'' data-toggle=''dialog'' data-id=''dialog-mask'' data-mask=''true'' data-on-close=''refreshGrid''', N'javascript:;', N'plus', N'btn btn-green ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (26, N'btnEdit', N'编辑', N'button', 1, N'', N'editModule()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (27, N'btnAssign', N'为模块分配按钮', N'button', 1, N'', N'assignButton()', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (28, N'btnRefresh', N'刷新', N'button', 1, N'', N'refreshGrid()', N'refresh', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (29, N'btnDel', N'删除', N'button', 1, N'', N'del()', N'pencil', N'btn-red ', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (30, N'btnAssignElement', N'为用户分配菜单', N'button', 3, N'', N'openAssignElement(this)', N'pencil', N'btn-green', N'', 0)
INSERT [dbo].[ModuleElement] ([Id], [DomId], [Name], [Type], [ModuleId], [Attr], [Script], [Icon], [Class], [Remark], [Sort]) VALUES (31, N'btnAssignElement', N'为角色分配菜单', N'button', 5, N'', N'openAssignElement(this)', N'pencil', N'btn-green', N'', 0)
SET IDENTITY_INSERT [dbo].[ModuleElement] OFF
/****** Object:  Table [dbo].[Module]    Script Date: 12/06/2015 23:45:41 ******/
SET IDENTITY_INSERT [dbo].[Module] ON
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (1, N'0.1.1', N'模块管理', N'ModuleManager/Index', N' ', 2, 1, 0, N' ', 1, N' ', N' ', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (2, N'0.1', N'基础配置', N' ', N' ', 0, 1, 0, N' ', 1, N' ', N' ', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (3, N'0.1.2', N'用户管理', N'UserManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (4, N'0.1.3', N'部门管理', N'OrgManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (5, N'0.1.4', N'角色管理', N'RoleManager/Index', N'', 2, 0, 0, N'', 0, N'基础配置', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (6, N'0.2', N'应用功能', N'/', N'', 0, 0, 0, N'', 0, N'根节点', N'', 0)
INSERT [dbo].[Module] ([Id], [CascadeId], [Name], [Url], [HotKey], [ParentId], [IsLeaf], [IsAutoExpand], [IconName], [Status], [ParentName], [Vector], [SortNo]) VALUES (7, N'0.2.1', N'报表管理', N'/', N'', 6, 0, 0, N'', 0, N'应用功能', N'', 0)
SET IDENTITY_INSERT [dbo].[Module] OFF
