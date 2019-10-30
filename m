X-GM-THRID: 6753200563017482240
X-Received: by 2002:a37:8046:: with SMTP id b67mr2600602qkd.437.1572478594657;
        Wed, 30 Oct 2019 16:36:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3e65:: with SMTP id m34ls241317qtf.6.gmail; Wed, 30 Oct
 2019 16:36:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy3b3gU674sWaPe1UHlCQVsRQmNOK5IYwiN3Fx6GEDC0a87GKyWvPgsotL9W3Rc3czrA/bV
X-Received: by 2002:ac8:65cf:: with SMTP id t15mr2741040qto.357.1572478593244;
        Wed, 30 Oct 2019 16:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572478593; cv=none;
        d=google.com; s=arc-20160816;
        b=Pw7O5VKJ0K80eFZMyIi7kDAYCRWp/UWk08cQK2tRVRMeR7VpgAF/CqZyLXaUdvcjPY
         oEPucJN9eHRLAgIOD3oFS98MLWcB1zWHeaWfnwmxUXm3Hi3Dyr68TljwOiimF+DjFc6q
         /I+JMV5jL41QzMGzr/wpMuZJhKulkOzaXFR60bmUAdQ5niyIlzHcOpvGF+cHC6bS7P+h
         WQxApodPpJOXfTJghszZzpR9aIWVZFC2ZWG6SH7J1NAwjJIIZQlCEyZ+I8oCCYMlqTDi
         KsTdOhc/Gd6viTLY+j7fFa26SmOeZlK4YeNFPjwVH/52wm6XLIRwV06cbuBTUqw/jWVn
         MwaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k2udQz6fSNYIEFqkh1Hi39vO5ujc9tVQhva4FYrgTm4=;
        b=pXpwS7f/TBJUkbsPl4yIEvoqr4QHcrFKeqCzJOppg5+Wis0+4qXihd8PeT8pgqsWbk
         JKEbR2lpJMseqHQs9S3VXNF1KFcc8BSdBCKR/VM/q24TBL5cltsja19fJmXDwyw/yIeI
         vK84Ie9v5/FBNNva4VZN85daO0S5TqlF8Cr8YoOeDozRCoQDS9ZpgiTu4+khlVOdXkit
         CUDwjm0tIaPKTzqz/2zP/tu3xd/c2nRpaQBNp4BJWO9+5vQA95GROSymPrkhBBBhd451
         jhbzyDr5yvMN8RViodjLzPXnpZn3KcDVqw4G/ZRg48Pjek5N6ON4Xi3CZZZjhSK43JyE
         atKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SVlV7+Nr;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com. [2607:f8b0:4864:20::e2f])
        by gmr-mx.google.com with ESMTPS id x135si94560qka.3.2019.10.30.16.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 16:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) client-ip=2607:f8b0:4864:20::e2f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SVlV7+Nr;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2f as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe2f.google.com with SMTP id k15so2885325vsp.2
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Oct 2019 16:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k2udQz6fSNYIEFqkh1Hi39vO5ujc9tVQhva4FYrgTm4=;
        b=SVlV7+Nrr0YFOyBMEF3M1C12NjEqznu95CPrKnc2v5vSFopc1FS5msatMm1zasgGKh
         2MXyXd8eZpwUYL6Xa/QYShHw13V1YDpeanPlcIzCbfJ9MI3nHZhgI0eD8Au5XfKemBAc
         xtLD2O+2UT91i6A9Z+OkASSE8gf0wIxOqjRKyKTgT/OrJrEUB14hluk16s7Pqg2gXJYi
         TT3qR7GfKlqZz/Mj2UD+r0T2pUKnmYa00kFNMKJADCIFLMtxDrA2liCB6ZOOvR/563tv
         ehhl2ROSB5RGSSyQad12J7mZPoyTqA+JWoKQRUcXJUdj13KbtCNG0t1KndmaB9XA/vmd
         aZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k2udQz6fSNYIEFqkh1Hi39vO5ujc9tVQhva4FYrgTm4=;
        b=T4yQwJB84zhXlsJCZmyqLcHthgWPvn/HGL5uhMGqBApne+bJWCNC+Hxx65K7/+wcZ0
         qtMOrXU7ceup5dAas4Ud9U9YZnrTFmn4cPn1lFDJTblS5OHLt0JtrKshChX+Q1M4b/bu
         2p2iV1ZVbaOzOqv2jiTx63f3VLS6pTlCjo56+QG7d4sUytUEwOxKwED7JGJx4qyMeZOd
         OEF2q8oPIDzwXKGGldcEnktUM/INtiU6RfCUBnvyJMx9Tug21uptGJ3WxSiYz+ljJi7h
         6xNELCjXt7vi+vDvB+QI72X0yiTldZKwwZslTspcxigSqb/CKbdwZKbQN9UQC+o/hPlJ
         Qrmg==
