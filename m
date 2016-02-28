X-GM-THRID: 6256352550355730432
X-Received: by 10.13.226.84 with SMTP id l81mr9101087ywe.16.1456672734879;
        Sun, 28 Feb 2016 07:18:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.195 with SMTP id k64ls1131665ioi.66.gmail; Sun, 28 Feb
 2016 07:18:54 -0800 (PST)
X-Received: by 10.107.133.10 with SMTP id h10mr14773505iod.8.1456672734430;
        Sun, 28 Feb 2016 07:18:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-oi0-x22f.google.com (mail-oi0-x22f.google.com. [2607:f8b0:4003:c06::22f])
        by gmr-mx.google.com with ESMTPS id ug8si722172igb.3.2016.02.28.07.18.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:18:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) client-ip=2607:f8b0:4003:c06::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c06::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22f.google.com with SMTP id x143so20897822oix.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=RxDk8FTh6F55o3brQZWts624XTAablY3Qt7dUEa73+Q=;
        b=JReEA4o0xj5eA5FAGIWKIL/VRIovz/NOYpXCkYDBZO9NIcEE2CXNqXW4a8bItkXIy1
         9uG4Ap2I3Df3Tlsbs/wEpM6MxaIY9K8zlnUi6FOtM+avsJb//bdsullXH6hIgHb1Y2u2
         Uzy1m7xEy3j45MvS23iuQ2HVArlRLq2vB5uAsBopFOCW7Gv1TUCKvOZOlpYeWrNwmRjs
         QYh2AaOZfS4mSp7S7JA2uyAasTfM/M3i7eJ0lJ/Jex/c8BWdtVjbj+cqCHS12hGCsz79
         jJT1eOtotJLaPWkzLDaozrCbRz9IgoVOIUBjB5wkwhiCTTDfvN6nhEPnVS5ei0LXkUiy
         MvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=RxDk8FTh6F55o3brQZWts624XTAablY3Qt7dUEa73+Q=;
        b=LXrU8nm/j51/v7NH4QAeAXotHoCOjyD54GeAVHYy7W36dm9wM9Mtw4Mvl3F31/Geks
         m2mXLE9okpVqt44xGUrUoPG2Ce7RvegbIapca9rwIMBPDiEmG2KBXMdDYJmEOE1Uo56W
         29JXBvZyrTdyIQ0mJNxGgiVjuPwcSS23JOrqTog67vJ7YYIq67AY3DcisPKY7s73aKXb
         QMJEq4TyqGHsmcE9nrnSlzFKEwSA5HY1bWwGzVJ3qdS3E23fYbHO45YpjUO+sxPEdEXp
         MewltxJhMliMq6KCCtYYtt32iA9PnWibBk2N6/gIjIM/6BYF1PPSdpx6StcraigUxKEq
         +hXg==
X-Gm-Message-State: AD7BkJIHG0RzG4MmO0IbF3VtBAn9zgU7a9lATKbbQAZBoJP9uSTc4LrLTR6X917ZETJ+NEcim6ldXhxgdVdfEA==
MIME-Version: 1.0
X-Received: by 10.202.200.88 with SMTP id y85mr7216529oif.92.1456672734255;
 Sun, 28 Feb 2016 07:18:54 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Sun, 28 Feb 2016 07:18:54 -0800 (PST)
In-Reply-To: <20160228194220.GA6211@janani-Inspiron-3521>
References: <20160228194220.GA6211@janani-Inspiron-3521>
Date: Sun, 28 Feb 2016 10:18:54 -0500
Message-ID: <CANnt6Xk2EaTYtnKpdMWTWbun5xE36c=tNFbeOXB-g2PdoJO4Qg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723au: core: Prefer list_for_each_entry_safe()
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1134f990e1225f052cd60c97

--001a1134f990e1225f052cd60c97
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 2:42 PM, Janani Ravichandran <
janani.rvchndrn@gmail.com> wrote:

> Use list_for_each_entry_safe() rather than a combination of
> list_for_each_safe() and container_of().
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
> - var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when any
>   }
> )
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_recv.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c
> b/drivers/staging/rtl8723au/core/rtw_recv.c
> index a66d631..3ad81d4 100644
> --- a/drivers/staging/rtl8723au/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723au/core/rtw_recv.c
> @@ -1795,8 +1795,7 @@ static int enqueue_reorder_recvframe23a(struct
> recv_reorder_ctrl *preorder_ctrl,
>         ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
>         phead = get_list_head(ppending_recvframe_queue);
>
> -       list_for_each_safe(plist, ptmp, phead) {
> -               hdr = container_of(plist, struct recv_frame, list);
> +       list_for_each_entry_safe(hdr, ptmp, phead, list) {
>                 pnextattrib = &hdr->attrib;
>
>                 if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num)) {
> --
> 2.5.0
>
> Please ignore this patch. There is an error. Sorry about that.

Janani.

--001a1134f990e1225f052cd60c97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 28, 2016 at 2:42 PM, Janani Ravichandran <span dir=3D"ltr">=
&lt;<a href=3D"mailto:janani.rvchndrn@gmail.com" target=3D"_blank">janani.r=
vchndrn@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">U=
se list_for_each_entry_safe() rather than a combination of<br>
list_for_each_safe() and container_of().<br>
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
- var =3D \(list_entry \| container_of\)(pos, t, mem);<br>
=C2=A0 =C2=A0... when any<br>
=C2=A0 }<br>
)<br>
<br>
Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchndrn@gm=
ail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/rtl8723au/core/rtw_recv.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rt=
l8723au/core/rtw_recv.c<br>
index a66d631..3ad81d4 100644<br>
--- a/drivers/staging/rtl8723au/core/rtw_recv.c<br>
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c<br>
@@ -1795,8 +1795,7 @@ static int enqueue_reorder_recvframe23a(struct recv_r=
eorder_ctrl *preorder_ctrl,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ppending_recvframe_queue =3D &amp;preorder_ctrl=
-&gt;pending_recvframe_queue;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 phead =3D get_list_head(ppending_recvframe_queu=
e);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_safe(plist, ptmp, phead) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hdr =3D container_o=
f(plist, struct recv_frame, list);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry_safe(hdr, ptmp, phead, list=
) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pnextattrib =3D &am=
p;hdr-&gt;attrib;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (SN_LESS(pnextat=
trib-&gt;seq_num, pattrib-&gt;seq_num)) {<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.5.0<br>
<br></font></span></blockquote><div>Please ignore this patch. There is an e=
rror. Sorry about that.</div><div><br></div><div>Janani.=C2=A0</div></div><=
br></div></div>

--001a1134f990e1225f052cd60c97--

