X-GM-THRID: 6801392738100051968
X-Received: by 2002:adf:ee06:: with SMTP id y6mr2390230wrn.187.1586226361194;
        Mon, 06 Apr 2020 19:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c2:: with SMTP id b185ls1547178wmc.1.gmail; Mon, 06
 Apr 2020 19:25:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypJd9awuBYc3tdKgC63LY8X5SLlpI1mnfEdmjgSlKdWxXFpofH2wWbApBI08ov7HKE3GNM7o
X-Received: by 2002:a1c:a344:: with SMTP id m65mr1990219wme.20.1586226310917;
        Mon, 06 Apr 2020 19:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586226310; cv=none;
        d=google.com; s=arc-20160816;
        b=Lq7E8GPlk/yNmwJizz4XtRDLQy/G5bxtKmFtQRsYA48iDdcNteJSJRxadCztVHTXiY
         hdsbQF/0sRTIDBEwoI1WAGsGJ8Kfo13/ep9gFhNGt9+zM9gYAer63bcDbHodjVGzQHwo
         /VAy75ZfoiQ3rZw4KIPKiAU6zAD2dLj7KL6xDUKQPKjF62V7c9oVPWIf9kPm2w444z8V
         8JYQtwBXbDQBPHjB3Ze4yUlKXuJMLOOSRIt0pfYHfzH0kC+QqpoG9IYK0Vb7ye9AkVVQ
         eJoIVJA4e+Na5aqBf0pl7NbUaqUxZOD1/+HCI5Gxu5++PmMG6mt/9HCJZgyoFuDTWh/9
         wXsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vv0owmRWZl+/68RRcdBHGsGMwA6lIcfk5ILx93QU7KY=;
        b=SUN7FaVrgggW7zuNbtMRINbLpTD5Z12FfbLsahTsApeCdzWA3GjjDNF/bIMhkqRUfe
         xGNUMaplgvKM5mkdMUXekt2PiGwGPKTSaYnPJM7uPVCtYAXRKKdXDLVsIsyO+kudaqYu
         SFf9NDlbvm+BOsKns3rTWD9abKjIkZMhTM+iIJeO2HyY1J3Wk+mHJjcedVLHcNEvFwG5
         TRYhv9kHnYFGCzY93gxGC/tb8pMyV0EKSX33e+JNz2+Vk/4svhDT0ejOj5wYhh41mTDh
         U+/EJ4Sg12TSfBsjoWVNBS4nqT+Tk8VKzfR5z2pvDQ5cslLqkPYOPtQNUgFUv+73oBsY
         qIFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v11si100938wrq.4.2020.04.06.19.25.10
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 19:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 7342 invoked from network); 7 Apr 2020 02:25:08 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.216.117)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 7 Apr 2020 02:25:08 -0000
Date: Tue, 7 Apr 2020 07:54:53 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: Need help using coccinelle
Message-ID: <20200407022453.GA1720@tulip.local>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
 <alpine.DEB.2.21.2003071102220.2483@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003071102220.2483@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Julia,

I am trying to use coccinelle.

It is nice to know, you are one of the author of it.

Built coccinelle-1.0.8 downloaded from github site as link in inria.fr gives
HTTP 404 not found.

Please see the configure.log in attachment for the build.

make coccicheck MODE=report is working.

But

make coccicheck DEBUG_FILE=/tmp/b2.log MODE=context
M=drivers/staging/rtl8723bs |& tee ~/tmp/log/cocci-context-rtl8723bs.log

make coccicheck DEBUG_FILE=/tmp/b3.log MODE=patch
M=drivers/staging/rtl8723bs |& tee ~/tmp/log/cocci-patch-rtl8723bs.log

are giving errors

coccicheck failed
make: *** [Makefile:1761: coccicheck] Error 255

It is not with just drivers/staging/rtl8723bs.

Am attaching the log files as well.

Those DEBUG_FILE's have this in end:
virtual rule context not supported
virtual rule patch not supported

Is it that something missing from my build system for their support?

Thanks,
Veera

