import 'package:reminders/models/reminder.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBLocal {
  _getDBLocal() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'reminder.db');
    var db = openDatabase(
      path,
      version: 1,
      onCreate: (db, verRecente) async {
        //Sera usado ID?
        await db.execute(
            "CREATE TABLE lembretes (id TEXT, title TEXT, text TEXT, app TEXT)");
      },
    );
    return db;
  }

  save(Reminder note) async {
    Database db = await _getDBLocal();
    Map<String, dynamic> dados = {
      "id": note.id,
      "title": note.title,
      "text": note.text,
      "app": note.app,
    };
    db.insert("lembretes", dados);
  }

  update(Reminder note) async {
    Database db = await _getDBLocal();
    await db.rawQuery(
      "UPDATE lembretes SET text = ? and title = ? and app = ? WHERE id = ?",
      [note.text, note.title, note.app, note.id],
    );
  }

  remove(String id) async {
    Database db = await _getDBLocal();
    db.delete(
      "lembretes",
      where: "id = ?",
      whereArgs: [id],
    );
  }

  getAllReminders() async {
    List<Reminder> notes = [];
    Database db = await _getDBLocal();
    List<Map> list = await db.rawQuery('SELECT * FROM lembretes');

    list.forEach(
      (element) {
        Reminder aux = Reminder();
        aux.title = element["title"];
        aux.text = element["text"];
        aux.app = element["app"];
        aux.id = element["id"];
        notes.add(aux);
      },
    );
    return notes;
  }
}
