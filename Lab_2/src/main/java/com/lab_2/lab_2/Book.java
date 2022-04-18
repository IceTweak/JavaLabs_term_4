package com.lab_2.lab_2;


public class Book {

    private String bookName;
    private String author;
    private String pages;
    private String publishDate;
    private String publisher;

    public Book(String bookName, String author, String pages, String publishDate, String publisher) {
        this.bookName = bookName;
        this.author = author;
        this.pages = pages;
        this.publishDate = publishDate;
        this.publisher = publisher;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (!bookName.equals(book.bookName)) return false;
        if (!author.equals(book.author)) return false;
        if (!pages.equals(book.pages)) return false;
        if (!publishDate.equals(book.publishDate)) return false;
        return publisher.equals(book.publisher);
    }

    @Override
    public int hashCode() {
        int result = bookName.hashCode();
        result = 31 * result + author.hashCode();
        result = 31 * result + pages.hashCode();
        result = 31 * result + publishDate.hashCode();
        result = 31 * result + publisher.hashCode();
        return result;
    }


    public String bookName() {
        return bookName;
    }


    public String author() {
        return author;
    }


    public String date() {
        return publishDate;
    }


    public String pages() {
        return pages;
    }


    public String publisher() {
        return publisher;
    }

}
