X-GM-THRID: 6947860813701971968
X-Received: by 2002:adf:b358:: with SMTP id k24mr10557663wrd.187.1617696129344;
        Tue, 06 Apr 2021 01:02:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls10630952wrb.1.gmail; Tue,
 06 Apr 2021 01:02:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyFmh8C3ll6Mll0zIunX2Xvy5iKe2fBkywfAc2QOL36wtLXlc5ywTtMc/49UI8aRbDMKrcB
X-Received: by 2002:adf:dd8e:: with SMTP id x14mr15782030wrl.270.1617696127892;
        Tue, 06 Apr 2021 01:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617696127; cv=none;
        d=google.com; s=arc-20160816;
        b=IYtYdf9hAZrP4T3MPoDy3bkzB+IPLnu1sMNAJKmGTu/0Pc+vLlONOzo7hVhSOurskL
         LfGgkbbgNQ4+aNaCV6t8MYxQS0nAJlfGUgrgv9rJyiMzUe69U1XSepU/JQt9kF5oGwFW
         yzCgp2RjuJk8nK3jxSP7rY6EYA4sdo1OLrMSyhB5D8oFO6uA0b17RUV0Npj2Mb4JEx19
         cnCkxXwQL5fdYgnXcXcnth9fhbWz/hzu8p7a5mpEonNLptHdr4UzElwawQDhPN22Ykft
         XxD07Ee0X3D4Eeg37JHpsHD3yf7MHVK3RE0MNHRQoXWuBIXEMlvmoU5xmxXnvJsvWz9g
         6lVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=USAcvOb8fZJcg5m+ZY3XGVcaytg5AR21tmVtsr0r270=;
        b=rLTINxoWwCWmwl0i/fqvySbJ8rKIr3BgsMRk0qZ7NP42G9mCvJV88bkq2ymWj1k/RN
         VZRsQgVYO3Yqx7U9CCwQHFcn+Sea3krAZUmxrUYny9BIhzYEuPTP3mMb1rllj+6Y1fQT
         lRx6a0K/NULbMEV/wzCzw9hLrbo1PW5RAqir4pVYCv2+VKx8kzBdIHNv36OiGR+dgeRW
         Tb4E6nLadNIjCT2o6H/CWqKb2L7CrijU2zS/o4SIPVM22IOgA86GAOZSTA4L3A5svWQ7
         FZA7OkC+K65tEj4Wqc5b8SzxL+vjNRJaaE/zrDScDX9OmNWG3aopumTZI0PgeoD0s5YK
         wUBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p65si171267wmp.0.2021.04.06.01.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A3jinG69N5Et7VX9D+O1uk+Ghdb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roe8S0gX6hC1UdHYrn92BP6foewKlybde544NMbC+GDT3oW?=
 =?us-ascii?q?fAFvAG0aLOyyDtcheOkNJ1+rxnd8FFZeHYLV8/tsri5Rn9LtBI+ra62YSJocub?=
 =?us-ascii?q?8Ht3VwFtbMhbnn5EIyKWCFd/SgUDJbdRLvuhz/NdqzCtdHgRZMjTPAhjY8H5q9?=
 =?us-ascii?q?fGlI3rbHc9bnZN1CC0gTyl87L8GRSDty1xbxp1za4m4Sz5lWXCipmLie2xyRPX?=
 =?us-ascii?q?ygbohah+qZ/EwtxKCsCAzuMkQw+c6DqAVcBbZvmmujYt5Ni15Eknl8TNpRBIBa?=
 =?us-ascii?q?ROwkKURVzwhwDs1Qnm2DNrx3jpz1KZhnWLm72ceBsKT/F9wb9YeBnU9iMbzbJB?=
 =?us-ascii?q?7J4=3D?=
X-IronPort-AV: E=Sophos;i="5.81,308,1610406000"; 
   d="scan'208";a="501692344"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 10:01:55 +0200
Date: Tue, 6 Apr 2021 10:01:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: FMDF <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in
 Hal8723BReg.h
In-Reply-To: <CAPj211vtzZDmwYomg9BBcZwPWxiiwD55=yEpcAXL2WgzGyvUDQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104060956180.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <1851038.q9TLUjBrch@localhost.localdomain> <alpine.DEB.2.22.394.2104060839310.2882@hadrien> <3909721.0tKxYtM2Wc@localhost.localdomain> <alpine.DEB.2.22.394.2104060926440.2882@hadrien>
 <CAPj211vtzZDmwYomg9BBcZwPWxiiwD55=yEpcAXL2WgzGyvUDQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Apr 2021, FMDF wrote:

