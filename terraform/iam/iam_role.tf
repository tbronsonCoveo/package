data "aws_iam_policy_document" "tbronson_pentest_assume_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"

      identifiers = [
        "lambda.amazonaws.com",
      ]
    }
  }
}

resource "aws_iam_role" "tbronson_pentest" {
  name               = "tbronson-pentest-lambda-role"
  assume_role_policy = data.aws_iam_policy_document.tbronson_pentest_assume_role_policy.json
}
