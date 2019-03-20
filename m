X-GM-THRID: 6670105232964321280
X-Received: by 2002:a1c:f414:: with SMTP id z20mr387253wma.18.1553067916328;
        Wed, 20 Mar 2019 00:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls237081wmh.14.gmail; Wed, 20 Mar
 2019 00:45:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyrDNNE3qC53SCR7wLrtSYGjvfmhOAFMYr6spTp8ZC90N1sC7qzXnKuAG/kGbjtJ/g6inP5
X-Received: by 2002:a1c:6c12:: with SMTP id h18mr652603wmc.18.1553067915549;
        Wed, 20 Mar 2019 00:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553067915; cv=none;
        d=google.com; s=arc-20160816;
        b=FdtIRF5lq0m8l1LdWz1WOcgJ5MlQzldfbUe546I0WJWAQ25hGqzuHZz3CSENbDombn
         h+caL7ZUZsRSBaK2VCXCGLbYn2mQMekLcXCGnBb1aMEE9+LHTdL5rIs82ussJQ8KdqlG
         2EkS+lhD1sw1ZjcrLJvCBNgCHverNyeZhIPQ6yYylKvCll7QyEzJd927aM898UtBcMuY
         15xYZhtJRZ0TI9opH653mKgixQJyeqVu1HwjDcXx8fKdommz03mYwKCRQhnJ81winXEr
         5I0eEFDOmVgnSlQN47cxKhzDwNLnkmH1DFHzFeIpiE/Om3cl7sU89opUo3EZO4eo19ny
         4+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZUadmyEKfF9E1QrqWWQZ75P3fQ6/HLexmaCnrhWFKag=;
        b=paxQYBFd5X7HCZKrP9SjYuyW/f5JJP+w989UH+ppfk8yUHHe4KYFYFttnT90bByoOJ
         uVqE41IlkNp22TS2HXNRd3ECoan9+wGrsHaH7fxDSnlG0vsqcEZ/2u5TvxTTicpOKnLx
         Zwc0M1husbNPLro2Ase8pLzbyPNH0vaHkjNw0vhF/+gObcYTicuLYQfFbvepxJPHplcj
         AZ3fuArWe/Xv1g4cSOQdkZsApxTkETvbTXWA6hVfne6sc2Cb3Lm1LXTvicg/6L+/oxCh
         Jnj3tDxLihKKmzX4S8I6jnkcau5Ybv6zhrzPV9Li7rwcuWQSEVrtaMYBSc5RvawMU8wC
         6NCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPPyGI8F;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a9si45686wrp.5.2019.03.20.00.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 00:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPPyGI8F;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x541.google.com with SMTP id d6so1112671eds.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 00:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZUadmyEKfF9E1QrqWWQZ75P3fQ6/HLexmaCnrhWFKag=;
        b=HPPyGI8FJfJE3UX2tGJ0q8eySmumQmicgoSb707m18Vtg8Mor7+CHy0iUcjXmuYtX4
         9lsdUAeovMJncEBTbqwd64nIhyPWRhni2tn1mnBznSxyfZmFf0jkwkX4LH9TNajtZr2v
         kFovguv2IIFRNQYTWhozS+bkwjnXA1FNrQHPy2ufbTzfDt05cFWcIsrbyWjwbKRaI285
         BpVvaoKazJjNxLhy5XzFMIwhiGl8VbhJK/Ky3cEuGLRQvZoFRn/KzX9snv5toAzWVN6O
         I8tvKBHov6wrYzFuAsS9N1CqsHIU4U/8yZ66Ed7UTJJD1svVbw0qW2ZULzeJvnPa2qfh
         VS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZUadmyEKfF9E1QrqWWQZ75P3fQ6/HLexmaCnrhWFKag=;
        b=rhftoXjdjxSIirneC8vD9pJAkuM08wqNCJao1dRwGfdGfWxidVuUxeKG/FgXxQ5rHL
         bncVdtaLF9ulcUH0bNSrbyOpMDCAfLAdAl4MPZBtWwbPHsvXDkYMPvIx8lynx4QSQjK9
         QoterBEBRyRsvi6aqKg/+srcvKjaacBo6ybEmhmure0mw1hYb/C5rEx24uCpLBSwgHlk
         JMgfDxpAgRLy0qHCA8arYwCS3ckYTwiL+ioFlHDweRT/jcj0osDVEgZoEUcRvgJIb8G1
         8kPSNby/EvIoRWrqwqoRPeqE6njca9PFG8BS8fBuTTvarJwoot5D6dBcJ3Qclx7xmm+i
         mfQw==
