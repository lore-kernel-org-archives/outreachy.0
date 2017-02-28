X-GM-THRID: 6392086747768946688
X-Received: by 10.129.118.77 with SMTP id j13mr721396ywk.33.1488287924692;
        Tue, 28 Feb 2017 05:18:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.33 with SMTP id z30ls1174879otb.29.gmail; Tue, 28 Feb
 2017 05:18:44 -0800 (PST)
X-Received: by 10.200.49.136 with SMTP id h8mr642707qte.29.1488287924085;
        Tue, 28 Feb 2017 05:18:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id e196si287566itc.2.2017.02.28.05.18.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 05:18:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so1439035ita.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 05:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ClmczDgbF7GpKTInGWp0i2WLrzv/Wei8cFwoEtSnAYM=;
        b=I2/3/TGGRiv5kaMZgN/dm6uTaUuWzzBuODKJvi4e9eUVUc8nghSWJ5g1lJrC/spChB
         GfdLvtWjYUIFeNU46WWU98yrLCbYR3bBCYITAjShqHPxOEffohPTxyvm15XVB1TBvZ2x
         jtSQ4mczMNlYR4opUaMPD5qpDQZzs5u9NtPtwvBNFkzLuoVk/BtYmSjhpFbpM9SSCd7L
         HPN5Fikqso4Ang9spps+cSk7Mz2Urx8GxpVGDBdl815AzNxCOS0Jrp2lH+DL+3IurlyB
         CE3t4VFtfL1Eg16Kl6CP1inoMgF3P9PK3D/C2s7+MTwhJiOR8bmu6VFFaTgpznsnOQpn
         INhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ClmczDgbF7GpKTInGWp0i2WLrzv/Wei8cFwoEtSnAYM=;
        b=C0Gtl2Lr1hP2PBcfQcveE72COaFX/wuAPsas0g4evx+L9ZiT95XMatwxPi+5d+raNP
         g83Ui09JTEfV8AmfRYhIV4edH5p27ytz40Jb3/DZ87OnlN7zIIGlmJhbl3Ptug6Gf6lS
         6u6kKqGBE7p3kKE4UmzqRbxbifHcHt3hmKsId1LZQScOrki5zHpOVJSDOsYY8yzf5nyX
         knK/7tj41jheHHBjyFagf6wyfhuQRz0lDaDe2r74Q+8oHGSA3Cr8CA7UCrjkiwmqyKZ7
         zxaloOyp/XdASorQHJGaHiJJjFrnav1CNDtkmHEGNE5YxPi82XeLY896Ae9y59HsoSln
         zaiw==
X-Gm-Message-State: AMke39lvGnPCxUjx6T17/Si1W0s5C5MufyDVaf5w63A5B112Pil1EWDBfMhSEyfCJMPysMeGgqChbqHJ59iRaw==
X-Received: by 10.36.17.7 with SMTP id 7mr2647490itf.113.1488287923794; Tue,
 28 Feb 2017 05:18:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 28 Feb 2017 05:18:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702281125590.3056@hadrien>
References: <1488273521-29919-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702281125590.3056@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 18:48:13 +0530
Message-ID: <CAOCi2DHOhQWs9oj=kicB48zkSjo0+whGbWyLtpyoAN5NdVa_Cw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Use list_for_each_entry()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
	andreas.dilger@intel.com, jsimmons@infradead.org, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a11442fb2057cbb0549970980

