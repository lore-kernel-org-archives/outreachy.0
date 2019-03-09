X-GM-THRID: 6666132758820028416
X-Received: by 2002:a25:bf92:: with SMTP id l18mr10529200ybk.103.1552135591401;
        Sat, 09 Mar 2019 04:46:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1142:: with SMTP id 63ls96208ybr.1.gmail; Sat, 09 Mar
 2019 04:46:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxnXGJXaMIE9aMSEpxcs9luiZ1Ju1k7NvLjaesq5W0A1OfYiqJ4TyoTM9VUyqPW8AgN1cQO
X-Received: by 2002:a25:d57:: with SMTP id 84mr9734261ybn.24.1552135590523;
        Sat, 09 Mar 2019 04:46:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552135590; cv=none;
        d=google.com; s=arc-20160816;
        b=aifMyorCIOXuPNpie1Ii3jmkjOtBA6opmGDW0oVdzv/RjShyExFyk7qAfzRsjDaXpG
         AXKk6UgqCcYtr64zWZPTwkp8FdGvZwmXbUy3WPuz4Cc5ltw7Bv6X389gFsIcHf7Klw9Y
         /VV/jnl3X55AzgLcI+yhHH+3zwJTwYaIICXTGqlS7h6xt8qMOb6Bkhne/3cE3KDpzlZW
         O8vbsIQrWfcVFunE4HhcPCCOO1NZ+gtqQQhfXyhEOq8u018e7YZMVqK5yTaALQOemhEb
         +f7zTGj6iq1ks2JaFfH1r1wxiNBVGur/4TMLowGBtFoA5a8PVxnIxrfMZaQlmeH+/8TE
         kOow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sL4b3B7cBYzx7Z1gGf37PDStub0/Voq20M/nun+ir+8=;
        b=ZnP/JqCqKMIJfTPM5+/hPNrWDW+TQ2RUhvFr1n4xH6ot31idGHa96RjGTOOulS4VRc
         iiMaKNib2SFoINEuwsA/kijmQP5ewvjtyiHFMFOg+w4nClDWJV5JUXEdt8mf9OWAzO9R
         KWQjjE941feWpFDJas7/GtnEubB50m8OrpdQOUGHSOa8+y43h/LjsUJzLrx6UB+DC9L6
         9/zk0ufWnmH0c1Hf1BAmSwtu3r9KLstkhqfHET1nVx5puoBcYFcTZVU+65o0BoVkLe5w
         dAD9tvtp0f8OoYIPkKAyamLnTbCcpyS+HARyFwbCIh+srb3iAjGiY/SHRhA93JIsLCo5
         F1HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfcHALvG;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id r128si27503ywd.0.2019.03.09.04.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 04:46:30 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfcHALvG;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x332.google.com with SMTP id g1so170882otj.11
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 04:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sL4b3B7cBYzx7Z1gGf37PDStub0/Voq20M/nun+ir+8=;
        b=kfcHALvGbU18dbwsVrC4rHH9/ghvrdLvVgPrNDV6V4CtAhl1T/1GeoMWSyL5TuT3Vf
         1nHAZ6OgWtQLG7VkC8snka5T4u1j4PUppGZoUeflULkbwipEVi9Zr/OWfiXEws/H4u0z
         tJDx80eegEK0deQ288ZPmx60RLQldjvWo/uXyG02TzMSsYl2rBwJxhyxFTxbqSWqTiBd
         swy638lVinOLVKmi8jNjL/dJVvh1wKssmBspLkXhsl4Q2LTS7bb0CyvgB49mAaG4DoVQ
         snSjbdxruD+J3tS77eTct7FPrylOHR5/9jORYJH8LiiWzXuDvH5WUPLsbSB4X++lRc5f
         esiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sL4b3B7cBYzx7Z1gGf37PDStub0/Voq20M/nun+ir+8=;
        b=nF41fS+j03aPaPMi8rzq1knk/9AH+gTdsvZmEPJ/b9rUXIxpUaU9JS5jXuVWmwyZVf
         pJovdUrIVzH6+brnV7bHMgUqb8ms2h03ss8VO1LN4rXogidu9ZSXo+hk5aJFoM3YbeZr
         S/5HI7AnlDnE/MJexLcdd07xnj/opQRHsl/qGRr+xPdzeZkHPkh6V0TVbgHqdJ95vws5
         jFx1r5xAJw1ixS8P9BQOLBZm7pKzHo4MFMhW1lCQSPQi3drVySjm4kZ3bbWHoWxAkSsM
         tJWxX9vMQEtpeXjSq70zLv4fpsw7tB64dLvlQdpv91W8DOmgE0RZqXbx0Bu6MRslvPK+
         8Xvg==
