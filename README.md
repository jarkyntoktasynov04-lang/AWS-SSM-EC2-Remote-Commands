
# AWS Systems Manager: Remote Commands on EC2

## 1. Project Overview

This project demonstrates how to execute remote commands on an
Amazon EC2 Linux instance using AWS Systems Manager Run Command.

The project uses the AWS-RunShellScript document to run diagnostic
commands without requiring a direct SSH connection.

## 2. Objectives

- Understand AWS Systems Manager.
- Configure an EC2 instance for Systems Manager.
- Execute remote Linux commands using Run Command.
- Inspect command output and execution status.
- Document the results of the practical work.

## 3. Architecture

User
  |
  v
AWS Management Console
  |
  v
Systems Manager Run Command
  |
  v
SSM Agent on EC2
  |
  v
Linux command execution and output

## 4. Requirements

- An AWS account
- An Amazon EC2 Linux instance
- An IAM role with AmazonSSMManagedInstanceCore
- SSM Agent installed and running
- Network connectivity to Systems Manager endpoints

## 5. Setup

1. Launch an Amazon Linux EC2 instance.
2. Create or select an EC2 IAM role.
3. Attach the AmazonSSMManagedInstanceCore policy.
4. Attach the role to the EC2 instance.
5. Open AWS Systems Manager.
6. Select Fleet Manager and verify that the instance is Online.

## 6. Execute Remote Commands

1. Open Systems Manager.
2. Select Run Command.
3. Click Run command.
4. Select AWS-RunShellScript.
5. Select the managed EC2 instance.
6. Enter the commands from scripts/check_instance.sh.
7. Click Run and inspect the output.

## 7. Expected Results

The command output should display:
- Hostname
- Current date and time
- Operating system information
- Disk usage
- Memory information

## 8. Security

- Use IAM roles instead of storing AWS credentials on the instance.
- Grant only the permissions required for the task.
- Restrict access to Run Command.
- Do not commit access keys, passwords, or private keys to GitHub.

## 9. Conclusion

This project demonstrates remote command execution on an EC2
instance using AWS Systems Manager Run Command without requiring
a direct SSH connection.
r
