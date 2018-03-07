X-GM-THRID: 6528705081880084480
X-Received: by 10.223.175.42 with SMTP id z39mr2199078wrc.21.1520441536266;
        Wed, 07 Mar 2018 08:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.200 with SMTP id v191ls535009wmf.1.canary-gmail; Wed,
 07 Mar 2018 08:52:15 -0800 (PST)
X-Google-Smtp-Source: AG47ELt3FwzGuyGPnUVudcTM7sDJ5bFXOAi0FM53+xchdWm4Xtjwz3+gh6NiA38CZI4Rmey0cyHv
X-Received: by 10.28.158.193 with SMTP id h184mr1856724wme.22.1520441535008;
        Wed, 07 Mar 2018 08:52:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520441534; cv=none;
        d=google.com; s=arc-20160816;
        b=VSWQO/XsGkICtFGmdtImarnNbUfocp4uAb5DxgWVAUbi5GLgMS+6DtwkuCWtwHUneK
         thhyJIU5BI6Pqh3enrjMx21xFdWUmqkUSXbVUXSuAMzz8q0GVPCyOXQf72ut2trJwUbq
         G8mVHcfD3T7NnGOHmn/bDCP2gAgAoIlEeAaRCd6XXcbxR1iB+2zOZ2mwmjVkgq5902GO
         o2bfHWeuwV782W4e0JDKhAdQDyQKTkBdHNavi20nA963+y9aeb1zgptFAlPk5ngdm6pm
         pMSITvucWhmJcLBMbzLHpokvTxwJDMKM48F799elNWkB3IERq/Wc4qjewMKRFQwbtRUb
         SY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Ni+Oi/a+SZPiGK72NcvsKqbLJTBl8lJauCSJdW1BDvE=;
        b=wVXGJL+FFjCR4+Wu9/itVaiAjbmwoG77rJT6ltll7cV23kr9e+mUoEj4sijLxbwtBV
         kPHao9qPoSwvfYcQQj8r9B+5oLEFgBo1AiSL24Fw1BNVFH7Nzp4rmizJS4JRYe5f4RT6
         AiZmXJU9UEHlvgqWXaCE7jCknm6oV79BcrRF00AbDaqRBKW6WvS+fIdtTd5Ph1np2mm0
         v/FYOQJNE+9c9BdfRF09TUcwjBJbr66wXeKi0FuRDYtmcAF+kzuZd/ao9ouTnhmczyQH
         nJWEV8J8FvBvzJUTrRC35i0i4qC+MRea8wjcWCzSE7bzR5viDanSV0wGeSm/ggmATItf
         RCOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TFlm1D0G;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x234.google.com (mail-lf0-x234.google.com. [2a00:1450:4010:c07::234])
        by gmr-mx.google.com with ESMTPS id g206si438939wme.2.2018.03.07.08.52.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 08:52:14 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) client-ip=2a00:1450:4010:c07::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TFlm1D0G;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x234.google.com with SMTP id r80-v6so4180300lfe.13
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 08:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Ni+Oi/a+SZPiGK72NcvsKqbLJTBl8lJauCSJdW1BDvE=;
        b=TFlm1D0GURR/hf1rds+F6aj7aXiBdxDnHXb4ox2O9I5AJKvm+zxHcne9HWuS+RAdjj
         t7RhhBnkS0quKPXVjQrBpgHG0qnK25iFCkocYVuCRmcGy4OekuTLoCJzhz1cmEuhw1Ou
         dRzSHQD6qrjqalhUgs4xqS/nSN4SZurjmYF90PTeLBdJCNMTgjNsGDFWqmLxAYS2bU01
         5UPkfW6c4f1KYa8rKpF9m3/WwsaE7kky1qPPvbJ4fzJjABVT0hRatedk174q18QJKyS+
         eFBgYqTxyi9Q4nguZ9f4Xn8ubgV+OKVNOIfFSiUnVA+Fp0Ls8+S9F6icvagN/SG4rKGQ
         9a+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Ni+Oi/a+SZPiGK72NcvsKqbLJTBl8lJauCSJdW1BDvE=;
        b=c6HX8foAaaWji2Ewqo4Y/jmI0uIdhQeBaeew7sBXGuw44LEAdFOHr0HxIjRn+yCOa0
         VtxZtZOlf8KEKHW1w7g5Uh3KlWd1lSC97QG5MkOjRa5NSgMx4hBxITCQGJXd1GamdNi7
         p+4rmCGkV/nS50xv+HODS73QfbMkam/zE6XAPNONguBfrjRVYMngQL+EKc9J32uhh+8l
         i6/32K6QWWvKTSW+PRtsdR2hBy6TJ+ETGx5Cqg9QeOYhQDo/dOSdPIGNNiQmz+Zy/+Hz
         tDKT/82D89H2V74U6ZmmYjYiGca6ni9fGlk93od3Ul36RVKpTB8vDIkJ4AoezV3TRZxC
         CWRg==
