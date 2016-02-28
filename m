X-GM-THRID: 6256357613460520960
X-Received: by 10.140.25.227 with SMTP id 90mr26643273qgt.17.1456673277173;
        Sun, 28 Feb 2016 07:27:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.39 with SMTP id rt7ls840573obb.3.gmail; Sun, 28 Feb
 2016 07:27:56 -0800 (PST)
X-Received: by 10.182.65.135 with SMTP id x7mr9771557obs.13.1456673276796;
        Sun, 28 Feb 2016 07:27:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x231.google.com (mail-ob0-x231.google.com. [2607:f8b0:4003:c01::231])
        by gmr-mx.google.com with ESMTPS id ug8si723114igb.3.2016.02.28.07.27.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:27:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) client-ip=2607:f8b0:4003:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::231 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x231.google.com with SMTP id xx9so2320491obc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=Em2eAjHQPbvBmamxRnCC7HJV76NFrDT+u8/Ei6lWFXM=;
        b=LDfIa65KUL3NJ57bpYHRVmna0F4NbOxyTFJ5yWcvHb7O6L/JNwOZ9z7K9jkmgieJob
         qyE5pUbSAVu6E5cve1Qw+yBTArb7x0RmaUHAeKnnnmMUtAA3xueAr+XtLx/vnAbL12ar
         x98yCSMUz/UvZpe/sHZdYlZzgrBb4+W+AD1AzPWeO/tBFUbn87aEHxQrfE71V59+5Nbl
         69vXx7rNh11TUdzNLn9fxwQoWXyzJCArRxbpKhhr6jh5pFSeSmWUkdqkUyuR/G7SckSi
         KcuOUJS6c7KcqCNLTfvZeAmtix1WL8HtZR2lEh9tv222SJNHYyywJVhEMlMq224o6/O6
         z4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=Em2eAjHQPbvBmamxRnCC7HJV76NFrDT+u8/Ei6lWFXM=;
        b=LxdYWHtHl2COVx905Msb/8fGwOAlTVSnsF5JFdX3wDFm9f6TRdoOjT8YtAQWx7pzzH
         RuhKa9k0VBusDojl/8yckZMrB1seSbp3sWnETr4Fb06bwK9oclbGdT9ZmFQNaw3qyXnW
         8PW8rO1TflHkdH5tRnre7VhyjQxPBqc7PNwAIKYkv52i9ES9K85apgrYFPGrxWkh/cCH
         6G2SvZLaj4PNS6SkvQKeQhbTGw6mJ3EwH4TTtJ0tDAAIQKcDUvheVQ3eHf+KcHabdwip
         QZV8WslO6nXfgwh9X8HzJ1Pr8yswr3OUIM1RqGFudS3acc02tfgR/K+xb2ygeEdD7scO
         lAig==
X-Gm-Message-State: AD7BkJI626sG4ofs6bigPPh9Qs3fdgUVHEmjPc1MK09OVmQADbyb4P65tSUiZFfhZgkEVbCgVrM3X2w5/pvblw==
MIME-Version: 1.0
X-Received: by 10.182.24.170 with SMTP id v10mr8763159obf.55.1456673276537;
 Sun, 28 Feb 2016 07:27:56 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Sun, 28 Feb 2016 07:27:56 -0800 (PST)
In-Reply-To: <20160228200159.GA6547@janani-Inspiron-3521>
References: <20160228200159.GA6547@janani-Inspiron-3521>
Date: Sun, 28 Feb 2016 10:27:56 -0500
Message-ID: <CANnt6XmeL8BF6JkkkP1DTC+thh-pUwAEMBY_G2-KJSt4=NNJAA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Use list_for_each_entry()
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11c304ba33bbbd052cd62df6

--001a11c304ba33bbbd052cd62df6
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 3:01 PM, Janani Ravichandran <
janani.rvchndrn@gmail.com> wrote:

