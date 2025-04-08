from fastapi import FastAPI, Path
from random import randint

app = FastAPI()

@app.get("/")
async def root():
    return {
        "name": "Random Number Generator API",
        "description": "A simple API that generates random numbers",
        "endpoints": {
            "/": "Shows API information",
            "/random/{max_value}": "Generates a random number between 0 and max_value"
        }
    }

@app.get("/random/{max_value}")
async def get_random_number(
    max_value: int = Path(..., title="Maximum value", ge=0)
):
    return {"random_number": randint(0, max_value)}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
