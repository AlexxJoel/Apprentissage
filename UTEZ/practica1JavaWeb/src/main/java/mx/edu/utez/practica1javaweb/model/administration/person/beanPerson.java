package mx.edu.utez.practica1javaweb.model.administration.person;

public class beanPerson {
    private int id;
    private String nombre;
    private String user;
    private String pass;

        public beanPerson(int id, String nombre, String user, String pass) {
            this.id = id;
            this.nombre = nombre;
            this.user = user;
            this.pass = pass;
        }

        public beanPerson(int id, String user, String pass) {
            this.id = id;
            this.user = user;
            this.pass = pass;
        }

        public beanPerson(String user, String pass) {
            this.user = user;
            this.pass = pass;
        }

    public beanPerson(String name, String user, String pass) {
        this.user = user;
        this.pass = pass;
        this.nombre = name;
    }
    public beanPerson() {

    }

        public void setId(int id) {
            this.id = id;
        }

        public void setNombre(String nombre) {
            this.nombre = nombre;
        }

        public void setUser(String user) {
            this.user = user;
        }

        public void setPass(String pass) {
            this.pass = pass;
        }




        public int getId() {
            return id;
        }

        public String getNombre() {
            return nombre;
        }

        public String getUser() {
            return user;
        }

        public String getPass() {
            return pass;
        }


    }

