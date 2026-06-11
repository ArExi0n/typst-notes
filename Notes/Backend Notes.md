---
date: 2025-04-01
updated: 2025-04-01
class: note
tags:
  - rust
  - backend
  - axum
source:
related:
  - "[[Rust]]"
description: "Axum web framework and backend development notes in Rust"
aliases:
  - Backend Notes
course: backend
status: evergreen
---
	
# Axum & Backend Development Notes

[[Rust]] [[Nvim KeyBinds]] [[Solana - Blockchains and Bitcoin]] [[App testing .000001 Beta]] [[Drawing 2025-04-26 17.40.57.excalidraw]]

---
# What is Axum?

**Axum** is a modern, ergonomic web framework for Rust built on top of:

- **Tokio** (async runtime)
    
- **Tower** (middleware ecosystem)
    
- **Hyper** (HTTP implementation)
    

Created by the Tokio team as a more ergonomic alternative to other Rust web frameworks.

---

# Core Backend Concepts

## 1. HTTP Methods & REST API

```rust
// GET - Retrieve data
app.route("/users", get(get_users))

// POST - Create new resource
app.route("/users", post(create_user))

// PUT - Update entire resource
app.route("/users/:id", put(update_user))

// PATCH - Partial update
app.route("/users/:id", patch(partial_update_user))

// DELETE - Remove resource
app.route("/users/:id", delete(delete_user))
```

---

## 2. Request / Response Cycle

- **Request** → Client sends HTTP request with headers, body, params
    
- **Routing** → Server matches URL pattern to handler function
    
- **Processing** → Handler executes business logic
    
- **Response** → Server sends back HTTP response with status code, headers, body
    

---

## 3. Database Operations (CRUD)

- **Create** → Insert new records
    
- **Read** → Query/fetch data
    
- **Update** → Modify existing records
    
- **Delete** → Remove records
    

(Database operations are usually handled using libraries such as SQLx or Diesel. Axum itself focuses on HTTP routing and request handling, while Tokio manages asynchronous and multi-threaded execution. This allows applications to efficiently fetch, modify, and manage database records without blocking the server.)

---

## 4. Authentication & Authorization

- **Authentication** → Who are you? (login, JWT tokens)
    
- **Authorization** → What can you do? (permissions, roles)
    
- **Session Management** → Maintaining user state
    

---

## 5. Middleware

Functions that run before/after request handlers.

Common uses:

- Logging
    
- CORS
    
- Authentication
    
- Rate limiting
    

---

# Axum Syntax & Core Concepts

## Basic Server Setup

```rust
use axum::{
    routing::{get, post},
    http::StatusCode,
    Json, Router,
};
use tokio;

#[tokio::main]
async fn main() {
    let app = Router::new()
        .route("/", get(root))
        .route("/users", post(create_user));

    let listener = tokio::net::TcpListener::bind("0.0.0.0:3000")
        .await
        .unwrap();

    axum::serve(listener, app).await.unwrap();
}
```

---

## Handler Functions

```rust
// Simple handler
async fn root() -> &'static str {
    "Hello, World!"
}

// JSON response
async fn get_user() -> Json<User> {
    Json(User {
        id: 1,
        name: "John".to_string()
    })
}

// With status code
async fn create_user() -> (StatusCode, Json<User>) {
    (StatusCode::CREATED, Json(user))
}
```

---

## Extractors (Getting Data from Requests)

```rust
use axum::{
    extract::{Path, Query, Json, State},
    http::HeaderMap,
};

// Path parameters
async fn get_user_by_id(Path(user_id): Path<u32>) -> String {
    format!("User ID: {}", user_id)
}

// Query parameters
#[derive(Deserialize)]
struct Pagination {
    page: Option<u32>,
    limit: Option<u32>,
}

async fn list_users(Query(pagination): Query<Pagination>) -> String {
    format!(
        "Page: {:?}, Limit: {:?}",
        pagination.page,
        pagination.limit
    )
}

// JSON body
async fn create_user(Json(payload): Json<CreateUser>) -> Json<User> {
    Json(created_user)
}

// Headers
async fn with_headers(headers: HeaderMap) -> String {
    format!("Headers: {:?}", headers)
}

// Application state
async fn with_state(State(db): State<DatabasePool>) -> String {
    "Data from DB".to_string()
}
```

