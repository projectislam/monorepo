import { DirectusUser } from "@directus/sdk";

type Status = "published" | "draft" | "archived";

interface BaseFields {
  id: string;
  user_created: DirectusUser;
  user_updated: DirectusUser;
  date_created: "datetime";
  date_updated: "datetime";
}

interface Book extends BaseFields {
  status: Status;
  name: string;
  en_name: string;
  collection: Record<string, string>;
}

interface QuranManzil extends BaseFields {
  number: number;
  start_sura: QuranSura;
  end_sura: QuranSura;
}

interface QuranJuz extends BaseFields {
  number: number;
  start_aya: QuranAya;
  end_aya: QuranAya;
  rukus: QuranRuku[];
  hizbs: QuranHizb[];
}

interface QuranHizb extends BaseFields {
  number: number;
  number_in_juz: number;
  juz: QuranJuz;
  rubs: QuranRub[];
}

interface QuranRub extends BaseFields {
  number: number;
  number_in_juz: number;
  number_in_hizb: number;
  hizb: QuranHizb;
  start_aya: QuranAya;
  end_aya: QuranAya;
}

interface QuranRuku extends BaseFields {
  number: number;
  number_in_sura: number;
  number_in_juz: number;
  juz: QuranJuz;
  sura: QuranSura;
  start_aya: QuranAya;
  end_aya: QuranAya;
  total_ayas: number;
}

interface QuranSura extends BaseFields {
  number: number;
  name: string;
  en_name: string;
  type: "meccan" | "medinan";
  revelation_order: number;
  total_ayas: number;
  total_rukus: number;
  ayas: QuranAya[];
  rukus: QuranRuku[];
}

interface QuranAya extends BaseFields {
  sura: QuranSura;
  number_in_sura: number;
  text: string;
  sajda?: "recommended" | "obligatory";
  translations: QuranAyasTranslation[];
}

interface QuranAyasTranslation {
  id: string;
  quran_ayas_id: string;
  quran_ayas_languages_code: string;
  text: string;
  number: string;
}

interface QuranAyasLanguage {
  code: string;
  language: string;
  direction: "ltr" | "rtl";
  name: string;
  translator: string;
}

export default interface Schema {
  books: Book[];
  quran_manzils: QuranManzil[];
  quran_juzs: QuranJuz[];
  quran_hizbs: QuranHizb[];
  quran_rubs: QuranRub[];
  quran_rukus: QuranRuku[];
  quran_suras: QuranSura[];
  quran_ayas: QuranAya[];
  quran_ayas_translations: QuranAyasTranslation[];
  quran_ayas_languages: QuranAyasLanguage[];
}
