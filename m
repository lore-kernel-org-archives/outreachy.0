X-GM-THRID: 6947860813701971968
X-Received: by 2002:a05:6808:5c2:: with SMTP id d2mr2450897oij.60.1617695209674;
        Tue, 06 Apr 2021 00:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:12f2:: with SMTP id g105ls4284987otg.6.gmail; Tue, 06
 Apr 2021 00:46:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/48MzYMq/8nMVD9jlprfEnrXoSDZpksYSWHXdGlHZnVOpmE1MTe+qtQh87DT2M30CAFMK
X-Received: by 2002:a05:6830:343:: with SMTP id h3mr25532307ote.201.1617695209024;
        Tue, 06 Apr 2021 00:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617695209; cv=none;
        d=google.com; s=arc-20160816;
        b=cUW4xzDq7CS3GRO4dKtJ7sBdyiOvWn51pemND0yQEO/q03ue/P4NOW8EQexofW/cFO
         Jpz5m1glD1cVFn08PlRLO+7WmSiEDvVwu3vaKwaYA6tCz0ze4VB1xDpDQfapq2zSLCxT
         zJQm1wPCs476yEv0YGQ+DNnsRR21tEg8ZeY4yNbPIlhSlxtKEAG5618AvQFA0t5EwG1Y
         Ris93Uil1u/Xj2g8/DuHHKvYTMpQAafQ4QxllGYECydcKO8yM6bP3YjXv8mjqT6/QbAV
         b38DgvQYmTlWLNoQTL6xTkDpysGIsIsuQp8DWbOFpeAeoWeGsnRZHWoxsJWaWSXTpDpl
         wxxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BWPcqyUYRC0xftoBk6yDNyCXOv3B1SqXfBH64Md63OI=;
        b=U6yq/CfLIPR7drQ8Gn/5WVhTn/tfS1UGSVKbGc1OhGTIYdJECyuX25zbYXJTTF2c/F
         tHtENmG9v0ZT0SxPaUr4JN6JP4lrVGwYOZm9TfkzTU5sWvBptJtIXUsIoCaH514euWsf
         mRKfcXfygjH3dYNFfWljHRonAbaT+FoWQhnKxoP3F0zH4c2DvL5+NlhoKAH0s/Z9vM8H
         vF2S+nPFWEAPV2JIf104LzGhmpuM9kXTDctJT9ZWZRsyhCABpbfVo5lnHaUE1W9XmfJ/
         FiLwzuOu+aX+wOKhFbI5+F0Hu4TR7rbiCD++51dBY58gRPMfU6AuBrCzzv7gK0n54XOL
         0qfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TFHLXfZL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id f2si2651174oob.2.2021.04.06.00.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TFHLXfZL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x229.google.com with SMTP id a8so14164526oic.11
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 00:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BWPcqyUYRC0xftoBk6yDNyCXOv3B1SqXfBH64Md63OI=;
        b=TFHLXfZLNGt8R8QT4SrGAARvU9RHUYJGkHdwkkJm2WSRgKcviFgSgLZt9Hgupxrfss
         mwh5Ady/nhC75b6KW8fVTQLac+kbTgOzNnzBiZaVNf9j6cptypDWratk3M+a1j3rjJY1
         9pf3xaBhD1ep8/v3GKTSYDiZe7p0Uvh9o+U5KSQDPcJVF21vhsdBU2MPlru19PbgEhdb
         fLR8r+GOTbzGBZj+uVTUUwzWaJGDwFrKbcQIlrao4bx13JNeN3jsZknm2VFSCCoKGJlR
         QItByJiE1JazY8/GSv32Fcg/DKkPNTNt+R3RRxWpighWrHfrrFb/DxLg0q3Vt0hDFh0q
         gZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BWPcqyUYRC0xftoBk6yDNyCXOv3B1SqXfBH64Md63OI=;
        b=I92NWQn+vvFCFbg6wUhQ7dUm2Xx5kFRwY0khK1BX7377raSNXaLlDFySokommrfsUB
         odt1Y6HXY+idkKJ+nFa527thpO5Szi413RabHD79h6t5sQTIKi/Tj0Du/MmHKZOnpkC/
         6hE6u67TmQbilJachtCv7dQ+kTl+Fvlr/Rw/7XzKSx8AjV3OULFMD9wf2fxdgRgi//Dg
         0pgoeGyvNG8AD/pmZ9fyCfAJu2NuN6XEilYCYha/crb6EfZGETscBHlsjuA2N8qxyW+h
         5ohcbalOtKRXg0Uqwg6JE8aLa/IlN+CQLOlsoR5lOeQuC9hwnx2YMSlJ7t5xKyyvBnPA
         wl8A==
