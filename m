X-GM-THRID: 6660411047048904704
X-Received: by 2002:a17:902:b78c:: with SMTP id e12mr2784029pls.81.1550749222049;
        Thu, 21 Feb 2019 03:40:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9881:: with SMTP id s1ls1321863plp.3.gmail; Thu, 21
 Feb 2019 03:40:21 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaH3bQA6yRLZiNOQWtEB8ug59PIosopjH11H+gdnIh1A2tNJYe4IlRcagCSOGUw29vlmEpH
X-Received: by 2002:a17:902:1681:: with SMTP id h1mr12235015plh.66.1550749221385;
        Thu, 21 Feb 2019 03:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550749221; cv=none;
        d=google.com; s=arc-20160816;
        b=ypEJTHLG5bJyMQoyRW1re1NUlvVkwLfr2Z22KVJXlifDd15QjNDYLRWr36wqnbsDm4
         jg324batnipet2WHAwrgGIVCWY2P+Xql7x4zO/tlpwLAd92JzyuQIcQEdgs+BBFavnG9
         dEYa2FaiQPWVLApnlFOGJtg9lBSc/5HI2kStpddBPKOCwFiHNNhxTdFCzIYVwrngzhm5
         fYTu1g5FMs77RPOgYhW+rXFoToNNCubUxC/iycEujlnTHEwJ7zqaMAeRDZXuxKoGG+nR
         IVMLjh2h1r4cnZZU0jGQJiNgptOJOuPl4T4Uthxh/ZQVRdVlbkgxjxQ0a7Gh4Pz58bNa
         QZTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PBQQhm/666d9kVlrYCZHd5sUq2uzI3xeXQliQnDY7jI=;
        b=iiq55m3t8yRDYeodyyDAKW6UUa4Qdw7682cLgYyXYFeCOou3cs4g/tnrsOFebIsBWG
         cuEgdbHiULggYz2yuw/rXxm6kStJH3ayW24fjrky6DKJ98P6EbtNGiQRBLmITocrPlCy
         1mqVLr2c7qMK3RoUVC/adtZQW5sLKmFkaG9xaUTwlG5AqVTWaWL1J8ChbJidjpAcwhf0
         /XW8sWeXZNiWYMmHtRIkXtU+CAD0jaZQvS/23X1GwttzCg76S8YXyWh1pNbBtEpiIbRE
         SF7/Iq5s4E9TYfOfjBhuwr8+SNuJdxclpiay46yvn+a9oph0TZlc6UrDzW0qB2V+cgVj
         tO7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KySN/4J/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id v132si78328pgb.3.2019.02.21.03.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KySN/4J/";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id i5so44577619oto.9
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PBQQhm/666d9kVlrYCZHd5sUq2uzI3xeXQliQnDY7jI=;
        b=KySN/4J/UHrRa/fK/eU7ZleZ72FaDCnjRsQWUKRH120g8XX4e/epU1VhCwYIIHbVZ+
         yc+/aAjBR6BtvCZPppz7L7lrz16fU4m6llBCzY6FelioIgm++KSvcS2Sg9B2wbwrv8eJ
         gKIA5g26dtBpHyh7MEzwtdmch4DiT/nnAyY+V5xTVK/5Q0XzvAKVrY1Zi10zdfk0SfFi
         VqCEVxfuHL9iM+UzUttFkaujfD3tKHyu9ASVK4kPRuhg9TnMlmf4ZUYVouimdgz/qFQ/
         83N0vmfiUerlc1DVGzZhsxPD4r9WbbJsNyeeAXgDtG6QA46L8vlgiqrPGUFPhIrK0P5o
         2W4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PBQQhm/666d9kVlrYCZHd5sUq2uzI3xeXQliQnDY7jI=;
        b=EiT/7ykl/GWPNXSTnbMQaSxUYUyAKjIeOf0h2R4IsHFa91Y2siv+scb6VKluQGSI9M
         oRy+Hjeu5uWITkcrUjJ6lXcyYlecQWmKTLqs7UG3V2y0umdJpJQYIZ7eXuPX1iGlKuy+
         x+kyoDI8FVArKg0QBRFv5vVKx1DD+BQuPTT9tFd3y6JHmPkJMQO4becqniU1B1ZNiV+G
         GcjNtSLbJ1dCJ7vbcYz/s9rDAZoJqGwel66EiaQcUJJptFlbkqxk+ndOBieF7dz7sVRH
         aX/6tTZuKxOstwf9l7i4ihNShJzC5eoGa4gK93DA/EUZeNPd+xnHv8aIZjYSN1UaQUsu
         gyYg==
X-Gm-Message-State: AHQUAuYiCdw9v0zgE+kbxhe4JuhedqCI2lZXMqf8aN7+X9kw7UnzrY+H
	xmimnL0tKLmTenn376DFOJrUQwEhJa9lzaijJsbCmsmy
X-Received: by 2002:a9d:73d6:: with SMTP id m22mr5891599otk.322.1550749221018;
 Thu, 21 Feb 2019 03:40:21 -0800 (PST)
MIME-Version: 1.0
References: <20190221111627.GA29041@bhanusree-MacBookAir> <20190221112455.GB17199@kroah.com>
 <20190221113234.GA18973@kroah.com>
In-Reply-To: <20190221113234.GA18973@kroah.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Thu, 21 Feb 2019 17:09:58 +0530
Message-ID: <CAB0Mk-N4+L4YU2NG=UmyV_8yQ1QmA1T4040qgSa8eL81bSNrqw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/4] staging: netlogic: Add SPDX
 license Identifier
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Feb 2019 at 17:02, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 21, 2019 at 12:24:55PM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Feb 21, 2019 at 04:46:27PM +0530, Bhanusree Pola wrote:
> > > adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
> > > Issue found with checkpatch.pl warning:
> > > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >  drivers/staging/netlogic/xlr_net.h | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
> > > index f76e16cfd15d..de51d64c1f23 100644
> > > --- a/drivers/staging/netlogic/xlr_net.h
> > > +++ b/drivers/staging/netlogic/xlr_net.h
> > > @@ -1,3 +1,4 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Wait, no, that is NOT the proper license for this file.  The text below
> > your added line spells that out in detail.
> >
> > Never mess with licensing information unless you _REALLY_ know what you
> > are doing, as doing it wrong (like this), is much more dangerous than
> > leaving it alone.
>
> And, the reason that I didn't already put the proper SPDX line on these
> files is that _I_ don't even know what the correct line should be.
> Someone needs to do a bunch of research to determine that, if they
> really want to fix this up.  Personally, there are many other more
> interesting things to do in the kernel than mess with this :)

ok. I'll take care of that. :)
>
> thanks,
>
> greg k-h

