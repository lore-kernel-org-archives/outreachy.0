X-GM-THRID: 6947895612953067520
X-Received: by 2002:a05:6512:243:: with SMTP id b3mr1873529lfo.529.1617785369612;
        Wed, 07 Apr 2021 01:49:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1311893lff.3.gmail; Wed, 07
 Apr 2021 01:49:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxR5zn9whPuj+wjJrjOzmqiquKLBxlAV81f+YtNu+KnSSvYUVUZ6Fy/xJhipQZ+u2/p0GXC
X-Received: by 2002:ac2:46c1:: with SMTP id p1mr1733037lfo.161.1617785368031;
        Wed, 07 Apr 2021 01:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617785368; cv=none;
        d=google.com; s=arc-20160816;
        b=RLKKWXrtIkIO6i+mzaMsUPBZ2DJ9cKbHSXbZM5LUPry2bWYEPHgT65ygcJYcEbVtd2
         Jo0MGTry+lcZEdTY1hLLsrXC2kAv+xWvjn0kUDY0SlI2mKdkj5ENCXX9xDFJLP2JBqln
         86uANC0Lx3FjuXGKSlbK6UiiZR7P0H8h0bYf7EPHNm0LBjT39apaYKCv3u4xNWTfxi0s
         P9o2KX3xCYnrPuLzbaPm3vMARe14+BpFoX9W774oX2uYGltD7pdsEQF+vFoq3I3lGswx
         8RCdZ5zUX1f4BwYP21vfIfMp1lqBxFskhb0Gkm2gznmy544RCeCWSZfOldogTdHK5VGm
         Ny7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=r5UsSxaaK+FDwSAXWjuCQvloPacd0EBmWVUVnUcFHrE=;
        b=HynkxjExzZphukEx43gR59ECABaUfU74sb2M6T4XRhZ3YFXPbXgqKr69lnNKgvbkAl
         I+sUmG2XtEan3dbfBlDeP/prrhhfKPGHhlpGigstfWubjKPPKJkBDywInoVHJ9Eg58au
         AEXi1HKRLSY7QJ9St88DTTzEAOtfMIPPqn793J9wNTfhxxfLFwc//GFCoi7ch2wZyO1L
         NZVy84zckGwUUTwaoA5nBBsOX1D53B2vV/CunuduCZ+zJ6StxYlM6LnhVFDkPgFVq3ep
         7ZETqgVvRqNtkrDHIlHqd63NiOzzf8978BXGCQoJ24ZMlbzYh36zW2bYyykMr9zQdM6e
         gBtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxkqP+ca;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id b12si1501135lfv.7.2021.04.07.01.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxkqP+ca;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id k8so12428930edn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r5UsSxaaK+FDwSAXWjuCQvloPacd0EBmWVUVnUcFHrE=;
        b=JxkqP+cayQVT7C52b1NL4UK3Dd9Urenq8MX3dz7m/xVGY67JK3QMWWSrpDxtZdyzil
         T0X6PZQgAWXUPlSvT6jmhekP4VjYD4WNHWbeaoc2E1nojyAUiluDl0IlHmJ9TnTnUUNW
         9qYzbrOd2C2gw+M/bLXct9YZuOxqqnsBnSkMAROUYVgZU2qE6H6MnIhww1B4y3KsOnXX
         qG10e0oNb7wzfHVx3CkT93yfeqRz7uL/R72HeuGmIZ7xxLAogHESVGleBQLJVZ2VVsqp
         NXvh8y/866Q7keWNasIV9SihRNdlsY1McP/mRUvAECiV/wPe4G6/kL9ACuFleq3bLMgQ
         LU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r5UsSxaaK+FDwSAXWjuCQvloPacd0EBmWVUVnUcFHrE=;
        b=CL9SFOsxiVQp7hpqUBuOADEqYhqUePQyJkWMKG+zmYmxLlt04jLGN5THB5UfQnGd1s
         D9ZOpqI/FVx8fkjZUxdENNbg+OtOxP6jUnM46bpOPahQt3IChVA5UamoKYFX89jXXq+/
         ZnBrv0s3TSL2wO/t2ayOeLUWPMgt5t3nPSzrJiNgm8YRAfOGexwugnX5gsIdbPlEOvtV
         v45O1yAbRcJ6NvhJPvrFIBvIFJs1K9drwt8EZ182sJ1NE7yVzkfLgHiQ1rgtXFKhZ23v
         Vo0BQMibJkJBDFXPDe8MgUXEQqbEaXw1XrCDSYIXU+o2GI2yMpnOLJ0C0lHVfG7Y0Br3
         znEQ==
X-Gm-Message-State: AOAM533edrAFLkz/g7FUP1fIdDIb7f6/0a5kSFAXpz3/qQ39y90o22tQ
	gRTuWq70GbVer2LD51jopQY0EJ5yGzdsgxS6
X-Received: by 2002:a05:6402:145:: with SMTP id s5mr3019760edu.221.1617785367839;
        Wed, 07 Apr 2021 01:49:27 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id s12sm10127014edx.18.2021.04.07.01.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 01:49:27 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove camelcase in Hal8723BReg.h
Date: Wed, 07 Apr 2021 10:49:25 +0200
Message-ID: <3526833.TqPzfDAv2q@localhost.localdomain>
In-Reply-To: <YG1qxdRtNIIVK3fX@kroah.com>
References: <20210406160037.27225-1-fmdefrancesco@gmail.com> <YG1qxdRtNIIVK3fX@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 7, 2021 10:18:13 AM CEST Greg KH wrote:
> On Tue, Apr 06, 2021 at 06:00:37PM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> > are not used anywhere else, therefore this patch does not break the driver.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Patch v3 changes nothing with respect to v2 and v1. It exists only to cc some recipients that were missing in the header of the previous email.
> > 
> >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> This patch does not apply to my tree right now.  Can you refresh and
> rebase your copy of my branch and rebase it and resend?
>
Sure. I'm about to submit that patch again in a few minutes.

Thanks,

Fabio
> 
> thanks,
> 
> greg k-h
> 





