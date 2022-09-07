package tests;

import com.intuit.karate.junit5.Karate;

public class SampleTest {
    @Karate.Test
    Karate testSample(){
        return Karate.run("Get").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags(){
        return Karate.run("Post").tags("@second").relativeTo(getClass());
    }
}