X-Gm-Message-State: APjAAAW8KKmL/FvEuXXadEDFKOZatjHenKbm9kXAU/JQGU2set8EsIpM
	HZ/YF5YJgf8PJ2DmG6tqVS8h3XYmsXcMBNqjz4X48R8z
X-Received: by 2002:a50:b482:: with SMTP id w2mr19508731edd.41.1553067915287;
 Wed, 20 Mar 2019 00:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
 <20190319152648.10497-1-sanjana99reddy99@gmail.com> <20190320064905.GC11556@kroah.com>
In-Reply-To: <20190320064905.GC11556@kroah.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Wed, 20 Mar 2019 13:15:03 +0530
Message-ID: <CAO-bXGDy_qAdWmu7UQqYD8i7wKuHEXR5nj1jVvAoXbbDXfoZiw@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] staging: rtl8192u: r8192U_dm: Remove unnecessary
 blank lines.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000672359058481cd34"

--000000000000672359058481cd34
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Mar 2019, 12:19 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 19, 2019 at 08:56:48PM +0530, Sanjana Sanikommu wrote:
> > Remove unnecessary blank lines.
> > Issue found by checkpatch.pl
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> > Changes in v3:
> > Remove multiple blank lines from correct file.
> >
> > Changes in v2:
> > No changes
> >  drivers/staging/rtl8192u/r8192U_dm.c | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_dm.c
> b/drivers/staging/rtl8192u/r8192U_dm.c
> > index 50a9fe667062..546bf5428848 100644
> > --- a/drivers/staging/rtl8192u/r8192U_dm.c
> > +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> > @@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTable;
> >
> >  /*------------------------Define global
> variable-----------------------------*/
> >
> > -
> >  /*------------------------Define local
> variable------------------------------*/
> >  /*------------------------Define local
> variable------------------------------*/
> >
> > -
> >  /*--------------------Define export function
> prototype-----------------------*/
> >  extern       void dm_check_fsync(struct net_device *dev);
> >
> >  /*--------------------Define export function
> prototype-----------------------*/
> >
> > -
>
> This change is fine, but look at this file now.  All of these crazy
> comments can be deleted, they are not doing anything...
>

I would delete them. Thanks for letting me know..
Sanjana.

>
> thanks,
>
> greg k-h
>

--000000000000672359058481cd34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, 20 Mar 2019, 12:19 Greg KH, &lt;<a href=3D"mai=
lto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On Tue, Mar 19, 2019 at 08:56:48PM +=
0530, Sanjana Sanikommu wrote:<br>
&gt; Remove unnecessary blank lines.<br>
&gt; Issue found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt; <br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v3:<br>
&gt; Remove multiple blank lines from correct file.<br>
&gt; <br>
&gt; Changes in v2:<br>
&gt; No changes<br>
&gt;=C2=A0 drivers/staging/rtl8192u/r8192U_dm.c | 3 ---<br>
&gt;=C2=A0 1 file changed, 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rt=
l8192u/r8192U_dm.c<br>
&gt; index 50a9fe667062..546bf5428848 100644<br>
&gt; --- a/drivers/staging/rtl8192u/r8192U_dm.c<br>
&gt; +++ b/drivers/staging/rtl8192u/r8192U_dm.c<br>
&gt; @@ -45,17 +45,14 @@ static struct dynamic_rx_path_sel DM_RxPathSelTabl=
e;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /*------------------------Define global variable----------------=
-------------*/<br>
&gt;=C2=A0 <br>
&gt; -<br>
&gt;=C2=A0 /*------------------------Define local variable-----------------=
-------------*/<br>
&gt;=C2=A0 /*------------------------Define local variable-----------------=
-------------*/<br>
&gt;=C2=A0 <br>
&gt; -<br>
&gt;=C2=A0 /*--------------------Define export function prototype----------=
-------------*/<br>
&gt;=C2=A0 extern=C2=A0 =C2=A0 =C2=A0 =C2=A0void dm_check_fsync(struct net_=
device *dev);<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 /*--------------------Define export function prototype----------=
-------------*/<br>
&gt;=C2=A0 <br>
&gt; -<br>
<br>
This change is fine, but look at this file now.=C2=A0 All of these crazy<br=
>
comments can be deleted, they are not doing anything...<br></blockquote></d=
iv></div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0</div><div dir=3D"auto">I wo=
uld delete them. Thanks for letting me know..</div><div dir=3D"auto">Sanjan=
a.</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000672359058481cd34--

