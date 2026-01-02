import emoji
from transformers import Tool

class EmojifyTextTool(Tool):
    name = "emojify_text"
    description = "Emojifies text by adding relevant emojis to enhance expressiveness."
    inputs = ["text"]
    outputs = ["text"]  # Explicitly specify the output component

    def __call__(self, text: str):
        # Define a dictionary mapping keywords to emojis
        keyword_to_emoji = {
            "happy": "😄",
            "sad": "😢",
            "love": "❤️",
            "confused": "😕",
            "excited": "🎉",
            # Add more keywords and corresponding emojis as needed
        }

        # Emojify the input text based on keywords
        emojified_text = self._emojify_keywords(text, keyword_to_emoji)

        # Print the emojified text
        print(f"Emojified Text: {emojified_text}")

        return {"emojified_text": emojified_text}  # Return a dictionary with the specified output component

    def _emojify_keywords(self, text, keyword_to_emoji):
        # Replace keywords in the text with corresponding emojis
        for keyword, emoji_char in keyword_to_emoji.items():
            text = text.replace(keyword, emoji_char)
        return text
