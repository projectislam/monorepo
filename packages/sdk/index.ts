export { readItem, readItems } from "@directus/sdk";
import { createDirectus, rest } from "@directus/sdk";
import Schema from "./schema";

const url =
  process.env.NODE_ENV === "production"
    ? "https://production.url"
    : "http://0.0.0.0:8055";

export const sdk = createDirectus<Schema>(url).with(rest());
