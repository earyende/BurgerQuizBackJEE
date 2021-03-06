package com.example.demo;
import static org.springframework.boot.test.context.SpringBootTest.WebEnvironment.DEFINED_PORT;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

import java.util.List;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.WebApplicationContext;

import com.example.demo.entity.Answer;
import com.example.demo.repository.AnswerRepository;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = DemoApplication.class, webEnvironment = DEFINED_PORT)
public abstract class AbstractPackagerViewTest {


//    public static final int MAX_ELEMENT = 200;

    protected MockMvc mockMvc;


    @Autowired
    protected RestTemplate restTemplate;

    @Autowired
    protected WebApplicationContext webApplicationContext;

    @Autowired
    protected AnswerRepository answerRepository;

    protected List<Answer> list;

    protected Answer doublon;

    protected String baseUrl;

    @LocalServerPort
    int serverPort;

    @Before
    public void setup() {
        this.mockMvc = webAppContextSetup(webApplicationContext).build();
        this.baseUrl = "http://localhost:" + this.serverPort;
    }

}