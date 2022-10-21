// ** Icons Import
import { Mail, MessageSquare, CheckSquare, Calendar, FileText, Circle, ShoppingCart, User, Shield } from 'react-feather'
import { FaSms, FaArrowUp } from "react-icons/fa"

export default [
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
      },
      {
        id: 'ptcms-phone-list',
        title: 'Danh sách SĐT',
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
