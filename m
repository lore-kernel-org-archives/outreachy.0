X-GM-THRID: 6256356270602715136
X-Received: by 10.107.10.217 with SMTP id 86mr14745240iok.6.1456672944119;
        Sun, 28 Feb 2016 07:22:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.74 with SMTP id i71ls29153ioi.96.gmail; Sun, 28 Feb
 2016 07:22:23 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr9302713pfa.2.1456672943764;
        Sun, 28 Feb 2016 07:22:23 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by gmr-mx.google.com with ESMTPS id nt4si769745igb.2.2016.02.28.07.22.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:22:23 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id d205so7727485oia.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=xYxxRDoUosxbQ+UTdtg+etxiuj3BzK8uD+UBb5intrg=;
        b=KhF+NgJQYTeilEvqXJipOwpA7sAw00bKNA0G09PuUuE8+aAl2rP/PcQZkPEkAwcprB
         Uip8cJnkZ2n19Bd4YnJoWPPTwxud7c7fm15sLt4WmfuRoHePX60m4XhvlYUYxHjql1ny
         3R37Ruvwk0XeMnZ9RcuhjhAiu+6i09a2R6UjtIhWBXVKXC13344tyL2Qtc6DKBwfqR1f
         Me+KVcaj8fNtoPES7EK6bgkg160KeXRhcjbJGkj+YEteyZuBXiTIPFE4RUaaC+08H7fZ
         OVo5TzkC7SFVlQdq/U4x7HCuA5X9/HDO795rp6n6Llp7HaNJEN0ZbIHzuAW+7T2dBcN4
         EIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=xYxxRDoUosxbQ+UTdtg+etxiuj3BzK8uD+UBb5intrg=;
        b=eyiupu/6XLk5Y7l4sS+dYiD6g3b4NEbMrHieVDurDDs0xTaShmKulN5SvA0qMuJ3em
         nNAAURS076XDGe9YeWJYdVfml+RRcjHx3REFD1hu8V5WpECiQfKte0SIdbACSn6mD5MN
         0/3V9FuSlIGlpFV114N97EBq29ZK+xdN3KS8N7s1x1OcNr1LoIRT4rCn/h8OT9QOT+/6
         Zj03t6wNBDk9QexP4eKg3l+onnSxA0MAIZXPwHh3ZlP3Xr1XxS1nzKfAAY8ScTDemk+1
         xIpJTRsC382DWM/67CteczKq9Ty5SJoRcR9QEBWINeQUXDTVxKdQkqBIT5ENdl7j0e06
         H/vw==
X-Gm-Message-State: AD7BkJJs0QgdgZa1FRG2M4GIPmTqgjkzr1/gtOZmclEsGXxvvjvT25iagnpfY93Cgmc5m/nHjb3vzMcXU0bpLw==
MIME-Version: 1.0
X-Received: by 10.202.206.66 with SMTP id e63mr8062626oig.88.1456672943557;
 Sun, 28 Feb 2016 07:22:23 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Sun, 28 Feb 2016 07:22:23 -0800 (PST)
In-Reply-To: <20160228195646.GA6457@janani-Inspiron-3521>
References: <20160228195646.GA6457@janani-Inspiron-3521>
Date: Sun, 28 Feb 2016 10:22:23 -0500
Message-ID: <CANnt6Xkdb=_6_1hj4+5tSZ6mtUAQrLgvUjSjwsi+V2kKnPqEcQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Prefer list_for_each_entry()
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113d395c5ad51e052cd61914

--001a113d395c5ad51e052cd61914
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 2:56 PM, Janani Ravichandran <
janani.rvchndrn@gmail.com> wrote:

> Use list_for_each_entry rather than a combination of list_for_each and
> list_entry().
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
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 9dfde07..7d1edb3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -452,8 +452,7 @@ static int is_duplicate_packet(struct ieee80211_device
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

There is an error in this patch. Please ignore this. Sorry.

Janani.

--001a113d395c5ad51e052cd61914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 28, 2016 at 2:56 PM, Janani Ravichandran <span dir=3D"ltr">=
&lt;<a href=3D"mailto:janani.rvchndrn@gmail.com" target=3D"_blank">janani.r=
vchndrn@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">U=
se list_for_each_entry rather than a combination of list_for_each and<br>
list_entry().<br>
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
=C2=A0drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/st=
aging/rtl8192u/ieee80211/ieee80211_rx.c<br>
index 9dfde07..7d1edb3 100644<br>
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c<br>
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c<br>
@@ -452,8 +452,7 @@ static int is_duplicate_packet(struct ieee80211_device =
*ieee,<br>
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
2.5.0<br></font></span></blockquote><div><br></div><div>There is an error i=
n this patch. Please ignore this. Sorry.</div><div><br></div><div>Janani.=
=C2=A0</div></div><br></div></div>

--001a113d395c5ad51e052cd61914--

