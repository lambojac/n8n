# Intelligent Warehouse Inventory Orchestrator

## Overview

A full-stack automation system for warehouse inventory tracking using n8n, Supabase, and React.

---

## Features

* Inventory tracking (inbound/outbound)
* Real-time updates
* Error handling workflow
* Logging system
* Extendable for AI + RAG

---

## Setup

### 1. Database (Supabase)

* Run SQL from /database/schema.sql

---

### 2. n8n

* Import workflows from /workflows
* Start n8n:
  n8n start

---

### 3. Frontend

cd frontend
npm install
npm run dev

---

## API Endpoint

POST /webhook/inventory

Body:
{
"item_name": "Laptop",
"operation": "inbound",
"quantity": 5
}

---

## Notes

* Handles stock validation
* Logs every operation
* Returns error if insufficient stock

---

## Future Improvements

* AI Agent integration (MCP + RAG)
* Low stock alerts
* Analytics dashboard