> Use list_for_each_entry() rather than a combination of list_for_each()
> and list_entry().
>
> Semantic patch used:
>
> @a@
> expression pos, n, head;
> expression mem;
> type t;
> identifier var;
> iterator name list_for_each_entry, list_for_each_entry_safe;
> iterator name list_for_each, list_for_each_safe;
> @@
>
> (
> - list_for_each(pos, head)
> + list_for_each_entry(var, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when any
>   }
> |
> - list_for_each_safe(pos, n, head)
> + list_for_each_entry_safe(var, n, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when any
>   }
> )
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_rx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>

There has been a mistake. Please ignore this. Sorry.

Janani.

>
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c
> b/drivers/staging/rtl8192e/rtllib_rx.c
> index af64bd3..2737aa4 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -402,8 +402,7 @@ static int is_duplicate_packet(struct rtllib_device
> *ieee,
>                 u8 *mac = header->addr2;
>                 int index = mac[5] % IEEE_IBSS_MAC_HASH_SIZE;
>
> -               list_for_each(p, &ieee->ibss_mac_hash[index]) {
> -                       entry = list_entry(p, struct ieee_ibss_seq, list);
> +               list_for_each_entry(entry, &ieee->ibss_mac_hash[index],
> list) {
>                         if (!memcmp(entry->mac, mac, ETH_ALEN))
>                                 break;
>                 }
> --
> 2.5.0
>
>

--001a11c304ba33bbbd052cd62df6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 28, 2016 at 3:01 PM, Janani Ravichandran <span dir=3D"ltr">=
&lt;<a href=3D"mailto:janani.rvchndrn@gmail.com" target=3D"_blank">janani.r=
vchndrn@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">U=
se list_for_each_entry() rather than a combination of list_for_each()<br>
and list_entry().<br>
<br>
Semantic patch used:<br>
<br>
@a@<br>
expression pos, n, head;<br>
expression mem;<br>
type t;<br>
identifier var;<br>
iterator name list_for_each_entry, list_for_each_entry_safe;<br>
iterator name list_for_each, list_for_each_safe;<br>
@@<br>
<br>
(<br>
- list_for_each(pos, head)<br>
+ list_for_each_entry(var, head, mem)<br>
=C2=A0 {<br>
=C2=A0 =C2=A0... when !=3D var<br>
-=C2=A0 var =3D \(list_entry \| container_of\)(pos, t, mem);<br>
=C2=A0 =C2=A0... when any<br>
=C2=A0 }<br>
|<br>
- list_for_each_safe(pos, n, head)<br>
+ list_for_each_entry_safe(var, n, head, mem)<br>
=C2=A0 {<br>
=C2=A0 =C2=A0... when !=3D var<br>
-=C2=A0 var =3D \(list_entry \| container_of\)(pos, t, mem);<br>
=C2=A0 =C2=A0... when any<br>
=C2=A0 }<br>
)<br>
<br>
Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchndrn@gm=
ail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/rtl8192e/rtllib_rx.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br></blockquote><div><=
br></div><div>There has been a mistake. Please ignore this. Sorry.</div><di=
v><br></div><div>Janani.=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192=
e/rtllib_rx.c<br>
index af64bd3..2737aa4 100644<br>
--- a/drivers/staging/rtl8192e/rtllib_rx.c<br>
+++ b/drivers/staging/rtl8192e/rtllib_rx.c<br>
@@ -402,8 +402,7 @@ static int is_duplicate_packet(struct rtllib_device *ie=
ee,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *mac =3D header-=
&gt;addr2;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int index =3D mac[5=
] % IEEE_IBSS_MAC_HASH_SIZE;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each(p, &a=
mp;ieee-&gt;ibss_mac_hash[index]) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0entry =3D list_entry(p, struct ieee_ibss_seq, list);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry=
(entry, &amp;ieee-&gt;ibss_mac_hash[index], list) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (!memcmp(entry-&gt;mac, mac, ETH_ALEN))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.5.0<br>
<br>
</font></span></blockquote></div><br></div></div>

--001a11c304ba33bbbd052cd62df6--

