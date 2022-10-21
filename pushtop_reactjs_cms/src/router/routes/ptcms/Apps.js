// ** React Imports
import { lazy } from 'react'
import { Redirect } from 'react-router-dom'

const PTAppRoutes = [
  {
    path: '/ptcms/login',
    component: lazy(() => import('../../../views/ptcms/apps/authentication/Login')),
    layout: 'BlankLayout',
    meta: {
      authRoute: true
    }
  },
  {
    path: '/ptcms/register',
    component: lazy(() => import('../../../views/ptcms/apps/authentication/Register')),
    layout: 'BlankLayout',
    meta: {
      authRoute: true
    }
  },
  {
    path: '/ptcms/forgot-password',
    component: lazy(() => import('../../../views/ptcms/apps/authentication/ForgotPassword')),
    layout: 'BlankLayout',
    meta: {
      authRoute: true
    }
  },
  {
    path: '/ptcms/apps/user/list',
    component: lazy(() => import('../../../views/ptcms/apps/user/list'))
  },
  {
    path: '/ptcms/apps/user/view',
    exact: true,
    component: () => <Redirect to='/ptcms/apps/user/view/1' />
  },
  {
    path: '/ptcms/apps/user/view/:id',
    component: lazy(() => import('../../../views/ptcms/apps/user/view')),
    meta: {
      navLink: '/ptcms/apps/user/view'
    }
  },
  {
    path: '/ptcms/apps/roles',
    component: lazy(() => import('../../../views/ptcms/apps/roles-permissions/roles'))
  },
  {
    path: '/ptcms/apps/permissions',
    component: lazy(() => import('../../../views/ptcms/apps/roles-permissions/permissions'))
  },
  {
    path: '/ptcms/apps/account-settings',
    component: lazy(() => import('../../../views/ptcms/apps/account-settings'))
  }
]

export default PTAppRoutes
