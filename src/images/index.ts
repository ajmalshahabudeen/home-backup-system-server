import { Hono } from 'hono'

const images = new Hono()

images.get('/', (c) => {
  return c.text('Image Get Route')
})

export default images
