import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'Mercado',
  connector: 'mssql',
  url: 'mssql://sa:diegosql.DESKTOP-A3L64N2/Mercado',
  host: 'DESKTOP-A3L64N2',
  port: 1433,
  user: 'sa',
  password: 'diegosql',
  database: 'Mercado'
};

// Observe application's life cycle to disconnect the datasource when
// application is stopped. This allows the application to be shut down
// gracefully. The `stop()` method is inherited from `juggler.DataSource`.
// Learn more at https://loopback.io/doc/en/lb4/Life-cycle.html
@lifeCycleObserver('datasource')
export class MercadoDataSource extends juggler.DataSource
  implements LifeCycleObserver {
  static dataSourceName = 'Mercado';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.Mercado', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
