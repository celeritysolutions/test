```sql
-- Users Table
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Policies
CREATE POLICY "Limit access to own user data" ON users
FOR ALL
USING (auth.uid() = id);

-- Taps Table
CREATE TABLE taps (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) NOT NULL,
  count INTEGER DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Policies
CREATE POLICY "Limit access to own taps" ON taps
FOR ALL
USING (user_id = auth.uid());

-- TypeScript Types
export type User = {
  id: string;
  name: string;
  email: string;
  created_at: string;
};

export type Tap = {
  id: string;
  user_id: string;
  count: number;
  created_at: string;
};
```