---

## State Management

```rust
#[derive(Clone)]
struct AppState {
    db: DatabasePool,
    redis: RedisPool,
}

#[tokio::main]
async fn main() {
    let state = AppState {
        db: create_db_pool().await,
        redis: create_redis_pool().await,
    };

    let app = Router::new()
        .route("/users", get(list_users))
        .with_state(state);
}
```

---

## Middleware

```rust
use tower::ServiceBuilder;
use tower_http::{
    cors::CorsLayer,
    trace::TraceLayer,
};

let app = Router::new()
    .route("/api/users", get(list_users))
    .layer(
        ServiceBuilder::new()
            .layer(TraceLayer::new_for_http())
            .layer(CorsLayer::permissive())
    );
```

---

## Error Handling

```rust
use axum::{
    http::StatusCode,
    response::{IntoResponse, Response},
    Json,
};

// Custom error type
#[derive(Debug)]
enum AppError {
    DatabaseError(sqlx::Error),
    NotFound,
    Unauthorized,
}

impl IntoResponse for AppError {
    fn into_response(self) -> Response {
        let (status, error_message) = match self {
            AppError::DatabaseError(_) => {
                (StatusCode::INTERNAL_SERVER_ERROR, "Database error")
            }
            AppError::NotFound => {
                (StatusCode::NOT_FOUND, "Not found")
            }
            AppError::Unauthorized => {
                (StatusCode::UNAUTHORIZED, "Unauthorized")
            }
        };

        (
            status,
            Json(serde_json::json!({
                "error": error_message
            }))
        ).into_response()
    }
}

// Handler with error handling
async fn get_user(
    Path(id): Path<u32>
) -> Result<Json<User>, AppError> {

    let user = database::find_user(id)
        .await
        .map_err(AppError::DatabaseError)?
        .ok_or(AppError::NotFound)?;

    Ok(Json(user))
}
```

---

# Common Backend Patterns in Projects

## 1. Repository Pattern

```rust
#[async_trait]
trait UserRepository {
    async fn find_by_id(
        &self,
        id: u32
    ) -> Result<Option<User>, Error>;

    async fn create(
        &self,
        user: CreateUser
    ) -> Result<User, Error>;

    async fn update(
        &self,
        id: u32,
        user: UpdateUser
    ) -> Result<User, Error>;

    async fn delete(
        &self,
        id: u32
    ) -> Result<(), Error>;
}
```

---

## 2. Service Layer

```rust
struct UserService {
    repo: Arc<dyn UserRepository>,
    email_service: Arc<EmailService>,
}

impl UserService {
    async fn create_user(
        &self,
        data: CreateUser
    ) -> Result<User, ServiceError> {

        // Validation
        self.validate_user_data(&data)?;

        // Business logic
        let user = self.repo.create(data).await?;

        // Side effects
        self.email_service
            .send_welcome_email(&user)
            .await?;

        Ok(user)
    }
}
```

---

## 3. Database Integration (SQLx)

```rust
use sqlx::{PgPool, FromRow};

#[derive(FromRow, Serialize)]
struct User {
    id: i32,
    email: String,
    name: String,
    created_at: chrono::DateTime<chrono::Utc>,
}

async fn create_user(
    State(pool): State<PgPool>,
    Json(payload): Json<CreateUser>,
) -> Result<Json<User>, AppError> {

    let user = sqlx::query_as!(
        User,
        "INSERT INTO users (email, name)
         VALUES ($1, $2)
         RETURNING *",
        payload.email,
        payload.name
    )
    .fetch_one(&pool)
    .await?;

    Ok(Json(user))
}
```

