X-GM-THRID: 2517133950976
X-Received: by 10.66.102.66 with SMTP id fm2mr13755364pab.4.1424720842838;
        Mon, 23 Feb 2015 11:47:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.73.197 with SMTP id n5ls769112obv.54.gmail; Mon, 23 Feb
 2015 11:47:22 -0800 (PST)
X-Received: by 10.182.205.232 with SMTP id lj8mr13249984obc.39.1424720842572;
        Mon, 23 Feb 2015 11:47:22 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22e.google.com (mail-qc0-x22e.google.com. [2607:f8b0:400d:c01::22e])
        by gmr-mx.google.com with ESMTPS id q2si6440731qcn.2.2015.02.23.11.47.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:47:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) client-ip=2607:f8b0:400d:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22e.google.com with SMTP id s11so12933649qcv.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=7pV24b0cUuI6UqnP0Z2m6TcQxtt1mf8rElaWaFsH2Vg=;
        b=FpidFftiO9RfD+smVjcBEbQa6sje6vZE/0fflM35uZKSvA/vSzDjGwK4/uMuiLwkpg
         c3v2aMYVAJYfn6ljzP1TQkYXk0PozJUnCZn+2YTjbGqyt8xwwnSGzBNibioq9QlS0LxC
         SBxYyTuWHXVS2KjapXDGchUnuojQscy7aeuZdR9+5E5Rvyya/igRzdiRbG5PITol9l/A
         q92lrhikSdxPgP5vNQ1rNlqwEj2VK2+Z/7H/O7rCRwBSEsa0pO+J1mm4q/72QwwPKaGS
         d6yuo6a4ktf/fssiiaRKcgK3uq2iY3bGsrK3kI7QnTLba8Ad4zekHOECe8KOjPxqtqdw
         u21Q==
X-Received: by 10.140.82.71 with SMTP id g65mr26979941qgd.42.1424720842442;
        Mon, 23 Feb 2015 11:47:22 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 191sm18048961qht.13.2015.02.23.11.47.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:47:21 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB83C8.5030605@gmail.com>
Date: Mon, 23 Feb 2015 14:47:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/4] staging: rtl8192u: Replace
 asm header files with linux ones.
References: <cover.1424683659.git.navyasri.tech@gmail.com> <f0126198da2ce88e02d6b5243aedc58c42df456b.1424683660.git.navyasri.tech@gmail.com>
In-Reply-To: <f0126198da2ce88e02d6b5243aedc58c42df456b.1424683660.git.navyasri.tech@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 04:53, Navya Sri Nizamkari wrote:
> As asm header files are included in linux header files, this patch
> uses <linux/string.h> instead of <asm/string.h> and <linux/errno.h>
> instead of <asm/errno.h> to fix checkpatch.pl errors:
> 
> ERROR: Use #include <linux/string.h> instead of <asm/string.h>
> ERROR: Use #include <linux/errno.h> instead of <asm/errno.h>
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v3:
>    -None.
>    
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This part looks good.

Jes

> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index bcb2479..0aed175 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -15,8 +15,8 @@
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
> -#include <asm/string.h>
> -#include <asm/errno.h>
> +#include <linux/string.h>
> +#include <linux/errno.h>
>  
>  #include "ieee80211.h"
>  
> 


