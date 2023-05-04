import {
    Cursor,
    CursorSpecification,
    CypherStatement,
    InjectCypher,
    InjectPersistenceManager,
    PersistenceManager,
    QuerySpecification,
    StreamUtils,
    Transactional
} from '@liberation-data/drivine';
import { Injectable } from '@nestjs/common';
import { Station } from './Station';
const fs = require('fs');

@Injectable()
export class LinesRepository {
    constructor(
        @InjectPersistenceManager() readonly persistenceManager: PersistenceManager,
        @InjectCypher(__dirname, 'lines') readonly lines: CypherStatement,
        @InjectCypher(__dirname, 'stationsBetween') readonly stationsBetween: CypherStatement,
        @InjectCypher(__dirname, 'line') readonly line: CypherStatement,
    ) {}

    @Transactional()
    async getStations(): Promise<Station[]> {
        const spec = new QuerySpecification<Station>()
            .withStatement('MATCH (s:Station) RETURN s')
            // .limit(2)
            .transform(Station);
        return this.persistenceManager.query(spec);
    }

    @Transactional()
    async getLines(): Promise<any> {
        const spec = new QuerySpecification().withStatement(this.lines);
        return this.persistenceManager.query(spec);
    }

    @Transactional()
    async getLine(lineId: number): Promise<any> {
        const spec = new QuerySpecification().withStatement(this.line).bind({ line: lineId });
        return this.persistenceManager.query(spec);
    }

    @Transactional()
    async getStationsBetween(station1: string, station2: string): Promise<Station[] | undefined> {
        const spec = new QuerySpecification<Station>()
            .withStatement(this.stationsBetween)
            .bind({ station1: station1, station2: station2 })
            .transform(Station);
        return this.persistenceManager.query(spec);
    }

    @Transactional()
    async somethingVeryBig<TModel>(): Promise<Cursor<TModel>> {
        const bigData = await this.persistenceManager.openCursor(
            new CursorSpecification<TModel>()
                .withStatement('MATCH (s:Station) RETURN s')
                .batchSize(5)
                // .transform(TModel)
        );
        
        for await (const item of bigData) {
            // do some aggregation
            console.log(item);

            // Buffer overflow problem
            const result = fs.write(item);
        }

        // Solution
        const fileStream = fs.createWriteStream('stations.json')
        bigData.asStream().pipe(fileStream)
        await StreamUtils.untilClosed(fileStream);


        return bigData;
    }
}
