package jarvis;

import java.io.FileWriter;

public class MemoryManager {

    private static final String FILE = "memory.json";

    public static void save(String input,String reply) {

        try {

            FileWriter writer = new FileWriter(FILE,true);

            writer.write(input + " -> " + reply + "\n");

            writer.close();

        } catch(Exception e) {

            e.printStackTrace();

        }

    }

}
