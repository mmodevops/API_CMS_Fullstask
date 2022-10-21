// ** Navigation imports
import apps from './apps'
import pages from './pages'
import forms from './forms'
import tables from './tables'
import others from './others'
import charts from './charts'
import dashboards from './dashboards'
import uiElements from './ui-elements'

import ptcms_dashboards from './ptcms/dashboards'
import ptcms_campaigns from './ptcms/campaigns'
import ptcms_utility_tools from './ptcms/utility_tools'
import ptcms_administration from './ptcms/administration'

// ** Merge & Export
// export default [...dashboards, ...apps, ...pages, ...uiElements, ...forms, ...tables, ...charts, ...others]
export default [...ptcms_dashboards, ...ptcms_campaigns, ...ptcms_utility_tools, ...ptcms_administration]
