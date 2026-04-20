--Avg Response Time
SELECT AVG(response_time_sec) AS avg_response_time
FROM chatbot-sql-project.chatbot_data.conversations;

--Identify Worst Performing Intents
SELECT 
  intent,
  COUNT(*) AS total,
  COUNTIF(resolved) AS resolved_count,
  ROUND(COUNTIF(resolved) * 100.0 / COUNT(*), 2) AS resolution_rate
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY intent
ORDER BY resolution_rate ASC;

--Intent + Sentiment Deep Analysis
SELECT 
  intent,
  sentiment,
  COUNT(*) AS total
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY intent, sentiment
ORDER BY total DESC;

--Intent Analysis
SELECT 
  intent,
  COUNT(*) AS total_queries
FROM chatbot-sql-project.chatbot_data.conversations
GROUP BY intent
ORDER BY total_queries DESC;

--Intent Distribution
SELECT 
  intent,
  COUNT(*) AS total_queries
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY intent
ORDER BY total_queries DESC;

--Language Distribution
SELECT 
  language,
  COUNT(*) AS total
FROM chatbot-sql-project.chatbot_data.conversations
GROUP BY language;

--Repeated Issues Detection
SELECT 
  similar_chat_id,
  COUNT(*) AS repeat_count
FROM `chatbot-sql-project.chatbot_data.conversations`
WHERE similar_chat_id IS NOT NULL
GROUP BY similar_chat_id
ORDER BY repeat_count DESC;

--Resolution by Intent
SELECT 
  intent,
  COUNT(*) AS total,
  COUNT(CASE WHEN resolved = TRUE THEN 1 END) AS resolved_count
FROM chatbot-sql-project.chatbot_data.conversations
GROUP BY intent;

--Resolution Rate
SELECT 
  COUNTIF(resolved) * 100.0 / COUNT(*) AS resolution_rate
FROM chatbot-sql-project.chatbot_data.conversations;

--Response Time by Intent
SELECT 
  intent,
  AVG(response_time_sec) AS avg_time
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY intent
ORDER BY avg_time DESC;

--Response Time vs Resolution
SELECT 
  CASE 
    WHEN response_time_sec < 2 THEN 'Fast'
    WHEN response_time_sec BETWEEN 2 AND 5 THEN 'Medium'
    ELSE 'Slow'
  END AS speed_category,
  COUNT(*) AS total,
  COUNTIF(resolved) AS resolved_count
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY speed_category;

--Sentiment Analysis
SELECT sentiment,
COUNT(*) AS total
FROM chatbot-sql-project.chatbot_data.conversations
GROUP BY sentiment;

--Sentiment Impact on Resolution
SELECT 
  sentiment,
  COUNT(*) AS total,
  COUNTIF(resolved) AS resolved_count,
  ROUND(COUNTIF(resolved) * 100.0 / COUNT(*), 2) AS resolution_rate
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY sentiment;

--Sentiment vs Resolution
SELECT 
  sentiment,
  resolved,
  COUNT(*) AS total
FROM chatbot-sql-project.chatbot_data.conversations
GROUP BY sentiment, resolved;

--Slow + Unresolved (Critical Problems)
SELECT *
FROM `chatbot-sql-project.chatbot_data.conversations`
WHERE response_time_sec > 5
AND resolved = FALSE;

--Slow Responses
SELECT *
FROM chatbot-sql-project.chatbot_data.conversations
WHERE response_time_sec > 5;

--Top Problematic Languages
SELECT 
  language,
  COUNTIF(resolved = FALSE) AS unresolved,
  COUNT(*) AS total
FROM `chatbot-sql-project.chatbot_data.conversations`
GROUP BY language
ORDER BY unresolved DESC;

--Total Conversations
SELECT COUNT(DISTINCT chat_id) AS total_chats
FROM chatbot-sql-project.chatbot_data.conversations

--Unresolved Chats
SELECT *
FROM chatbot-sql-project.chatbot_data.conversations
WHERE resolved = FALSE;

--Calculates the average response time per intent while preserving individual conversation-level data for comparison.(Window Function)
SELECT 
  chat_id,
  intent,
  response_time_sec,
  AVG(response_time_sec) OVER (PARTITION BY intent) AS avg_time_per_intent
FROM chatbot-sql-project.chatbot_data.conversations;
