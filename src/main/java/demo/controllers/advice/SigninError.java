package demo.controllers.advice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import demo.dao.exceptions.UserNotFoundException;

@ControllerAdvice
public class SigninError {

  private static Logger logger = LoggerFactory.getLogger(SigninError.class);

  // Surfaces from the UserNotFoundException
  @ExceptionHandler(UserNotFoundException.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  public String exception(final Throwable throwable, final Model model) {
    logger.error("Exception during Sign in", throwable);
    String errorMessage = (throwable != null ? throwable.getMessage() : "Unknown error");
    model.addAttribute("loginError", errorMessage);
    return "login";
  }
}
