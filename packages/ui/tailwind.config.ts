import sharedConfig from "@projectislam/tailwind-config";
import type { Config } from "tailwindcss";

const config: Pick<Config, "presets" | "content" | "theme"> = {
  content: ["./src/**/*.tsx"],
  presets: [sharedConfig],
  theme: {
    extend: {
      fontFamily: {
        hafs: ["hafs", "Noto Nastaliq Urdu", "sans-serif"],
        nastaliq: ["Noto Nastaliq Urdu", "sans-serif"],
      },
    },
  },
};

export default config;
