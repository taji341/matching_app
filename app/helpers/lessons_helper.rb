# frozen_string_literal: true

module LessonsHelper
  def lesson_placeholder
    <<-"EOS".strip_heredoc
      レッスンの説明を入力してください
      例
        ・レッスンの内容
        ・対象とする人
        ・レッスンの形式（出張可/オンライン等）
        ・注意事項（必要な物等）
    EOS
  end
end
