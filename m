X-GM-THRID: 6241048565443985408
X-Received: by 10.112.150.161 with SMTP id uj1mr4546489lbb.17.1453288304788;
        Wed, 20 Jan 2016 03:11:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.205 with SMTP id i196ls676491lfb.8.gmail; Wed, 20 Jan
 2016 03:11:43 -0800 (PST)
X-Received: by 10.112.137.102 with SMTP id qh6mr4717962lbb.9.1453288303953;
        Wed, 20 Jan 2016 03:11:43 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id h123si755860wmd.0.2016.01.20.03.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2016 03:11:43 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x235.google.com with SMTP id n5so21650685wmn.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Jan 2016 03:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pIreUPvvF+s01LBbQl8vHYpzvByaJTxQNMFY94lXiIs=;
        b=LZscfsylVm/iqA37+CJ/qtZZwqE80TCG1dZLLzYhaaOil45BIeu3p5AFQuC4zL5otz
         oUczyvqMpPofw5/RtvImMvzBkCdOKwpyZ8wiJjLZLCQsJJQ3kr+onv+2g8mL+k3iThlW
         QHrOoIScgtdlYzhnvacBori6f8E7gV4yGTTVlSWUrGRS8viCvJ6Gwi45gkxALFCTLII6
         qcXZB1VFhQuIQt6tMztD4H87CiZvt6CPGyD13Z4vvF3NqnWixlvmxs33WAT9wvMvenK/
         MKhehi6NQaFeTIp89PDVNbtj1a4sJ3oxdzok3F/tml5CudPOtuCY+cXo/xcdc3z9WETF
         5pgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=pIreUPvvF+s01LBbQl8vHYpzvByaJTxQNMFY94lXiIs=;
        b=m4y4ews8U8c/G1Y/uIkY/XIsyfAWIXPUEiXgGciFfBU4VffVXNuRkn3nMDNXuJN77d
         8E+3LtKY6h/q1BhXgOgskxRKwQHwPWY9qTkDJ9MQVWNxl5AuTokJyO0B9irA74yjIRwK
         P8IRDpE50EUVm57BwFcsiPIIIWgDZH7c9cYWN87wh4xLuJ2QGpcZbvyRvp7WS0UeJCis
         DYyVpc9SKsigHvIzUWcPOCVqQgiLv2apfq3kBTIIrK1qM9HbTYL0KN0yKN2UyB3IwX5w
         VSA7EfAsOwmW0uE6EhlAq3/HKsatZtcJCEGzMXfdjUfQBmfsLX3izpn9wLrLPfjqnSqz
         bILg==
X-Gm-Message-State: AG10YOSJ60ztEr9X6Up8Q1smuPZgxjXRPxcSswreHCenpz1ta25qXSo+YWjpbmOPv/tSHH6U0u1AjH9PyyA9xg==
MIME-Version: 1.0
X-Received: by 10.28.6.201 with SMTP id 192mr3612365wmg.0.1453288303811; Wed,
 20 Jan 2016 03:11:43 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Wed, 20 Jan 2016 03:11:43 -0800 (PST)
In-Reply-To: <5faad4a1-a1fe-43b6-b96a-473b1d80f934@googlegroups.com>
References: <alpine.DEB.2.10.1601180953180.2520@hadrien>
	<5faad4a1-a1fe-43b6-b96a-473b1d80f934@googlegroups.com>
Date: Wed, 20 Jan 2016 13:11:43 +0200
Message-ID: <CAEnQRZBTkBWtsS-gPKsQGi1GRCJxchUgRWTUOOK-1jQ_+t17oA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: round 12
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

> Hello, Julia!
>
> On this page, under Round 12 projects, I see only Coccinelle. Will more
> projects be updated in the future or is Coccinelle the only one?

Hi Janani,

 Usually there will be around 4-5 projects.

thanks,
Daniel.

