X-GM-THRID: 7020422968837668864
X-Received: by 2002:a05:6512:30f:: with SMTP id t15mr5818230lfp.64.1634648865379;
        Tue, 19 Oct 2021 06:07:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls2335974lfr.0.gmail; Tue,
 19 Oct 2021 06:07:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJyiMi+BhfpG8/EVUpMdVyqpwTCNDWGzRS0mvBms9Al2jxoPQPol24wQN7yEfCvC9BLY3F
X-Received: by 2002:a19:494c:: with SMTP id l12mr6174481lfj.89.1634648862153;
        Tue, 19 Oct 2021 06:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634648862; cv=none;
        d=google.com; s=arc-20160816;
        b=fTJh/twy08bcTr3oarPuN+tNtYlqYZUpuGVuTSQoqcBzyieaKJ+myDF+ZpsgFltfxi
         3Waxb51h4xfcrb/Tq0XBv9mC9+ntE/egi2w0RZ6lCmQ6a4qm+3fm71tXfhV3obYTCdyl
         Q4A5Rx/8H8ivf33gGYae3xA1rlQP1V7EEymVJRPX7aTERqhZWo20z60tnhkXBVG06TJQ
         /eJFPtU3+HiWAqfroZrdlcfrdow4kV7zZzu6JMvbuc8NKv8dNv5m+ODFyn/LKXU5QmJd
         cOJtFMafdyQtHrV6G+PI+YlRp74giCjN2/4549jwuupOumBnw5Uv5sOEVIt8CyCtWVXC
         j+3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rM9NY4I7mI4nZ2MNkYcLXR3L+zVnN6b+7Y3yv0OyjZI=;
        b=euNJR4AVxOCtHa7H+fCfINMlKPZVNbUec1O5gScGoWIN/XmaWsz2z9w1AFUR7it0BN
         aOrLsk2hpvAWq1M+xTylptKd4o6wrLKAWOPoPwkry7foaFM2oVY2HZKAVZsTnN654gan
         qhDteDF8YLrN63NUKjVcvxmi43VpQzD7eMFpdGMlOw2GQQF4uqtoFdBZi8RTGfDREXCc
         zBtn/uyAS6wAmvR33wFwwmpDzmNg9eIkBXBz3+4h5+GgQqcrG3ftJMYEmRE5Hv6ZPPmJ
         QVE0TNtn8eoZcxKeCaK61V/V+LlgYq/2GV94J5bb+g8TRicPYJFdTR5vtB6nl60gLJn1
         M4lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="jU+9M9H/";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id w6si800140lfa.7.2021.10.19.06.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 06:07:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="jU+9M9H/";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id z20so12558637edc.13
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 06:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rM9NY4I7mI4nZ2MNkYcLXR3L+zVnN6b+7Y3yv0OyjZI=;
        b=jU+9M9H/0g1ULVbJGdo2l/3xkFN0Nw3awGK7GVs69EmuvxucviVjlpbYfTZiPmhSjX
         J8oEUeL2ECOGueqVQsPhvaHf0nGh7QwmEiCDax2o6KR2l4kuzBfoEHi9IJNGBOUhtY4j
         eWeD5uA7rdqIhaI6aw5qCStyW8KBwHbzbfsaE+pUuTGSdc2DwprA34a3tPHu7F50w1hj
         lewnCtupFvur2BnBBfJ6zjPI+4RH75XR5hNv0jBI6DrJ6sLnHPPCA4h6LQ2KfpfFljho
         zWrLIuqATP1eyKOMjxKTzZvKO8i/VbWPBIBhmPXZWs6NzK2D7QS1jSeFnIJ8+Aznq8KR
         px/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rM9NY4I7mI4nZ2MNkYcLXR3L+zVnN6b+7Y3yv0OyjZI=;
        b=wlkLUnzPeUmbBGO0Alie1mxA/EeqQraGKXZmwvErJCrLi9D9BIGcFyw3iKLyIRWoPc
         YlUpKSnXsm0kgXGQ1IZey+YyRzVo7mQjTpxZIcMo/9U7/jG2lvK3W4sOMQQ1PQpkRFCA
         JvS1fhvnEeGomRJ3IzXtfB3LAOEflq2d6+gBEcwVOPlymxO2b9TSJKqGUPKXTu7tE+LK
         EgG0CSPe/WvwPpNb66YWPgTZPZ/RBfp/TqrKlCjvm584MWK0F/S4bf8bILuWokUpW5Mh
         kGLSn5C0xcX9Ea/gZ/FNuYvNETdMfzs8dbAjeTCU1oH1KDIhSoFto4Mh8hO/kPcGs6Vi
         NtBg==
X-Gm-Message-State: AOAM5324a5XzQ2tKFecbzSXgEljqW2NfdLY5PwlIKWAPNPxtM0b0wyKE
	PQs2Kq/ixWnMD9ykx07I0qk=
X-Received: by 2002:a17:906:9414:: with SMTP id q20mr39051862ejx.241.1634648861058;
        Tue, 19 Oct 2021 06:07:41 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id r26sm10050317ejd.85.2021.10.19.06.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 06:07:40 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