---

## 4. Authentication with JWT

```rust
use jsonwebtoken::{
    encode,
    decode,
    Header,
    Validation,
    EncodingKey,
    DecodingKey
};

#[derive(Serialize, Deserialize)]
struct Claims {
    sub: String,
    exp: usize,
}

async fn login(
    State(state): State<AppState>,
    Json(payload): Json<LoginRequest>,
) -> Result<Json<LoginResponse>, AppError> {

    // Verify credentials
    let user = verify_credentials(
        &state.db,
        &payload
    ).await?;

    // Create JWT token
    let claims = Claims {
        sub: user.id.to_string(),
        exp: (
            Utc::now() + Duration::hours(24)
        ).timestamp() as usize,
    };

    let token = encode(
        &Header::default(),
        &claims,
        &EncodingKey::from_secret(
            "secret".as_ref()
        )
    )?;

    Ok(Json(LoginResponse {
        token,
        user
    }))
}
```

---

## 5. Validation

```rust
use validator::{Validate, ValidationError};

#[derive(Deserialize, Validate)]
struct CreateUser {

    #[validate(email)]
    email: String,

    #[validate(length(min = 2, max = 50))]
    name: String,

    #[validate(length(min = 8))]
    password: String,
}

async fn create_user(
    Json(payload): Json<CreateUser>,
) -> Result<Json<User>, AppError> {

    payload.validate()?;

    // Continue with creation...
}
```

---

# Axum vs Actix Web

## Axum Advantages

### 1. Ergonomics & Type Safety

- Better extractors
    
- Type-safe routing
    
- Less boilerplate
    

### 2. Ecosystem Integration

- Tower middleware ecosystem
    
- Tokio-native
    
- Future-proof
    

### 3. Learning Curve

- Easier concepts
    
- Better compiler errors
    
- Modern design philosophy
    

---

## Example Comparison

```rust
// Axum
async fn get_user(
    Path(id): Path<u32>
) -> Json<User> {
    Json(find_user(id).await)
}

// Actix
async fn get_user(
    path: web::Path<(u32,)>
) -> impl Responder {

    let user = find_user(path.0).await;

    web::Json(user)
}
```

---

## Actix Advantages

### 1. Performance

- Slightly faster
    
- Lower memory usage
    

### 2. Maturity

- Battle-tested
    
- Larger ecosystem
    
- Stable API
    

### 3. Features

- More built-in features
    
- Better WebSocket support
    
- Better static file handling
    

---

# When to Choose What

## Choose Axum if:

- Building new projects
    
- Want modern ergonomic API
    
- Prefer type safety
    
- Using Tokio ecosystem
    
- Learning Rust backend development
    

## Choose Actix if:

- Need maximum performance
    
- Working with existing Actix projects
    
- Need specific Actix features
    
- Want mature ecosystem stability
    

---

# Project Structure Best Practices

```txt
src/
├── main.rs
├── config/
│   └── mod.rs
├── handlers/
│   ├── mod.rs
│   ├── users.rs
│   └── auth.rs
├── services/
│   ├── mod.rs
│   ├── user_service.rs
│   └── auth_service.rs
├── repositories/
│   ├── mod.rs
│   └── user_repo.rs
├── models/
│   ├── mod.rs
│   ├── user.rs
│   └── auth.rs
├── middleware/
│   ├── mod.rs
│   └── auth.rs
└── utils/
    ├── mod.rs
    └── validation.rs
```

---

# Common Dependencies for Rust Backend

