X-GM-THRID: 6947860813701971968
X-Received: by 2002:aa7:da06:: with SMTP id r6mr36791387eds.86.1617698300925;
        Tue, 06 Apr 2021 01:38:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls11141254edc.0.gmail; Tue,
 06 Apr 2021 01:38:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzW9SzDXovywG8iWKvvG1ex8SirHpNXB4cM1aj48Guczt31eSEce+Z0m0wyHde6yIFcsWUT
X-Received: by 2002:a05:6402:3487:: with SMTP id v7mr36318284edc.302.1617698299534;
        Tue, 06 Apr 2021 01:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698299; cv=none;
        d=google.com; s=arc-20160816;
        b=HufNzqaZTmP9yKzKrBkur6M7FWK4FloGfN6Vnqt11IUA0J+wA/7H9gnKghQvGHr+Qz
         v1hg0+eIzpZNHLCi4lQKZDUEjg96Vsd2iDQOn5V2tpIMTXqtifOazuo8Zp99d+bOk3A0
         mqXKiVLJSQYqFA3qverEmwieOJhR/oXscEKRC4HUSgWg9UZQPsTKjXs3ePZjiwFDhHLn
         I5X2qb8++CYCo8MuMRJGuWfRHlmfNMcb8tGyY6oYFPT29dz+sVVffepDwM7TC5UXOF6I
         U30wYLrc2d9RiIDW/WIbKLUYDN8lb3nx0X3JJAA6cNBRGijIbAv+/wHh4TZdLCr3MLlv
         bK8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+qAVfPsEqxXkOp1V0LLskniIbyAGOgAdLuDthxAAEJ0=;
        b=qrj2eee5OE+lTU1nKcDs1WLWhIN7iPf27MFLIT/nFPvvSBDSjjwqhWYwh+KledZbAA
         gExPRDoP2hp+5ZY/R/XtLvRI9zQ2Gl8cb/I7tX2v2GvT5zvzmpXsIMXFAp2C/VqY92i3
         TErRyf1ddGXLVd35lZjfYEXqd1VDVr/gnY13a2ZXBrzKZ7gQoWQmBD0OQcBxfWtid6ca
         6Boa9fgsH60nGrKqyPO7O/5Krh5F7XFw+Wa+UxTZZrO7cOQOZPI/nazvxrcZPBaX8/Yd
         IFofHZPb+le/b5BztnU7s0eGcloYnqnlVJ/9YGxH58sIMqfkrGXxdib+jbQegJxeBkQ9
         QKiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ey5GkVRk;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id ck26si2773674edb.1.2021.04.06.01.38.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ey5GkVRk;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id dd20so8300917edb.12
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+qAVfPsEqxXkOp1V0LLskniIbyAGOgAdLuDthxAAEJ0=;
        b=Ey5GkVRkGGVEvW1J5ezamb9jfO28e6HkeP9pqmIoZoNbkeChO+7gKiJDX+WkEcMKyb
         hPcckAp356UG/L7RjdqZxmvYpXUEhXp6LedE0HyTcF68Vl0UX2Sb6QaAsJA/et+C4lUs
         V5GlJaXtwO8IuN+OfcMJC+tdCuiqvyVAk1HNfq6cLKKRxJ+loSyTRiugCz07gwXP8SlM
         KHpu0fAV66GTpfxkcwmCeRcFfuOW5W28piOSSt/vDUxwI+susV5Q2zhJXFm97n4lTw/d
         HFEMpSfLnCs6vmA551IU7CuXIUcuEnNNuO9vCQOuEyTvA4OxG3gO34AitYpYnvV9yZQx
         m+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+qAVfPsEqxXkOp1V0LLskniIbyAGOgAdLuDthxAAEJ0=;
        b=chxai+od8Prpz//XWM7SAov1g/+xVtQ0N4YhPxASwGs5yYgK44cUb7OPL5UQKX8cbl
         4MeInFbfgRl5SutB3m6Er1H02iFfqSCmVLVqODrhlpQXBlMSBFP6zX0JjeZLU12fHcbN
         OJZyaPhHErrCCEJCbIEuojH0rivD+j54gjFUr4CI4XGmRV1pNuWbmPbYOEN/R3UrDgD6
         8L1qOXZy+kHUvqQPNFECZKVkhSgfZp9CWiyqChXvg3gbT0xzdDhf1j5HM5s9+qZWmRWe
         9W7Jd1/RuJFIAocSY78zFTYUXxDFOMaWWYTtWiVAO0awhuMQzjbZUS8XdBhWp05z4Kta
         nnRA==
X-Gm-Message-State: AOAM532U9Y5lBQLV30FUbXR+T34sSkZQJ+pLMseK2X1sYOrEzgQxS30o
	DOAD5vYBEorOtL6v0uWnonI=
X-Received: by 2002:a05:6402:3125:: with SMTP id dd5mr7572811edb.9.1617698299198;
        Tue, 06 Apr 2021 01:38:19 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id p24sm13414421edt.5.2021.04.06.01.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:38:18 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Correct indentation in Hal8723BReg.h
