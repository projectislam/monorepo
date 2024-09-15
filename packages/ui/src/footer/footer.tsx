type Props = {
  text: string;
};

export const Footer = ({ text }: Props) => {
  return <div className="h-10 w-full border text-center">{text}</div>;
};
