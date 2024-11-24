import { Hono } from 'hono'
import images from '@/images'

const app = new Hono()

app.get('/', (c) => {
  return c.text('Base Route')
})

app.route('/images', images)

export default app
