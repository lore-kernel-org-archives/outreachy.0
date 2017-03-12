X-GM-THRID: 6396639849722413056
X-Received: by 10.99.250.21 with SMTP id y21mr12568888pgh.21.1489337074116;
        Sun, 12 Mar 2017 09:44:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls11546447otd.46.gmail; Sun, 12 Mar
 2017 09:44:33 -0700 (PDT)
X-Received: by 10.13.219.76 with SMTP id d73mr14774915ywe.126.1489337073692;
        Sun, 12 Mar 2017 09:44:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id e196si813309itc.2.2017.03.12.09.44.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id f84so71134469ioj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xrIBdxT3bQdVJuQzN0P4apCvB5Fb8ACqJmoWjU3C9Ns=;
        b=fCmGSb6nIKuFioZciexBI+QY/MB2v3tEVj/+mepcyN3P3fY8JLwp9XrlrIIOqn89qo
         CHyBaC4/59bMGCBRDNWLZOnR3cP1BvI0Mv7yr87DgAnjtdRGjJ/D+a9mlpucOpUpm/iC
         z4BRuGyt1DJf9wPrQaXw6gTSurkM1ZfdGH7nwFY/Rpog5pDLqvrdVByWH+RFjVcqZ6gz
         zrVWM87DbmPffxtbYmMSK1tFdYAlgn1VDHXZeY2v7t6uMxmx42oP4gk6LcbBktOAQfCN
         XwD5FcbU9T+npmDloBkq/nyZuBPPLqiou86eZz6isPRQ8gUWsj0zR1Jw9iCrLCFr3uOo
         si+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xrIBdxT3bQdVJuQzN0P4apCvB5Fb8ACqJmoWjU3C9Ns=;
        b=lHQYRmufeMdnpo4ga7fCgFSn2DpsZnvygXZ/n70/6VlrNa4X69mYbRgf4RB0bIQz2H
         fwOwkxTOFh7UOGatB5Md/vENQn+rYUaTwH9/Hdq18iYI1xpBhm7p92WSE/eqMxFF3aW1
         T21oG2N5GWmoLADHhjb14Rk+eznL9l02u3TiqdShiyBKc353cCnWuQOQgjKbPC94W5St
         jXg7YRW2rW1NwUXG3PgTj+JISI6dM2MNAZBvSqkD3SxVrzHdOoGwejSsgW4iR8s9jsJ6
         m2J1eq5NBkCTLtJyr4C5ap7UrD4tKUSsXqgDP2zCb52+Ia/aS/HK2d1l1P3G6Ud2SyUf
         nqAw==
X-Gm-Message-State: AMke39nVYAt3KNNIlUq4JeGCmahH3s8MVfMEEc1Oz3EGlEgB3agJtY12Gk/sPn6mlDKaY9LIFdyQxtB0s088EQ==
X-Received: by 10.107.137.226 with SMTP id t95mr24767441ioi.79.1489337073476;
 Sun, 12 Mar 2017 09:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 12 Mar 2017 09:44:03 -0700 (PDT)
In-Reply-To: <20170312154929.GA2417@d830.WORKGROUP>
References: <20170312154929.GA2417@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 12 Mar 2017 22:14:03 +0530
Message-ID: <CAOCi2DE7G2uaGddyvzVUpbj1puyigvBLoy2SUcuQ-U5CaoRZvw@mail.gmail.com>
Subject: Re: [Outreachy kernel] New IIO Coding Task Posted
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 9:19 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> Hi Applicants,
>
> A new coding task has been added to the IIO tasks page.
>
> Coding Task 2: Replace driver usages of mlock with a private lock
> Enjoy!
>
Hi Alison,

I wanted to claim iio Task 2 for adc/ad7280a.c.

Thanks!
Gargi

> alisons
>
> --

