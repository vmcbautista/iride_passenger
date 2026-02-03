# AGENTS.md

This document defines the architectural rules, coding standards, and expectations
for any human or AI agent contributing to this Flutter ride-hailing project.

All agents MUST follow the rules below unless explicitly instructed otherwise.

---

## 🏗 Architecture Overview

This project follows **Clean Architecture** with **Riverpod** for state management.

The app is a **real-time, location-driven system** (ride-hailing) for the passenger side, so correctness,
performance, and lifecycle safety are prioritized over shortcuts.

### Dependency Rule (STRICT)

Dependencies must flow in one direction only:

UI (Presentation)
→ Application (Controllers / Notifiers)
→ Domain (Entities / Use Cases)
→ Data (Repositories / Datasources)

**Domain MUST NOT depend on Flutter, Riverpod, or platform APIs.**

---

## 🚖 Ride-Hailing Domain Concepts

Core concepts in this project include (but are not limited to):

- Rider
- Driver
- Booking / Trip
- Route / Polyline
- Realtime Driver Location Tracking
- ETA / Distance

Agents must model these as **Domain Entities**, not UI models.

---

## 📁 Project Structure

Feature-first, vertically sliced structure:

```txt
lib/
├── core/
│   ├── error/
│   ├── network/
│   ├── location/
│   ├── background/
│   ├── usecase/
│   ├── utils/
│   └── providers/
│
├── features/
│
├── app.dart
└── main.dart
