X-GM-THRID: 6800771854723186688
X-Received: by 2002:a17:902:8a85:: with SMTP id p5mr2158009plo.154.1583485648475;
        Fri, 06 Mar 2020 01:07:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:e995:: with SMTP id v21ls826912pjy.1.gmail; Fri, 06
 Mar 2020 01:07:26 -0800 (PST)
X-Google-Smtp-Source: ADFU+vstOXS3mu4OP65Xt9K9bTb7zLKxFK9FgT4mIRHf5PAQb674lPOECDl7fvmp+RJJyP1UgGYR
X-Received: by 2002:a17:90a:8a09:: with SMTP id w9mr2693258pjn.0.1583485646478;
        Fri, 06 Mar 2020 01:07:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583485646; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9Q2CeuUH1Ou/+Zj/4PNE3pZbU3ykqr54QGCkiT67839bfMP97fQ2f4WHVaouUwKBs
         yFmhiX6+3Ta0MS+XtCWJ9xsq79EsP6TqJ4mGxDg2mRPnug08JD7qaeAWg5kO5GBL2dsM
         WXTpVzt5avjMrDbza0fAwd5kQjYa4R3De183kTUzCFC90y1N/JdYJZggEsN8abV/WyU1
         4JnMdZ1Mrtrv+lmilqPC8RWpBnMJjUTaQP5yBsGSwKf7d+2HRcd+V98HmhYE60OOvV2O
         HwqiLUjZPxJsW1UeBOoZWDVEqtG3HOzt0hyp4MS2U/gedToSzFXqqTLi9Hv6BExVDh7x
         vdOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2kf0F1Fw8Q+nm5wCInsuPz6AFoRQc5fdWPFozNT7VzM=;
        b=Yx0PbRe8ovud7dlDE7v+kHVjA9O/EX0YICvTlheU0E9VL3btZEaRp1MFZoPby9jK0b
         UFc3lkU+2mMP3P2JmQTjHiN1LTu6myQ1EzljEyYnynnIIdj3MW6srvWcghAKfAggSZio
         a1wFJGzG8i3uNq2jtKROytCoBMSoDDePenbp2yahozlJZEgTK2rejg/hG1O+mfSFBlyf
         RfbIRdgr5gjJm+CqrYI6uoGijEpXRUggaddZvU1Pcmq5Lh0UbiSU1ln51FYZhy/Dmatu
         yxIoSArqbBMDaZz6HBmL8KZcmYrPplEqN8jPU7u0eM9FTOu4c0hXMvuoUMQBb+Qi3UrT
         PkYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bOm6rbLn;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id y3si104403plr.1.2020.03.06.01.07.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 01:07:26 -0800 (PST)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bOm6rbLn;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2a.google.com with SMTP id n21so1362553ioo.10
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2020 01:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2kf0F1Fw8Q+nm5wCInsuPz6AFoRQc5fdWPFozNT7VzM=;
        b=bOm6rbLnxiEoxJWWoMfN5VD0Kk/Rg1y9xmKIgIX9ldTPKfL9ILaSO+hioS8G3rZmcg
         jsacavuYM+oNlWjZPnUGN2c+3oAw6BEfSToK01XMhJHYp5JeQXavHg2J90ok/9sNSSgq
         0LfXRo3My4Fe2tlCTx1IbY5pwMy9hEHDep1mKB8rnQzO5zjUt61jME84IHru0+/JXFCH
         768ltmf1eoKxHgR/sfGHzEY6ANcawSBeQByhhLYzWj0mvUvvkkZBMCMUnnm4diEVbBz5
         OBiTOQMU6w7Jb97pFA3wUv7Mx7i2YkMEZ5dkDs5PfmuR0x0ns1m/SUsY2RdQH/KO5NbC
         ICJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2kf0F1Fw8Q+nm5wCInsuPz6AFoRQc5fdWPFozNT7VzM=;
        b=HLZReR8HqXZAhHV7xEiGQXKHvC5GVR+m1qL07CrauR6gUATx79B4B8kALuiJx860JB
         3ggBYqG/wdlNwM3hNAr080cZn7DKvFXnm5+h11V2NrgKpvI1lRAeQXjW7ByyCztkAUAb
         2i/wS5BQHF3uyVTKLry6zyqpJDKavDXp69cqDTRf3WaNR1Nr65v5sQRZQmGIsIdjtsXh
         kN2F9JXtJ4IpbZKMrsFsQTjOwprRvtggI0azwUjbk5zFfPDxX5sE/3JS+QEELm1Gm1rY
         3t66TVQakMq4ev2PPNcobkTLywIeYqw8+1GSyfc7gM9VmXAi+C3+mr0U2PmcThr/RWZ/
         0Ftw==
X-Gm-Message-State: ANhLgQ2Zr+SHGzJDRn6POU3KoctdcwqsnbxnBOOnVG48DqRYGsvegbIb
	IUqysxxOhYjOifhElo+iHdRk6yvWCWZCp655miY=
X-Received: by 2002:a6b:3e86:: with SMTP id l128mr2259630ioa.44.1583485645675;
 Fri, 06 Mar 2020 01:07:25 -0800 (PST)
MIME-Version: 1.0
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>
 <20200305182833.GA2106984@kroah.com> <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com>
 <alpine.DEB.2.21.2003060747320.2978@hadrien> <CANTOzWFk6e4pE33UP9yty0H2BSSM_L-u_PCERL9WWoaCZ9K8mg@mail.gmail.com>
 <alpine.DEB.2.21.2003060927380.2978@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003060927380.2978@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 6 Mar 2020 14:37:12 +0530
Message-ID: <CANTOzWHCdYu-srrPziA=HXicEYfoo+_=31h9YNRG0hB9KT7DnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006ae00705a02bfbba"

--0000000000006ae00705a02bfbba
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 6, 2020, 1:58 PM Julia Lawall <julia.lawall@inria.fr> wrote:

> In the place where you invoke checkpatch, can you do ls (not less) for
> each of the following files:
>
>                 "COPYING", "CREDITS", "Kbuild", "MAINTAINERS", "Makefile",
>                 "README", "Documentation", "arch", "include", "drivers",
>                 "fs", "init", "ipc", "kernel", "lib", "scripts",
>
> eg
>
> ls COPYING
> ls CREDITS
>
> etc.
>
> Send a screenshot of the results.
>
> julia
>

Ok, I will do that.

>

--0000000000006ae00705a02bfbba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 6, 2020, 1:58 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawal=
l@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">In the place where you invoke checkpatch, can you do ls (not =
less) for<br>
each of the following files:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;COPYING&quot;=
, &quot;CREDITS&quot;, &quot;Kbuild&quot;, &quot;MAINTAINERS&quot;, &quot;M=
akefile&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;README&quot;,=
 &quot;Documentation&quot;, &quot;arch&quot;, &quot;include&quot;, &quot;dr=
ivers&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;fs&quot;, &qu=
ot;init&quot;, &quot;ipc&quot;, &quot;kernel&quot;, &quot;lib&quot;, &quot;=
scripts&quot;,<br>
<br>
eg<br>
<br>
ls COPYING<br>
ls CREDITS<br>
<br>
etc.<br>
<br>
Send a screenshot of the results.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><span style=3D"font-family:sans-serif">Ok, I will do that.=C2=A0</span=
><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
</blockquote></div></div></div>

--0000000000006ae00705a02bfbba--

