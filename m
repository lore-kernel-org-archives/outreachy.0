X-GM-THRID: 6607095314902941696
X-Received: by 2002:a63:595:: with SMTP id 143-v6mr4040838pgf.1.1538380634371;
        Mon, 01 Oct 2018 00:57:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:5c4:: with SMTP id f62-v6ls4009605plf.6.gmail; Mon,
 01 Oct 2018 00:57:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV625FkaQN9kV6T860rPNZn5dFfnjMhbgRVZJVkvcl2Q2qqKxQRsTVJS/nPQkPjWxyTpcmgM1
X-Received: by 2002:a17:902:2c01:: with SMTP id m1-v6mr5291271plb.28.1538380633588;
        Mon, 01 Oct 2018 00:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538380633; cv=none;
        d=google.com; s=arc-20160816;
        b=xn6gghXoY/70uIDmyh95QG/tuR7c592KdAt9QuJsn36F0/E8+cMniWswS7QFf2xkHh
         Bb2FwdeB8EqQqLTg2GD7g+4mnOCKQnoDIW9ljLSLPUWjhDqPD9Rj6KHAwlQjMZoB+tPk
         iMntKAo4KJMh383JVdwbflVrHceabw2PbEhKPXbkI6Q9QeGmBXFYRm+RKUz5z33ipQD3
         vtHpop4wQUndao98XwQSDCRBBc68t5G3YZs3EzM5FWHXZzgOwKqY7Rv3L0z01Lfcnuor
         zsqC4mwtPndQtVHifPtggTL2vjl02Apk2y0xnpU4IeOqq+lIEsq+DkD+gsZm0yk3CJxV
         Yv1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QHOsoxhqGzRgW35Kn7VPGed3fTy4kUeRlZ3lCqC5Pyw=;
        b=vS2AMB5rxF/51Bxut+GMh+/jq4Gd70BE/A1v2HjrDSJltX8kYVvT/1Za9JqjegNO3w
         mG1o9xSwT0fCuysQ15LdyoNtJluUZwJNjORLFBe1Tb5vm7AdKF/Ea7+sWfh/KGtBxy+0
         ONLhs/pAMBEIB4b4Ph/+ZD3+gbJmy4CYhL3Zl94BRBOCJeuVEO3YDns11ZE01YUtaUql
         kZ872GX40Kx57r80Do+DunUMtRfMAHGM1Y/VXYnppesFRlDIf5ymCJeu2groTdFHL8p/
         +O+pcwWSi+YVMWysIeSiTieJPWzcge/vVh+nmmSKyxL6uLeeQwh3TKosT0GPEtOR5XUW
         Z6xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfHRaC3u;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id b84-v6si436892pfc.0.2018.10.01.00.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Oct 2018 00:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dfHRaC3u;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id w67so2792977ota.7
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Oct 2018 00:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QHOsoxhqGzRgW35Kn7VPGed3fTy4kUeRlZ3lCqC5Pyw=;
        b=dfHRaC3uNJ7zF692A5VMmYqajglAtKQRCUnq9GQALf4cYBwdKKyP+OFtwlFewclT37
         KCI9/esolCRnE5sIBDd7gKFH2rDWtpSz0lcpy1hzfEzQMO3Pli7/8DaBB9oZB1tclWEg
         s/2vP/Lm3mCtKg6ruFsR48IarzbQ1loNsX9mZkQJA4xvMeMT70jgFPTxo0PIGJSLjArC
         la6m/7o6WY9Yzqmp1F9M7WwDCO1FAcPvV5Dsyg+8OGiEBd2nhN49QDYsVhpveEtSukOh
         AjQn23OmF74Rx3Z0G4OFGv8BUCgmfKcOoysN6JkE3GlZDPpNO0KANx2LDPNHrXtMMLr5
         Qk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QHOsoxhqGzRgW35Kn7VPGed3fTy4kUeRlZ3lCqC5Pyw=;
        b=K8SddpfOXhgDfoYiACl+sIIcfthNixvyTrui5k+AHD8GKNLq+BfQEOvFW0/NvYzLh+
         +MDyGIRBgjBPACxFINpijeNr1ayjdaAYv8EfKxleg92Ykt7GFduFpvsMlF6m5jfBiiuZ
         Ywa2C801Nz+cLT1V5getJMmsCZmMA0EUMCaTL6e0o9JaaOgydbWP3VXNMBMoXrD+XOk9
         z4evOEDpri65zqZwB/6h5JeUdI6oq/I4QOp6ze+6RanXgfkWJKIhILepyaZ4ADLOUliw
         V4GZeYDNr4LGf/uN9bbyq7twEIuuh90pyetq0hyYBcUdM8zCHu5lpFfaQpzObmF4ucZc
         0POA==
X-Gm-Message-State: ABuFfoh0fc+a052iw7Of39n3kx58UL6FZEAj8vgWDDNg4mEyOPlmYiX7
	4NvPOJFOvn1lz+YZDJAYjAGunt2TF0x6+LHMN+g=
X-Received: by 2002:a9d:468d:: with SMTP id z13-v6mr5511062ote.232.1538380633255;
 Mon, 01 Oct 2018 00:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538333858.git.dafna3@gmail.com> <bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3@gmail.com>
 <alpine.DEB.2.21.1809302217480.2863@hadrien>
