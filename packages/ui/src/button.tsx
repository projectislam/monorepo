import { PropsWithChildren } from "react";

export const Button = ({ children }: PropsWithChildren) => {
  return <button className="bg-gray-300 p-8 text-white">{children}</button>;
};
