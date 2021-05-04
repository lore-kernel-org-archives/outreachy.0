X-GM-THRID: 6955401561206947840
X-Received: by 2002:a2e:96d5:: with SMTP id d21mr17857085ljj.464.1620139096315;
        Tue, 04 May 2021 07:38:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:81da:: with SMTP id s26ls1972912ljg.3.gmail; Tue, 04 May
 2021 07:38:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyA5rX5aT9uZjCKUFfGPr5I5Bze5bV8tKhZ45H9RVCIBQMq0t9qxacUXmHr5n3xYPfcJnhi
X-Received: by 2002:a2e:720f:: with SMTP id n15mr17142735ljc.400.1620139094643;
        Tue, 04 May 2021 07:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620139094; cv=none;
        d=google.com; s=arc-20160816;
        b=Daw9c84BfN9Gdz94rO3uo4r0kcYgw7Lo8jI5LGVUWy/wr4b64CsOP6keJpzgGEhop7
         UNPZd/3zy3RyVw3ICFFR8i0jz/HtseruZR7dawH1QXkDmJLwONhMzlzmdn2lWG5IlJNC
         OZYINrwgrIzrSaym9oFOj7V2mqwoqF5k/rmLyhE3ugfBcud53MJC9ZsnGCJyUHoYhO8D
         7pnUX++KRmN1I54szAHvMGAnxJzWNUj72sAJLCypzQSP93d4F9ZZ3dBZWsonaUbvpb4N
         5m1TfSoDAEwG+1SEF/ZZEJz3F1t6EBeb0fljjIOkr6ZLtaN97OVcrkxZ4Vg7rvNYDEP0
         Hmvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0Z5D40mY54B3wfJNIwzdry65d4frpdouUa5/Vn7+nC4=;
        b=aeGzZ9sxyU+RSeiH5nGd/jI9t5X+pjhmByZscMlZQgOu/p4BWepvEat+vHHa0FgswU
         2Dv3vuP17nkVXV6l7DbSqRO/rOPF6XXNigfcJPlVIBhGIchgMcBQcv2jJLRC6792nrKZ
         /crBxF8GCRpCEeufUQ8/qgb1mkyhtDPhheCpLXPhVgNsjDvXeMs3EYg7pgHNi7z7SKu5
         X/m+dmaGYglMvBNaOm9FU7wEIQQUcGGnvQWQEIxIBbTRNQ/I6mRy+K4vsUIBbAQQJbaG
         20xe5KNn2Bz4gZSj8G3RATIp3lS3FAVh/qiclQQ2gaamfrSL7AIjnNo5FaTbZNP1a2Pz
         D1sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=THiE6sx5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id l11si159256lfg.13.2021.05.04.07.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 07:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=THiE6sx5;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x630.google.com with SMTP id zg3so13527959ejb.8
        for <outreachy-kernel@googlegroups.com>; Tue, 04 May 2021 07:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0Z5D40mY54B3wfJNIwzdry65d4frpdouUa5/Vn7+nC4=;
        b=THiE6sx5F1Jt1Q46OoMR1OUvw/mLdHS1Txc5IbyMsFnhEaVj254Ts9TWOeYFEotf4w
         Zy1yV8EOzSIcj13Wu03GShkDdUg/HDRTFZ7IF8YV7EGtmeG2xi03oOMSbbvY4pAa2Yx8
         Nt3ko999+qHYdONNiwiPUQD4tWxe7yI/OMZ6UQ4CyB43uu67+P0E6WzlAuO74nz2pUfE
         q31xcUSDKiAvqROSdFQ/6aoGFxCx1CqPcVJSxYhqyzB7lEOM58NqWdEJZmMbAj83lq1A
         50EcjTC+tKdVX2R4TeJEpMTgEpJWbMfUUQ+HRe0upQObwq9xMMai+7pAH5OoLQ5wbJY8
         ajXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0Z5D40mY54B3wfJNIwzdry65d4frpdouUa5/Vn7+nC4=;
        b=YFJb7QGmWFWpao4uZt9+s2ii1j2NU3wMTstzv8ZY/6KviddbA1JQMpoFLXtkZVhZrI
         RUH4k3tNx9yc4c9LE8lQK+21Sdy++zRwQKCuhOOYZxHFSDI+m8Yqz0qHRVo7tl47FG6B
         Wn9HgG/cO0SHTLUniJ1J3Fr69ACdDZKkjI9yHY+WJFG8akkk+jcywkA0hOD3PVsWOVVB
         lNo93KwhR5RVhmwyxrJzRnmdZsEUfjSodMyOaswmc/8x/8koI4dZ/BKebxosWY7bJx+m
         SEvKSdDpvzPWW4Z3qD3xkBUMg9RJvBTUQtmhE1wYXxprumTbwpmGT5fVdx6TNwRIfM0C
         ZemQ==
