import { PropsWithChildren } from "react";

type Props = {
  lang?: "ar" | "ur" | "en";
  as?: "p" | "span" | "h1" | "h2" | "h3" | "h4" | "h5" | "h6";
  className?: string;
};

export const Text = ({
  children,
  className = "",
  lang = "ar",
  as: Component = "p",
}: PropsWithChildren<Props>) => {
  let font = "";

  switch (lang) {
    case "ar":
      font = "font-hafs";
      break;
    case "ur":
      font = "font-nastaliq";
      break;
  }

  return (
    <Component className={`${font} ${className}`} lang={lang}>
      {children}
    </Component>
  );
};
