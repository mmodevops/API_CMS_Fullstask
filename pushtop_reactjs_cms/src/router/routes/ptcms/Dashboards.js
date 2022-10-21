import { lazy } from 'react'

const PTDashboardRoutes = [
  // Dashboards
  {
    path: '/ptcms/dashboard/analytics',
    component: lazy(() => import('../../../views/ptcms/dashboard/analytics'))
  },
  {
    path: '/ptcms/dashboard/ecommerce',
    component: lazy(() => import('../../../views/ptcms/dashboard/ecommerce')),
    exact: true
  }
]

export default PTDashboardRoutes
