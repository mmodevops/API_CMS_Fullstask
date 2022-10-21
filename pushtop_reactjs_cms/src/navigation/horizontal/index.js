// ** Navigation imports
import apps from './apps'
import pages from './pages'
import others from './others'
import charts from './charts'
import dashboards from './dashboards'
import uiElements from './ui-elements'
import formsAndTables from './forms-tables'

import ptcms_dashboards from './ptcms/dashboards'
import ptcms_campaigns from './ptcms/campaigns'
import ptcms_utility_tools from './ptcms/utility_tools'
import ptcms_administration from './ptcms/administration'


// ** Merge & Export
// export default [...dashboards, ...apps, ...uiElements, ...formsAndTables, ...pages, ...charts, ...others]
export default [...ptcms_dashboards, ...ptcms_campaigns, ...ptcms_utility_tools, ...ptcms_administration]
