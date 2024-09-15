import { PropsWithChildren } from "react";

type Props = {
  onClick?: () => void;
};

export const Button = ({ children, onClick }: PropsWithChildren<Props>) => {
  return (
    <button onClick={onClick} className="border p-2">
      {children}
    </button>
  );
};
