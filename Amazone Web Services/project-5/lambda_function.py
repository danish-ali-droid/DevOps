import json
import datetime

def lambda_handler(event, context):
    """
    Simple greeting function that returns a personalized greeting
    """
    # Get current time
    current_hour = datetime.datetime.now().hour
    
    # Determine greeting based on time of day
    if current_hour < 12:
        time_greeting = "Good Morning"
    elif current_hour < 17:
        time_greeting = "Good Afternoon"
    else:
        time_greeting = "Good Evening"
    
    # Get name from query parameters if available
    name = "Guest"
    if event.get('queryStringParameters'):
        name = event.get('queryStringParameters', {}).get('name', 'Guest')
    
    # Create response
    response = {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*'
        },
        'body': json.dumps({
            'message': f'{time_greeting}, {name}!',
            'timestamp': datetime.datetime.now().isoformat(),
            'version': '1.0.0'
        })
    }
    
    return response