Date: Tue, 19 Oct 2021 15:07:38 +0200
Message-ID: <1647209.5AoB3rP6bQ@localhost.localdomain>
In-Reply-To: <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com> <84f3c940fedb961e6e7e88d47c3d15e598bc32c3.camel@perches.com> <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Tuesday, October 19, 2021 12:59:56 PM CEST Karolina Drobnik wrote:
> Hi,
> 
> Thank you very much for your comments.
> 
> On Mon, 2021-10-18 at 17:12 +0200, Greg KH wrote:
> > Also, these are all just fine as-is for now.  A better way to make
> > these lines smaller is to use better variable and function names 
> > that are shorter and make sense :)
> 
> I have v2 ready but I'm not sure, given the Joe's patch, if my solution
> is a satisfactory one. I didn't jump on such refactoring as I'm still
> learning about the codebase/process and didn't want to muddle the
> waters (...more than I do already).
> 
> Greg, what would you prefer? Should I back up with my patch, pick
> something else and let Joe's patch be merged?
> 
> 
> Also, I have a question about the patch if that's ok :)
> 
> On Mon, 2021-10-18 at 22:56 -0700, Joe Perches wrote:
> > Maybe some refactoring like:
> > ---
> >  drivers/staging/vt6655/rf.c | 38
> > ++++++++++++++++++--------------------
> >  1 file changed, 18 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/rf.c
> > b/drivers/staging/vt6655/rf.c
> > index 0dae593c6944f..7beb0cd5a62df 100644
> > --- a/drivers/staging/vt6655/rf.c
> > +++ b/drivers/staging/vt6655/rf.c
> > @@ -680,16 +680,19 @@ bool RFvWriteWakeProgSyn(struct vnt_private
> > *priv, unsigned char byRFType,
> >                          u16 uChannel)
> >  {
> >         void __iomem *iobase = priv->PortOffset;
> > -       int   ii;
> > +       int i;
> > +       unsigned short idx = MISCFIFO_SYNDATA_IDX;
> >         unsigned char byInitCount = 0;
> >         unsigned char bySleepCount = 0;
> > +       const unsigned long *data;
> >  
> > +       uChannel--;
> >         VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
> 
> I see that you introduced `uChannel--` to further tidy up the lines
> with `[uChannel - 1]`. In general, is there anything wrong with
> indexing like `i - 1`? What's the preference here? DRY things up as
> much as possible?

Hi Karolina,

No, there is no problem in using a[i - 1]. Personally I prefer the former 
when 1 <= index <= ARRAY_SIZE(a). If you code "index = index -1;" or 
"index--;" (that is the same) and then you use 'index' many lines below that 
decrement in "a[index]" it may be not immediately clear that you are not 
indexing past the end of the array.

But this is not the point. You may still use Joe's style or leave it as 
"index -1". The point is that Joe is just showing you some different way that 
you can use to accomplish the task of "Fix line wrapping in rf.c file".

He put many different changes in one only single patch. Maybe that those kind 
of patch are permitted to developers who have gained so much trust that Greg 
doesn't need anymore to check "one {,logical} change at a time" (but still 
I'm not sure about it). 

I guess that if Linus T. or Greg K-H. want to put many different things in 
one big "Clean up rf.c" patch they can. This (yours) is not the case. If you 
decide to use one or more of the example Joe showed you you must be careful 
to split changes in a series of patch, according to the instructions you read 
in the Outreachy pages at kernelnewbies.org.

Joe is showing that you can shorten lines with several techniques...

1) renaming variables:
	("ii" => "i") and getting rid of hungarian notation ("bySomething" 
	=> "something");

2) contracting instructions: 
	"uChannel--" or "*data++" - for the latter take care of preceding
	rules or, better, use redundant parenthesis like in "*(data++)" to 
	facilitate readability and comprehensibility);

3) using temporary variables:
	"unsigned short idx = MISCFIFO_SYNDATA_IDX;" or "const unsigned
	long *data = dwAL2230InitTable;");

4) refactoring lines of code (e.g.,
	-               if (uChannel <= CB_MAX_CHANNEL_24G) {
	-                       for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii+
+)
	-                               MACvSetMISCFifo(priv, (unsigned
		short)(MISCFIFO_SYNDATA_IDX + ii),
		dwAL7230InitTable[ii]);
	-               } else {
	-                       for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii+
+)
	-                               MACvSetMISCFifo(priv, (unsigned
		short)(MISCFIFO_SYNDATA_IDX + ii),
		dwAL7230InitTableAMode[ii]);
	-               }
	+               data = (uChannel < CB_MAX_CHANNEL_24G) ?
	+                       dwAL7230InitTable :
		dwAL7230InitTableAMode;
	+               for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
	+                       MACvSetMISCFifo(priv, idx++, *data++);

5) something else that I'm missing and that you may easily notice :)

I prefer to state it again: if you choose to do such kind of works, be 
careful to split self-contained patches in a series and explain each change 
you make and why you make it. Each patch must do only one logical change.
Each patch of a series must be self-contained also in the sense that it must 
build without introducing errors or warnings at any point: for instance, five 
patches => five clean builds.

Thanks,

Fabio M. De Francesco

> 
> I'm asking because when I was reading this line, at first, it wasn't
> clear to me why we could decrement it (example though: "Was this
> modified earlier? Do we need to "correct" it?").
> 
> 
> Thanks,
> Karolina
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/
outreachy-kernel/810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel%40gmail.com.
> 