X-Gm-Message-State: APjAAAVvzulQl5A//Em7wkXO3gY93re/EcYFFjbktZju7SEGT80x1LtA
	+lOKRr5FpTB9mjmHQeJpNFFmU+TQi6DZxre5VIXc4hL5
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr14254142otg.194.1552135590036;
 Sat, 09 Mar 2019 04:46:30 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1903082215570.2518@hadrien> <af41fd98-fc3e-4651-9fd5-fb1ec47a886d@googlegroups.com>
 <alpine.DEB.2.21.1903090833460.2558@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903090833460.2558@hadrien>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Sat, 9 Mar 2019 18:16:13 +0530
Message-ID: <CACw+u4EekHTLGwhBmUL49A0w1MTMAA-ogHiT_0xt9zryB_+4cg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Coccinelle project
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000007ccc1a0583a8ba1a"

--0000000000007ccc1a0583a8ba1a
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 9, 2019 at 1:04 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 8 Mar 2019, idebleenasen@gmail.com wrote:
>
> > On Saturday, March 9, 2019 at 2:49:40 AM UTC+5:30, Julia Lawall wrote:
> >       Hello,
> >
> >       If you are interested in working on the Coccinelle project,
> >       please check
> >       my kernelnewbies page:
> >
> >       https://kernelnewbies.org/JuliaLawall
> >
> >       That should have everything you need to get started: a link to a
> >       tutorial,
> >       links to some examples, and some exercises to do.  All of the
> >       exercises
> >       currently are relevant to staging drivers, although I note that
> >       some of
> >       them are currently relevant at only a few places in the code.
> >
> >       Please feel free to try Coccinelle once you have some accepted
> >       patches.
> >
> >       Let me know if you have any questions or run into any
> >       difficulties.
> >
> >       julia
> >
> >
> > Can I start working on Coccinelle?
>
> At the moment, your only patches in Greg's staging tree are about lines
> over 80 characters.  Please get accepted some patches that affect code
> first.
>
> julia


I skimmed through the coccinelle tutorial and I believe I can work on it.
I'll surely send in more patches that affect code but can I please start
working on Coccinelle on the side?

Thank you
Debleena

--0000000000007ccc1a0583a8ba1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Mar 9, 2019 at 1:04 PM Julia Lawa=
ll &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br>
<br>
On Fri, 8 Mar 2019, <a href=3D"mailto:idebleenasen@gmail.com" target=3D"_bl=
ank">idebleenasen@gmail.com</a> wrote:<br>
<br>
&gt; On Saturday, March 9, 2019 at 2:49:40 AM UTC+5:30, Julia Lawall wrote:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Hello,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0If you are interested in working on the Cocc=
inelle project,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0please check<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0my kernelnewbies page:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://kernelnewbies.org/JuliaLa=
wall" rel=3D"noreferrer" target=3D"_blank">https://kernelnewbies.org/JuliaL=
awall</a><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0That should have everything you need to get =
started: a link to a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tutorial,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0links to some examples, and some exercises t=
o do.=C2=A0 All of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0exercises<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0currently are relevant to staging drivers, a=
lthough I note that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0some of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0them are currently relevant at only a few pl=
aces in the code.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please feel free to try Coccinelle once you =
have some accepted<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0patches.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Let me know if you have any questions or run=
 into any<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0difficulties.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt; =C2=A0<br>
&gt; Can I start working on Coccinelle?<br>
<br>
At the moment, your only patches in Greg&#39;s staging tree are about lines=
<br>
over 80 characters.=C2=A0 Please get accepted some patches that affect code=
<br>
first.<br>
<br>
julia</blockquote><div><br></div><div>I skimmed through the coccinelle tuto=
rial and I believe I can work on it. I&#39;ll surely send in more patches t=
hat affect code but can I please start working on Coccinelle on the side?=
=C2=A0</div><div><br></div><div>Thank you=C2=A0</div><div>Debleena</div></d=
iv></div>

--0000000000007ccc1a0583a8ba1a--

