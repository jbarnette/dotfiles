using terms from application "Mail"
   on perform mail action with messages newMessages
      set theSelectedMessages to selection
      set the selected_message to item 1 of the theSelectedMessages
      set message_id to the message id of the selected_message
      set message_url to "message:%3C" & message_id & "%3E"
      set TheSubject to the subject of the selected_message
      set theBody to "From: " & the sender of the selected_message ¬
         & linefeed & message_url
      tell application "Things"
         show quick entry panel with properties {name:TheSubject, notes:theBody}
      end tell
   end perform mail action with messages
end using terms from
