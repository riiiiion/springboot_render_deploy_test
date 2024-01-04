package com.example.renderTest.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController


@RestController
class CategoryController {
    @GetMapping("/hello")
    fun hello(
    ): String {
        return "Hello World!!"
    }
}
