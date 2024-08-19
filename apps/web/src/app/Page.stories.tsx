import "@repo/ui/styles.css";
import "./globals.css";

import type { Meta, StoryObj } from "@storybook/react";
import Page from "./page";

const meta = {
  title: "Example/Page",
  component: Page,
  tags: ["autodocs"],
} satisfies Meta<typeof Page>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Primary: Story = {
  args: {},
};
