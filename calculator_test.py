"""
Unit tests for the calculator library
"""

import calculator


class TestCalculator:
    def test_add(self):
        ans = calculator.add(2, 2)
        assert ans == 4

    def test_subtract(self):
        ans = calculator.minus(4, 2)
        assert ans == 2

    def test_multiply(self):
        ans = calculator.multiply(3, 2)
        assert ans == 6
