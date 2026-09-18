CREATE TABLE IF NOT EXISTS group_settings (
  chat_id TEXT PRIMARY KEY,
  title TEXT,
  language TEXT NOT NULL DEFAULT 'en',
  settings TEXT NOT NULL DEFAULT '{}',
  version INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS user_preferences (
  telegram_id TEXT PRIMARY KEY,
  preferences TEXT NOT NULL DEFAULT '{}',
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS group_settings_updated ON group_settings(updated_at);
CREATE INDEX IF NOT EXISTS user_preferences_updated ON user_preferences(updated_at);

CREATE TABLE IF NOT EXISTS sync_health (
  id INTEGER PRIMARY KEY CHECK(id = 1),
  last_heartbeat TEXT,
  last_success TEXT,
  last_failure TEXT,
  failure_count INTEGER NOT NULL DEFAULT 0,
  groups_synced INTEGER NOT NULL DEFAULT 0,
  users_synced INTEGER NOT NULL DEFAULT 0,
  updated_at TEXT NOT NULL
);
