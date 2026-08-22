-- Register direct remove.bg as a Premium-only command.
-- Both names are supported by CODYEBOT and share the same direct provider.
INSERT OR IGNORE INTO commands VALUES ('rembg','heavy_ai',1,1,0,25,80,20,datetime('now'));
INSERT OR IGNORE INTO commands VALUES ('removebg','heavy_ai',1,1,0,25,80,20,datetime('now'));

-- Keep existing rows aligned if a deployment pre-created either command.
UPDATE commands SET category='heavy_ai', enabled=1, premium_only=1, free_limit=0, premium_limit=25, group_limit=80, member_limit=20, updated_at=datetime('now') WHERE name IN ('rembg','removebg');
