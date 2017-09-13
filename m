X-GM-THRID: 6465168256299696128
X-Received: by 10.25.17.102 with SMTP id g99mr1310851lfi.14.1505292478263;
        Wed, 13 Sep 2017 01:47:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.78 with SMTP id p75ls790853wmg.15.canary-gmail; Wed, 13
 Sep 2017 01:47:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB5NY9f5m2uQvl60P1p5KDf2dm/h2GNdAe6urGEeqOAob003iHOXQ3YGwZRacGhd5CJENL0
X-Received: by 10.28.6.76 with SMTP id 73mr203616wmg.26.1505292477251;
        Wed, 13 Sep 2017 01:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505292477; cv=none;
        d=google.com; s=arc-20160816;
        b=QepvXsDqZgFDP0oOXEOfxElOZNI1nbqROLfxZWJMT5K36V2gBfmZG1IdJcXnNHqV3z
         75WTLjFwNEfmxbzll9ARM0BwYYko8SAkTCFjqff/RC7+GK+Cu6hRiJ/hgNZIkhurIy3V
         djfO/adqPpOqBDiWrO3uS6owqZATtIXrUKdhQyVIWZyPA+TnGp7O6/gzpcL0NlJvToy2
         oa8jYUy6JRtXTQSb9P2HxEaVBVZcfJgpAgxMbPmqoi6Mc0O6/NShkNTN71fRxv5yHuyK
         CPESFLiCWcy0YYfOkFec7c+3zuqC+YSTQCyCTrPYwS6FZMJvVEFKfrUYHjn+N+59sDpL
         m/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bXxE2TKfZF2Kq5AQEJA+ZIxwXgA5ClvTtlD1P/szEOg=;
        b=WrkZLu3oGiFpcWjg2tliChdz2Kh3Zu7dClWYiRj9p0gru7y8d9gs3HirgpmNaEFSdV
         SfhhSXmxFMYztko5yqpofxtN1wTxoe5kaxb8IqSoaHJtacSAhFwcTwUjTndoFlEKTU2Y
         GVbNSYqtuKJyh0kvzMISrWueM8OjiqDmeoI8rg5ge8LD6pOS4RYl7atMgjf2bD6J4E5U
         Fy03w7kjWDB0B/FLZI3/GquDZL6h57R9V3bjhC4+IYin0r6nEQT58/F4yLQMjUjOxTPK
         OlIRlHxtCbXrJ/YZfIcvJ8BPBz1qlFrC37ReK9y/c4m2j3RNpToXAhKPaIO/i0bA9TFN
         /J3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b62si35948wmd.3.2017.09.13.01.47.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:47:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,386,1500933600"; 
   d="scan'208";a="290828843"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 10:47:30 +0200
Date: Wed, 13 Sep 2017 10:46:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himanshi Jain <himshijain.hj@gmail.com>
cc: outreachy-kernel@googlegroups.com, lars@metafoo.de, 
    Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de, 
    pmeerw@pmeerw.net, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    nick.desaulniers@gmail.com, daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/2] Rewrite the IIO_DEVICE_ATTR_NAMED
 API to pass name as string.
In-Reply-To: <cover.1505291907.git.himshijain.hj@gmail.com>
Message-ID: <alpine.DEB.2.20.1709131046240.2850@hadrien>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Himanshi Jain wrote:

> This patchset is to rewrite the IIO_DEVICE_ATTR_NAMED API to pass name
> as string.

You need to indicate what has changed in the v2, either here or in the
individual patches.

julia


>
> Himanshi Jain (2):
>   include: linux: sysfs: Add __ATTR_NAMED macro
>   iio: Change to __ATTR_NAMED()
>
>  drivers/iio/adc/ad7793.c          | 2 +-
>  drivers/staging/iio/adc/ad7192.c  | 2 +-
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  include/linux/iio/sysfs.h         | 6 +++++-
>  include/linux/sysfs.h             | 7 +++++++
>  5 files changed, 16 insertions(+), 5 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505291907.git.himshijain.hj%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

