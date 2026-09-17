# 1. 테라폼 실행 환경 설정 블록
terraform {
  required_providers {
    aws = {
      # 프로바이터 라이브러리 다운로드 경로
      source = "hashicorp/aws"
      # 사용할 버전 정의
      version = "~> 6.0" # 6.0 ~ 7.0 (6.0 이상 7.0 미만의 최신 버전)
    }
  }
  backend "s3" {
    bucket         = "std09-terraform-state-bucket-0917"  # 테라폼 상태파일을 저장할 버킷 이름
    key            = "TerraformState/Lab/ex7-terraform-cicd/terraform.tfstate" # 버킷에서 테라폼 상태 파일 저장 경로
    region         = "ca-central-1"
    dynamodb_table = "std09-terraform-lock-table"   # 락온 상태를 저장할 DynamoDB table 이름
    encrypt        = true
  }

}


  

provider "aws" {
  region = "ca-central-1"
}