X-Gm-Message-State: AOAM532XSTxp1F12LeQCwwN5h8IHChbr+5mMLB9UbV0i2jBAFVsrKI7e
	ybWbzqQuuPv5swFpFHOJBcY=
X-Received: by 2002:a17:907:1b1e:: with SMTP id mp30mr22540827ejc.532.1620139094307;
        Tue, 04 May 2021 07:38:14 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id dj17sm11129322edb.7.2021.05.04.07.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 07:38:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, sparmaintainer@unisys.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v7] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Tue, 04 May 2021 16:38:11 +0200
Message-ID: <810075373.q0sU067TuV@linux.local>
In-Reply-To: <20210504140119.GH1847222@casper.infradead.org>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com> <3550993.e1xmc6yJDa@linux.local> <20210504140119.GH1847222@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, May 4, 2021 4:01:19 PM CEST Matthew Wilcox wrote:
> On Tue, May 04, 2021 at 03:58:02PM +0200, Fabio M. De Francesco wrote:
> > On Tuesday, May 4, 2021 3:42:16 PM CEST Matthew Wilcox wrote:
> > > On Tue, May 04, 2021 at 03:32:53PM +0200, Fabio M. De Francesco wrote:
> > > > Changes from v6; Added a call to xa_destroy() that I had forgotten.
> > > 
> > > What?  No!  Go back and re-read what I wrote about this previously.
> > 
> > I remember that explanation you gave me some days ago for not using it. 
But I
> > was mislead by a comment ("Do we not have to call xa_destroy()?") by Dan 
and
> > your "Correct" soon after the above comment. So I thought that I had
> > misunderstand and the put back that call to xa_destroy(). I lost something 
in
> > following the flow of the reviews, I suppose.
> 
> English doesn't have the equivalent of the French 'si' or German 'doch',
> unfortunately.  I imagine Italian does.
>
Yes, Italian does :-) Despite this, I still think that English is less prone 
to give raise to misunderstandings (obviously, if_and_only_if one knows how to 
use the language).

Back to the style of the code... in particular to (1) avoid unnecessary 
'else', and to (2) check for failure (i.e., not for success) (3) don't 
(always) trust checkpatch.pl because often people don't want their code 
changed according to its output.

Start with (3): Steven Rostedt refused to apply a patch that I did upon a  
checkpatch warning: "replace "unsigned" with "unsigned int". He says he's 
perfectly comfortable with 'unsigned' and that he _prefers_ 'unsigned'. That's 
OK, I think; no problem.

As far as (1) and (2) are regarded, I've been told that when one modifies code 
she/he should not diverge from the style of the subsystem/driver maintainer/
author. If you look at visorhba_main.c, you'll find a lot of unnecessary 
'else' and 'if (success)'...

So what are the general rules one should follow when changing (trivial) Linux 
code? Please note that my question has no other (hidden) purposes than 
learning to work properly with the Linux community and to reduce the 
unnecessary noise consequential to submitting a high number of patch versions.

Thanks a lot for any help,

Fabio