```toml
[dependencies]

# Web framework
axum = "0.7"
tokio = { version = "1.0", features = ["full"] }

# Database
sqlx = {
    version = "0.7",
    features = [
        "runtime-tokio-rustls",
        "postgres",
        "chrono",
        "uuid"
    ]
}

# Serialization
serde = {
    version = "1.0",
    features = ["derive"]
}

serde_json = "1.0"

# HTTP client
reqwest = {
    version = "0.11",
    features = ["json"]
}

# Authentication
jsonwebtoken = "9.0"
bcrypt = "0.15"

# Validation
validator = {
    version = "0.16",
    features = ["derive"]
}

# Environment variables
dotenvy = "0.15"

# Logging
tracing = "0.1"
tracing-subscriber = "0.3"

# Error handling
anyhow = "1.0"
thiserror = "1.0"

# Time handling
chrono = {
    version = "0.4",
    features = ["serde"]
}
```

---

# CoinMarketCap API Integration Notes

## Architecture Decisions

### 1. Hardcoded Symbol Mapping

Uses a static array `SUPPORTED_SYMBOLS` containing the most popular cryptocurrencies with their CoinMarketCap IDs.

Benefits:

- Avoids extra API calls
    
- Faster lookups
    
- Cleaner implementation
    

---

### 2. Centralized Error Handling

All CoinMarketCap-specific errors are handled through:

```rust
handle_cmc_error()
```

This maps CMC errors into custom `ApiError` types.

---

### 3. Async / Await Pattern

All functions are async to efficiently handle HTTP requests without blocking execution.

---

### 4. Type Safety

Uses:

- `PricePoint`
    
- `ApiResult<T>`
    

for consistent data handling and error management.

---

# Phase 1 (MVP)

## Fetch Latest Prices

```rust
pub async fn fetch_latest_prices(
    api_key: &str
) -> ApiResult<HashMap<String, PricePoint>>
```

Fetches prices for all supported cryptocurrencies.

---

## Build Quotes URL

```rust
fn build_quotes_url(
    coin_ids: &[String],
    currency: &str
) -> String
```

Constructs the CoinMarketCap API request URL.

---

## Symbol Lookup

```rust
fn get_cmc_id_by_symbol(
    symbol: &str
) -> Option<u32>
```

Fast O(1) lookup for symbol-to-ID conversion.

---

# Phase 2 (Extended)

## Fetch Single Price

```rust
pub async fn fetch_single_price(
    api_key: &str,
    symbol: &str
) -> ApiResult<PricePoint>
```

Fetches one cryptocurrency price.

---

## Validate API Key

```rust
pub async fn validate_api_key(
    api_key: &str
) -> ApiResult<bool>
```

Checks whether the API key is valid.

---

## Symbol Validation

```rust
pub fn is_supported_symbol(
    symbol: &str
) -> bool
```

Checks whether the symbol exists in the supported list.

---

# Phase 3 (Polish)

## Fetch Custom Symbol Lists

```rust
pub async fn fetch_prices_by_symbols(
    api_key: &str,
    symbols: &[String]
) -> ApiResult<HashMap<String, PricePoint>>
```

Fetches prices only for selected cryptocurrencies.

---

## Internal Fetch Function

```rust
async fn fetch_prices_by_ids(
    api_key: &str,
    coin_ids: &[String]
) -> ApiResult<HashMap<String, PricePoint>>
```

Handles:

- HTTP requests
    
- Response parsing
    
- Error handling
    
- Data transformation
    

---

# Key Features

1. Rate limit awareness
    
2. Custom error mapping
    
3. Data validation
    
4. Efficient symbol lookup
    
5. Bulk + single asset support
    

---

# Example Usage

```rust
// Get all supported prices
let prices =
    fetch_latest_prices(&api_key).await?;

// Get BTC price
let btc_price =
    fetch_single_price(
        &api_key,
        "BTC"
    ).await?;

// Custom symbols
let custom_prices =
    fetch_prices_by_symbols(
        &api_key,
        &["BTC", "ETH", "SOL"]
    ).await?;

// Validate API key
let is_valid =
    validate_api_key(&api_key).await?;
```

---

The implementation is production-ready, async-friendly, and follows modern Rust backend best practices for performance, safety, and scalability.