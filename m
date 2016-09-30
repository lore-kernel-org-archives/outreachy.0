X-GM-THRID: 6336182805735669760
X-Received: by 10.25.203.81 with SMTP id b78mr589792lfg.8.1475263269993;
        Fri, 30 Sep 2016 12:21:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.156.141 with SMTP id f135ls354963wme.7.canary; Fri, 30 Sep
 2016 12:21:08 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr606331wjb.1.1475263268985;
        Fri, 30 Sep 2016 12:21:08 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id e21si465051wmc.2.2016.09.30.12.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 12:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id h96so2410030lfi.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 12:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=RZECsoFda9g3RM1d5CK6zV+D6svvc/d+Xu7UpJPTIb4=;
        b=tScDqJbrcZu4gZL+ysLEmpow0K9qgF7DOzA314BujbsWYfeeKhN/hlhojI5lZIb36s
         6weVxcSUKdFDEgpR3Ok/eXzpLtsXsvMUVUx/WoG41o+oHQSeX5jPve1ErkQ4be+mZ0hd
         /FvgC6thPO08V38/0Uq35A5QP/vm7j8lppfd1ifJyzCkmADpEv224wvnk6QpaLj9lRdS
         +RZaOYhhBD38z5/GIOvZd7tq7sqBKxToegqW21KH2hPeo9UROw6Jk+GF+SSQwz33dabc
         2DSo+Y21elXEK5GWyZ1JeCcuogLOhropXOhOX4FrpMrqr4Qruo3uz3iHkau9hoMpiQHv
         y6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=RZECsoFda9g3RM1d5CK6zV+D6svvc/d+Xu7UpJPTIb4=;
        b=iv5ZZ+pKQPOh/5qhUpVtN043hl3L4H9ueyqVtit5KGbcfm4p7XYIN3yvW5mXo2MOQi
         Q2gIaM9rAWMLfEL0PV6iSBLkpi8vrtT6j9KVQc/BS43vnzYAwTCOH1s2DZ+N7F9A/HI0
         a0dL4OPdrKva7ptRJN106rqJm5FUCy3QPEro033ROeKEfvu5VQm2p4ikxgQPBV1uLYIk
         n0xH/9JInagf7Io7QFPPTuwr0fTNEgWGUGOcPI8yAOEDjKaWkLpIIwF4iOb+l+frOb7s
         fZo5DHtm2uNtDn7lsNbZfday3/weIkS1Ngrpq2TSN48npzYESPjNCHL+pGWgUhi8mM5X
         tZ/g==
X-Gm-Message-State: AA6/9Rlj1OPXoWxaQrT7OE8pcaoEnVTRpMAzPpPid+zRSjWit5HSRRVBcD6nH3edwb1YrWrGUqbcCK6bFxM3eg==
X-Received: by 10.25.75.17 with SMTP id y17mr1866202lfa.28.1475263268417; Fri,
 30 Sep 2016 12:21:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Fri, 30 Sep 2016 12:21:07 -0700 (PDT)
In-Reply-To: <20160930161922.GA11685@localhost.localdomain>
References: <20160930161922.GA11685@localhost.localdomain>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 30 Sep 2016 22:21:07 +0300
Message-ID: <CAEnQRZA_vtutS7xbUVi4Xvdkx9Eph+4cuD-MR=A11Fb15ULekw@mail.gmail.com>
Subject: Re: [PATCH] iio: Documentation: Correct the path used to create triggers.
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Alison Schofield <amsfield22@gmail.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 30, 2016 at 7:19 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Correct the path used to create triggers.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  Documentation/iio/iio_configfs.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/iio/iio_configfs.txt b/Documentation/iio/iio_configfs.txt
> index f0add35..4e5f101 100644
> --- a/Documentation/iio/iio_configfs.txt
> +++ b/Documentation/iio/iio_configfs.txt
> @@ -82,8 +82,8 @@ users to create hrtimer triggers under /config/iio/triggers/hrtimer.
>
>  e.g:
>
> -$ mkdir /config/triggers/hrtimer/instance1
> -$ rmdir /config/triggers/hrtimer/instance1
> +$ mkdir /config/iio/triggers/hrtimer/instance1
> +$ rmdir /config/iio/triggers/hrtimer/instance1
>
>  Each trigger can have one or more attributes specific to the trigger type.
>
> --
> 1.8.3.1
>

