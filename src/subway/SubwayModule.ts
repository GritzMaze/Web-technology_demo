import { Module } from '@nestjs/common';
import { LinesRepository } from './LinesRepository';
import { LinesController } from './LinesController';
@Module({
    imports: [],
    providers: [LinesRepository],
    controllers: [LinesController],
    exports: []
})
export class SubwayModule {}
