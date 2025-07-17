import {defineConfig} from '@mikro-orm/mongodb'

import conf from '@/conf'
import {Log} from '@/models/log/entities'

export default defineConfig({
  clientUrl: conf.DB_URL_LOG,
  ensureIndexes: true,
  implicitTransactions: true,
  entities: [Log],
  debug: false,
})
