# 🧭 CoolTour

*A Spring Boot web app that helps you explore the cultural‑heritage sites of the Republic of Macedonia.*

&#x20; &#x20;

---

## ✨ Key features

| Feature | Implementation reference |
|---------|--------------------------|
| 🔍 **Search & filter** – find monuments by *name* or *category* (castle, church, battlefield, …) | `ObjectController` & `ObjectService` |
| 🗺️ **Rich object catalogue** – 380 + heritage objects (lat/long, Wikidata IDs, etc.) already seeded | SQL dump `dump/cool_tour_dump.sql` |
| 🎨 **Dynamic UI** – background image swaps to match selected category, plus small JS animations | `/static/script.js` & `/templates/home.html` |
| 👤 **User accounts** – simple registration/login and personal “saved objects” list | `User`, `LoginController`, `RegisterController` |
| ⚡ **Fast & lightweight** – built with Java 21, Spring Boot 3, Hibernate 6, Thymeleaf, and vanilla JS | `pom.xml` |
| ☸️ **Runs anywhere** – Dockerfile, docker‑compose and Kubernetes manifests provided | `Dockerfile` |


---

## 🏗️ Architecture

```
Spring Boot MVC ──> Thymeleaf views  ←──────── JS/CSS/Images
        │
        ├── JPA/Hibernate → PostgreSQL (or H2 for dev)
        │
        └── MVC controllers (server‑side rendered views)
```

- **Domain model:** `Object` (heritage site) and `User`, linked with a *many‑to‑many* helper table.
- **Layers:** Controller → Service → Repository pattern for clean separation.
- **Data:** Pre‑loaded via `dump/cool_tour_dump.sql`; dev profile falls back to an in‑memory H2 DB.
- **Frontend:** Vanilla JS + CSS served from `/static`; no heavy frameworks.

---

## 🚀 Quick start

### 1. Prerequisites

- **Java 21+** and **Maven 3.9+** *(or just Docker)*
- **PostgreSQL 15+** (optional—H2 works out of the box)

### 2. Clone & run (local JVM)

```bash
git clone https://github.com/vladislavangelovski/CoolTour.git
cd CoolTour
# edit src/main/resources/application.properties if you want a local Postgres DB
./mvnw spring-boot:run
```

Visit [**http://localhost:8080/home**](http://localhost:8080/home).

### 3. Run with Docker

```bash
docker build -t cooltour .
docker run -p 8080:8080 cooltour
```

Or spin up the whole stack (app + Postgres) via **docker‑compose**:

```bash
docker compose up -d
```

### 4. Run on Kubernetes (k3d / k3s / kind)

```bash
kubectl apply -f kubernetes/
```

The manifests include a `Deployment`, `Service`, and PostgreSQL setup.

---

## 🗄️ Database seeding options

| Environment             | How to seed                                                                                                             |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| **Docker / Kubernetes** | The container entrypoint checks if the `object` table is empty; if so it pipes `dump/cool_tour_dump.sql` into Postgres. |
| **Local dev**           | Import `dump/cool_tour_dump.sql` manually or switch to the `application-h2.properties` profile for an embedded DB.      |

---

## 🛠️ Development scripts

| Task | Command |
|------|---------|
| Re‑generate Docker image | `docker build -t cooltour .` |
| Live reload | `./mvnw spring-boot:run` (devtools on class‑path) |

---

## 👥 Authors / Project team

- Vladislav Angelovski
- Kiril Gerasimovski
- Evgenij Anushev
- Ilija Trajkovski
- Simon Ilikj

---

## 🤝 Contributing

1. **Fork** the repo & create a feature branch.
2. Submit a PR describing your change.

---

