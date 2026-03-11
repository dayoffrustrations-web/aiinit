
-- Keep only the most recently updated row
DELETE FROM public.game_predictions
WHERE id NOT IN (
  SELECT id FROM public.game_predictions ORDER BY updated_at DESC NULLS LAST LIMIT 1
);
