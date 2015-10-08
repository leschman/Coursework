from compiler import main
import mock
import sys
from StringIO import StringIO
from unittest import TestCase


TESTCASE_PATH = "testcases/"
OUTPUT_SUFFIX = ".token.out"
INPUT_SUFFIX = ".micro"

class TokenizerTest(TestCase):

	def setup(self):
		""" setup stub."""
		pass


	def teardown(self):
		""" teardown stub."""
		pass


	def fibonacci_tokenizer_test(self):
		"""Tokenizer fibonacci. Test sample fibonacci program on tokenizer."""
		output, expected = tokenizer_helper("fibonacci")
		self.assertEqual(output, expected)

	def loop_tokenizer_test(self):
		"""Tokenizer loop. Test sample loop program on tokenizer."""
		output, expected = tokenizer_helper("loop")
		self.assertEqual(output, expected)

	def sqrt_tokenizer_test(self):
		"""Tokenizer sqrt. Test sample sqrt program on tokenizer."""
		output, expected = tokenizer_helper("sqrt")
		self.assertEqual(output, expected)

	def test1_tokenizer_test(self):
		"""Tokenizer test1. Test sample test1 program on tokenizer."""
		output, expected = tokenizer_helper("test1")
		self.assertEqual(output, expected)

	def test2_tokenizer_test(self):
		"""Tokenizer test2. Test sample test2 program on tokenizer."""
		output, expected = tokenizer_helper("test2")
		self.assertEqual(output, expected)

	def test3_tokenizer_test(self):
		"""Tokenizer test3. Test sample test3 program on tokenizer."""
		output, expected = tokenizer_helper("test3")
		self.assertEqual(output, expected)

	def test4_tokenizer_test(self):
		"""Tokenizer test4. Test sample test4 program on tokenizer."""
		output, expected = tokenizer_helper("test4")
		self.assertEqual(output, expected)

	def test5_tokenizer_test(self):
		"""Tokenizer test5. Test sample test5 program on tokenizer."""
		output, expected = tokenizer_helper("test5")
		self.assertEqual(output, expected)

	def test6_tokenizer_test(self):
		"""Tokenizer test6. Test sample test6 program on tokenizer."""
		output, expected = tokenizer_helper("test6")
		self.assertEqual(output, expected)

	def test7_tokenizer_test(self):
		"""Tokenizer test7. Test sample test7 program on tokenizer."""
		output, expected = tokenizer_helper("test7")
		self.assertEqual(output, expected)

	def test8_tokenizer_test(self):
		"""Tokenizer test8. Test sample test8 program on tokenizer."""
		output, expected = tokenizer_helper("test8")
		self.assertEqual(output, expected)

	def test9_tokenizer_test(self):
		"""Tokenizer test9. Test sample test9 program on tokenizer."""
		output, expected = tokenizer_helper("test9")
		self.assertEqual(output, expected)

	def test10_tokenizer_test(self):
		"""Tokenizer test10. Test sample test10 program on tokenizer."""
		output, expected = tokenizer_helper("test10")
		self.assertEqual(output, expected)

	def test11_tokenizer_test(self):
		"""Tokenizer test11. Test sample test11 program on tokenizer."""
		output, expected = tokenizer_helper("test11")
		self.assertEqual(output, expected)

	def test12_tokenizer_test(self):
		"""Tokenizer test12. Test sample test12 program on tokenizer."""
		output, expected = tokenizer_helper("test12")
		self.assertEqual(output, expected)

	def test13_tokenizer_test(self):
		"""Tokenizer test13. Test sample test13 program on tokenizer."""
		output, expected = tokenizer_helper("test13")
		self.assertEqual(output, expected)

	def test14_tokenizer_test(self):
		"""Tokenizer test14. Test sample test14 program on tokenizer."""
		output, expected = tokenizer_helper("test14")
		self.assertEqual(output, expected)

	def test15_tokenizer_test(self):
		"""Tokenizer test15. Test sample test15 program on tokenizer."""
		output, expected = tokenizer_helper("test15")
		self.assertEqual(output, expected)

	def test16_tokenizer_test(self):
		"""Tokenizer test16. Test sample test16 program on tokenizer."""
		output, expected = tokenizer_helper("test16")
		self.assertEqual(output, expected)

def tokenizer_helper(name):
	"""
	helper to test tokenizer on files. 
	takes test name (i.e. test1 ect)
	opens expected output fiel (i.e. testcases/test1.token.out)
	calls compiler tokenizer on test file.
	returns output and expected values 
	"""

	with open(TESTCASE_PATH + name + OUTPUT_SUFFIX, "r") as target:
		
		with mock.patch('sys.argv', ['self','-t', TESTCASE_PATH + name + INPUT_SUFFIX]):
			stdout = sys.stdout = sys.stdout
			output = ""
			try:
				out = StringIO()
				sys.stdout = out
				main()
				output = out.getvalue()
			finally:
				sys.stdout = stdout
			return output, target.read()
