X-GM-THRID: 6394872359829897216
X-Received: by 10.46.76.17 with SMTP id z17mr534994lja.13.1488924128391;
        Tue, 07 Mar 2017 14:02:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls178927lji.30.gmail; Tue, 07 Mar
 2017 14:02:07 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr430494lfg.13.1488924127953;
        Tue, 07 Mar 2017 14:02:07 -0800 (PST)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x22f.google.com (mail-lf0-x22f.google.com. [2a00:1450:4010:c07::22f])
        by gmr-mx.google.com with ESMTPS id b186si1545376wme.1.2017.03.07.14.02.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:02:07 -0800 (PST)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) client-ip=2a00:1450:4010:c07::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22f.google.com with SMTP id a6so7207177lfa.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DzdrcI+uUlDwF61YZU2tGZ9KboJ1gHMWxkQowCzDhhE=;
        b=YNBQfLnRI6l4DUTwLgMM+yJgQVmZUpu3PxOC60AOr2sgaVHOs6wX8UH8tX1cDn9hOr
         doXNoagRIcYXvrbo35zHZqlbKF4AFfgte24GCQmtnxa1lZSoOGRVhiWfW+LlcIOcI8S/
         cqYO6PnUj2OrnW3GA8LPkgxv7MiodknvEInjiTA+6DoDxENtGulxsWgSXh6irWq5SACs
         kQXSFQF+VU+tuvX91gTp7WXD+INFfinUgpEMktnP3HIc2wkpuCSOt6LVDBpujRia4MDG
         M+xlfaVLfix/fmWP4COzn57kHIeJBGUmIMElPJGwKaQBQfvjj4Aj70EF9X603vefpJjf
         p3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DzdrcI+uUlDwF61YZU2tGZ9KboJ1gHMWxkQowCzDhhE=;
        b=iUkwdExuVq+MImwZNdLP/lviuvpD5CwLmL02f32IFhNaQ/swBaRz2fI1D7hO9wQB1P
         d1q4tjrAJWyGaut/Yr/bGrW8UIV7zshw/e547cPdDNBKSJ9+aDoPUSUK4jn49FtAfnHf
         xPMimFEUzW1PvbMo9qwpifLMwUW/FrWoZNi+jJPgK0/SF2duoyTUsjxXIqzxoZyt8pZC
         xUIB30DIxwQMx82Dl/K/OwinU609sXxCVExX0xR9HHbFBCDINKwTiAAjmR7TNxUfJ89F
         ff9b1KWUiYYh24NnC1RdtmU79BmUhYMIVkrzb5t47Az00lreRAvUAP0/YXwwvCV1j91N
         LxrQ==
X-Gm-Message-State: AMke39nsq+4jlWwL66kK+lfKCVjZKSg2bNNDsyR7MHa4/ZKWMzPohE5lbTYyw2EzFewBzDh5+l2DFpYYTZegSQ==
X-Received: by 10.25.210.5 with SMTP id j5mr713201lfg.56.1488924127655; Tue,
 07 Mar 2017 14:02:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.19.217 with HTTP; Tue, 7 Mar 2017 14:02:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703072237220.2292@hadrien>
References: <20170307213044.GA11835@fireworks> <alpine.DEB.2.20.1703072237220.2292@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 8 Mar 2017 00:02:07 +0200
Message-ID: <CALta04yUrNJ2ShXUoZmHuLen=j+rWLY7wKX2uFNXuKmCuSAiMQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] media:atomisp:pci: Use error codes
 instead of bool variables
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

>
> > -     return true;
> > +     return INPUT_SYSTEM_ERR_NO_ERROR;
> > +
> > +exit:
> > +     return INPUT_SYSTEM_ERR_CREATE_CHANNEL_FAIL;
>
> Oh...  I was hoping for standard kernel values like -ENOMEM, -EINVAL, etc.

I will further investigate this. At this moment, it seemed reasonable to me
to use those error codes. They were defined in the module, but never used,
which made me think that they still have a purpose. So, I chose the
error code that seemed to be related to the name of the function.

>
> Also, watch your subject lines.  Normally there is a space after each :.
> In any case, you should pick what has been commonly used for this driver.
>

I will take care of this in the future. Thanks!

> julia