> On Tue, Apr 6, 2021 at 9:27 AM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> >
> > > On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> > > >
> > > > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> > > >
> > > > > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > > > > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > > > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > > > > > >
> > > > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > > > ---
> > > > > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > > > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > > > > >
> > > > > > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > > > > > line needs some work.  But the biggest issue is that I do not understand
> > > > > > > what this patch does at all.  What is wrong with the original code here
> > > > > > > that required you to "correct" it?
> > > > > > >
> > > > > > > confused,
> > > > > > >
> > > > > > > greg k-h
> > > > > > >
> > > > > > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > > > > > and for the subject I had already sent a v2 patch that had
> > > > > > all the required tags (staging: rtl8723: hal:).
> > > > > >
> > > > > > I think that what was wrong with the original code was that
> > > > > > the #define values were far from the symbols with random indentation.
> > > > > >
> > > > > > For example, I changed something like:
> > > > > > #define SYMB1           0123
> > > > > > #define SYMB2 5678
> > > > > > #define SYMB3            9ABC
> > > > > >
> > > > > > to:
> > > > > > #define SYMB1   0123
> > > > > > #define SYMB2   5678
> > > > > > #define SYMB3                   9ABC
> > > > >
> > > > > the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.
> > > >
> > > > There is surely a difference with the use of spaces and tabs.  If you
> > > > change something about the defines and this problem shows up, you can make
> > > > another patch in the series to make the spacing more uniform.
> > > >
> > > > julia
> > > >
> >
> > > I have not this problem in the file in my git/kernels/staging directory,
> >
> > Are you just looking at the file in your editor, or have you actually
> > counted the spaces and tabs?
> >
> > julia
>
> I'm just looking at the file using Vim and all seems perfectly aligned,
> but now

Some code may be

#define NAMEXXXXXXXX27
#define NAMET27

These may look the same in vim.  That is 8 spaces = 1 tab (I realize that
this is a massive oversimplification :).  If you start on the left and
move one space over at a time you will see the difference, because it will
move over the entire tab in one step.

When you turn the code into a patch, one space (or - or +) gets added to
the front of every line.  If a tab is used in the middle of the line, this
will often have no effect on most of the line.  If spaces are used, the
whole line will move over by one.  Thus the code can look more unevenly
indented in the patch than in the original file.

But working with code is not about just looking at it, but also moving
from place to place in it to change things.  One can move across tabs more
efficiently, so it could be nice that if the developer already started
using tabs sometime, then to use them all the time,.

julia

>
> I am not sure to understand what you mean about "counting the spaces and tabs".
>
> However, what I did when I found lines with random indentation was:
> 1) to delete all the spaces and all the tabs that were placed between
> the #define
> directive and the defined value;
> 2) add a single space in order to separate
> the value from the directive and two (8 character standard) tabs for align the
> current value under the one of the previous line;
>
> I'm preparing a v3 patch to explain what is wrong with the existing code
> and why [I think] my change makes it better. Probably you've already seen
> that Greg has responded asking just this.
>
> Thanks a lot,
>
> Fabio
>
> >
> > > it just happen when I see that patch in KMail. When I open it with Vim,
> > > all the defines are correctly aligned in a single column (that is, the
> > > correction I made to the indentation levels of the defines is there). As
> > > a consequense, I suppose that the patch itself is correctly formatted.
> > > Doesn't it?
> > >
> > > However, what is really important is what Greg K-H thinks of the patch. I'm not sure I was able to explain to him what I've made and why it improves the readibility of the whole file (may you please take a look at the original in Greg's tree? You would see that random levels of indentation I'm talking about). As you can read above, I asked him if I should make a v3 of that with a clearer explanation about the work I've made on those random levels of indentation but I haven't yet had his response.
> > >
> > > What do you personally think about producing a v3 patch with a better explanation of the work I've made?
> > >
> > > Thanks for your time and patience,
> > >
> > > Fabio
> > >
> > >
> > >
> > >
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAPj211vtzZDmwYomg9BBcZwPWxiiwD55%3DyEpcAXL2WgzGyvUDQ%40mail.gmail.com.
>

