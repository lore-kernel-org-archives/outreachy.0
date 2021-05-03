X-GM-THRID: 6955401561206947840
X-Received: by 2002:a05:600c:430a:: with SMTP id p10mr19261559wme.29.1620067268801;
        Mon, 03 May 2021 11:41:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4f42:: with SMTP id m2ls2402190wmq.0.gmail; Mon, 03
 May 2021 11:41:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlAukmlY8zdm5Rpcavd9KozrNU2eD73OVhgrOAbcg/J6LoPd/Qcn0Hn2Fw0CilGIlOHcp8
X-Received: by 2002:a05:600c:4a22:: with SMTP id c34mr21205873wmp.160.1620067267541;
        Mon, 03 May 2021 11:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620067267; cv=none;
        d=google.com; s=arc-20160816;
        b=Tb7E73eVh0W4X69g/mvFH2ujxmTs9RUo8B/Ji7g0x2rd2/ADqRnphXJcqZE4J/Qoxh
         XYAXULok5tR+4gpFgot1ZhoRS/ksklo9M/JzAmBaba2hqiN0b6OCBb26sSJX9tBM9rUp
         AhIyuHC1cx/HQViOkin3uHerjsom1VW9CgxZaqQAAYmkcxWch43jO/vvKHgriZIDk+4T
         E8dlvLwihNsIxCdRyfFREAP1oPawLNgjDDzR8vZyqo3nA2hDiRQCB6ud80kq4DM05PyW
         ouRXeJpJA1n3Uw9216G7NUrnjrXpJchShGQOcPD/qwIx/X+uyTlTdOfdq22ihmjbms+I
         u3UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I/n/q/aelXMf9mgaQMQLtrJKcudG4Wd5KNGsIllPB90=;
        b=WkiuhPjff5dx3IXoButp3riRRWbZYTtRzWHOYjKlSKM8Rge+OkPfP50HLzrysB2YLb
         1UvIN6go0RFq3fjLyORHsqZdH15TDqENcOwYNYGuBtGwVnMwcMceo7JIoRVrqer61OJB
         AF5obh36QMOkvabJ+T8luovAInVqfOSby6ubpPQJLEOo82RX8yLPtkiQHJqHsqEzeei7
         yynU8ZCmdnI331ZKl5n3WouP4LyirAeuh/Z698GP3DYnlDTQOF6gxwqvRbNCLc+OApkq
         DvGMSikkxhTTcAuVacXM2TtdUgxI8VwFB6ghKCkTCWFI4RFThhb3XXkRhDYP7s0bcxIF
         bckg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gg9Y3N2F;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id s141si61702wme.2.2021.05.03.11.41.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 11:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gg9Y3N2F;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id n25so7500735edr.5
        for <outreachy-kernel@googlegroups.com>; Mon, 03 May 2021 11:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I/n/q/aelXMf9mgaQMQLtrJKcudG4Wd5KNGsIllPB90=;
        b=Gg9Y3N2Fdb9DyHwiymNwYxOiruKJLzHaTEC41rI3N1IC6KvUtL++MANcceqK2VR90S
         XZs+XpbOIcz5v22bn8WiIRypSN/4WR2AK0HzNE305WZrTTU5j8h72SlE9vXSmtAgos4W
         d1lgJ/G5UT2KvsDmDf05tDhMLWJiNfLOwwwq8IwqzUs2cZkbvIqoqMYPlpMYTZ2nwUqZ
         dwjuOZKkg5JoJBhqf+ZhTpy5zGLDnGn4oc2OprEqiDZ/WaG9UAL+LzLFWcAgelJIl/fX
         83GAWF0aYfTMnQMiqgWop9O4tnuai5PmWSfhFNrC90d2llUsXl3Jxh1RPdwmOIc2MPdp
         1yPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I/n/q/aelXMf9mgaQMQLtrJKcudG4Wd5KNGsIllPB90=;
        b=nqt99nPJt2QM7Vma2Q72O17K1v4p4fAB5zQb9sgRvw4OcRVbEl6l8snUaSxT5U+CIo
         vY8rvwu/S7VuX+b3SZzxWAtJc1zao9jaATlWe5a6I5sbzs8wvXh8I46s+hR8So6+ewEE
         qBHw76WEHemgsR3P0+53JHfRADPDZTqpHh2HNsA3t2j2VYAAeUrGJPv+Y8teBaXNQ7Rf
         d2EsAlUtmi/tpp4vseiO9Mf7aGyiWsQTQx3vy9wiaP/LA2xtdamm262QT+D1rfEFdvKt
         B/dZn+qvCBjXn6J6yEXMNkSbcWaOWjkBbpB6kZa71GOHQH6+eHhOtrWJYqKMHnBoASHx
         3IaQ==
X-Gm-Message-State: AOAM531CGhKc6wi8k144fXrZtEW7xI+tYUWP8CIDSB4TuFrgBhLIdHpG
	0Ub7AhTwOQ1mgsUIndDfb/jaYB7VflnNfw==
X-Received: by 2002:a50:d782:: with SMTP id w2mr21487090edi.346.1620067267238;
        Mon, 03 May 2021 11:41:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id rs8sm243938ejb.17.2021.05.03.11.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 11:41:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, David Kershner <david.kershner@unisys.com>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, Matthew Wilcox <willy@infradead.org>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 03 May 2021 20:41:05 +0200
Message-ID: <2381635.6tjctmx4mM@linux.local>
In-Reply-To: <YJAlWJXDnK9KLg2H@kroah.com>
References: <20210427150719.30841-1-fmdefrancesco@gmail.com> <YJAlWJXDnK9KLg2H@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, May 3, 2021 6:31:20 PM CEST Greg Kroah-Hartman wrote:
> On Tue, Apr 27, 2021 at 05:07:19PM +0200, Fabio M. De Francesco wrote:
> > Converted visorhba from IDR to XArray. The abstract data type XArray is
> > more memory-efficient, parallelisable and cache friendly. It takes
> > advantage of RCU to perform lookups without locking.
> 
> And does any of that affect the runtime of this driver?
>
Unfortunately, I cannot tell. I had cc'ed the maintainer at Unisys but no 
response at all at now.
> 
> I would need this to be tested by the maintainer before I could do
> anything, and a review from willy@ would be also appreciated as I'm
> guessing he asked you to do this?
>
I've contacted willy on #kernel-outreachy and said that you would appreciate a 
review from him. I hope he can find time to see that code.

Thanks,

Fabio
> 
> thanks,
> 
> greg k-h





