class RequestsController < ApplicationController
	def get_answer
  end

  def answer
    client = Wit.new(access_token: 'AUEZPSX3KEUI4TTXYMREOJKZZGSJEQNY')
    @answer_text = client.message(params[:client_message])

    @value = get_value(@answer_text)
  end

  private

  def get_value(answer)
    return answer['entities']['intent'][0].values_at('value')[0]
end
end
