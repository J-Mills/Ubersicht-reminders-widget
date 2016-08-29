command: "osascript -e 'tell application \"Reminders\" to set reminderCount to count of (reminders whose completed is false)'"

refreshFrequency: 120000

style: """
      -webkit-font-smoothing: antialiased
      top: 5px
      right: 391px
      color: #FABD2F
      font: 11px Osaka-Mono

      div
            display: block
            text-shadow: 0 0 1px rgba(#000, 0.5)
            font-size: 11px
            font-weight: 100

      span
            color: #D5C4A1

"""


render: -> """
      <div class='reminder-count'></div>
"""

update: (reminderCount, domEl) ->
      $(domEl).find('.reminder-count').html("<span>Reminders:</span> #{reminderCount}")
