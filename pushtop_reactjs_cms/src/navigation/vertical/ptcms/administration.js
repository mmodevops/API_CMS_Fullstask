// ** Icons Import
import { Mail, MessageSquare, CheckSquare, Calendar, FileText, Circle, ShoppingCart, User, Users, Shield } from 'react-feather'

export default [
  {
    header: 'ADMINISTRATION'
  },
  {
    id: 'ptcms-users',
    title: 'Người dùng',
    icon: <Users size={20} />,
    navLink: '/ptcms/apps/user/list'
    // children: [
    //   {
    //     id: 'ptcms-user-list',
    //     title: 'Danh sách người dùng',
    //     icon: <Circle size={12} />,
    //     navLink: '/ptcms/apps/user/list'
    //   },
    //   {
    //     id: 'ptcms-user-view',
    //     title: 'Cá nhân',
    //     icon: <Circle size={12} />,
    //     navLink: '/ptcms/apps/user/view'
    //   }
    // ]
  },
  {
    id: 'ptcms-account-settings',
    title: 'Cá nhân',
    icon: <User size={12} />,
    // permissions: ['admin', 'editor'],
    navLink: '/ptcms/apps/account-settings'
  },
  {
    id: 'ptcms-roles-permissions',
    title: 'Vai trò & Quyền',
    icon: <Shield size={20} />,
    children: [
      {
        id: 'ptcms-roles',
        title: 'Vai trò',
        icon: <Circle size={12} />,
        navLink: '/ptcms/apps/roles'
      },
      {
        id: 'ptcms-permissions',
        title: 'Quyền hạn',
        icon: <Circle size={12} />,
        navLink: '/ptcms/apps/permissions'
      }
    ]
  }
]
