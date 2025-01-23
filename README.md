# README

# Festival Fun Backend

## Description
Festival Fun Backend is a Ruby on Rails application designed to manage and serve data for the Festival Fun frontend application. It provides RESTful APIs for handling festival-related information, including events, schedules, and attendee details.

---

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

---

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/James-Cochran/festival-fun.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd festival-fun
   ```
3. **Install dependencies:**
   Ensure you have [Bundler](https://bundler.io/) installed, then run:
   ```bash
   bundle install
   ```
4. **Set up the database:**
   Configure your database settings in `config/database.yml`, then run:
   ```bash
   rails db:{drop,create,migrate,seed}
   ```

---

## Usage

1. **Start the Rails server:**
   ```bash
   rails server
   ```
2. **Access the application:**
   Open your browser and navigate to `http://localhost:3000` to interact with the backend services.

---

## API Endpoints

### Users
- **GET /api/v1/users**
  - Description: Retrieves all users.
  - Response:
    ```json
    {
      "data": [
        {
          "id": "1",
          "attributes": {
            "first_name": "John",
            "last_name": "Doe",
            "email": "john.doe@example.com"
          }
        }
      ]
    }
    ```

### Schedules
- **GET /api/v1/schedules**
  - Description: Retrieves all schedules.
  - Response: 
    ```json
    {
      "data": [
        {
          "id": "1",
          "attributes": {
            "title": "John's Festival Schedule",
            "date": "2025-07-01"
          }
        }
      ]
    }
    ```

### Deleting a Show
- **DELETE /api/v1/schedules/:schedule_id/shows/:id**
  - Description: Removes a show from a schedule.
  - Response:
    ```json
    {
      "message": "Show successfully removed from the schedule"
    }
    ```
---

## Testing

To run the test suite, execute:
```bash
bundle exec rspec
```
---

## Test Coverage
This project achieved 100% test coverage, as reported by SimpleCov.
---

## Contributing

- James Cochran - https://github.com/James-Cochran


