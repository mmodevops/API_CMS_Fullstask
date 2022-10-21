// ** Icons Import
import { Mail, MessageSquare, CheckSquare, Calendar, FileText, Circle, ShoppingCart, User, Shield } from 'react-feather'
import { FaGamepad, FaMobileAlt, FaMailBulk, FaRegFileWord } from "react-icons/fa"

export default [
  {
    header: 'UTILITY TOOLS'
  },
  {
    id: 'ptcms-games',
    title: 'Quản lý Game',
    icon: <FaGamepad size={20} />,
    children: [
      {
        id: 'ptcms-game-list',
        title: 'Danh sách Game',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      }
    ]
  },
  {
    id: 'ptcms-keywords',
    title: 'Quản lý Keyword',
    icon: <FaRegFileWord size={20} />,
    children: [
      {
        id: 'ptcms-keyword-list',
        title: 'Danh sách keyword',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      }
    ]
  },
  {
    id: 'ptcms-devices',
    title: 'Quản lý Thiết bị',
    icon: <FaMobileAlt size={20} />,
    children: [
      {
        id: 'ptcms-device-ios-list',
        title: 'Danh sách iOS',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-device-android-list',
        title: 'Danh sách Android',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-device-group',
        title: 'Nhóm',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-device-location',
        title: 'Vị trí',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      }
    ]
  },
  {
    id: 'ptcms-accounts',
    title: 'Quản lý Tài khoản',
    icon: <FaMailBulk size={20} />,
    children: [
      {
        id: 'ptcms-itunes-list',
        title: 'iTunes',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-imess-list',
        title: 'iMess',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-gmail-list',
        title: 'Gmail',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-scoin-list',
        title: 'Scoin',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-phone-list',
        title: 'SĐT iMess',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      }
    ]
  }
]
