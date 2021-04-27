X-GM-THRID: 6955730517423554560
X-Received: by 2002:a19:b0b:: with SMTP id 11mr6835988lfl.291.1619507475412;
        Tue, 27 Apr 2021 00:11:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3026667lff.3.gmail; Tue, 27
 Apr 2021 00:11:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxX92PdAq4NEwlPmawJ/PSGuLS5Np1oEYJHePptHALjzVqo9eR9HMWutu4EZ+bC4ZVLmLk0
X-Received: by 2002:ac2:4e84:: with SMTP id o4mr15156756lfr.557.1619507473200;
        Tue, 27 Apr 2021 00:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619507473; cv=none;
        d=google.com; s=arc-20160816;
        b=A/gcRSSqs3PV54HgfsoBxJZlL064MwPcLCLjoXOomXZCvJSqCfwcLuL+XsxPRTYFWb
         ts5ZyQHdHPFiOZPOSULvoZVZQzPwdtK6mLyU/LGsAfF19xc1xcupp8fnL3psXRWjOA0u
         XaQozju7gy/gcayU4GPYFvntNOAxxmzUQJGUyp2/E0RRp2vpnRUPCFV89a+qTINwdwsG
         JI90AvTwn2UkORL1M28RZSbjj9rU5ZxaU++nm5ku203wyZpRt4VYo2SHI5xug746Z5au
         Jw+tNBzjJStOQ0cJ61mzoptyYpTpOEGuSHlND/x2SMOq4q6QVPlL0YNAxp+hvdJB90zu
         aVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=sd7kHljsBPYuurzY7scbov0myJYodJwQ5ZtnSdCi19Y=;
        b=nKirZpbClm66y1I0CxUyxp+vtmYS/nAPLAl912Nd0UkqrgAozX85Bgp+X+sScwHusF
         swUORH6uSJm8be9JtGLXLYavadduU1a6zUfj3dkW8i//pcG26TxcUwuS11oNnNcHkvO0
         IEkdyqS9zgwazSPNOB2J6MuKSWvMinTxBJfGz08Crflusv7+Fa8XAcIfv3vl+rn1lDEf
         DkM0LRMxP+NladlJPE5vXHgXwdOChI+krzQRIeioY6TBLMPhK9Mz8proTKI3oej1Qa24
         Rhc+fMJk7zTvV6cs3MbpshqygjAj6UbXJhSnLiKzgnV/2aX8rLKJyvG452VI7uiMir9M
         3ezA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n10si1248670lft.1.2021.04.27.00.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Aa4TiP6ppeynAjK/MCd1Qth4aV5rKeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhPE0ItNicNMC7Kk/02oVy5eAqV4uKfA6jg2?=
 =?us-ascii?q?ewKZEn0I2K+VzdMgnf0sIY6qt6aah5D7TLfD1HpOL3+hOxHdpl4PTvysCVrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqVHlZ7QwNLH/MCZfmhz/BarDmtc2l/VKqGL0QCNtKum/?=
 =?us-ascii?q?T2jp78JTYJCxk7gTP+7w+A2frKVyKV2RoTSFp0rIsK+2KtqWPE2pk=3D?=
X-IronPort-AV: E=Sophos;i="5.82,254,1613430000"; 
   d="scan'208";a="505198881"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 09:10:44 +0200
Date: Tue, 27 Apr 2021 09:10:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
cc: Outreachy <outreachy-kernel@googlegroups.com>, 
    Vineeth Pillai <Vineeth.Pillai@microsoft.com>
Subject: Re: [Outreachy kernel] Outreachy project looking for more
 applicants
In-Reply-To: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104270910230.31629@hadrien>
References: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Apr 2021, Vaishali Thakkar wrote:

> Hi All,
>
> I quickly wanted to mention that while most of our projects have
> enough applicants, the following project will still be happy to have
> more applicants:
>
> "Create a linux scheduler test suite to understand functionality and
> performance of Core Scheduling"
>
> Feel free to contact the mentor - Vineeth and apply for it if that's
> something you're interested in.

This looks like a really cool project :)

julia

>
> Thanks!
>
> --
> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2r%2B14JB-m4KuU-vy%3DDAUnv6gmZkEnRyY7Fx_%3Dguk_Ew%40mail.gmail.com.
>