X-Gm-Message-State: AElRT7GzKVBODscv5do+zEVnDGMmUrLED9FFzRutXh6IYiibF0UZOQxG
	SHcsrYUuHK6FvdC4RP7ev68BBbDzX44H+7jWm9g=
X-Received: by 10.25.35.199 with SMTP id j190mr17119377lfj.23.1520441534573;
 Wed, 07 Mar 2018 08:52:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Wed, 7 Mar 2018 08:52:13 -0800 (PST)
In-Reply-To: <20180307.103901.1771176275743006915.davem@davemloft.net>
References: <20180303161456.GA20194@seema-Inspiron-15-3567> <20180307.103901.1771176275743006915.davem@davemloft.net>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 7 Mar 2018 22:22:13 +0530
Message-ID: <CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
Subject: Re: [PATCH v2] net: ethernet: Drop unnecessary continue
To: David Miller <davem@davemloft.net>
Cc: jdmason@kudzu.us, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	oss-drivers@netronome.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="001a113a80da91f1c20566d5611c"

--001a113a80da91f1c20566d5611c
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 7, 2018 at 9:09 PM, David Miller <davem@davemloft.net> wrote:

> From: Arushi Singhal <arushisinghal19971997@gmail.com>
> Date: Sat, 3 Mar 2018 21:44:56 +0530
>
> > Continue at the bottom of a loop are removed.
> > Issue found using drop_continue.cocci Coccinelle script.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> > Changes in v2:
> > - Braces is dropped from if with single statement.
>
> Sorry there is no way I am applying this.
>
> Just blindly removing continue statements that some static checker
> or compiler warning mentions is completely unacceptable.
>
> Actually _LOOK_ at this code:
>
> >               if(cards[i].vendor_id) {
> >                       for(j=0;j<3;j++)
> > -                             if(inb(ioaddr+cards[i].addr_offset+j) !=
> cards[i].vendor_id[j]) {
> > +                             if(inb(ioaddr+cards[i].addr_offset+j) !=
> cards[i].vendor_id[j])
> >                                       release_region(ioaddr,
> cards[i].total_size);
> > -                                     continue;
> > -                       }
> >               }
>
> The extraneous continue statement is the _least_ of the problems here.
>

Hello David

Yes you are correct.


>
> This code, if the if() statement triggers, will release the ioaddr
> region and then _CONTINUE_ the for(j) loop, and try to access the
> registers using the same 'ioaddr' again.
>
> That's actually a _REAL_ bug, and you're making it seem like
> the behavior is intentional by editing it like this.
>
> And the bug probably exists because this entire sequence has
> misaligned closing curly braces.  It makes it look like
> the continue is for the outer loop, which would be fine.
>
> But it's not.  It's for the inner loop, and this causes the "use
> ioaddr after releasing it" bug.
>

Yes I know it's for the inner loop.
But I am not able to find, where I am wrong here

For example
*BEFORE:-*
for(i=1;i<10;i++)
       if (expr1)
          {
             statement;
             continue;
          }

*After My Patch*
for(i=1;i<10;i++)
    if (expr1)
       statement;

