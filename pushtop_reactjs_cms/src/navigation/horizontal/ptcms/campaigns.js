// ** Icons Import
import { Mail, MessageSquare, CheckSquare, Calendar, FileText, Circle, ShoppingCart, User, Shield } from 'react-feather'
import { FaAppStore, FaGooglePlay, FaRegFileWord, FaGamepad, FaMobileAlt, FaMailBulk } from "react-icons/fa"

export default [
  {
    id: 'ptcms-campaigns-ios',
    title: 'Chiến dịch iOS',
    icon: <FaAppStore size={20} />,
    children: [
      {
        id: 'ptcms-top-free-ios-list',
        title: 'TOP Free',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-top-keyword-ios-list',
        title: 'TOP Keyword',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-comment-ios-list',
        title: 'Comment',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-vote-ios-list',
        title: 'Vote',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-report-vote-ios-list',
        title: 'Report vote',
        icon: <Circle size={12} />,
        navLink: ''
      }
    ]
  },
  {
    id: 'ptcms-campaigns-android',
    title: 'Chiến dịch Android',
    icon: <FaGooglePlay size={20} />,
    children: [
      {
        id: 'ptcms-top-free-android-list',
        title: 'TOP Free',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-top-keyword-android-list',
        title: 'TOP Keyword',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-comment-android-list',
        title: 'Comment',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-vote-android-list',
        title: 'Vote',
        icon: <Circle size={12} />,
        navLink: ''//ptcms/apps/user/list
      },
      {
        id: 'ptcms-report-vote-android-list',
        title: 'Report vote',
        icon: <Circle size={12} />,
        navLink: ''
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
      }
    ]
  }
]
