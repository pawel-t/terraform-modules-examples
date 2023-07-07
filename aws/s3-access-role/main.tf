resource "aws_iam_policy" "bucket-access" {
  name = "${var.bucket_name}-access-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid      = "ListObjectsInBuckets",
        Effect   = "Allow",
        Action   = ["s3:ListBucket"],
        Resource = ["arn:aws:s3:::${var.bucket_name}"],
      },
      {
        "Sid" : "AllObjectActions",
        "Effect" : "Allow",
        "Action" : [
          "s3:*Object*",
          "s3:ListBucketVersions",

        ]
        "Resource" : ["arn:aws:s3:::${var.bucket_name}/*"],
      }
    ]
  })
}

resource "aws_iam_role" "bucket-access" {
  name = "${var.bucket_name}-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
  
}

resource "aws_iam_role_policy_attachment" "bucket-access" {
  role       = aws_iam_role.bucket-access.name
  policy_arn = aws_iam_policy.bucket-access.arn
}