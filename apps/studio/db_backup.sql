PGDMP  8                    |            islam    16.3 (Homebrew)    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26263    islam    DATABASE     g   CREATE DATABASE islam WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE islam;
                haider    false            �            1259    30705    books    TABLE       CREATE TABLE public.books (
    id character varying(255) DEFAULT NULL::character varying NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    en_name character varying(255) DEFAULT NULL::character varying NOT NULL,
    collection json DEFAULT '{}'::json NOT NULL
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    26264    directus_access    TABLE     �   CREATE TABLE public.directus_access (
    id uuid NOT NULL,
    role uuid,
    "user" uuid,
    policy uuid NOT NULL,
    sort integer
);
 #   DROP TABLE public.directus_access;
       public         heap    postgres    false            �            1259    26267    directus_activity    TABLE     �  CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);
 %   DROP TABLE public.directus_activity;
       public         heap    postgres    false            �            1259    26273    directus_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_activity_id_seq;
       public          postgres    false    216            �           0    0    directus_activity_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;
          public          postgres    false    217            �            1259    26274    directus_collections    TABLE     o  CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(30),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);
 (   DROP TABLE public.directus_collections;
       public         heap    postgres    false            �            1259    26285    directus_dashboards    TABLE     I  CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);
 '   DROP TABLE public.directus_dashboards;
       public         heap    postgres    false            �            1259    26292    directus_extensions    TABLE     �   CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);
 '   DROP TABLE public.directus_extensions;
       public         heap    postgres    false            �            1259    26298    directus_fields    TABLE     �  CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);
 #   DROP TABLE public.directus_fields;
       public         heap    postgres    false            �            1259    26307    directus_fields_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.directus_fields_id_seq;
       public          postgres    false    221            �           0    0    directus_fields_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;
          public          postgres    false    222            �            1259    26308    directus_files    TABLE     [  CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    created_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json,
    uploaded_on timestamp with time zone
);
 "   DROP TABLE public.directus_files;
       public         heap    postgres    false            �            1259    26315    directus_flows    TABLE       CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 "   DROP TABLE public.directus_flows;
       public         heap    postgres    false            �            1259    26323    directus_folders    TABLE     z   CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);
 $   DROP TABLE public.directus_folders;
       public         heap    postgres    false            �            1259    26326    directus_migrations    TABLE     �   CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.directus_migrations;
       public         heap    postgres    false            �            1259    26332    directus_notifications    TABLE     �  CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);
 *   DROP TABLE public.directus_notifications;
       public         heap    postgres    false            �            1259    26339    directus_notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.directus_notifications_id_seq;
       public          postgres    false    227            �           0    0    directus_notifications_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;
          public          postgres    false    228            �            1259    26340    directus_operations    TABLE     �  CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 '   DROP TABLE public.directus_operations;
       public         heap    postgres    false            �            1259    26346    directus_panels    TABLE     /  CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(30) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);
 #   DROP TABLE public.directus_panels;
       public         heap    postgres    false            �            1259    26354    directus_permissions    TABLE       CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text,
    policy uuid NOT NULL
);
 (   DROP TABLE public.directus_permissions;
       public         heap    postgres    false            �            1259    26359    directus_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.directus_permissions_id_seq;
       public          postgres    false    231            �           0    0    directus_permissions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;
          public          postgres    false    232            �            1259    26360    directus_policies    TABLE     p  CREATE TABLE public.directus_policies (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(64) DEFAULT 'badge'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public.directus_policies;
       public         heap    postgres    false            �            1259    26369    directus_presets    TABLE     �  CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(30) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);
 $   DROP TABLE public.directus_presets;
       public         heap    postgres    false            �            1259    26376    directus_presets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.directus_presets_id_seq;
       public          postgres    false    234            �           0    0    directus_presets_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;
          public          postgres    false    235            �            1259    26377    directus_relations    TABLE     �  CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);
 &   DROP TABLE public.directus_relations;
       public         heap    postgres    false            �            1259    26383    directus_relations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_relations_id_seq;
       public          postgres    false    236            �           0    0    directus_relations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;
          public          postgres    false    237            �            1259    26384    directus_revisions    TABLE       CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);
 &   DROP TABLE public.directus_revisions;
       public         heap    postgres    false            �            1259    26389    directus_revisions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directus_revisions_id_seq;
       public          postgres    false    238            �           0    0    directus_revisions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;
          public          postgres    false    239            �            1259    26390    directus_roles    TABLE     �   CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(30) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    parent uuid
);
 "   DROP TABLE public.directus_roles;
       public         heap    postgres    false            �            1259    26396    directus_sessions    TABLE     !  CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);
 %   DROP TABLE public.directus_sessions;
       public         heap    postgres    false            �            1259    26401    directus_settings    TABLE     �  CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json
);
 %   DROP TABLE public.directus_settings;
       public         heap    postgres    false            �            1259    26414    directus_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_settings_id_seq;
       public          postgres    false    242            �           0    0    directus_settings_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;
          public          postgres    false    243            �            1259    26415    directus_shares    TABLE     �  CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);
 #   DROP TABLE public.directus_shares;
       public         heap    postgres    false            �            1259    26422    directus_translations    TABLE     �   CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);
 )   DROP TABLE public.directus_translations;
       public         heap    postgres    false            �            1259    26427    directus_users    TABLE       CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json
);
 "   DROP TABLE public.directus_users;
       public         heap    postgres    false            �            1259    26436    directus_versions    TABLE     �  CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);
 %   DROP TABLE public.directus_versions;
       public         heap    postgres    false            �            1259    26443    directus_webhooks    TABLE     $  CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);
 %   DROP TABLE public.directus_webhooks;
       public         heap    postgres    false            �            1259    26452    directus_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.directus_webhooks_id_seq;
       public          postgres    false    248            �           0    0    directus_webhooks_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;
          public          postgres    false    249            �            1259    30807 
   quran_ayas    TABLE     �  CREATE TABLE public.quran_ayas (
    id character varying(255) DEFAULT NULL::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    sura character varying(255) DEFAULT NULL::character varying NOT NULL,
    text character varying(255) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE public.quran_ayas;
       public         heap    postgres    false                       1259    30967    quran_ayas_languages    TABLE     �  CREATE TABLE public.quran_ayas_languages (
    code character varying(255) DEFAULT NULL::character varying NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    direction character varying(255) DEFAULT 'ltr'::character varying NOT NULL,
    language character varying(255) DEFAULT NULL::character varying NOT NULL,
    translator character varying(255) DEFAULT NULL::character varying NOT NULL
);
 (   DROP TABLE public.quran_ayas_languages;
       public         heap    postgres    false                        1259    30961    quran_ayas_translations    TABLE     3  CREATE TABLE public.quran_ayas_translations (
    id integer NOT NULL,
    quran_ayas_id character varying(255) DEFAULT NULL::character varying,
    quran_ayas_languages_code character varying(255) DEFAULT NULL::character varying,
    text character varying(255) DEFAULT NULL::character varying NOT NULL
);
 +   DROP TABLE public.quran_ayas_translations;
       public         heap    postgres    false            �            1259    30960    quran_ayas_translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quran_ayas_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.quran_ayas_translations_id_seq;
       public          postgres    false    256            �           0    0    quran_ayas_translations_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.quran_ayas_translations_id_seq OWNED BY public.quran_ayas_translations.id;
          public          postgres    false    255            �            1259    30770 
   quran_juzs    TABLE     �  CREATE TABLE public.quran_juzs (
    id character varying(255) DEFAULT NULL::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    number integer NOT NULL,
    start_aya character varying(255) DEFAULT NULL::character varying NOT NULL,
    end_aya character varying(255) DEFAULT NULL::character varying NOT NULL
);
    DROP TABLE public.quran_juzs;
       public         heap    postgres    false            �            1259    30747    quran_manzils    TABLE     �  CREATE TABLE public.quran_manzils (
    id character varying(255) DEFAULT NULL::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    number integer NOT NULL,
    start_sura character varying(255) DEFAULT NULL::character varying NOT NULL,
    end_sura character varying(255) DEFAULT NULL::character varying NOT NULL
);
 !   DROP TABLE public.quran_manzils;
       public         heap    postgres    false            �            1259    30786    quran_suras    TABLE       CREATE TABLE public.quran_suras (
    id character varying(255) DEFAULT NULL::character varying NOT NULL,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    number integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying NOT NULL,
    en_name character varying(255) DEFAULT NULL::character varying NOT NULL,
    type character varying(255) DEFAULT NULL::character varying NOT NULL,
    revelation_order integer NOT NULL
);
    DROP TABLE public.quran_suras;
       public         heap    postgres    false            @           2604    26453    directus_activity id    DEFAULT     |   ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);
 C   ALTER TABLE public.directus_activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            K           2604    26454    directus_fields id    DEFAULT     x   ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);
 A   ALTER TABLE public.directus_fields ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            V           2604    26455    directus_notifications id    DEFAULT     �   ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);
 H   ALTER TABLE public.directus_notifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            ]           2604    26456    directus_permissions id    DEFAULT     �   ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);
 F   ALTER TABLE public.directus_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            b           2604    26457    directus_presets id    DEFAULT     z   ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);
 B   ALTER TABLE public.directus_presets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            e           2604    26458    directus_relations id    DEFAULT     ~   ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);
 D   ALTER TABLE public.directus_relations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            g           2604    26459    directus_revisions id    DEFAULT     ~   ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);
 D   ALTER TABLE public.directus_revisions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            i           2604    26460    directus_settings id    DEFAULT     |   ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);
 C   ALTER TABLE public.directus_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            z           2604    26461    directus_webhooks id    DEFAULT     |   ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);
 C   ALTER TABLE public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �           2604    30964    quran_ayas_translations id    DEFAULT     �   ALTER TABLE ONLY public.quran_ayas_translations ALTER COLUMN id SET DEFAULT nextval('public.quran_ayas_translations_id_seq'::regclass);
 I   ALTER TABLE public.quran_ayas_translations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            �          0    30705    books 
   TABLE DATA           ~   COPY public.books (id, status, user_created, date_created, user_updated, date_updated, name, en_name, collection) FROM stdin;
    public          postgres    false    250   L      �          0    26264    directus_access 
   TABLE DATA           I   COPY public.directus_access (id, role, "user", policy, sort) FROM stdin;
    public          postgres    false    215   "L      �          0    26267    directus_activity 
   TABLE DATA              COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
    public          postgres    false    216   �L      �          0    26274    directus_collections 
   TABLE DATA           *  COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
    public          postgres    false    218   vX      �          0    26285    directus_dashboards 
   TABLE DATA           f   COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
    public          postgres    false    219   :Y      �          0    26292    directus_extensions 
   TABLE DATA           R   COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
    public          postgres    false    220   WY      �          0    26298    directus_fields 
   TABLE DATA           �   COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
    public          postgres    false    221   tY      �          0    26308    directus_files 
   TABLE DATA           6  COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, created_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data, uploaded_on) FROM stdin;
    public          postgres    false    223   a]      �          0    26315    directus_flows 
   TABLE DATA           �   COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
    public          postgres    false    224   ~]      �          0    26323    directus_folders 
   TABLE DATA           <   COPY public.directus_folders (id, name, parent) FROM stdin;
    public          postgres    false    225   �]      �          0    26326    directus_migrations 
   TABLE DATA           I   COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
    public          postgres    false    226   �]      �          0    26332    directus_notifications 
   TABLE DATA           �   COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
    public          postgres    false    227   �c      �          0    26340    directus_operations 
   TABLE DATA           �   COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
    public          postgres    false    229   d      �          0    26346    directus_panels 
   TABLE DATA           �   COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
    public          postgres    false    230   %d      �          0    26354    directus_permissions 
   TABLE DATA           x   COPY public.directus_permissions (id, collection, action, permissions, validation, presets, fields, policy) FROM stdin;
    public          postgres    false    231   Bd      �          0    26360    directus_policies 
   TABLE DATA           z   COPY public.directus_policies (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
    public          postgres    false    233   �d      �          0    26369    directus_presets 
   TABLE DATA           �   COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
    public          postgres    false    234   ]e      �          0    26377    directus_relations 
   TABLE DATA           �   COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
    public          postgres    false    236   �e      �          0    26384    directus_revisions 
   TABLE DATA           j   COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
    public          postgres    false    238   �f      �          0    26390    directus_roles 
   TABLE DATA           M   COPY public.directus_roles (id, name, icon, description, parent) FROM stdin;
    public          postgres    false    240   Fz      �          0    26396    directus_sessions 
   TABLE DATA           n   COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
    public          postgres    false    241   �z      �          0    26401    directus_settings 
   TABLE DATA           �  COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter) FROM stdin;
    public          postgres    false    242   N|      �          0    26415    directus_shares 
   TABLE DATA           �   COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
    public          postgres    false    244   k|      �          0    26422    directus_translations 
   TABLE DATA           I   COPY public.directus_translations (id, language, key, value) FROM stdin;
    public          postgres    false    245   �|      �          0    26427    directus_users 
   TABLE DATA           T  COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides) FROM stdin;
    public          postgres    false    246   �|      �          0    26436    directus_versions 
   TABLE DATA           �   COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
    public          postgres    false    247   �}      �          0    26443    directus_webhooks 
   TABLE DATA           �   COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
    public          postgres    false    248   �}      �          0    30807 
   quran_ayas 
   TABLE DATA           l   COPY public.quran_ayas (id, user_created, date_created, user_updated, date_updated, sura, text) FROM stdin;
    public          postgres    false    254   �}      �          0    30967    quran_ayas_languages 
   TABLE DATA           [   COPY public.quran_ayas_languages (code, name, direction, language, translator) FROM stdin;
    public          postgres    false    257   ~      �          0    30961    quran_ayas_translations 
   TABLE DATA           e   COPY public.quran_ayas_translations (id, quran_ayas_id, quran_ayas_languages_code, text) FROM stdin;
    public          postgres    false    256   %~      �          0    30770 
   quran_juzs 
   TABLE DATA           |   COPY public.quran_juzs (id, user_created, date_created, user_updated, date_updated, number, start_aya, end_aya) FROM stdin;
    public          postgres    false    252   B~      �          0    30747    quran_manzils 
   TABLE DATA           �   COPY public.quran_manzils (id, user_created, date_created, user_updated, date_updated, number, start_sura, end_sura) FROM stdin;
    public          postgres    false    251   _~      �          0    30786    quran_suras 
   TABLE DATA           �   COPY public.quran_suras (id, user_created, date_created, user_updated, date_updated, number, name, en_name, type, revelation_order) FROM stdin;
    public          postgres    false    253   |~      �           0    0    directus_activity_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directus_activity_id_seq', 228, true);
          public          postgres    false    217            �           0    0    directus_fields_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.directus_fields_id_seq', 88, true);
          public          postgres    false    222            �           0    0    directus_notifications_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);
          public          postgres    false    228            �           0    0    directus_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.directus_permissions_id_seq', 9, true);
          public          postgres    false    232            �           0    0    directus_presets_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.directus_presets_id_seq', 6, true);
          public          postgres    false    235            �           0    0    directus_relations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directus_relations_id_seq', 27, true);
          public          postgres    false    237            �           0    0    directus_revisions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.directus_revisions_id_seq', 209, true);
          public          postgres    false    239            �           0    0    directus_settings_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, false);
          public          postgres    false    243            �           0    0    directus_webhooks_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);
          public          postgres    false    249            �           0    0    quran_ayas_translations_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.quran_ayas_translations_id_seq', 1, false);
          public          postgres    false    255            �           2606    30713    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    250            �           2606    26463 $   directus_access directus_access_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_pkey;
       public            postgres    false    215            �           2606    26465 (   directus_activity directus_activity_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_activity DROP CONSTRAINT directus_activity_pkey;
       public            postgres    false    216            �           2606    26467 .   directus_collections directus_collections_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);
 X   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_pkey;
       public            postgres    false    218            �           2606    26469 ,   directus_dashboards directus_dashboards_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_pkey;
       public            postgres    false    219            �           2606    26471 ,   directus_extensions directus_extensions_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_extensions DROP CONSTRAINT directus_extensions_pkey;
       public            postgres    false    220            �           2606    26473 $   directus_fields directus_fields_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_fields DROP CONSTRAINT directus_fields_pkey;
       public            postgres    false    221            �           2606    26475 "   directus_files directus_files_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_pkey;
       public            postgres    false    223            �           2606    26477 .   directus_flows directus_flows_operation_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);
 X   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_operation_unique;
       public            postgres    false    224            �           2606    26479 "   directus_flows directus_flows_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_pkey;
       public            postgres    false    224            �           2606    26481 &   directus_folders directus_folders_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_pkey;
       public            postgres    false    225            �           2606    26483 ,   directus_migrations directus_migrations_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);
 V   ALTER TABLE ONLY public.directus_migrations DROP CONSTRAINT directus_migrations_pkey;
       public            postgres    false    226            �           2606    26485 2   directus_notifications directus_notifications_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_pkey;
       public            postgres    false    227            �           2606    26487 ,   directus_operations directus_operations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_pkey;
       public            postgres    false    229            �           2606    26489 5   directus_operations directus_operations_reject_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);
 _   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_unique;
       public            postgres    false    229            �           2606    26491 6   directus_operations directus_operations_resolve_unique 
   CONSTRAINT     t   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_unique;
       public            postgres    false    229            �           2606    26493 $   directus_panels directus_panels_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_pkey;
       public            postgres    false    230            �           2606    26495 .   directus_permissions directus_permissions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_pkey;
       public            postgres    false    231            �           2606    26497 (   directus_policies directus_policies_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_policies
    ADD CONSTRAINT directus_policies_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_policies DROP CONSTRAINT directus_policies_pkey;
       public            postgres    false    233            �           2606    26499 &   directus_presets directus_presets_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_pkey;
       public            postgres    false    234            �           2606    26501 *   directus_relations directus_relations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_relations DROP CONSTRAINT directus_relations_pkey;
       public            postgres    false    236            �           2606    26503 *   directus_revisions directus_revisions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_pkey;
       public            postgres    false    238            �           2606    26505 "   directus_roles directus_roles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_pkey;
       public            postgres    false    240            �           2606    26507 (   directus_sessions directus_sessions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);
 R   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_pkey;
       public            postgres    false    241            �           2606    26509 (   directus_settings directus_settings_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_pkey;
       public            postgres    false    242            �           2606    26511 $   directus_shares directus_shares_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_pkey;
       public            postgres    false    244            �           2606    26513 0   directus_translations directus_translations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.directus_translations DROP CONSTRAINT directus_translations_pkey;
       public            postgres    false    245            �           2606    26515 *   directus_users directus_users_email_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_email_unique;
       public            postgres    false    246            �           2606    26517 8   directus_users directus_users_external_identifier_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);
 b   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_external_identifier_unique;
       public            postgres    false    246            �           2606    26519 "   directus_users directus_users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_pkey;
       public            postgres    false    246            �           2606    26521 *   directus_users directus_users_token_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_token_unique;
       public            postgres    false    246            �           2606    26523 (   directus_versions directus_versions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_pkey;
       public            postgres    false    247            �           2606    26525 (   directus_webhooks directus_webhooks_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.directus_webhooks DROP CONSTRAINT directus_webhooks_pkey;
       public            postgres    false    248            �           2606    30976 .   quran_ayas_languages quran_ayas_languages_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.quran_ayas_languages
    ADD CONSTRAINT quran_ayas_languages_pkey PRIMARY KEY (code);
 X   ALTER TABLE ONLY public.quran_ayas_languages DROP CONSTRAINT quran_ayas_languages_pkey;
       public            postgres    false    257            �           2606    30812    quran_ayas quran_ayas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.quran_ayas
    ADD CONSTRAINT quran_ayas_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.quran_ayas DROP CONSTRAINT quran_ayas_pkey;
       public            postgres    false    254            �           2606    30966 4   quran_ayas_translations quran_ayas_translations_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.quran_ayas_translations
    ADD CONSTRAINT quran_ayas_translations_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.quran_ayas_translations DROP CONSTRAINT quran_ayas_translations_pkey;
       public            postgres    false    256            �           2606    30775    quran_juzs quran_juzs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.quran_juzs
    ADD CONSTRAINT quran_juzs_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.quran_juzs DROP CONSTRAINT quran_juzs_pkey;
       public            postgres    false    252            �           2606    30752     quran_manzils quran_manzils_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.quran_manzils
    ADD CONSTRAINT quran_manzils_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.quran_manzils DROP CONSTRAINT quran_manzils_pkey;
       public            postgres    false    251            �           2606    30791    quran_suras quran_suras_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.quran_suras
    ADD CONSTRAINT quran_suras_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.quran_suras DROP CONSTRAINT quran_suras_pkey;
       public            postgres    false    253                       2606    30714     books books_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 J   ALTER TABLE ONLY public.books DROP CONSTRAINT books_user_created_foreign;
       public          postgres    false    246    250    3795                       2606    30719     books books_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 J   ALTER TABLE ONLY public.books DROP CONSTRAINT books_user_updated_foreign;
       public          postgres    false    3795    250    246            �           2606    26526 .   directus_access directus_access_policy_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_policy_foreign;
       public          postgres    false    3773    215    233            �           2606    26531 ,   directus_access directus_access_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_role_foreign;
       public          postgres    false    3781    215    240            �           2606    26536 ,   directus_access directus_access_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_access
    ADD CONSTRAINT directus_access_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_access DROP CONSTRAINT directus_access_user_foreign;
       public          postgres    false    3795    215    246            �           2606    26541 7   directus_collections directus_collections_group_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);
 a   ALTER TABLE ONLY public.directus_collections DROP CONSTRAINT directus_collections_group_foreign;
       public          postgres    false    3743    218    218            �           2606    26546 <   directus_dashboards directus_dashboards_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_dashboards DROP CONSTRAINT directus_dashboards_user_created_foreign;
       public          postgres    false    3795    219    246            �           2606    26551 ,   directus_files directus_files_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_folder_foreign;
       public          postgres    false    3757    223    225            �           2606    26556 1   directus_files directus_files_modified_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_modified_by_foreign;
       public          postgres    false    223    3795    246            �           2606    26561 1   directus_files directus_files_uploaded_by_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);
 [   ALTER TABLE ONLY public.directus_files DROP CONSTRAINT directus_files_uploaded_by_foreign;
       public          postgres    false    223    3795    246            �           2606    26566 2   directus_flows directus_flows_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.directus_flows DROP CONSTRAINT directus_flows_user_created_foreign;
       public          postgres    false    246    224    3795            �           2606    26571 0   directus_folders directus_folders_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);
 Z   ALTER TABLE ONLY public.directus_folders DROP CONSTRAINT directus_folders_parent_foreign;
       public          postgres    false    3757    225    225            �           2606    26576 ?   directus_notifications directus_notifications_recipient_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_recipient_foreign;
       public          postgres    false    3795    227    246            �           2606    26581 <   directus_notifications directus_notifications_sender_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);
 f   ALTER TABLE ONLY public.directus_notifications DROP CONSTRAINT directus_notifications_sender_foreign;
       public          postgres    false    3795    227    246            �           2606    26586 4   directus_operations directus_operations_flow_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_flow_foreign;
       public          postgres    false    3755    229    224            �           2606    26591 6   directus_operations directus_operations_reject_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);
 `   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_reject_foreign;
       public          postgres    false    3763    229    229            �           2606    26596 7   directus_operations directus_operations_resolve_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);
 a   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_resolve_foreign;
       public          postgres    false    3763    229    229            �           2606    26601 <   directus_operations directus_operations_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.directus_operations DROP CONSTRAINT directus_operations_user_created_foreign;
       public          postgres    false    229    3795    246            �           2606    26606 1   directus_panels directus_panels_dashboard_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_dashboard_foreign;
       public          postgres    false    230    3745    219            �           2606    26611 4   directus_panels directus_panels_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_panels DROP CONSTRAINT directus_panels_user_created_foreign;
       public          postgres    false    246    230    3795            �           2606    26616 8   directus_permissions directus_permissions_policy_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_policy_foreign FOREIGN KEY (policy) REFERENCES public.directus_policies(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.directus_permissions DROP CONSTRAINT directus_permissions_policy_foreign;
       public          postgres    false    3773    231    233            �           2606    26621 .   directus_presets directus_presets_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_role_foreign;
       public          postgres    false    3781    234    240            �           2606    26626 .   directus_presets directus_presets_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.directus_presets DROP CONSTRAINT directus_presets_user_foreign;
       public          postgres    false    3795    234    246            �           2606    26631 6   directus_revisions directus_revisions_activity_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_activity_foreign;
       public          postgres    false    3741    238    216            �           2606    26636 4   directus_revisions directus_revisions_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);
 ^   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_parent_foreign;
       public          postgres    false    3779    238    238            �           2606    26641 5   directus_revisions directus_revisions_version_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.directus_revisions DROP CONSTRAINT directus_revisions_version_foreign;
       public          postgres    false    247    3799    238                        2606    26646 ,   directus_roles directus_roles_parent_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_roles(id);
 V   ALTER TABLE ONLY public.directus_roles DROP CONSTRAINT directus_roles_parent_foreign;
       public          postgres    false    240    240    3781                       2606    26651 1   directus_sessions directus_sessions_share_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_share_foreign;
       public          postgres    false    241    3787    244                       2606    26656 0   directus_sessions directus_sessions_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.directus_sessions DROP CONSTRAINT directus_sessions_user_foreign;
       public          postgres    false    246    241    3795                       2606    26661 8   directus_settings directus_settings_project_logo_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);
 b   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_project_logo_foreign;
       public          postgres    false    3751    242    223                       2606    26666 =   directus_settings directus_settings_public_background_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_background_foreign;
       public          postgres    false    3751    242    223                       2606    26671 :   directus_settings directus_settings_public_favicon_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);
 d   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_favicon_foreign;
       public          postgres    false    3751    242    223                       2606    26676 =   directus_settings directus_settings_public_foreground_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);
 g   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_foreground_foreign;
       public          postgres    false    3751    242    223                       2606    26681 D   directus_settings directus_settings_public_registration_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 n   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_public_registration_role_foreign;
       public          postgres    false    3781    242    240                       2606    26686 B   directus_settings directus_settings_storage_default_folder_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;
 l   ALTER TABLE ONLY public.directus_settings DROP CONSTRAINT directus_settings_storage_default_folder_foreign;
       public          postgres    false    3757    242    225            	           2606    26691 2   directus_shares directus_shares_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_collection_foreign;
       public          postgres    false    3743    244    218            
           2606    26696 ,   directus_shares directus_shares_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_role_foreign;
       public          postgres    false    244    3781    240                       2606    26701 4   directus_shares directus_shares_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.directus_shares DROP CONSTRAINT directus_shares_user_created_foreign;
       public          postgres    false    246    244    3795                       2606    26706 *   directus_users directus_users_role_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.directus_users DROP CONSTRAINT directus_users_role_foreign;
       public          postgres    false    3781    246    240                       2606    26711 6   directus_versions directus_versions_collection_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_collection_foreign;
       public          postgres    false    3743    247    218                       2606    26716 8   directus_versions directus_versions_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_created_foreign;
       public          postgres    false    3795    247    246                       2606    26721 8   directus_versions directus_versions_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 b   ALTER TABLE ONLY public.directus_versions DROP CONSTRAINT directus_versions_user_updated_foreign;
       public          postgres    false    3795    247    246                       2606    26726 9   directus_webhooks directus_webhooks_migrated_flow_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.directus_webhooks DROP CONSTRAINT directus_webhooks_migrated_flow_foreign;
       public          postgres    false    224    248    3755                       2606    30832 "   quran_ayas quran_ayas_sura_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_ayas
    ADD CONSTRAINT quran_ayas_sura_foreign FOREIGN KEY (sura) REFERENCES public.quran_suras(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.quran_ayas DROP CONSTRAINT quran_ayas_sura_foreign;
       public          postgres    false    254    3809    253                        2606    30986 E   quran_ayas_translations quran_ayas_translations_quran_ayas_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_ayas_translations
    ADD CONSTRAINT quran_ayas_translations_quran_ayas_id_foreign FOREIGN KEY (quran_ayas_id) REFERENCES public.quran_ayas(id) ON DELETE SET NULL;
 o   ALTER TABLE ONLY public.quran_ayas_translations DROP CONSTRAINT quran_ayas_translations_quran_ayas_id_foreign;
       public          postgres    false    3811    256    254            !           2606    30981 Q   quran_ayas_translations quran_ayas_translations_quran_ayas_languages_code_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_ayas_translations
    ADD CONSTRAINT quran_ayas_translations_quran_ayas_languages_code_foreign FOREIGN KEY (quran_ayas_languages_code) REFERENCES public.quran_ayas_languages(code) ON DELETE SET NULL;
 {   ALTER TABLE ONLY public.quran_ayas_translations DROP CONSTRAINT quran_ayas_translations_quran_ayas_languages_code_foreign;
       public          postgres    false    3815    256    257                       2606    30813 *   quran_ayas quran_ayas_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_ayas
    ADD CONSTRAINT quran_ayas_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 T   ALTER TABLE ONLY public.quran_ayas DROP CONSTRAINT quran_ayas_user_created_foreign;
       public          postgres    false    3795    254    246                       2606    30818 *   quran_ayas quran_ayas_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_ayas
    ADD CONSTRAINT quran_ayas_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 T   ALTER TABLE ONLY public.quran_ayas DROP CONSTRAINT quran_ayas_user_updated_foreign;
       public          postgres    false    3795    254    246                       2606    30870 %   quran_juzs quran_juzs_end_aya_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_juzs
    ADD CONSTRAINT quran_juzs_end_aya_foreign FOREIGN KEY (end_aya) REFERENCES public.quran_ayas(id);
 O   ALTER TABLE ONLY public.quran_juzs DROP CONSTRAINT quran_juzs_end_aya_foreign;
       public          postgres    false    3811    252    254                       2606    30864 '   quran_juzs quran_juzs_start_aya_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_juzs
    ADD CONSTRAINT quran_juzs_start_aya_foreign FOREIGN KEY (start_aya) REFERENCES public.quran_ayas(id);
 Q   ALTER TABLE ONLY public.quran_juzs DROP CONSTRAINT quran_juzs_start_aya_foreign;
       public          postgres    false    3811    252    254                       2606    30776 *   quran_juzs quran_juzs_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_juzs
    ADD CONSTRAINT quran_juzs_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 T   ALTER TABLE ONLY public.quran_juzs DROP CONSTRAINT quran_juzs_user_created_foreign;
       public          postgres    false    3795    252    246                       2606    30781 *   quran_juzs quran_juzs_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_juzs
    ADD CONSTRAINT quran_juzs_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 T   ALTER TABLE ONLY public.quran_juzs DROP CONSTRAINT quran_juzs_user_updated_foreign;
       public          postgres    false    246    252    3795                       2606    30844 ,   quran_manzils quran_manzils_end_sura_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_manzils
    ADD CONSTRAINT quran_manzils_end_sura_foreign FOREIGN KEY (end_sura) REFERENCES public.quran_suras(id);
 V   ALTER TABLE ONLY public.quran_manzils DROP CONSTRAINT quran_manzils_end_sura_foreign;
       public          postgres    false    3809    251    253                       2606    30838 .   quran_manzils quran_manzils_start_sura_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_manzils
    ADD CONSTRAINT quran_manzils_start_sura_foreign FOREIGN KEY (start_sura) REFERENCES public.quran_suras(id);
 X   ALTER TABLE ONLY public.quran_manzils DROP CONSTRAINT quran_manzils_start_sura_foreign;
       public          postgres    false    253    251    3809                       2606    30753 0   quran_manzils quran_manzils_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_manzils
    ADD CONSTRAINT quran_manzils_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.quran_manzils DROP CONSTRAINT quran_manzils_user_created_foreign;
       public          postgres    false    246    251    3795                       2606    30758 0   quran_manzils quran_manzils_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_manzils
    ADD CONSTRAINT quran_manzils_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 Z   ALTER TABLE ONLY public.quran_manzils DROP CONSTRAINT quran_manzils_user_updated_foreign;
       public          postgres    false    246    251    3795                       2606    30792 ,   quran_suras quran_suras_user_created_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_suras
    ADD CONSTRAINT quran_suras_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);
 V   ALTER TABLE ONLY public.quran_suras DROP CONSTRAINT quran_suras_user_created_foreign;
       public          postgres    false    3795    253    246                       2606    30797 ,   quran_suras quran_suras_user_updated_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.quran_suras
    ADD CONSTRAINT quran_suras_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);
 V   ALTER TABLE ONLY public.quran_suras DROP CONSTRAINT quran_suras_user_updated_foreign;
       public          postgres    false    246    253    3795            �      x������ � �      �   �   x��ˍD!Ϗ\z����b�?��'������W�@w���ef��������d
K��Ё�kåw�^Z��b�)H{�s���P�<+��38rw#P\��Ȭ�}�%m˩�~��Æ�ݠTA��s19����׾���?�,3      �   �  x�ݝMs���Я�Ѯ����ڜ��I\���eWrp$A	D2x�}f�X\���/Sv�\r��ӳ�����������vr3����gv��3��rvy�������p�'V[��4�ajL���i��'�F��_f����j5땞~�n~���ܭ?�n���f���ߘ����_S�/���_O���_-����~�y�]T.L���/?���o�����ϋ�Ow_O������⭱a�s����f����'�����j�x\/֧��������y�Vw��&i����835�X�جt�g&q����|����mLV�c��f�X]�'�#&9qL�Ė#�r���G��d"1q�QNl!�1빒�� �8p�YN櫯�V��O˻������ӚC7Z�NF��#�ld��*�9��v�x-@.'��<��Uvd�h�B���GW�dȔ��>݋��X���`3�n�3�,�b2�.'�,�br���lPeDj�cNXڤgf�*#�c[�ĬUV��:byX6��"�1[,����?��[���؝)?ӓ�9B� +�Td7�'�E91jȪi6��^��%Ԡ��O��A�mm^+z�;���O�>�D�9]B/�-ֺ�ۜ��D��&3_;�J�1c�\l��$"m���E�l��$�l��\Y�̆�NR��1���ώ������'bݸ���b�r��٠_w6�v��\C?;���Vl��j.��f�|�l`=�q~�|s"�
���fل�ɷԐW6C&�-�p"�|�2;�U ����[��0����[�LXgZ�̆c$�o���4Y6#�^���s�ߏ��I��.7�)��߯9��H���X�����k.j� I����� >�R�J"Ֆ_�5̢�c�1^��:f̶b�fc�H�u̘My�����9c2�Q���-sҐQ�c�0/Rm��b~~��˯���F�m|0��W��C��[�0;�0��z�Rk��"��{�Y�J+�D�'�ufCo/e���'��-ǆ�A"��5�ʷ���l��d?�B�(<�D�f@+���A��
���`f҈�7���@a&_�3zlT�I��W'<X.�\H2k;�]f=9�$ȷ��a�$��g�� �j���-��^I��3F��e�T�1�g�F�Q�?�1'����+��ږk���_����Wɶتs�yÕ��3JRi������F�Q$�bۤG]��~�"����ܫ�颼�� �p0*T�H��mp
֮��x6%�͛���[5�6	�$��0{�f{�g�I�_k���	2_>�Β��6ڢ�m���D�y�v-�df��$Qj�ٺⷱl=3l'I��0����I"��6���.���%z�o�`�EF�Y҃�"�2`�%�vϧ,g���3�=�����>�=�E2l�l5�:���,�a3X��h�|����1c���ǳ�ιcK=��$a�ck?z>g�k�1�����RT���y�Y���*?s?�D�èVk1{�yf���a�Ѻ���`s������6��O�����=8؝�Cp~��/g�������.��������&���mt}�l���#έ>Q��J9g#M��e�l����jy�\�'�˛47�f��\�hNa6��W���Q��?[��z-��-�[�\�Ƀ䌮u���ݎ�1X_E/pF�B}�������~����KJ�
����$ꮳ a��y~H��(�:����a�F��:����o����C�}{1�:��և�fıIt�܂�._Dהu�X-�CIE�mp��OP;�5����s���,?XL��Qx[_K�-q=�ʏ?�b닊{x�������.��ѣ�c�%�`����M�3�����_��%}�����=<��#>�~�E��kdljU ��[������bΈ|�����6S�ۖ^㔧W{��'�£=�w���z� ��ʘ�b�/WU=��.�Q:cB󥪪�B;�6������@��]�)�m��w��Z��R����~��
�����ֹ�C��![#�ИC	��w5��)t0X+}��W�������]S�|j�H���W(�^8��J��X�OD�%
�^i�]b���9�UMZ�C��B-�M�9�����j�� ˯r�[�פ���X_���GUMb�C�o�0��#����z����S}��9���y/O�8-��������G�U�Z�	+9�C�Q{դ�4�X���UCuRjM��ee�_�b�f�>5�Ǽ���jz�S�Vh�y][��J�й�W	��z��^���`��$'|�l��m%�T s��F��(��t�8�A'>�%z~vEL��K�~k����ħt����1$>��7�����@�j2� �Uf�?�D�w����P$>�MY�A{���� �jd�S�Qo��^��~z��K�\�ǘ��"��a��^��
<F��E�������ReW�3�{��a��xx���w�?<�~������'��r���[ϾqxR]P. ���̾����R}��C��^����~�����s��*vZ�V��{j� ��N玲�O7��p��nê�uC���׎U5�n` �&�ꐷj�ݡ-"�#�"Y3(e`\kq��M����MQ}��WKh�n�����K�K ��������7�k�Q�%�>=ƶ;A��S{��,���_R��;����'�Bc�"��X�'m�S��!����B��������5�e���h��ꚙ2Cx)x~�����!<���Bk������Bk���-�l��x�U{�׹ls�������&E~�3��i�(��kyl�	-����Z�1���;{l���Ch�f�2��e�(�����A?�=-��m�0F�f[�%�:h�7�FY�п4&3���f����UǝwՌ�4F��?V5����1�yb�~�j�� �C���1� k��
m'�i� k��n�ཅ����|�#
2r(]������͛7�O��      �   �   x���Q� ���0&zߗ���Dl���e��B�BӖ&����w`���Ȋ�Ǫ�RFSq�=�bO�W�m��]<�1�Ͱ( '�k;(M�I_��NC����եt����8[{_^JP�P)k������|aD��g�&����H@���d������[����j�v�I�aY\�㜿�y      �      x������ � �      �      x������ � �      �   �  x��X�n�0�O1E��$R5z7m���Sd���]�x�ف�mb��FCT�m�󝜜�q��	�ɼ����z^7\6��	�E��:�5G�a-�7L2�`����uI������
���o[�������㺙���`��@��XA�bl�� �+X� XӪ�僿�X%��t�^��pII�K�bUm4F�P/�3���K��}�!0���'f+���}&����`쟞�1i���I�iƛ���ϳ�;}`Bk���u�*����t�d�D�|���0H�B�a�v��c�OPGēO]���^��n�p@������Th�{��.*�x�A�.Ǟ�kCH
\|boТ�^r�W�PGz��^�P.8��>���P~o�]'��IU�uy���/Cj�7Qe��2��e���Lq$?K��O_���j�s@f�ޯ��� ���u;@� ��ڑ]�pf�|�;r)z��?�ݑ�Q�'�k]�Ȯ(6b�H{�=֛�S�w
3��:�ơq�ލ#���΍�sQnϷqr.ʀ��S-�՞��0WU�x��\�ę��_�-�EG�/�( V�^�~@9�}�e��9�yR:1���J�'/����I��b0G�S��� �0����e��Mk�sBK�k͔U#��5�)�U��LI���0%�$�W��ə$��$S��ĳ���g��[$՞�!������F�4�)�i�v��<1!:ϝy|iL�s��? ;�bڙ�G�,Dy5n��^uݒ�7Z��Jr�c��L�۫	Qv&ɐ��ړJ�yM&��9>ؓ`�]�I��z��4��D븢C2�AA�δ�'Zl�i�:F�Z��<� ���3宬�+�2��K��K`��,!�R¾f�VCL�![M�5��v|G�fT��*fԏٝ�MO�y�B��P��9Ku6��Z��t)�����!��.�~Gp�sNrZ-W�/�Ըfmgȩr�2�r��z����?�Z�}��~4����*      �      x������ � �      �      x������ � �      �      x������ � �      �   #  x��X�r�J]'_��+��vNB �bp�l�F�;N�Ȓ�_�m��N6)��s���� �0"jqrcœI΋,3��yrYT����_�\�D����`��wD��Jb,�A���4�Ӭ�������+��B1����O��1��q�d�p�å5�.&��)|���d��%�i�Mw��H�F��$g'�i�7�Ws�P����u�y.�<^*IԀ���5YUӧ1O�$��P�|�����-���	���d���l̏& ��c�������1�S�͂!_̉3�/�G!g��?M�Ͳ�.��TK���� ��v[�y����6�.�TAF��`G��}��E��bΑp�<=�	8_}�1G��#�����6me^�<,���샵�J�@�ڼ�p(��
8�s���l*�ߛjN0��q��n������"\P���v�	�Ps�A�_S&�Y�;���>��Lc#4lXY?wgvE��3M����.��>�8�t��`��X�s���z��L�X
>�[�nR�&,�Pmy&%�X!:���V�/�+aLe �ݖ��9�������ߥiR I��8��<
����P��8��z>�i%��[9q��l��=��Fx�=m�6ɪ*�l�KQ�d��Q�T4��ͳ�2���8,]��b�fp�LӖ$�kj�&(x������
��ϝN>W�4�?;m�p�pb`_�9����y0�y×g�$�Ԙ2�H��^���i8���b�7�
����ez�B����\��σ8�=�P������]ʹ�~��	����[k�6�֦J6ţ�$�5�4$8]�fk�̯�<^�N� �f�c;V76�_M*`�����i����ݣR3�0&� ��*rh���L��z���,Ho��l�Dn��Fc�,�鎢=2���a;�!�3��!��C��c8�k�����Ti^�^��)�|�3�G��閣[�Φn��P��8�8]�	����Ņ����s`8%����ޅ&���=	��5����<��W������9��*�Mֵb��	!2��eV|��-%"4D��rZTnUG�s�Q���!���EU��+y���eU��UR�w��s�LQ!�b�imr����62%�i�����dl��.��O&⨘�0�D!�u�� ��=�=N���4��Q��$uo��[ԥ[�GII+�2H��ʙB��+>*��Б>ʂ���r�:>=�C'Wg�ɚ���7�-�I�!���W���*�-&�Τvq�c�����
�n��jA�.D��?�'xg6�Qw���N��x(����h8�mяX�C�!���� |.� \�b�Ḽ���G`�+�"��_o�4+��|o	/�0U��^�t�8{w�1l�w���p/�����W��Z�B��|�s������B(���X_���o�/$�X��{����U{��-$���6zg������cuצvI��|W|�@�ӳ�b��q7'4t�M ���B���m�D� �'P�G������NV�m# S�������� Xj�B      �      x������ � �      �      x������ � �      �      x������ � �      �   l   x���K
� F��u)��t��D+��zSѠV_W �����}���S��2��ai����������Rƪ�A[Q�q��:<H8
��&
&
+�w\�2"��D�ͅ�Y�      �   �   x�e�M
�0F��9܎dҤc�yOP��Զ���Kp#�[}�ǡ\�0�c7�)�x2�$uj�����C^�w�蔏Xeo��j����֏��z0�<8,i&�d����-=e��Un[U�\�HN=���/7��|�Z J�7�      �   �   x���K
�0бYF�)5�.�+�)Fmc3hŽ7�n��<�諸��v�
�Ù�fڪ���b(eSY��^�c�g,߇�R#f�o���i��'FC��8�����?Ś��>�z�e�u�Y��8#����B~	�}�      �   �   x����� ��ô��z��������?���r�"��c�^�s���Z� ����
N�4��h_r9{K;��I2���@�����t+�*�|J".E1H�]�*�1���Oݾ*@��"������@ 2��x3}���~��2ci 0g;��B����?�.(d�<a��\�e9�DmwŬ�5�b�r�@˚���_u%���%^�b{��Q.�u�$I��F��      �      x��]ݏ�������8&�}oi�yh�$�Sr0���V��v$�.����I�(�CI�ʶd.k["g�7$�$%Y�Q�J��16�P�i�d������$��U0{����,
��n��8{��o����)\��m�1k'}~�v�4�����n�[<�|�~����S���׳�:y���4�ۧ�ĳ7�f��]�
�ϟ?͒�x|�E�fx؄�S�����R���-��{�G�ϓ��9���Q��G�6�����:��R;�3���.
�E��v]oƏVO��
E����>��6ܾ���~��(��h�_�>l��u�7> 1���&�_-KҊ�v����MIt ��!>���B�C��Ƈ���0i�����<��|����M�P7XzHO�*�T�`��Yۈ��4�Aw�A�����U�(��z�U�o@of�8��+X`�m��Οٮ:|��t4I�����'~������a뇛ϟ����c��r�?�Ǎ_|���>��b�.����H����L�$}w)xh����\/Lb+za�1+�YCs:ɤ�%�sp,Œ�R�< Voy3%�O_�
􍰓#gGA�*X�T�>�ף�i�C���}�6q������H�C�#�7�N��C<��|.&�c�3�9���/~@��ö��0�b0*6A��.�F�W�6�K�B�f����C�Jl��H��� M�Y�Oܒ�����A�P�0�ݻ�wl�5��I�&�H
d�΄�.1� ��b@����qY{�-�ThBmjH"�����v�.�߫�v�z��05���G(���EP�f�ı��7�B�E`z((�j���P���6�А2�a���?�|����r��K�}]��<�I�u���{�q�1��* ����j�n�?��0�(Q�|m�s��r}�o�U�K����\S�+ئ���q��n���}���CT(�� ��M�P�"D8��N�w�8�� 윁t����Pc�i��ѹW��g�g�чF��#�jx���W�uJ��}KA�OX���2NDYU���"��/o[���ß/�g�$T���Ŕ˘rS.�R����3�i�M��B��/�`�	J�4�V���{�6�j΁�[ɻձ�v8xN��+�w�K�c}��s�pӀ���d��X�;<�0�G��ϙ�CDR���Ǽ��I(j��Czxa��K��JR�m����4v��M��4�t_�����hS�˩]ά66~�lZ�@'�IN]���� �j��Q)��(̧�)O��<!L̞`<��������I�0g�ܟʗG��D�0$z�9��$��g�!���rt��bY�-���	5T�ɶ�J[��e_�R��}a;|�˂ �2�����G�����`Rb��x!�BsQ1"��^�1b ��Y9���J�j�����{�,�h�9J46~���e���?�:�"���k4��=��i����3aT��1r�ƣ��̸�4�'��2K�苳�C�@�ynO��ß�x/�U��j�Yw�f�p�cp%�c�<�M���P�%��^�1�SF������+	%���e�m��5�o�'##�fӞ|�k�AJ눧91�Mg��ߪ˺�����3l�ы��7<��WE�ʚ�u�� D��;�Had���wPF��z����~s�^�=�pf]b���A��9�#q�2�P�P]2J�G��d��,|ާ�C�G����ў���K�4춼���S�����X�aܵ�]���e�ՄK�6�my�u�o�)$#Vc�!{�k�$�c��B������^"�퉳lK=������qt��pv-b�{}3v�]&�ݽ���k��9a�bC7��Zj�ؐt#���Mm��1�m��$,l�	L�Y��4��)�����UVN#b-���C���m���쨃@'���v8���F"�����?�� ?��:3�$���Gl$��	K��%�#3%��PS�[ ��(/�Mt��0%��%1ɪ� ���$��uc��(��AN�r����]Ju�K����Xv�4HvJD_�� &�q��c�����b�J]�K[S�3U��� F���MFΜ���޳�^8�6��Ȝ)�q��C��p�"�J�[���2w������%�I3e���5��X\I<⨑/S�o"I]C��x�w�-�Ú|���yt)�#��tP� q������8�o�����̦Ea��	-�&_�s��'��G=�����R�5*���2�x7�Y�8�2�b}��|�0��Ӹ�e�� �����R��t�SF�Q� �)�nT'�M'�{�.|�� �;��I� κԃ!����!��[��x����
�mP�r5��\�~�%se����x��=�G\տʴ'�,��
�F�c���_r0���y���ӮZy��u��KoP���6��i;HG�Wu@-v�ɲ�!��SuS�\4���+i�(k�]t�����bW�'`�hws�e�ѹ��L�s���UwdC)� �R�n����$L���A袤�� z�8s�Ҡ�~�H��]�Z��z������_y��c,��x4��:�}=W§�y��TpV� ��ތ�����)`���>>0,���l���y�xܸ��9.rY�V�M\� C��X�`�rqo���縒ZCTF���(�
b�UA�^j	���[��rKEY���#jCE��i�K<��I����[�j����ǧ�u#��$^8���Y�`��#rR�#�t:j�n������Ql Z #�C�t��1�C��c������u�
608)�#!�&)�o�ɻ�!e�a��Yq�r�c1�!��c��^��AgO��	�r���&Y
0�L�!Q2C g�n��&ʲ(l���6��ׁ֖1��t����j��}s�8�C�D���=�N�G��]+J\�]B<:O�u[Ë��(�r�@��+ ���R�:�D:i�e�`���/�F*]yBĔ�Y;T��`x���PE�!O����M\��`x��.C���B!h�tb>��ΦB��^�D�c[n
���g�X�~�V�2. H?�]^ܮ`��3�ry�q���?�}A�C(]4�gϿ����6 �;�"e��˹�]�ڬb/�uu+�ZĂqH�JNY�n�M:\���Ol�	�S�F�mYfn�E�Ͻ�#�5�j
���XF���6�'Dl��=|V�[M�������&?;�� �u�T��^��y����i���Þ2ڳ^��澙��ɏ���^jC)XC�q��t����3�x��`62�m/�}{\b�q�mޤ��j�9�oZǳ>���4�L����G�P)SS�6-�)J�'�_cy[J����!��H�M�(I�S�*sWߌZo4خ��p[9��Fd)|�������u����I����iR<}R�7$�7)A4 DMDb2PFc���Iu��-�+'���ҏw=�M;q9 W�Pk�m���Rv렞����wh�v�n�W`�jݭ픍Ģ;�_���#^�d�`�br��@�5?���|�����2�-���S:��Ym�D��|�������ғQ�����{(6�C�E��%d����D��WliȤ��V�&��+W���l�B���Pŧ�0(5Km{��ae�{q.��5A<R���v䘌���BX�l<.KٵMΈ	(�*
�t��N'Gv��v�䙚�لZ��7w0i�+C�v��)D��5�p� x�S�%�D�0�^�͸����V2^+�t+h���ZnA{�)B��K�1��fג�o���^�[`LZMEx��'5q�gk�-0)�[e���m/O��	r`�C�u��n���#_�A�ܛ�ؓ�ۣ���l�m���m�bk�M*��]�N�YНZ,�8� �4&Pz����vC`�"W:nG����$�s9Nl��fV����7 3��!��j����26x�Gɏΐ���v�D�K�Z$�N�g4o���EN	wYW��������9`�"gq�ƴ��� 8��l"j���)���ī�  E  �����r���;E��v��LL�}�CM}F�`�U�`;���L֩�fӒ�t&~3�f�n�O��
���p�;� 0�@oP��h��W���l���W���Aw�+�0� u��u0���v�Q��� ���Y<�_䀑��89����d��G���Q�]����A'����?�$��>ʶ8�q�&�#��A�u��ߔ�9�(�q�o�չ�;� �����������Ƴ�����*�#��r�-p����%�>���s���!��f��{M�+��q���{��Pc�SZ�����Ұ���c}X�]	<���f�T$6�"1X����\���PL�Q;�*w0����kҡB���ᅶ��H���2��'`�5{?795��wt�s2��o:���Mm��tb�0�	���2��A��L\����>c��9Ω?�A�m«�.G�#N�-iZC�k��;���@{ �i���Όٝ�(aM�drgF��x DRNv�\�P�ݱrB�b��~�֗�ӧ�Ar`�뜉(l�ߝM-�
Q� 
�zɕ�K�٩����0.ܭ��P+�\q���_��.�k��2b��$C�JN��E*��].~׀��rUAjSa�Z��MGp5['�Ш���l�s:��ۤ�����JAq���ߠ�eI�����Mi��+R� �pH �
���t��8�8�Fp�l��Cv@)-�e���x-˪��O�F�ԽO#^��l��5��l�>C\��$�I<�{j�)GCڕ-�J$�2�[�1�
nP�L�	MV�`�.��x�=X]6`7��Ƴ��٨T�p�e�V�Ttk̦W��Y]. 6��
t��~��իW�h��T      �   ]   x��A
�  �����a�J��@/B����J��:V���Y�P��lVĘ�H���&i����P-��؋�2!�i����FϠZ�?��9��G      �   �  x�͒�n�0���^��1��6]1D���&mH�J��P �t�~��@5��չ��J��ȽÃH���<]���2�u8;|�y�[������dO^C��?���h*�Q�@"%������07�m�rK1� B!���.f�CL��6�u���˺N&�@�&H��ۡ��f�5� ܀�(�,�o��u��d�,�	3mô�����$�)���^ѷ9�����M����w�=��b;g2A{�#Ʈ�~P�JD��#ς0*ϺrW�tU��B5�Cj�[ժs��£E��ה�D�C�0�2���_�VdK�rMG��q�?����E�#ʟ�Dx��nຮ�m?�_>�ϧ9�O���t�>��w�_��rφ�� �!�W      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�MK�0 @���ЛK�&M�
�PTd��d�.�lK�ֵY��zx�<�i�R* 6�/%��r�	�D'�Y

�l'3�i��E��x]9�t��X=nt8�I��QJ���d����k+v��?L��a�A7���w���f���K�K��É�mq(%F��c�!�|��?�� ��T�&0��1(�EPiΉ��hk�:F8�(�(�@�E?D��KDA��ޛ��r�	hcű���� �ƆX�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     