X-Gm-Message-State: AOAM533uN0aP0hFfvl1Y977em5o60aLwe/EcwBgMDNzECiZXDjO2z3B7
	XC38lQ4avVgW8jjjTP8ll2+KUhSujz80PAtWvHY=
X-Received: by 2002:aca:4acd:: with SMTP id x196mr2296545oia.34.1617695208759;
 Tue, 06 Apr 2021 00:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210406020815.22995-1-fmdefrancesco@gmail.com>
 <1851038.q9TLUjBrch@localhost.localdomain> <alpine.DEB.2.22.394.2104060839310.2882@hadrien>
 <3909721.0tKxYtM2Wc@localhost.localdomain> <alpine.DEB.2.22.394.2104060926440.2882@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2104060926440.2882@hadrien>
From: FMDF <fmdefrancesco@gmail.com>
Date: Tue, 6 Apr 2021 09:46:32 +0200
Message-ID: <CAPj211vtzZDmwYomg9BBcZwPWxiiwD55=yEpcAXL2WgzGyvUDQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in Hal8723BReg.h
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 6, 2021 at 9:27 AM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>
> On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
>
> > On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> > >
> > > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> > >
> > > > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wro=
te:
> > > > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco=
 wrote:
> > > > > > > Correct indentation issues of many #define and comments in Ha=
l8723BReg.h
> > > > > > >
> > > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com=
>
> > > > > > > ---
> > > > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++=
----------
> > > > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > > > >
> > > > > > You forgot to cc: all of the needed mailing lists.  And your su=
bject
> > > > > > line needs some work.  But the biggest issue is that I do not u=
nderstand
> > > > > > what this patch does at all.  What is wrong with the original c=
ode here
> > > > > > that required you to "correct" it?
> > > > > >
> > > > > > confused,
> > > > > >
> > > > > > greg k-h
> > > > > >
> > > > > I'm sorry that I forgot to cc linux-staging and linux-kernel mail=
ing lists
> > > > > and for the subject I had already sent a v2 patch that had
> > > > > all the required tags (staging: rtl8723: hal:).
> > > > >
> > > > > I think that what was wrong with the original code was that
> > > > > the #define values were far from the symbols with random indentat=
ion.
> > > > >
> > > > > For example, I changed something like:
> > > > > #define SYMB1           0123
> > > > > #define SYMB2 5678
> > > > > #define SYMB3            9ABC
> > > > >
> > > > > to:
> > > > > #define SYMB1   0123
> > > > > #define SYMB2   5678
> > > > > #define SYMB3                   9ABC
> > > >
> > > > the preceding defined values are in a single column. I don't unders=
tand why KMail show them in different levels of indentation. However, I hop=
e that my argument in support of the patch was still clear.
> > >
> > > There is surely a difference with the use of spaces and tabs.  If you
> > > change something about the defines and this problem shows up, you can=
 make
> > > another patch in the series to make the spacing more uniform.
> > >
> > > julia
> > >
>
> > I have not this problem in the file in my git/kernels/staging directory=
,
>
> Are you just looking at the file in your editor, or have you actually
> counted the spaces and tabs?
>
> julia

I'm just looking at the file using Vim and all seems perfectly aligned, but=
 now

I am not sure to understand what you mean about "counting the spaces and ta=
bs".

However, what I did when I found lines with random indentation was:
1) to delete all the spaces and all the tabs that were placed between
the #define
directive and the defined value;
2) add a single space in order to separate
the value from the directive and two (8 character standard) tabs for align =
the
current value under the one of the previous line;

I'm preparing a v3 patch to explain what is wrong with the existing code
and why [I think] my change makes it better. Probably you've already seen
that Greg has responded asking just this.

Thanks a lot,

Fabio

>
> > it just happen when I see that patch in KMail. When I open it with Vim,
> > all the defines are correctly aligned in a single column (that is, the
> > correction I made to the indentation levels of the defines is there). A=
s
> > a consequense, I suppose that the patch itself is correctly formatted.
> > Doesn't it?
> >
> > However, what is really important is what Greg K-H thinks of the patch.=
 I'm not sure I was able to explain to him what I've made and why it improv=
es the readibility of the whole file (may you please take a look at the ori=
ginal in Greg's tree? You would see that random levels of indentation I'm t=
alking about). As you can read above, I asked him if I should make a v3 of =
that with a clearer explanation about the work I've made on those random le=
vels of indentation but I haven't yet had his response.
> >
> > What do you personally think about producing a v3 patch with a better e=
xplanation of the work I've made?
> >
> > Thanks for your time and patience,
> >
> > Fabio
> >
> >
> >
> >
> >

