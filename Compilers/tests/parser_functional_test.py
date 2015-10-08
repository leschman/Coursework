from compiler import main
import mock
import sys
from StringIO import StringIO
from unittest import TestCase


TESTCASE_PATH = "testcases/"
OUTPUT_SUFFIX = ".parse.out"
INPUT_SUFFIX = ".micro"

class ParserTest(TestCase):

	def setup(self):
		""" setup stub."""
		pass


	def teardown(self):
		""" teardown stub."""
		pass


	def test1_parser_test(self):
		"""Parser test1. Test sample test1 program on parser."""
		output, expected = parser_helper("test1")
		self.assertEqual(output, expected)

	def test2_parser_test(self):
		"""Parser test2. Test sample test2 program on parser."""
		output, expected = parser_helper("test2")
		self.assertEqual(output, expected)

	def test3_parser_test(self):
		"""Parser test3. Test sample test3 program on parser."""
		output, expected = parser_helper("test3")
		self.assertEqual(output, expected)

	def test4_parser_test(self):
		"""Parser test4. Test sample test4 program on parser."""
		output, expected = parser_helper("test4")
		self.assertEqual(output, expected)

	def test5_parser_test(self):
		"""Parser test5. Test sample test5 program on parser."""
		output, expected = parser_helper("test5")
		self.assertEqual(output, expected)

	def test6_parser_test(self):
		"""Parser test6. Test sample test6 program on parser."""
		output, expected = parser_helper("test6")
		self.assertEqual(output, expected)

	def test7_parser_test(self):
		"""Parser test7. Test sample test7 program on parser."""
		output, expected = parser_helper("test7")
		self.assertEqual(output, expected)

	def test8_parser_test(self):
		"""Parser test8. Test sample test8 program on parser."""
		output, expected = parser_helper("test8")
		self.assertEqual(output, expected)

	def test9_parser_test(self):
		"""Parser test9. Test sample test9 program on parser."""
		output, expected = parser_helper("test9")
		self.assertEqual(output, expected)

	def test10_parser_test(self):
		"""Parser test10. Test sample test10 program on parser."""
		output, expected = parser_helper("test10")
		self.assertEqual(output, expected)

	def test11_parser_test(self):
		"""Parser test11. Test sample test11 program on parser."""
		output, expected = parser_helper("test11")
		self.assertEqual(output, expected)

	def test12_parser_test(self):
		"""Parser test12. Test sample test12 program on parser."""
		output, expected = parser_helper("test12")
		self.assertEqual(output, expected)

	def test13_parser_test(self):
		"""Parser test13. Test sample test13 program on parser."""
		output, expected = parser_helper("test13")
		self.assertEqual(output, expected)

	def test14_parser_test(self):
		"""Parser test14. Test sample test14 program on parser."""
		output, expected = parser_helper("test14")
		self.assertEqual(output, expected)

	def test15_parser_test(self):
		"""Parser test15. Test sample test15 program on parser."""
		output, expected = parser_helper("test15")
		self.assertEqual(output, expected)

	def test16_parser_test(self):
		"""Parser test16. Test sample test16 program on parser."""
		output, expected = parser_helper("test16")
		self.assertEqual(output, expected)

def parser_helper(name):
	"""
	helper to test parser on files. 
	takes test name (i.e. test1 ect)
	opens expected output fiel (i.e. testcases/test1.parse.out)
	calls compiler parser on test file.
	returns output and expected values (i.e. Accepted, Not Accepted).
	"""

	with open(TESTCASE_PATH + name + OUTPUT_SUFFIX, "r") as target:
		
		with mock.patch('sys.argv', ['self', TESTCASE_PATH + name + INPUT_SUFFIX]):
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
