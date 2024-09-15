import { readItems, sdk } from "@projectislam/sdk";
import { Header } from "@projectislam/ui/header";
import { Text } from "@projectislam/ui/text";

const getSuras = async () => {
  return sdk.request(readItems("quran_suras"));
};

const HomePage = async () => {
  const suras = await getSuras();

  return (
    <div>
      <Header title="Quran" />
      <div>
        <Text>Quran Suras</Text>

        {suras.map(sura => (
          <div key={sura.id} className="border p-4">
            <Text lang="ar">{sura.name}</Text>
            <Text>{sura.en_name}</Text>
          </div>
        ))}
      </div>
    </div>
  );
};

export default HomePage;
