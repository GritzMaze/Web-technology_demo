import { Module } from '@nestjs/common';
import { HealthModule } from './health/HealthModule';
import { TrafficModule } from './traffic/TrafficModule';
import { DrivineModule, DrivineModuleOptions } from '@liberation-data/drivine/DrivineModule';
import { DatabaseRegistry } from '@liberation-data/drivine/connection/DatabaseRegistry';
import { MovieModule } from '@/movies/MovieModule';
import { SubwayModule } from '@/subway/SubwayModule';

@Module({
    imports: [
        DrivineModule.withOptions(<DrivineModuleOptions>{
            connectionProviders: [DatabaseRegistry.buildOrResolveFromEnv()]
        }),
        HealthModule,
        MovieModule,
        TrafficModule,
        SubwayModule
    ],
    controllers: [],
    providers: []
})
export class AppModule {


}
