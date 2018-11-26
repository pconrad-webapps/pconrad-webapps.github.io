---
topic: "Spring Boot: Controllers"
desc: "The component where you map routes to the model and view"
category_prefix: "Spring Boot: "
indent: true
---

In Spring, a controller class starts with the annotation `@Controller` right before the start of the class, like this:

```
@Controller
public class UserInterfaceApplication {
```

The import that defines `@Controller` is:

```
import org.springframework.stereotype.Controller;
```

Inside, you'll see methods such as this one for using Mustache templates:

```
@RequestMapping("/index.html")
    public String index(final Map<String, Object> map) throws HttpAction {
        map.put("fname", "Phill");
        map.put("lname", "Conrad");
        return "index";
    }
```

Or this one for using Freemarker templates:

...

