// ** Icons Import
import { Home, Circle } from 'react-feather'

export default [
  {
    id: 'ptcms-dashboards',
    title: 'Dashboards',
    icon: <Home size={20} />,
    badge: 'light-warning',
    badgeText: '2',
    children: [
      {
        id: 'ptcms-analyticsDash',
        title: 'Analytics',
        icon: <Circle size={12} />,
        navLink: '/ptcms/dashboard/analytics'
      },
      {
        id: 'ptcms-campaignDash',
        title: 'Campaign',
        icon: <Circle size={12} />,
        navLink: '/ptcms/dashboard/ecommerce'
      }
    ]
  }
]
