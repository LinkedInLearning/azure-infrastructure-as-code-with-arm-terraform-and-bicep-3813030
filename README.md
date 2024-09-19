# Azure Infrastructure as Code with ARM, Terraform, and Bicep
This is the repository for the LinkedIn Learning course `Azure Infrastructure as Code with ARM, Terraform, and Bicep`. The full course is available from [LinkedIn Learning][lil-course-url].

![lil-thumbnail-url]

## Course Description

Looking to learn more about the power of infrastructure as code (IaC)? Join instructor Mike Benkovich as he provides an in-depth exploration of managing Microsoft Azure infrastructure using IaC tools. This course covers the core concepts and skills required to leverage tools such as Azure CLI, ARM, and Bicep, as well as third-party options like Terraform and Pulumi. Test out your newly acquired skills along the way with hands-on demonstrations and practical exercises in GitHub. This course is designed for anyone who already has a basic understanding of cloud concepts in Azure but is still new or relatively inexperienced with IaC in an Azure environment. By the end of this course, you’ll also have a better understanding of the impact of AI on IaC tooling with real-world examples drawn from ChatGPT and Copilot.

_See the readme file in the main branch for updated instructions and information._
## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Instructor

Mike Benkovich

Former Microsoft Evangelist, Current Software Architect

                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/mike-benkovich?u=104).

[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/azure-infrastructure-as-code-with-arm-bicep-terraform-and-pulumi/
[lil-thumbnail-url]: https://media.licdn.com/dms/image/v2/D4E0DAQEWO93Zo_ePtw/learning-public-crop_675_1200/learning-public-crop_675_1200/0/1725492062709?e=2147483647&v=beta&t=iIUAPllMmZyvWODWAlGJhiQyM1EDVpssTUElZjaFvwI

