package Store;
import com.intuit.karate.junit5.Karate;


class Runner {

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:./")
                .tags("MetodoPost")
                .karateEnv("e2e");
    }
}
