import express from 'express'
import 'reflect-metadata'

var app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

// Routing

// Listen
const PORT = 9000
app.listen(PORT, () => {
  console.log(`Started Server on port ${PORT}`)
})
