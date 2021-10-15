X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6402:2682:: with SMTP id w2mr15934979edd.185.1634286740876;
        Fri, 15 Oct 2021 01:32:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1484:: with SMTP id x4ls3172722ejc.1.gmail; Fri, 15
 Oct 2021 01:32:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9houY4sDOQWAg7sZDdUI9VAjcEWFsBXCfuBSnwZDl3FM44alZiI1wIEc65dalMx3UVbiG
X-Received: by 2002:a17:906:884:: with SMTP id n4mr4868371eje.54.1634286739373;
        Fri, 15 Oct 2021 01:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634286739; cv=none;
        d=google.com; s=arc-20160816;
        b=n+ygDtt4H5D8UUL8fn8eXU2BxxAE5bzap2vpvIhgyD1oKaxiOEz9ZwnboEh7I2E/yu
         5xtXprHsVSF2qV0o9hX+o7OP++OyiPPOOprcQuZbJ4Up4iUg4HmVk+6xTK2/l7qks3Mq
         oRdM2sVdFBb7FQm/H2WV4YDpMYb8hsMOFyQGDyaJOfndXSWZRawNfeslazgS3alWEA0H
         8Gs7kNplJTIoKJq+1eBLqNQBBv3HpYj9ot7Vmdo8qTySikA+fUWXxf2SjpsoGdLSE2nY
         S/r4e7o4oxwcVopoF6MoZroSFbEE0sUj+yqiD4CVJyKgmse0suBmOgxGLhkBkSpGnyMh
         0srA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=OzSnpYmMsWGTJjftHTfqJWv6QsvYMsxD5BhR7qQjd8U=;
        b=LPdThq6ctvVNTbe1nWiKIR384vsII5NsEMS5Tn7g/JyiH5jnGH0B67cZrA3DrR5sjM
         OkYOmiohVmwVuX109l37+bK/97QpSJruXn+hcuEXz9kA8KW2XaB5s10JQ1Q5rf9WM4Mg
         dPgkFFCYmIUF17peI8PlJ1KyT4j/5OVKkyk+qlZdR0hPeNBwQc9EnqAnpod9DNXW3FMp
         b/riSAmAECVNXAxWCiDnPXNPfTn4jHUCr5+dXcryzZEkdvFkYkvMn0Y2FVATCnHSKmBL
         XAyCOnHYBDyKZhVvyCHIJfviybcEXGSLk78830B6HKysxPcHE1RDknc+sKok7ZVZHSOT
         oSxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q0ZAaNW7;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id 6si171560edx.5.2021.10.15.01.32.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 01:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q0ZAaNW7;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id s198-20020a1ca9cf000000b0030d6986ea9fso1756402wme.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 01:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=OzSnpYmMsWGTJjftHTfqJWv6QsvYMsxD5BhR7qQjd8U=;
        b=Q0ZAaNW7MKIw5uek/KtUjI3Fwd727qDum+XTcc+mQjIvVOUkEDGe0xXNRGCXe7bNJK
         IDqdc09HuF1pFK8AYD6cNHkdkxxlskQupBXNUPRNhkgvr6tC13QYYOBpPf4FAMnBO+Co
         YSZfSFuL4Y0DN9hJuU0xlcr5Qb2nQROJiStfX0L2plJmkeRzLQNiuyYDpeG/Hs1KZX6i
         mfxDczvYmI9iSN/CFxnif//7mjcGeHHXgHZ+KheBFylkUHHB6EY+gSYBVZSiQIgVOxDB
         cY4EkVHUrVukICuMVQGDIBBO31qaK3sp/25Z3Bd+svieRzFJ8ukX06sC5WUA8Lvl58bC
         D0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OzSnpYmMsWGTJjftHTfqJWv6QsvYMsxD5BhR7qQjd8U=;
        b=h+IPYs9ovgSm6DVJO4OQdVraPSYlysn3B6ybUGI7Zzee1Su52hmsG51spfdcdEHrWM
         7Z52LjBJADeMKr7oua79NuITpK6WniMMqIFEBy+liIQppbSVDi43s9FXXGqj3j2Gv/Aj
         YmklnimuT0kdSriEVJjbhUbVGk5Vxk37qDsrqzfxZGV3xNaz6CR0zPiIDqLg9tlHPNRI
         HmVZG/XOLzCh6mN8WOOF7hhiOCccR8APr3c/2GuZDTe//S8kJIMdm+Y1xtVPkF93YB8F
         mmwJaB/KtrENe0Qcl9tqOeauRXZ5isGEKIF1I/KCaR61KisgP0DwIEPLUoDQSaqIDh1w
         ELVg==
