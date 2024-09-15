type Props = {
  title: string;
};

export const Header = ({ title }: Props) => {
  return <div className="h-10 w-full border">{title}</div>;
};
