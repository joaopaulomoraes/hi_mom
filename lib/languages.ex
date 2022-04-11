defmodule Languages do
  @moduledoc """
  Map of all supported greetings.
  """

  @doc """
  Returns "Hi, mom!" in the specified language.

  ## Parameters

    - `lang`: Atom representing the language of the specified

  ## Examples

      iex> Languages.get(:en)
      "Hi, {{mom}}!"

      iex> Languages.get(:pt)
      "Oi, {{mãe}}!"

      iex> Languages.get(:es)
      "Holla, {{mamá}}!"

  """
  def get(language) do
    Map.get(%{
      :ar => "مرحباً, {{امي}}!",
      :ar_IQ => "هلا, {{يمه}}!",
      :ca => "Hola, {{mamà}}!",
      :cn => "你好，{{妈妈}}!",
      :cs => "Ahoj, {{mamá}}!",
      :de => "Hallo, {{Mama}}!",
      :en => "Hi, {{mom}}!",
      :en_AU => "Hi, {{mum}}!",
      :es => "Hola, {{mamá}}!",
      :fr => "Salut, {{maman}}!",
      :he => "שלום, {{מה}}!",
      :hi => "नमस्ते {{मम्मी}}!",
      :hu => "Szia, {{anyá}}!",
      :id => "Hai, {{ibu}}!",
      :it => "Ciao {{mamma}}!",
      :ja => "こんにちは、{{ママ}}!",
      :ko => "안녕하세요, {{마모}}!",
      :ms => "Hai, {{bapa}}!",
      :nl_BE => "Hallo, {{moeke}}!",
      :nl_NL => "Hallo, {{moeder}}!",
      :pl => "Cześć, {{matka}}!",
      :pt => "Oi, {{mãe}}!",
      :ro => "Bună, {{mamă}}!",
      :ru => "Привет, {{мама}}!",
      :si => "ආයුබෝවන්, {{අම්මේ}}!",
      :sr => "Ćao, {{mama}}!",
      :ta => "வணக்கம் {{அம்மா}}",
      :th => "สวัสดีค่ะ, {{มา}}!",
      :tr => "Merhaba, {{baba}}!",
      :ua => "Привіт, {{мама}}!",
      :vi => "Xin chào, {{mẹ}}!",
      :zh => "你好，{{妈妈}}!"
    }, language)
  end
end
