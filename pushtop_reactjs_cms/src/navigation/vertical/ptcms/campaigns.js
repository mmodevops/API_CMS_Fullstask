// ** Icons Import
import { Mail, MessageSquare, CheckSquare, Calendar, FileText, Circle, ShoppingCart, User, Shield } from 'react-feather'
import { FaAppStore, FaGooglePlay, FaSms, FaArrowUp } from "react-icons/fa"

export default [
  {
    header: 'Campaigns'
  },
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
    id: 'ptcms-imess',
    title: 'Gửi iMess',
    icon: <FaSms size={20} />,
    children: [
      {
        id: 'ptcms-imess-list',
        title: 'Danh sách iMess',
        icon: <Circle size={12} />,
        navLink: '' //ptcms/apps/user/list
      }
    ]
  },
  {
    id: 'ptcms-push-ccu',
    title: 'Push CCU',
    icon: <FaArrowUp size={20} />,
    children: [
      {
        id: 'ptcms-push-ccu-ios-list',
        title: 'iOS',
        icon: <Circle size={12} />,
        navLink: '' //ptcms/apps/user/list
      },
       {
        id: 'ptcms-push-ccu-android-list',
        title: 'Android',
        icon: <Circle size={12} />,
        navLink: '' //ptcms/apps/user/list
      }
    ]
  }
]
