---
reviewed_on: "2025-03-29"
---

# Gemelos GMS

The "Gemelos GMS" is a Gym Management System developed by FITCODE to automate and streamline administrative processes for Gemelos GYM. It centralizes user registration, payment tracking, attendance monitoring, inventory management, and client physical evaluations into an intuitive platform. The system enhances operational efficiency, reduces manual errors, and improves client engagement through real-time data access, automated reminders, and a user-friendly interface for staff and trainers.

## UHs

1. As **administrator**, I want to register gym employees (coaches, administrative staff, etc.) on the platform, capturing their personal data (name, email, phone, role) and a profile picture, so that they can access the system with unique credentials and perform their assigned functions

	1. Create the Employee model in the database.

		- `id`: unique identifier.

		- `name`: string, required.

		- `email`: string, unique, required.

		- `phone`: string, validated format.

		- `role`: trainer, admin, staff, etc (enum).

		- `profile_photo`: URL or file path to stored image.

	2. API endpoints.

		- POST `/api/empoyess`.

		- GET `/api/employess`.

		- GET `/api/employess/{id}`.

		- PUT/PATH `/api/employess/{id}`.

		- DELETE `/api/employess/{id}`.

	3. Data validation:

		- Email format: use regex to validate email structure.

		- Phone validation: ensure phone numbers follow country-specific formats.

		- Role validation: restrict role to predefined values (e.g., trainer, admin).

	4. Image upload and processing.

		- Photo upload: accept image formats (JPEG, PNG) with size limits (e.g., max 5MB).

		- Image optimization: resize images to standard dimensions (e.g., 200x200px). Generate thumbnails for faster loading.

2. As **administrator**, I want to update the personal information (name, email, phone number) and profile picture of the users registered in the system, **to** ensure that their data is always up to date.

	1. Create the User model in the database.

		- `id`: unique identifier.

		- `name`: string, required.

		- `email`: string, unique, required.

		- `phone`: string, validated format.

		- `profile_photo`: URL or file path to stored image.

		- `membership_status`: active or inactive.

	2. API endpoints.

		- GET `/api/users/{id}`.

		- PUT/PATH `/api/users/{id}`.

3. As **administrator**, I want to archive (set their membership status to inactive) profiles of users who have not renewed membership, **to** keep the database up to date.

	- API endpoints.

		- PATH `/api/users/{id}`.

4. As an **administrator**, I want to display a table with all registered users including key details (name, phone, email and membership status), with filtering, searching and sorting options, **to** manually identify and correct errors or complete missing information in the profiles.

	- API endpoints.

		- GET `/api/users` with query parameters.

5. As a **receptionist**, I want to register new gym users by entering their basic data (name, phone, email and date of registration) in the system, **to** enable the registration process at the counter.

	- API endpoints.

		- POST `/api/users`.

6. As **receptionist**, I want to update the personal information (name, email, phone number) and profile picture of the users registered in the system, **to** ensure that their data is always up to date.

	- API endpoints.

		- PUT/PATH `/api/users/{id}`.

7. As a **receptionist**, I want to register the entrance of gym users by their ID number, with automatic validation of active membership, **to** keep an accurate control of access.

	- API endpoints.

		- POST `/api/track_entrance/{user_id}`.

8. As a **receptionist**, I want the system **to** automatically notify me if a user's monthly membership is overdue or show the remaining days of validity, to ensure that only users with active memberships enter the gym and improve communication with customers.

	- API endpoints.

		- GET `/api/users/{id}`.

9. As an **administrator**, I want to visualize a revenue record of people attending the gym, **to** monitor daily attendance and make strategic decisions based on it.

	- API endpoints.

		- GET `/api/track_entrance/{user_id}`.

10. As a **receptionist**, I want to record user membership payments (cash, card or transfer) in the system, without processing actual transactions, **to** keep an informative record of payments.

	- API endpoints.

		- POST `/api/track_payments/{user_id}`.

11. As an **administrator**, I want to check the payment history of each user **to** verify their account status and keep track of the gym's revenue.

	- API endpoints.

		- GET `/api/track_payments/` with query parameters.
