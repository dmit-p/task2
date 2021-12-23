package task2.listener;

import java.lang.reflect.Method;

import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestNGMethod;
import org.testng.ITestResult;
import task2.annotation.TestMethodInfo;

public class ListenerTest implements ITestListener{

	@Override
	public void onTestStart(ITestResult result) {
		ITestNGMethod method = result.getMethod();
		TestMethodInfo annotation = result.getMethod().getConstructorOrMethod().getMethod().getAnnotation(TestMethodInfo.class);
		if (annotation != null)
		{
			System.out.println("");
			System.out.println("*******************************************************************");
			System.out.println("* priority: "+ annotation.priority()+"; author: "+ annotation.author()+ "; lastModified: " + annotation.lastModified()+" *");
			System.out.println("*******************************************************************");
		}

	}

	@Override
	public void onTestSuccess(ITestResult result) {
	}

	@Override
	public void onTestFailure(ITestResult result) {
	}

	@Override
	public void onTestSkipped(ITestResult result) {
	}

	@Override
	public void onTestFailedButWithinSuccessPercentage(ITestResult result) {
	}

	@Override
	public void onTestFailedWithTimeout(ITestResult result) {
	}

	@Override
	public void onStart(ITestContext context) {
	}

	@Override
	public void onFinish(ITestContext context) {
	}

}

