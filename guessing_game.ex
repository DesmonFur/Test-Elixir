defmodule GuessingGame do
  # we are gonna have a guess between a low number and a high number and we will guess the middle.
  # tell user our guess
  # yes means game over
  # bigger means we go higher
  # lower means we go smaller

  # one line guard function
def guess(a,b) when a > b do,: guess(b,a)

# standard function
  def guess(low,high) do
answer = IO.gets("give me a number")
    IO.gets("Hmm... maybe you're thinking of #{mid(low,high)}?/n")
    case String.trim(answer) do
      "bigger" -> bigger(low,high)

      "smaller" -> smaller(low,high)

      "yes" -> "I knew I could guess you're number"

      _ -> IO.puts( ~s{Type "bigger", "smaller" or "yes"})
      guess(low, high)
  end

  def mid(low,high) do
    div(low + high, 2)
  end

  def bigger(low,high)do
    new_low = min(high, mid(low,high) + 1)
    guess(new_low, high)
  end

  def smaller(low,high)do
    new_high = max(low, mid(low,high) - 1)
    guess(low, new_high)
  end

end

end
