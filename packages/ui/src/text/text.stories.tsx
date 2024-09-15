import { Meta, StoryObj } from "@storybook/react";
import { Text } from "./text";

const meta = {
  title: "Typography/Text",
  component: Text,
  tags: ["autodocs"],
} satisfies Meta<typeof Text>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Arabic: Story = {
  args: {
    lang: "ar",
    children: "بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ",
  },
};

export const Urdu: Story = {
  args: {
    lang: "ur",
    children: "اللہ کے نام سے جو رحمان و رحیم ہے",
  },
};
