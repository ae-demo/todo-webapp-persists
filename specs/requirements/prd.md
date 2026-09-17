# Todo Webapp — PRD

## Problem Statement

People jot down things they need to do across sticky notes, chat messages, and
scratch files, and lose track of them because nothing keeps the list in one
durable, private place. They need a simple place to keep a running todo list
that is theirs alone and is still there the next time they sign in, on any
device.

## Solution

A single-page todo web application: a user signs in through the
organization's SSO, and manages a private list of todos — adding, completing,
editing, and removing items — that persists in a database across sessions and
devices.

## Actors

- **User** — a signed-in individual who manages only their own list of todos.
No other actor or role exists in this product.

## User Stories

1. As a User, I want to sign in through the organization's single sign-on, so
 that only I can access my todos.
2. As a User, I want to add a new todo with a title, so that I can track
 something I need to do.
3. As a User, I want to view my list of todos, so that I can see everything I
 need to do.
4. As a User, I want to mark a todo as complete or incomplete, so that I can
 track my progress.
5. As a User, I want to edit a todo's title, so that I can correct or update
 it.
6. As a User, I want to delete a todo, so that I can remove items that no
 longer matter.
7. As a User, I want my todos to persist across sessions and devices, so that
 I never lose my list just by signing out or switching devices.

## Product Decisions

- **Sign-in**: every user signs in via SSO through Thunder, the platform
identity provider — an organization default for all web apps.
- **Scope of access**: each user sees and manages only their own todos; there
is no admin role and no cross-user visibility.
- **Todo shape**: a todo entry carries only a title and a completion status
(done / not done) — no description, due date, priority, or category.
- **Persistence**: todos are stored in a database keyed to the signed-in
user, so the list survives sign-out and reappears on any device the user
signs in from.
- **Notifications**: none. The app is a list the user checks themselves; no
email or other reminders are sent.

## Out of Scope

- Sharing a todo list or individual todos with other users.
- Due dates, priorities, categories/tags, or descriptions on a todo.
- Reminders or notifications of any kind.
- An admin role or any cross-user visibility/management.
- Native mobile apps (this is a web app only).

## Open Questions

None — the interview converged and every decision above is settled.