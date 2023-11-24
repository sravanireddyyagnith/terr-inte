resource "aws_iam_user" "user1" {
  name = "user1"
}
resource "aws_iam_policy" "policy1" {
  name = "userpolicy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "1234567890",
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "user1-policy" {
  user = aws_iam_user.user1.name
  policy_arn = aws_iam_policy.policy1.arn
}