--001a11442fb2057cbb0549970980
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 3:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 28 Feb 2017, Gargi Sharma wrote:
>
> > Use list_for_each_entry() rather than a combination of list_for_each()
> > and list_entry() since the former does not expose the list spine.
> >
> > Done using Coccinelle:
> > @a@
> > expression pos, n, mem;
> > type t;
> > identifier var;
> > iterator name list_for_each_entry, list_for_each;
> > @@
> >
> > - list_for_each(pos, n)
> > + list_for_each_entry(var, n, mem)
> >   {
> >   ... when != var
> > - var = list_entry(pos, t, mem);
> >   ... when != pos
> >   }
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/selftest/conrpc.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c
b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > index c6a683b..72b6ff2 100644
> > --- a/drivers/staging/lustre/lnet/selftest/conrpc.c
> > +++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > @@ -1339,10 +1339,8 @@ lstcon_rpc_cleanup_wait(void)
> >       LASSERT(console_session.ses_shutdown);
> >
> >       while (!list_empty(&console_session.ses_trans_list)) {
> > -             list_for_each(pacer, &console_session.ses_trans_list) {
> > -                     trans = list_entry(pacer, struct lstcon_rpc_trans,
> > -                                        tas_link);
> > -
> > +             list_for_each_entry(trans,
&console_session.ses_trans_list,
> > +                                 tas_link) {
>
> I'm not sure to understand this code, in particular the outer while loop.
> Who is removing elements from the list?

Actually, there is no code to remove elements from the list. I think I might
have done something wrong here. From what I gather list_for_each increments
the pointer to the list so that wen one iterates over the whole list,
list_empty now
returns true. So, before exiting from this while loop (which is only
executed once),
you execute a set of instructions(which are a timeout and setting a state
in this case).
In the case of list_for_each_entry this will never happen and it'll be
stuck in an infinite
loop.

gargi

>If that can happen with in the
> list_for_each/list_for_each_entry, then a safer version of the iterator is
> needed.
>
> julia
>
> >                       CDEBUG(D_NET, "Session closed, wakeup transaction
%s\n",
> >                              lstcon_rpc_trans_name(trans->tas_opc));
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-send-email-gs051095%40gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a11442fb2057cbb0549970980
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Feb 28, 2017 at 3:57 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Tue, 28 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; Use list_for_each_entry() rather than a combination of list_fo=
r_each()<br>&gt; &gt; and list_entry() since the former does not expose the=
 list spine.<br>&gt; &gt;<br>&gt; &gt; Done using Coccinelle:<br>&gt; &gt; =
@a@<br>&gt; &gt; expression pos, n, mem;<br>&gt; &gt; type t;<br>&gt; &gt; =
identifier var;<br>&gt; &gt; iterator name list_for_each_entry, list_for_ea=
ch;<br>&gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; - list_for_each(pos, n)<br>&g=
t; &gt; + list_for_each_entry(var, n, mem)<br>&gt; &gt; =C2=A0 {<br>&gt; &g=
t; =C2=A0 ... when !=3D var<br>&gt; &gt; - var =3D list_entry(pos, t, mem);=
<br>&gt; &gt; =C2=A0 ... when !=3D pos<br>&gt; &gt; =C2=A0 }<br>&gt; &gt;<b=
r>&gt; &gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmai=
l.com">gs051095@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drive=
rs/staging/lustre/lnet/selftest/conrpc.c | 6 ++----<br>&gt; &gt; =C2=A01 fi=
le changed, 2 insertions(+), 4 deletions(-)<br>&gt; &gt;<br>&gt; &gt; diff =
--git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lus=
tre/lnet/selftest/conrpc.c<br>&gt; &gt; index c6a683b..72b6ff2 100644<br>&g=
t; &gt; --- a/drivers/staging/lustre/lnet/selftest/conrpc.c<br>&gt; &gt; ++=
+ b/drivers/staging/lustre/lnet/selftest/conrpc.c<br>&gt; &gt; @@ -1339,10 =
+1339,8 @@ lstcon_rpc_cleanup_wait(void)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =
LASSERT(console_session.ses_shutdown);<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 while (!list_empty(&amp;console_session.ses_trans_list)) {<br>&g=
t; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 list_for_each(pacer, &a=
mp;console_session.ses_trans_list) {<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 trans =3D list_entry(pacer=
, struct lstcon_rpc_trans,<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tas_link);<br>&gt; &gt; -<br>&gt; &gt; + =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 list_for_each_entry(trans, &amp;c=
onsole_session.ses_trans_list,<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tas_link) {<br>&gt;<br>&gt; I&#39;m not sure to understand this =
code, in particular the outer while loop.<br>&gt; Who is removing elements =
from the list? =C2=A0<div><br></div><div>Actually, there is no code to remo=
ve elements from the list. I think I might</div><div>have done something wr=
ong here. From what I gather list_for_each increments</div><div>the pointer=
 to the list so that wen one iterates over the whole list, list_empty now</=
div><div>returns true. So, before exiting from this while loop (which is on=
ly executed once),</div><div>you execute a set of instructions(which are a =
timeout and setting a state in this case).</div><div>In the case of list_fo=
r_each_entry this will never happen and it&#39;ll be stuck in an infinite</=
div><div>loop.</div><div><br></div><div>gargi</div><div><br></div><div>&gt;=
If that can happen with in the<br></div><div>&gt; list_for_each/list_for_ea=
ch_entry, then a safer version of the iterator is<br>&gt; needed.<br>&gt;<b=
r>&gt; julia<br>&gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CDEBUG(D_NET, &quot;Session closed, wak=
eup transaction %s\n&quot;,<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstco=
n_rpc_trans_name(trans-&gt;tas_opc));<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; =
&gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this mess=
age because you are subscribed to the Google Groups &quot;outreachy-kernel&=
quot; group.<br>&gt; &gt; To unsubscribe from this group and stop receiving=
 emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsu=
bscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>=
.<br>&gt; &gt; To post to this group, send email to <a href=3D"mailto:outre=
achy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt=
; &gt; To view this discussion on the web visit <a href=3D"https://groups.g=
oogle.com/d/msgid/outreachy-kernel/1488273521-29919-1-git-send-email-gs0510=
95%40gmail.com">https://groups.google.com/d/msgid/outreachy-kernel/14882735=
21-29919-1-git-send-email-gs051095%40gmail.com</a>.<br>&gt; &gt; For more o=
ptions, visit <a href=3D"https://groups.google.com/d/optout">https://groups=
.google.com/d/optout</a>.<br>&gt; &gt;</div></div>

--001a11442fb2057cbb0549970980--

