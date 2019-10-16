# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_sample_app_session'
Rails.application.config.session_store :cookie_store, key: '_current_project_session', expire_after: 1.day
Rails.application.config.session_store :cookie_store, key: '_current_sprint_session', expire_after: 1.day