In-Reply-To: <alpine.DEB.2.21.1809302217480.2863@hadrien>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Mon, 1 Oct 2018 10:57:01 +0300
Message-ID: <CAJ1myNR7951qEF6hpN8DRJ-hmckXMOzZWnzBJWrYqdaRoPLb2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: mt7621-mmc: remove
 unnecessary braces from 'if' statements
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002cb37605772627ef"

--0000000000002cb37605772627ef
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 1, 2018 at 12:55 AM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:
>
> > Remove unnecessary braces from one line 'if' statements.
> > Issues found with checkpatch.pl
> >
> > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > ---
> >  drivers/staging/mt7621-mmc/sd.c | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-mmc/sd.c
> b/drivers/staging/mt7621-mmc/sd.c
> > index e3c1546373ba..8c32cec5950a 100644
> > --- a/drivers/staging/mt7621-mmc/sd.c
> > +++ b/drivers/staging/mt7621-mmc/sd.c
> > @@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state, void *data)
> >               host->pm_state = state;  /* default PMSG_RESUME */
> >
> >       } else if (evt == PM_EVENT_RESUME || evt == PM_EVENT_USER_RESUME) {
> > -             if (!host->suspend) {
> > +             if (!host->suspend)
> >                       return;
> > -             }
> >
> >               /* No PM resume when USR suspend */
> >               if (evt == PM_EVENT_RESUME && host->pm_state.event ==
> PM_EVENT_USER_SUSPEND) {
> > @@ -967,16 +966,14 @@ static int msdc_do_request(struct mmc_host *mmc,
> struct mmc_request *mrq)
> >       //if(host->id==1) {
> >       if (send_type == SND_CMD) {
> >               if (cmd->opcode == MMC_SEND_STATUS) {
> > -                     if ((cmd->resp[0] & CARD_READY_FOR_DATA) ||
> (CARD_CURRENT_STATE(cmd->resp[0]) != 7)) {
> > +                     if ((cmd->resp[0] & CARD_READY_FOR_DATA) ||
> (CARD_CURRENT_STATE(cmd->resp[0]) != 7))
>
> This line is really long.  Since you have sent a series on this code,
> maybe you can add in another patch to clean this up.
>
> julia
>

So add it as a 4th patch in the patchset ?
Dafna


> >                               msdc_gate_clock(host->id);
> > -                     }
> >               } else {
> >                       msdc_gate_clock(host->id);
> >               }
> >       } else {
> > -             if (read) {
> > +             if (read)
> >                       msdc_gate_clock(host->id);
> > -             }
> >       }
> >       //}
> >  #else
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1538333858.git.dafna3%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000002cb37605772627ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Oct 1, 2018 at 12:55 AM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@l=
ip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><br>
<br>
On Sun, 30 Sep 2018, Dafna Hirschfeld wrote:<br>
<br>
&gt; Remove unnecessary braces from one line &#39;if&#39; statements.<br>
&gt; Issues found with <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" =
target=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Signed-off-by: Dafna Hirschfeld &lt;<a href=3D"mailto:dafna3@gmail.com=
" target=3D"_blank">dafna3@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/mt7621-mmc/sd.c | 9 +++------<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-=
mmc/sd.c<br>
&gt; index e3c1546373ba..8c32cec5950a 100644<br>
&gt; --- a/drivers/staging/mt7621-mmc/sd.c<br>
&gt; +++ b/drivers/staging/mt7621-mmc/sd.c<br>
&gt; @@ -520,9 +520,8 @@ static void msdc_pm(pm_message_t state, void *data=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0host-&gt;pm_stat=
e =3D state;=C2=A0 /* default PMSG_RESUME */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (evt =3D=3D PM_EVENT_RESUME || evt=
 =3D=3D PM_EVENT_USER_RESUME) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!host-&gt;suspend=
) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!host-&gt;suspend=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* No PM resume =
when USR suspend */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (evt =3D=3D P=
M_EVENT_RESUME &amp;&amp; host-&gt;pm_state.event =3D=3D PM_EVENT_USER_SUSP=
END) {<br>
&gt; @@ -967,16 +966,14 @@ static int msdc_do_request(struct mmc_host *mmc,=
 struct mmc_request *mrq)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0//if(host-&gt;id=3D=3D1) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (send_type =3D=3D SND_CMD) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cmd-&gt;opco=
de =3D=3D MMC_SEND_STATUS) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if ((cmd-&gt;resp[0] &amp; CARD_READY_FOR_DATA) || (CARD_CURRENT_STA=
TE(cmd-&gt;resp[0]) !=3D 7)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if ((cmd-&gt;resp[0] &amp; CARD_READY_FOR_DATA) || (CARD_CURRENT_STA=
TE(cmd-&gt;resp[0]) !=3D 7))<br>
<br>
This line is really long.=C2=A0 Since you have sent a series on this code,<=
br>
maybe you can add in another patch to clean this up.<br>
<br>
julia<br></blockquote><div><br></div><div>So add it as a 4th patch in the p=
atchset ?</div><div>Dafna</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msdc_gate_clock(host-&gt;id);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0msdc_gate_clock(host-&gt;id);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (read) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (read)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0msdc_gate_clock(host-&gt;id);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0//}<br>
&gt;=C2=A0 #else<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56fac98f17ae3ef6a2b.1=
538333858.git.dafna3%40gmail.com" rel=3D"noreferrer" target=3D"_blank">http=
s://groups.google.com/d/msgid/outreachy-kernel/bf3ba7a38f000d4359c4c56fac98=
f17ae3ef6a2b.1538333858.git.dafna3%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--0000000000002cb37605772627ef--

