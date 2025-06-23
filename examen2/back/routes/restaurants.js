router.get('/availability', async (_, res) => {
  try {
    const [rows] =await db.query(
      `SELECT * FROM restaurant_availability 
       WHERE schedule_time > NOW() AND reserved = 0`
    );
    res.json(rows);
  } catch (error) {
        console.error('Error disponibilidad', error);

  }
});
router.put('/reserve', async (req, res) => {
  const { restaurantId, scheduleTime } = req.body;

  if (!restaurantId || !scheduleTime) {
    return;
  }

  try {
    const [result] = await db.query(
      `INSERT INTO restaurant_availability (restaurant_id, schedule_time, reserved)
       VALUES (?, ?, 1)`,
      [restaurantId, scheduleTime]
    );

    res.json({ success: true, id: result.insertId });
  } catch (error) {
    console.error('Error reserva', error);
  }
router.get('/', async (req, res) => {
  let limit = parseInt(req.query.limit) || 10;
  let offset = parseInt(req.query.offset) || 0;

  if (limit < 0) limit = 0;
  if (offset < 0) offset = 0;

  try {
    const [rows] = await db.query(
    'SELECT * FROM restaurants LIMIT ? OFFSET ?',
    [limit, offset]
    );

    res.json(paginated);
  } catch (error) {
    console.error('Error restaurantes', error);
  }
});

});