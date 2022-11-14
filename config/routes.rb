Rails.application.routes.draw do
  get "ask", to: "questions#ask"
  root to: "questions#ask"
  get "answer", to: "answers#answer"
end
