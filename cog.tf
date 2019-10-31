#AWS Cognito User Pool
resource "aws_cognito_user_pool" "pool" {
  name = "WildRydes"
  auto_verified_attribute =
}
resource "aws_cognito_user_pool_client" "client" {
  name = "WildRydesWebApp"

    user_pool_id = "${aws_cognito_user_pool.pool.id}"
}
