// ** Icons Import
import { Home, Activity, ShoppingCart } from 'react-feather'

export default [
  {
    id: 'ptcms-dashboards',
    title: 'Dashboards',
    icon: <Home />,
    children: [
      {
        id: 'ptcms-analyticsDash',
        title: 'Analytics',
        icon: <Activity />,
        navLink: '/ptcms/dashboard/analytics'
      },
      {
        id: 'ptcms-campaignDash',
        title: 'Campaign',
        icon: <ShoppingCart />,
        navLink: '/ptcms/dashboard/ecommerce'
      }
    ]
  }
]