X-Gm-Message-State: APjAAAVkyItr1iraGKOkGSwVzHLlTTjLFoMIbMDjpeLrddUHIjDYP7Xy
	RHiAVj8aC6VRS7lr/PSmsieQWYIlJJuDTFxZXhg=
X-Received: by 2002:a67:304a:: with SMTP id w71mr1143410vsw.92.1572478592827;
 Wed, 30 Oct 2019 16:36:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
 <97327d78-e57e-4401-817a-dbe1cc08789b@googlegroups.com> <alpine.DEB.2.21.1910302305150.3273@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910302305150.3273@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Wed, 30 Oct 2019 23:36:21 +0000
Message-ID: <CANR89jbDky3zV1s7w+59VfgU5sHBY8x2isYAd6xX-=rGPSUs5w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Driver dependency
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000f14d9f05962933a1"

--000000000000f14d9f05962933a1
Content-Type: text/plain; charset="UTF-8"

On Wed, 30 Oct 2019 at 22:05, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 30 Oct 2019, Jamal Shareef wrote:
>
> > This is the same information I am getting from menuconfig. I was able to
> turn on COMPILE_TEST.
> >
> > Are you not able to turn on COMPILE_TEST?
> >
> > It is the first option under "General Setup" and it is labeled "Compile
> also drivers which will not load"
>
> I'm not sure to understand the status of this issue.  Is the problem
> solved?
>
> julia
>
> >
> > Thanks,
> > Jamal
> >


Cheers Jamal, will have a look at it

Kind regards
Evan


> > On Tuesday, October 29, 2019 at 5:27:13 AM UTC-7, evan chime wrote:
> >       Hello Guys
> >
> >       Please am trying to modify a driver and the driver depends on
> COMPILE_TEST.
> >       COMPILE_TEST is [=n]  and depends on !UML.
> >       UML is Symbol: UML [=UML]
>                                                                    Type  :
> unknown
> >
> >       I've read the newbie tutorial many times, please can someone help.
> I guess !UML means UML shouldn't be on ie UML [=n], then "!" will make !UML
> true
> >
> >       Kind regards
> >       Evan
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/97327d78-e57e-4401-817a-dbe1cc08789b%40googlegroups.com
> .
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910302305150.3273%40hadrien
> .
>

--000000000000f14d9f05962933a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, 30 Oct 2019 at 22:05, Julia Lawall &lt;<a href=3D"m=
ailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><br>
<br>
On Wed, 30 Oct 2019, Jamal Shareef wrote:<br>
<br>
&gt; This is the same information I am getting from menuconfig. I was able =
to turn on COMPILE_TEST.<br>
&gt;<br>
&gt; Are you not able to turn on COMPILE_TEST?<br>
&gt;<br>
&gt; It is the first option under &quot;General Setup&quot; and it is label=
ed &quot;Compile also drivers which will not load&quot;<br>
<br>
I&#39;m not sure to understand the status of this issue.=C2=A0 Is the probl=
em<br>
solved?<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Jamal<br>
&gt;</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers Jamal=
, will have a look at it=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Kind regards=C2=A0</div><div dir=3D"auto">Evan=C2=A0</div><div dir=
=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On Tuesday, October 29, 2019 at 5:27:13 AM UTC-7, evan chime wrote:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Hello Guys<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please am trying to modify a driver and the =
driver depends on COMPILE_TEST.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0COMPILE_TEST is [=3Dn] =C2=A0and depends on =
!UML.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0UML is Symbol: UML [=3DUML] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 Type =
=C2=A0: unknown<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I&#39;ve read the newbie tutorial many times=
, please can someone help. I guess !UML means UML shouldn&#39;t be on ie UM=
L [=3Dn], then &quot;!&quot; will make !UML true =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Kind regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Evan<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/97327d78-e57e-4401-817a-dbe1cc08789b%40goo=
glegroups.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.c=
om/d/msgid/outreachy-kernel/97327d78-e57e-4401-817a-dbe1cc08789b%40googlegr=
oups.com</a>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910302305150.3273%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1910302305150.3273%40hadrien</a>.<br>
</blockquote></div></div>

--000000000000f14d9f05962933a1--

