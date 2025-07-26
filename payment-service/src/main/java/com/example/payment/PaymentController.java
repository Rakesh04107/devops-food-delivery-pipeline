package com.example.payment;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import java.util.Map;

@RestController
public class PaymentController {

    @GetMapping("/health")
    public String health() {
        return "Payment service is healthy";
    }

    @PostMapping("/pay")
    public ResponseEntity<?> pay(@RequestBody Map<String, String> payload) {
        return ResponseEntity.ok("Payment processed for amount " + payload.get("amount"));
    }
}
