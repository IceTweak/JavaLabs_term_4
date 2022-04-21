package com.lab_2.lab_2;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "jsonServlet", value = "/jsonServlet")
public class jsonServlet extends HttpServlet {
    private final String pathFile = "F:\\Политех учеба\\ИВТ-Программирование\\Java ООП\\Java_term_4\\Lab_2\\src\\main\\webapp\\js\\records";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

        try(PrintWriter out = response.getWriter()) {

            String json = FileUtils.readFileToString(new File(pathFile), StandardCharsets.UTF_8);


            response.setContentType("text/json");
            response.setCharacterEncoding("UTF-8");

            out.write(json);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        try(FileReader reader = new FileReader(pathFile))
        {
            File file = new File(pathFile);
            if(!file.exists()){
                Files.createFile(Path.of(pathFile));
            }

            String input = IOUtils.toString(request.getInputStream(), StandardCharsets.UTF_8); // входящая строка
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

    public void destroy() {
    }
}