package task2;


import static org.testng.Assert.assertEquals;
import org.testng.annotations.*;

import task2.annotation.Priority;
import task2.annotation.TestMethodInfo;
//import task2.listener.ListenerTest;		


//@Listeners(ListenerTest.class)
class Task2Test {

	@Test
	@TestMethodInfo(priority = Priority.Critical, author = "Test user", lastModified = "20.08.2019")
	public void annotation() {
	   assertEquals(1, 1);
	}
	
}