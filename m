X-GM-THRID: 1485909786624
X-Received: by 10.50.30.134 with SMTP id s6mr163521igh.2.1424461161039;
        Fri, 20 Feb 2015 11:39:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.178 with SMTP id g18ls243925igt.41.gmail; Fri, 20 Feb
 2015 11:39:20 -0800 (PST)
X-Received: by 10.43.51.198 with SMTP id vj6mr119992icb.34.1424461160845;
        Fri, 20 Feb 2015 11:39:20 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x231.google.com (mail-qc0-x231.google.com. [2607:f8b0:400d:c01::231])
        by gmr-mx.google.com with ESMTPS id ba9si5319314qcb.0.2015.02.20.11.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:39:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) client-ip=2607:f8b0:400d:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x231.google.com with SMTP id s11so2460194qcv.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=9RoiruxV3QNsBaDol/svtdiEiyJxmxulEEC4aWF92p0=;
        b=WgDVNLqHCQHPi1ITkkFObDsgyZBDM36EzZtxcDQzR0aNeb5hdwi4KAihzCRT5AB21v
         v+/YRgm7XGd4/RwoRXTb7O1imGDAqhr/KlT+KOfrnIIsWOopxw4/B7+JYaRZh/EjYADf
         nzsS8zoLZiSKXu7/d3HYV3idOyKvQ48BhuYwo+FN+pUtEHDJnydRqaImQdxq99B9MNXW
         ewQ2ix4uB46hvtQQUxaKo9TDIRwKV+jOx7TS2tQnKM2n844yaj0SHoOl0WqEwpMqOvga
         s2Q2dViDLXaM50g0BgsxuB3u0Qhk6KeTsfhaEBd+pecJ3ZEoFUVNjoO6ibyJwls2qdES
         I4sQ==
X-Received: by 10.140.32.5 with SMTP id g5mr9778876qgg.83.1424461160754;
        Fri, 20 Feb 2015 11:39:20 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 7sm12443329qhv.44.2015.02.20.11.39.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:39:19 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E78D64.9030201@gmail.com>
Date: Fri, 20 Feb 2015 14:39:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Replace
 <asm/errno.h> with <linux/errno.h>
References: <1424461072-6219-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424461072-6219-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 14:37, Ksenija Stanojevic wrote:
> This patch fixes the following checkpatch.pl warning:
> Use #include <linux/errno.h> instead of <asm/errno.h>
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 80dfa07..1fb6d85 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -16,7 +16,7 @@
>  #include <linux/init.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> -#include <asm/errno.h>
> +#include <linux/errno.h>
>  
>  #include "ieee80211.h"
>  
> 

Patch is correct, but you should write a commit message instead of just
pasting in the checkpatch message.

Simply saying - "asm/errno.h should not be included directly" would suffice.

Cheers,
Jes


