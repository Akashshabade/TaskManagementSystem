Task Management System

A Salesforce project for managing tasks efficiently using Lightning Web Components (LWC), Apex, and Triggers.

Features

Task Dashboard: View all tasks with filtering options for priority and deadlines.

Automated Notifications: Email reminders for tasks nearing their deadlines.

Custom Task Object: Create, edit, and delete tasks seamlessly.

Installation

Prerequisites

Salesforce Developer Org

Salesforce CLI (SFDX)

Git

Steps

Clone this repository:

git clone https://github.com/Akashshabade/TaskManagementSystem.git

Authenticate with your Salesforce org using the Salesforce CLI:

sfdx force:auth:web:login

Deploy the project to your Salesforce org:

sfdx force:source:deploy -p force-app

Assign permissions to the custom object and components as needed.

Test the functionality by accessing the Task Dashboard component in the Lightning App Builder.

Usage

Navigate to the app where the Task Dashboard component is added.

Use the dashboard to:

Create and view tasks.

Apply filters based on priority and deadlines.

Receive notifications for task deadlines.

File Structure

TaskManagementSystem/
├── force-app/
│   ├── main/
│   │   ├── default/
│   │   │   ├── lwc/
│   │   │   │   ├── taskDashboard/
│   │   │   │   │   ├── taskDashboard.html
│   │   │   │   │   ├── taskDashboard.js
│   │   │   │   │   ├── taskDashboard.js-meta.xml
│   │   │   ├── triggers/
│   │   │   │   ├── TaskNotification.trigger
│   │   │   ├── classes/
│   │   │   │   ├── TaskController.cls
│   │   │   │   ├── TaskController.cls-meta.xml
│   │   │   ├── objects/
│   │   │   │   ├── Task__c.object
├── README.md
├── .gitignore

Contributors

Akash Shabade

License

This project is licensed under the MIT License. See LICENSE for details.
