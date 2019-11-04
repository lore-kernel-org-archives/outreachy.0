X-GM-THRID: 6755177272483774464
X-Received: by 2002:a19:c3d1:: with SMTP id t200mr16074015lff.52.1572869091785;
        Mon, 04 Nov 2019 04:04:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls1793537ljh.11.gmail; Mon, 04 Nov
 2019 04:04:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqznrr2grzptpxN6sj0Q9A+VtAMUaMbSZqrS01fOem5R+Y5sGKQSIeh4fuG+R95WjPIq/FgS
X-Received: by 2002:a2e:93d7:: with SMTP id p23mr1916896ljh.102.1572869090808;
        Mon, 04 Nov 2019 04:04:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572869090; cv=none;
        d=google.com; s=arc-20160816;
        b=i4Ok3csXyDH17LNxW7ZPCr/UcAmxg+ftq3k0Q6zbLwizooyVIGm12TiH9LzCw7UCq4
         ClFE1LXK2mx6aAgeLIiSXTISU2maML4Zclzg1WdoIiupskFN4F8dDhDfRj84oZmbdToU
         nyNBzQUXuDy1b8CQZR7j43EoTQ5/ldkQAeGacT4R/l3vqfKvsiTC1FrgwlitipPRBHZA
         5xki+cWsRBlZvKI6AzYdMM8Rv344v2Um2jbkk4R3Wco3vKHcBxRoMhKO9uQiLXOvkOVe
         Cnd99WoaHrBVYFYnEbhticPL9A7PgEoYtuSkaTFa5H6TaLwS+DnnjBhDnx7Md+X1Vmn+
         OW8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=2+QeDEnwaBHa8rSa6WwlJemMJRUS7v94I1+5Q1zfSRM=;
        b=vQUY9JmVpKg2UoZytgQlIEoWPG6F9XXCZ20ODn67SJv31yPhoS0BCiP+w/l0+h8s+X
         dqFj5hdQQmckMT75dC9aMVSptPz8AmbYKPP6ANbTostEFJdX4nbKzsMM8madZEZCeOqK
         ATsll9JNFjm+D5mb+fcK/IdJKudlEmRFwkdt7hzUd1CjZjRK7TWggSrMlJjrRQdyuL/e
         tmc0K46+bor39hn16rVs8hZtY3lSXlr6QeV31iXlKUwAQzowhAqJiQcl51aam6SQmnCo
         58nlv0BOgXLxSl2ITId3JtdW1i2+M9Zxly5yuWaH9Wxriz6HIH852as4ZTypND/UheH7
         CaWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdR6EuIB;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id s4si1367634ljg.1.2019.11.04.04.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 04:04:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdR6EuIB;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id 8so8763529wmo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 04:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=2+QeDEnwaBHa8rSa6WwlJemMJRUS7v94I1+5Q1zfSRM=;
        b=bdR6EuIBMhw+lH4CuNiWnu1jFvVH9bO1eTjEpwTPnsRLtIQYBOaU1+WKjQjyC/a0u3
         eAMxORIlYGzVejeKVTcarvgCm20DOqGKv8/Ga1Fe8x0ad8+wzFRZmpcUfRONkvVONl1U
         Rpbj6lLk49mh/5jyEGsk1k79T4XdEG0oCJ7Cx4ornE/NxpH6fA7pMoBoisQRtVnDMiWF
         eNGH6QaqWR0J2PwV5Vt/ClMn+8kVSwRHKHKPTHGJQDvTI8+v2Ecb0f31kBePkBAHzj8I
         BZZ8m2FOaAqAjuvf6g0wICZcG8pBkwOmtR+sm0JaHa3Gkn2GK7iEyx78HktBaGQOi3wF
         FzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=2+QeDEnwaBHa8rSa6WwlJemMJRUS7v94I1+5Q1zfSRM=;
        b=bHwUCvAG5qiX46Msz/KtuTzKOsiHg1ytCir7vBxVhyaSSBHYuaJWgAAfA4nuLF8rQd
         RBEKDIYxRimagCk1qoaX5T6XoP8CG2vI9jAzQuP+SK7R0rskQgeLfaEHEi+dElXqj+0v
         sX/60cSft7B5sB4oHIxfbLY7unS7CjtT9oDAhX4XLJBi50ucMRvyW5fLv4qFlG2DF6k6
         tdP8vw4OZ6zCrBAb+IFEVEgW10xtC3Fv39e97608yHHiE4mSbI2dtBRIQzNucV/W1qKd
         fdG493tnRVWwYrNdGr+fnASQGoWThW82rn2194Qq8CnE0vFwnebiV3lGp90Rli9zJUw0
         UQLw==
X-Gm-Message-State: APjAAAWipuVteVy5D8I2X0V1JvaYn4lIIBAKAlf0vhJLt41xCqY0sky1
	mYofohwMQB3O0/bjZYkQhrNebI5EeF3X
X-Received: by 2002:a7b:c350:: with SMTP id l16mr10101889wmj.139.1572869090335;
        Mon, 04 Nov 2019 04:04:50 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id a15sm17415738wrw.10.2019.11.04.04.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 04:04:49 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Mon, 4 Nov 2019 12:04:48 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [PATCH] staging: comedi: rewrite macro function with GNU
 extension
In-Reply-To: <20191104101727.GA1718484@kroah.com>
Message-ID: <alpine.LFD.2.21.1911041202440.23730@ninjahub.org>
References: <20191103201740.25415-1-jbi.octave@gmail.com> <20191104062309.GA1119067@kroah.com> <alpine.LFD.2.21.1911040958270.23730@ninjahub.org> <20191104101727.GA1718484@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Greg KH wrote:

> On Mon, Nov 04, 2019 at 10:03:07AM +0000, Jules Irenge wrote:
> > 
> > 
> > On Mon, 4 Nov 2019, Greg KH wrote:
> > 
> > > On Sun, Nov 03, 2019 at 08:17:40PM +0000, Jules Irenge wrote:
> > > > Rewrite macro function with GNU extension
> > > > to remove a possible side-effects of MACRO argument reuse "x".
> > > > Issue detected by checkpatch tool
> > > > 
> > > > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > > > ---
> > > >  drivers/staging/comedi/comedi.h | 6 ++++--
> > > >  drivers/staging/wfx/queue.c     | 2 +-
> > > 
> > > Why are you modifying the wfx driver in a patch for the comedi code?
> > > 
> > > :(
> > > 
> > > greg k-h
> > > 
> > Apology, the mixing will not happen again. I will try the same patch on 
> > different driver as this one has an LGPL license and seems not likely to 
> > accept any GNU extension.
> 
> That doesn't matter.  The kernel is built with many different compilers,
> clang and gcc are both open source compilers that can build the kernel,
> and there are some closed source ones as well.  The license of the code
> has nothing to do with the compiler involved :)
> 
> good luck!
> 
> greg k-h
> 
Thanks, I will update soon

