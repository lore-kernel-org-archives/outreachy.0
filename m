X-GM-THRID: 6256360130232713216
X-Received: by 10.98.76.83 with SMTP id z80mr5121221pfa.4.1456673396934;
        Sun, 28 Feb 2016 07:29:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls1883061qge.36.gmail; Sun, 28 Feb
 2016 07:29:56 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr9298254ywp.33.1456673396146;
        Sun, 28 Feb 2016 07:29:56 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id im4si294927igb.2.2016.02.28.07.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:29:56 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id ts10so115271384obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=Hwl+xuThDrUMLgN/yqAnEkeStFGJJMcnl2daH5SBa9w=;
        b=cz3y/fqVFSBlxKwV4GTKD/HT45OPDyZmdCRXaFOiKlHoecrKOETn9hCGguwGz9Pdpk
         0wayLdrMcha4bCz1sx/efzk2rnQ9e53Koh3zllZfIw/AaN1zcZRLyapX1H+MJlvSaVpX
         2W8oI+P9nUl+bfVsv9omu9rCrLbH3NyetpmJy+syUxnRIyB0g2iehJwZqY3xf+/6y0ay
         1ub+89Lqe5yaiqzq0uGRCku5djmkrdZ4+VYD67RNcWMvNJIkRm9B4LYVVdmKylQEdIRg
         eWjz3S3EZxDiRY+ZbNkgelTCCbRSZZs5jtkcmtnmu+/4RH0ZfobiA9c0Pji/lGmjHyDO
         Omzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=Hwl+xuThDrUMLgN/yqAnEkeStFGJJMcnl2daH5SBa9w=;
        b=U8kXwdTZZFm0hAw39UYD45YTkYwU+qSC4yWCbgckjsw+CXZj/GDyhJVI08jk5njyTN
         0l44uPwp3qLdT/vQcxLDUNX55j/fyk3s6FDYJ3CqTwkgpz70k/x5t5ictMWccg4v+bpA
         uwtlCrHMCyYY7rGDmw7VuzbEettt7aLvqoDGbatRBBv9LrEp5hFHS/tbGlfWNEMx4EWD
         BLzlqTkXXvtM6WsJB5th6eKekEVPLHRIhUbqhISTUUpypbHkdYCSIvZOtsapGhsEGHe5
         tU1IjrqG3hNYRZlE+uQm1Ju6TuKHE1BnAE/b0bQwjpTyX0SiRdJmc+3lEHsHtGhVP//l
         jZcw==
X-Gm-Message-State: AD7BkJJ37+WJGAFkax/6T42CFcbAHJ+Wz/9UYLOby9NJfl40RESUjTpnLVRq730h6c5AtIb+mk2lPaI2ScSsWQ==
MIME-Version: 1.0
X-Received: by 10.60.135.98 with SMTP id pr2mr8758546oeb.65.1456673395931;
 Sun, 28 Feb 2016 07:29:55 -0800 (PST)
Received: by 10.202.200.211 with HTTP; Sun, 28 Feb 2016 07:29:55 -0800 (PST)
In-Reply-To: <20160228201146.GA6657@janani-Inspiron-3521>
References: <20160228201146.GA6657@janani-Inspiron-3521>
Date: Sun, 28 Feb 2016 10:29:55 -0500
Message-ID: <CANnt6X=SS8NVKFCq3Ffj-Pgux7T4PnHO_q1Y2cPe0j=9MuxdAQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rdma: hfi1: Use list_for_each_entry_safe()
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b41792151836f052cd634c0

--047d7b41792151836f052cd634c0
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 3:11 PM, Janani Ravichandran <
janani.rvchndrn@gmail.com> wrote:

> Use list_for_each_entry_safe() rather than a combination of
> list_for_each_safe() and list_entry()
>
> Semantic patch used:
>
> @a@
> expression pos, n, head;
> expression mem;
> type t;
> identifier var;
> iterator name list_for_each_entry_safe, list_for_each_safe;
> @@
>
> - list_for_each_safe(pos, n, head)
> + list_for_each_entry_safe(var, n, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when any
>   }
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/diag.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rdma/hfi1/diag.c
> b/drivers/staging/rdma/hfi1/diag.c
> index e41159f..411cdee 100644
> --- a/drivers/staging/rdma/hfi1/diag.c
> +++ b/drivers/staging/rdma/hfi1/diag.c
> @@ -304,8 +304,7 @@ static void drain_snoop_list(struct list_head *queue)
>         struct list_head *pos, *q;
>         struct snoop_packet *packet;
>
> -       list_for_each_safe(pos, q, queue) {
> -               packet = list_entry(pos, struct snoop_packet, list);
> +       list_for_each_entry_safe(packet, q, queue, list) {
>                 list_del(pos);
>                 kfree(packet);
>         }
> --
> 2.5.0
>
> This is a mistake here. Please ignore this. Sorry.

Janani.

--047d7b41792151836f052cd634c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 28, 2016 at 3:11 PM, Janani Ravichandran <span dir=3D"ltr">=
&lt;<a href=3D"mailto:janani.rvchndrn@gmail.com" target=3D"_blank">janani.r=
vchndrn@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">U=
se list_for_each_entry_safe() rather than a combination of<br>
list_for_each_safe() and list_entry()<br>
<br>
Semantic patch used:<br>
<br>
@a@<br>
expression pos, n, head;<br>
expression mem;<br>
type t;<br>
identifier var;<br>
iterator name list_for_each_entry_safe, list_for_each_safe;<br>
@@<br>
<br>
- list_for_each_safe(pos, n, head)<br>
+ list_for_each_entry_safe(var, n, head, mem)<br>
=C2=A0 {<br>
=C2=A0 =C2=A0... when !=3D var<br>
-=C2=A0 var =3D \(list_entry \| container_of\)(pos, t, mem);<br>
=C2=A0 =C2=A0... when any<br>
=C2=A0 }<br>
<br>
Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchndrn@gm=
ail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/rdma/hfi1/diag.c | 3 +--<br>
=C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/rdma/hfi1/diag.c b/drivers/staging/rdma/hfi1/d=
iag.c<br>
index e41159f..411cdee 100644<br>
--- a/drivers/staging/rdma/hfi1/diag.c<br>
+++ b/drivers/staging/rdma/hfi1/diag.c<br>
@@ -304,8 +304,7 @@ static void drain_snoop_list(struct list_head *queue)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct list_head *pos, *q;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct snoop_packet *packet;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_safe(pos, q, queue) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0packet =3D list_ent=
ry(pos, struct snoop_packet, list);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry_safe(packet, q, queue, list=
) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 list_del(pos);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kfree(packet);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.5.0<br>
<br></font></span></blockquote><div>This is a mistake here. Please ignore t=
his. Sorry.</div><div><br></div><div>Janani.=C2=A0</div></div><br></div></d=
iv>

--047d7b41792151836f052cd634c0--