Date: Tue, 06 Apr 2021 10:38:17 +0200
Message-ID: <3119203.byjyqSS6Yo@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104060956180.2882@hadrien>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <CAPj211vtzZDmwYomg9BBcZwPWxiiwD55=yEpcAXL2WgzGyvUDQ@mail.gmail.com> <alpine.DEB.2.22.394.2104060956180.2882@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 6, 2021 10:01:55 AM CEST Julia Lawall wrote:
> 
> On Tue, 6 Apr 2021, FMDF wrote:
> 
> > On Tue, Apr 6, 2021 at 9:27 AM Julia Lawall <julia.lawall@inria.fr> wrote:
> > >
> > >
> > >
> > > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> > >
> > > > On Tuesday, April 6, 2021 8:40:37 AM CEST Julia Lawall wrote:
> > > > >
> > > > > On Tue, 6 Apr 2021, Fabio M. De Francesco wrote:
> > > > >
> > > > > > On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> > > > > > > On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > > > > > > > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > > > > > > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > > > > > > >
> > > > > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > > > > > > > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > > > > > > >
> > > > > > > > You forgot to cc: all of the needed mailing lists.  And your subject
> > > > > > > > line needs some work.  But the biggest issue is that I do not understand
> > > > > > > > what this patch does at all.  What is wrong with the original code here
> > > > > > > > that required you to "correct" it?
> > > > > > > >
> > > > > > > > confused,
> > > > > > > >
> > > > > > > > greg k-h
> > > > > > > >
> > > > > > > I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists
> > > > > > > and for the subject I had already sent a v2 patch that had
> > > > > > > all the required tags (staging: rtl8723: hal:).
> > > > > > >
> > > > > > > I think that what was wrong with the original code was that
> > > > > > > the #define values were far from the symbols with random indentation.
> > > > > > >
> > > > > > > For example, I changed something like:
> > > > > > > #define SYMB1           0123
> > > > > > > #define SYMB2 5678
> > > > > > > #define SYMB3            9ABC
> > > > > > >
> > > > > > > to:
> > > > > > > #define SYMB1   0123
> > > > > > > #define SYMB2   5678
> > > > > > > #define SYMB3                   9ABC
> > > > > >
> > > > > > the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.
> > > > >
> > > > > There is surely a difference with the use of spaces and tabs.  If you
> > > > > change something about the defines and this problem shows up, you can make
> > > > > another patch in the series to make the spacing more uniform.
> > > > >
> > > > > julia
> > > > >
> > >
> > > > I have not this problem in the file in my git/kernels/staging directory,
> > >
> > > Are you just looking at the file in your editor, or have you actually
> > > counted the spaces and tabs?
> > >
> > > julia
> >
> > I'm just looking at the file using Vim and all seems perfectly aligned,
> > but now
> 
> Some code may be
> 
> #define NAMEXXXXXXXX27
> #define NAMET27
> 
> These may look the same in vim.  That is 8 spaces = 1 tab (I realize that
> this is a massive oversimplification :).  If you start on the left and
> move one space over at a time you will see the difference, because it will
> move over the entire tab in one step.
> 
> When you turn the code into a patch, one space (or - or +) gets added to
> the front of every line.  If a tab is used in the middle of the line, this
> will often have no effect on most of the line.  If spaces are used, the
> whole line will move over by one.  Thus the code can look more unevenly
> indented in the patch than in the original file.

Ok, I understand that I have to be very careful when working with spaces and tabs because 
they have different side effects on formatting patches, but...
How can developers check that the patches they are going to send with git are 
properly indented? I mean, that the patches exactly represent what one sees in vim or in less? 

Apart the patch we are talking about in this thread, there is more: checkpatch.pl emits 
warnings when certain lines are not aligned with an open parenthesis of a previous 
line. How to do proper alignment? Using +/- spaces to align can lead to strange results 
(if I have understood what you wrote). How to make a good alignment without incurring
in undesired side effects that propagate in the resulting patch?

Thanks,

Fabio  

> 
> But working with code is not about just looking at it, but also moving
> from place to place in it to change things.  One can move across tabs more
> efficiently, so it could be nice that if the developer already started
> using tabs sometime, then to use them all the time,.
> 
> julia
> 
> >
> > I am not sure to understand what you mean about "counting the spaces and tabs".
> >
> > However, what I did when I found lines with random indentation was:
> > 1) to delete all the spaces and all the tabs that were placed between
> > the #define
> > directive and the defined value;
> > 2) add a single space in order to separate
> > the value from the directive and two (8 character standard) tabs for align the
> > current value under the one of the previous line;
> >
> > I'm preparing a v3 patch to explain what is wrong with the existing code
> > and why [I think] my change makes it better. Probably you've already seen
> > that Greg has responded asking just this.
> >
> > Thanks a lot,
> >
> > Fabio
> >
> > >
> > > > it just happen when I see that patch in KMail. When I open it with Vim,
> > > > all the defines are correctly aligned in a single column (that is, the
> > > > correction I made to the indentation levels of the defines is there). As
> > > > a consequense, I suppose that the patch itself is correctly formatted.
> > > > Doesn't it?
> > > >
> > > > However, what is really important is what Greg K-H thinks of the patch. I'm not sure I was able to explain to him what I've made and why it improves the readibility of the whole file (may you please take a look at the original in Greg's tree? You would see that random levels of indentation I'm talking about). As you can read above, I asked him if I should make a v3 of that with a clearer explanation about the work I've made on those random levels of indentation but I haven't yet had his response.
> > > >
> > > > What do you personally think about producing a v3 patch with a better explanation of the work I've made?
> > > >
> > > > Thanks for your time and patience,
> > > >
> > > > Fabio
> > > >
> > > >
> > > >
> > > >
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAPj211vtzZDmwYomg9BBcZwPWxiiwD55%3DyEpcAXL2WgzGyvUDQ%40mail.gmail.com.
> >
> 





