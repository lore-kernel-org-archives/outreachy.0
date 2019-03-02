X-GM-THRID: 6663442013681090560
X-Received: by 2002:a2e:447:: with SMTP id 68mr511695lje.0.1551508373193;
        Fri, 01 Mar 2019 22:32:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6547:: with SMTP id z68ls1388953ljb.5.gmail; Fri, 01 Mar
 2019 22:32:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqx0mAVOJ1lgYFr9+nq1CKMuMF9WpAHQCUn+74MpImWXBfzXaskXS252l0Q1OHRgvEo5jcjY
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr510770lji.9.1551508372262;
        Fri, 01 Mar 2019 22:32:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551508372; cv=none;
        d=google.com; s=arc-20160816;
        b=ag93/JMfEYvZ6SawFxOJ0HURvPmmLc2o/CK9RpQud73NDBk9vGHuYdw1YqQddmrljc
         MU4k6ZTLjvAFyL0w5OEApGDlYEcvbsK7P0/B951oge4w+rDGHawgJ3iQppSLFruGi5X3
         hRKaogdnLxtULdEZDOX5SjuZ0RW83Re+aJjlI1UoTz2KST/2iAXLPT6I/kaXeLuQkdlu
         RUD+dEYfSy+V/WzGn69LJRv3rTkwV/3kOXgymqBuYbh4M3n4VgtR4G02iju7HGH5yYIr
         YQXep5fRDaj/Twbh6J/qstGIEw/Mg4YqjCGV/wcv9ZTXMbz3U/v+ntEjvYO8kFdxXnIR
         SdGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=jeDuQIg/Qs/errM6v8NU3Bzlbd+MEbobtRAajuXaAJ4=;
        b=CiOTCxbpuaLCycoHaumu/8L8m5LPuBZHNazVGLPF861GUQpbH4bqFQ0BlRqmsENoeP
         2zl0gjLr07XA/1ksWTWeB2ez9aWZPYR1mZd4nQn2W9+5r87NPA/Fu5mhTcoekcarpyWq
         x51G6LE7DQBsdNfimfK3qgWfldSBFV4kuU6n7s3Ixs2dgJ5IJyOxEGr92i2TbSckAsmR
         Cm/+9SX/1CeM1wosnatWHUlLn94K8a5DKM3tD1wT+he822QHINC6O5NZ03b8WHMi58h/
         5geeDhmCAMijK5/+fACBptfS4BZCqo+a7aSjoQeBZ9INa0mm6n2vKn9OaGMm1WSmkcWA
         v4uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y26si2725lfl.1.2019.03.01.22.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 22:32:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,430,1544482800"; 
   d="scan'208";a="371595257"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 07:32:51 +0100
Date: Sat, 2 Mar 2019 07:32:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: mt7621-dma: Remove
 license boilerplate text
In-Reply-To: <20190302001115.20477-3-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1903020731330.2572@hadrien>
References: <20190302001115.20477-1-jbi.octave@gmail.com> <20190302001115.20477-3-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Mar 2019, Jules Irenge wrote:

> Removes license boilerplate text

The log message should be in the imperative.  No "s" at the end of the
verb.

Please put a period at the end of the sentence.

The log message should explain why you are removing it, ie it is redundant
now that there is the SPDX identifier.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 7d69586f23c0..e4a522f3b448 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -2,12 +2,6 @@
>  /*
>   *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
>   *  MTK HSDMA support
> - *
> - *  This program is free software; you can redistribute it and/or modify it
> - *  under  the terms of the GNU General	 Public License as published by the
> - *  Free Software Foundation;  either version 2 of the License, or (at your
> - *  option) any later version.
> - *
>   */
>
>  #include <linux/dmaengine.h>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190302001115.20477-3-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

