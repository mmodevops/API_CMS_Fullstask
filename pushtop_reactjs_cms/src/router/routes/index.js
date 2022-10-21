// ** Routes Imports
import AppRoutes from './Apps'
import FormRoutes from './Forms'
import PagesRoutes from './Pages'
import TablesRoutes from './Tables'
import ChartsRoutes from './Charts'
import DashboardRoutes from './Dashboards'
import UiElementRoutes from './UiElements'
import ExtensionsRoutes from './Extensions'
import PageLayoutsRoutes from './PageLayouts'

import PTDashboardRoutes from './ptcms/Dashboards'
import PTPagesRoutes from './ptcms/Pages'
import PTAppRoutes from './ptcms/Apps'

// ** Document title
const TemplateTitle = '%s - Vuexy React Admin Template'

// ** Default Route
const DefaultRoute = '/ptcms/dashboard/analytics'

// ** Merge Routes
const Routes = [
  ...DashboardRoutes,
  ...AppRoutes,
  ...PagesRoutes,
  ...UiElementRoutes,
  ...ExtensionsRoutes,
  ...PageLayoutsRoutes,
  ...FormRoutes,
  ...TablesRoutes,
  ...ChartsRoutes,
  //PTCMS Routers
  ...PTAppRoutes,
  ...PTDashboardRoutes,
  ...PTPagesRoutes
]

export { DefaultRoute, TemplateTitle, Routes }
