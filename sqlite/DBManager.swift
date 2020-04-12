//
//  DBManager.swift
//  sqlite_fmdb
//
//  Created by Isma Helio on 11/4/20.
//  Copyright © 2020 Isma Helio. All rights reserved.
//

import UIKit

class DBManager: NSObject {
    

    
    // Singleton
    static let shared: DBManager = DBManager()
    
    let databaseFileName = "database.sqlite"
    var pathToDatabase: String!
    var database: FMDatabase!
    
    let fileManager = NSFileManager.defaultManager()
    var dbUrl: NSURL? = nil
    
    override init() {
        super.init()
        // Set the path to the database file
        let documentsDirectory = (NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString) as String
        pathToDatabase = documentsDirectory + "/" + databaseFileName
        
    }


    func openDatabase() -> Bool {
        // if the db file doesnt exist we create one
        //print(pathToDatabase)
        if database == nil {
            if !fileManager.fileExistsAtPath(pathToDatabase) {
            database = FMDatabase(path: pathToDatabase)
            }
            else {database = FMDatabase(path: pathToDatabase)}
            }
        
            if database != nil {
            if database.open() {
            return true
            }
            }
            
            return false
            }

    func insertTable(tableName: String) {
        
        openDatabase()
        
        if database == nil {print("wtf")}
        
        //database.open()
        
        let sqlStatement = "create table if not exists \(tableName) (Nombre Text, Edad Text);"
        //let sqlStatement = "create table if not exists SD (Nombre Text, Edad Text);"
        
        
        
        do {
            try database.executeUpdate(sqlStatement, values: nil)
        } catch{
            print(error)
        }
        
        database.close()

        
    }
    
    func insertTableValues(tableName: String, nameField: String, edadField: String) {
        
        openDatabase()

        
        let insertStatement = "insert into \(tableName) (Nombre, Edad) values ('\(nameField)', '\(edadField)');"
        //let insertStatement = "insert into \(tableName) (Nombre, Edad) values ('Isma', '33');"
        do {
            try database.executeUpdate(insertStatement, values: nil)
        } catch{
            print(error)
        }
        
        
    }

    
    func printAll(tableName: String) {
        
        openDatabase()
        
        let selectSql = "select * from \(tableName)"
        let fmresult = database.executeQuery(selectSql, withParameterDictionary: nil)
        
        // iterate thourgh the fm object with the results
        while fmresult!.next() {
            
            // let rowId = fmresult?.intForColumn("column name") that for integer
            let nombre = fmresult?.stringForColumn("Nombre")
            let edad = fmresult?.stringForColumn("Edad")
            
            print("\(nombre) \(edad)")
    }
        // Print all the team names
        let selectTeams = "select * from teams_table"
        let fmresult_teams = database.executeQuery(selectTeams, withParameterDictionary: nil)
        while fmresult_teams!.next() {
            
            // let rowId = fmresult?.intForColumn("column name") that for integer
            let teamName = fmresult?.stringForColumn("team_name")
            
            print("\(teamName)")
        }
        
        

    }
    
    func addTeamToDB (teamName: String) {
        openDatabase()
        
        let sqlStatement = "create table if not exists teams_table (team_name Text);"
        let sqlInsertTeam = "insert into teams_table (team_name) values ('\(teamName)');"

        
        do {
            try database.executeUpdate(sqlStatement, values: nil)
            try database.executeUpdate(sqlInsertTeam, values: nil)

            
        } catch{
            print(error)
        }

        
        
    }
}
