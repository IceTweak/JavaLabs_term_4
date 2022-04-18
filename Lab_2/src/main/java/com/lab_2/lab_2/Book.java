package com.lab_2.lab_2;

public record Book(String name, String author, String date, int pages, String publisher) {
    @Override
    public String name() {
        return name;
    }

    @Override
    public String author() {
        return author;
    }

    @Override
    public String date() {
        return date;
    }

    @Override
    public int pages() {
        return pages;
    }

    @Override
    public String publisher() {
        return publisher;
    }
}
