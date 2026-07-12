DROP TABLE IF EXISTS fraud_predictions;

CREATE TABLE fraud_predictions (

    id SERIAL PRIMARY KEY,

    transaction_id UUID UNIQUE NOT NULL,

    event_timestamp TIMESTAMP,

    amount NUMERIC(12,2),

    prediction INTEGER CHECK (prediction IN (0,1)),

    fraud_probability NUMERIC(6,4),

    risk_level VARCHAR(20),

    status VARCHAR(20),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