X-Gm-Message-State: AOAM530Re90D3oBRpiASdp1vIhI5l2FNT4oep6Tq+tQwIRkZU6wGo635
	aHIGeYlutdvr3M89LFTRXLs=
X-Received: by 2002:a1c:4d06:: with SMTP id o6mr24460891wmh.137.1634286739113;
        Fri, 15 Oct 2021 01:32:19 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id t21sm4004508wmi.19.2021.10.15.01.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 01:32:18 -0700 (PDT)
Message-ID: <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>
Subject: Re: [PATCH] staging: vt6655: Rename byPreambleType field
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, Julia Lawall
 <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, "forest@alittletooquiet.net"
	 <forest@alittletooquiet.net>
Date: Fri, 15 Oct 2021 09:32:17 +0100
In-Reply-To: <YWhus0EGaPJXhsHv@kroah.com>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
	 <YWhOfPhVRBrH3gz8@kroah.com>
	 <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>
	 <YWhus0EGaPJXhsHv@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Thu, 2021-10-14 at 19:53 +0200, Greg KH wrote:
> Each patch should only do one logical thing.  And every "thing" you
> do, has to be described in the changelog text.

Ah, I see. If this is the case, I'll leave tidying the comments up
until the end of the cleanup work and make a patch of it.


On Thu, 2021-10-14 at 20:40 +0200, Julia Lawall wrote:
> > I saw that functions and parameters use it[1] so I deduced that
> > "by" might stand for byte.
>
> OK, I see your point.  I originally thought that doing something by
> the preamble type might be true or false.

Agree, in such case that would be a well-named variable.

> But it looks like the developers
> have considered the use of booleans and that is not what they are 
> using here, so it seems that my original idea was off the mark.

I read through the code and it looks like indeed the developers
intended to use it as a boolean but this "by" didn't mean to mark it as
a predicate (if that makes sense).

> There is also this code:
>
> vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_SHORT;
> vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_LONG;
>
> PREAMBLE_SHORT seems to be 3, which is not a boolean.

Not sure how I missed that, thanks for digging it out. 
Hmm, but in baseband.h they are defined as 1 and 0:

```
#define PREAMBLE_LONG   0
#define PREAMBLE_SHORT  1
```

Or am I looking at the wrong definition?

> There is also
> vt6655/rxtx.c:  return cpu_to_le16(wTimeStampOff[priv->byPreambleType
> % 2]
> which also makes no sense for a boolean.

`wTimeStampOff`, defined in rxtx.c, line 57, stores two arrays of
shorts, first for the long preamble and second for the short one. That
modulo confuses me because if we were to take these values as they are,
we'd get the right array anyway. Or maybe there's something more to
it/I am misreading it.

It looks like there are two issues here:
1) Probably we're dealing with a predicate so "byPreableType" can keep
its "by" prefix
2) This variable is not defined as a boolean but it looks like it
should

For this patch, I think I can add `by` back, so `byPreambleType`
becomes `by_preamble_type` and exclude the space change pointed out by
Greg. After doing this, I can take a look and try to define this member
as a boolean. To be honest, I'm worried of doing so as there's no way
for me to test it.

What do you think about this?


Thanks,
Karolina


