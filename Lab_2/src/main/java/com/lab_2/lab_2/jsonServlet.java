package com.lab_2.lab_2;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "jsonServlet", value = "/jsonServlet")
public class jsonServlet extends HttpServlet {
    private final String pathFile = "F:\\Политех учеба\\ИВТ-Программирование\\Java ООП\\Java_term_4\\Lab_2\\src\\main\\webapp\\js\\records.txt";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

        try(JsonReader reader = new JsonReader(new FileReader(pathFile))) {

            Gson gson = new GsonBuilder().create();
            // Получаем список объектов из файла
            List<Book> books = gson.fromJson(reader, new TypeToken<List<Book>>() {}.getType());

            // Переворачиваем чтобы новые записи были сверху
            Collections.reverse(books);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();

            // Сериализуем в JSON и отправляем
            out.print(gson.toJson(books));
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        try(JsonReader reader = new JsonReader(new FileReader(pathFile)))
        {
            File file = new File(pathFile);
            if(!file.exists()){
                Files.createFile(Path.of(pathFile));
            }

            String input = IOUtils.toString(request.getInputStream(), StandardCharsets.UTF_8); // входящая строка
            Gson gson = new GsonBuilder().setPrettyPrinting().create();

            // дессериализация JSON строки
            Book inputBook = gson.fromJson(input, Book.class);

            if(file.length() == 0) {
                // Создаем список для записей
                List<Book> books = new ArrayList<>();

                // Добавление POJO в список
                books.add(inputBook);

                FileWriter writer = new FileWriter(pathFile);
                writer.write(gson.toJson(books));
                writer.close();
            }else{
                // Читаем jsonArray в список POJO
                List<Book> books = gson.fromJson(reader, new TypeToken<List<Book>>() {}.getType());

                books.add(inputBook);

                FileWriter writer = new FileWriter(pathFile);
                writer.write(gson.toJson(books));
                writer.close();
            }

        }catch (IOException e){
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}