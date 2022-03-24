package com.lab_2.lab_2;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.json.simple.parser.ParseException;

@WebServlet(name = "jsonServlet", value = "/jsonServlet")
public class jsonServlet extends HttpServlet {

    public static String readFileAsString(String file)throws Exception
    {
        return new String(Files.readAllBytes(Paths.get(file)));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {

        try {
            String json = readFileAsString("js/records.json");
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print(json);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        JSONParser jsonParser = new JSONParser();

        try(FileWriter file = new FileWriter("js/records.json")) {

            String input = IOUtils.toString(request.getInputStream(), StandardCharsets.UTF_8);

            Object jsonFile = jsonParser.parse(new FileReader("js/records.json"));

            JSONArray records = (JSONArray) jsonFile; // получаем список всех элементов JSON файла

            JSONObject jsonInput = (JSONObject) jsonParser.parse(input);
            records.add(jsonInput);  // добавляем новую запись в массив

            file.write(records.toJSONString()); // пишем массив в файл
        } catch (ParseException | IOException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}