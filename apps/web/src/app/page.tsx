import { Card } from "@repo/ui/card";

export default function Page(): JSX.Element {
  return (
    <main className="flex min-h-screen flex-col items-center justify-between bg-gray-300 p-24">
      <Card href="#" title="Cart title">
        Card description
      </Card>
    </main>
  );
}
