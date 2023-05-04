import { Controller, Get, Param } from '@nestjs/common';
import { LinesRepository } from './LinesRepository';
import { Station } from './Station';

@Controller('/lines')
export class LinesController {
    constructor(readonly linesRepository: LinesRepository) {
    }

    @Get()
    async getLines(): Promise<any[]> {
        return this.linesRepository.getLines();
    }

    @Get('/stations')
    async getStations(): Promise<Station[]> {
        return this.linesRepository.getStations();
    }

    @Get(':lineId')
    async getLine(@Param('lineId') lineId: number): Promise<Station[]> {
        console.log('lineId', lineId)
        return this.linesRepository.getLine(Number(lineId));
    }

    @Get('/stations/:station1/:station2')
    async getStationsBetween(@Param('station1') station1: string, @Param('station2') station2: string): Promise<Station[] | undefined> {
        return this.linesRepository.getStationsBetween(station1, station2);
    }
}