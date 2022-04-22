package com.lab_2.lab_2;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.io.FileUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public class BookService {
    private final String pathFile = "F:\\Политех учеба\\ИВТ-Программирование\\Java ООП\\Java_term_4" +
            "\\Lab_2\\src\\main\\webapp\\js\\records";

    public String serialize() {
        try {
            return FileUtils.readFileToString(new File(pathFile), StandardCharsets.UTF_8);
        } catch (IOException e) {
            e.printStackTrace();
            return """
[{"WARNING": "File is empty!"}]
                    """;
        }
    }

    public void deserialize(String input){

        try(FileReader reader = new FileReader(pathFile))
        {
            File file = new File(pathFile);
            if(!file.exists()){
                Files.createFile(Path.of(pathFile));
            }

            Gson gson = new GsonBuilder().setPrettyPrinting().create();
            JSONParser parser = new JSONParser();

            // дессериализация JSON строки
            Book inputBook = gson.fromJson(input, Book.class);
            JSONObject jsonLine = (JSONObject) parser.parse(inputBook.toString());

            if(file.length() == 0) {
                JSONArray jsonArray = new JSONArray();
                jsonArray.add(jsonLine);

                FileWriter writer = new FileWriter(pathFile);
                writer.write(gson.toJson(jsonArray));
                writer.close();
            }else{
                JSONArray jsonArray;
                jsonArray = (JSONArray) parser.parse(reader);
                jsonArray.add(jsonLine);

                FileWriter writer = new FileWriter(pathFile);
                writer.write(gson.toJson(jsonArray));
                writer.close();
            }

        }catch (IOException | ParseException e){
            e.printStackTrace();
        }
    }
}