I am not understanding where I am getting wrong in understanding this.
For me both are equivalent.

I Agree with Jakub reply:-
"This is an error handling path so the continue makes sense here to
indicate the processing can't ever fall through if more statements are
ever added to the loop.  But OK."

Thanks
Arushi


> Please do not submit patches like this one, it makes for a lot of
> wasted auditing and review for people.  The onus is on you to read
> and understand the code you are editing before submitting your
> changes.
>
> Thank you.
>
>

--001a113a80da91f1c20566d5611c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 7, 2018 at 9:09 PM, David Miller <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@davemloft.net</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Arushi Singhal =
&lt;<a href=3D"mailto:arushisinghal19971997@gmail.com">arushisinghal1997199=
7@gmail.<wbr>com</a>&gt;<br>
Date: Sat, 3 Mar 2018 21:44:56 +0530<br>
<span class=3D""><br>
&gt; Continue at the bottom of a loop are removed.<br>
&gt; Issue found using drop_continue.cocci Coccinelle script.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt; - Braces is dropped from if with single statement.<br>
<br>
</span>Sorry there is no way I am applying this.<br>
<br>
Just blindly removing continue statements that some static checker<br>
or compiler warning mentions is completely unacceptable.<br>
<br>
Actually _LOOK_ at this code:<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(cards[i].vend=
or_id) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for(j=3D0;j&lt;3;j++)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(inb(ioaddr+cards[i].addr_<wbr>offset+=
j) !=3D cards[i].vendor_id[j]) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if(inb(ioaddr+cards[i].addr_<wbr>offset+=
j) !=3D cards[i].vendor_id[j])<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0releas=
e_region(ioaddr, cards[i].total_size);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
</span>The extraneous continue statement is the _least_ of the problems her=
e.<br></blockquote><div><br>Hello David<br></div><div><br></div><div>Yes yo=
u are correct.<br></div><div>=C2=A0<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>
<br>
This code, if the if() statement triggers, will release the ioaddr<br>
region and then _CONTINUE_ the for(j) loop, and try to access the<br>
registers using the same &#39;ioaddr&#39; again.<br>
<br>
That&#39;s actually a _REAL_ bug, and you&#39;re making it seem like<br>
the behavior is intentional by editing it like this.<br>
<br>
And the bug probably exists because this entire sequence has<br>
misaligned closing curly braces.=C2=A0 It makes it look like<br>
the continue is for the outer loop, which would be fine.<br>
<br>
But it&#39;s not.=C2=A0 It&#39;s for the inner loop, and this causes the &q=
uot;use<br>
ioaddr after releasing it&quot; bug.<br></blockquote><div><br></div><div>Ye=
s I know it&#39;s for the inner loop.<br></div><div>But I am not able to fi=
nd, where I am wrong here<br><br></div><div>For example<br></div><div><b>BE=
FORE:-</b><br>for(i=3D1;i&lt;10;i++)<br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (expr1)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 {<br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 statement;<br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue;<br></div><div>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br></div><div>=C2=A0<=
br></div><div><b>After My Patch</b><br><div>for(i=3D1;i&lt;10;i++)<br></div=
><div>=C2=A0=C2=A0=C2=A0 if (expr1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 statement;<br></div><br>=
I am not understanding where I am getting wrong in understanding this.<br><=
/div><div>For me both are equivalent.<br><br>I Agree with Jakub reply:-<br>=
&quot;This is an error handling path so the continue makes sense here to<br=
>
indicate the processing can&#39;t ever fall through if more statements are<=
br>
ever added to the loop.=C2=A0 But OK.&quot;<br></div><div><br></div><div>Th=
anks<br></div><div>Arushi<br></div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
<br>
Please do not submit patches like this one, it makes for a lot of<br>
wasted auditing and review for people.=C2=A0 The onus is on you to read<br>
and understand the code you are editing before submitting your<br>
changes.<br>
<br>
Thank you.<br>
<br>
</blockquote></div><br></div></div>

--001a113a80da91f1c20566d5611c--

