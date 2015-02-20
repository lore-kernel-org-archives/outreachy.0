X-GM-THRID: 1469972480000
X-Received: by 10.183.10.164 with SMTP id eb4mr10609882obd.48.1424461633084;
        Fri, 20 Feb 2015 11:47:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.81 with SMTP id t78ls900451ioe.21.gmail; Fri, 20 Feb
 2015 11:47:12 -0800 (PST)
X-Received: by 10.70.46.233 with SMTP id y9mr10863132pdm.9.1424461632927;
        Fri, 20 Feb 2015 11:47:12 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x236.google.com (mail-qa0-x236.google.com. [2607:f8b0:400d:c00::236])
        by gmr-mx.google.com with ESMTPS id kt5si5678183qcb.3.2015.02.20.11.47.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:47:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) client-ip=2607:f8b0:400d:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x236.google.com with SMTP id x12so14006793qac.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=YgO52AAAD1YT7FxR7CBOCC/GyLf7y2n/rfyn7mEp2a4=;
        b=uh3NEd/JTcdgOiqhAmo5Vsi9f4I9caVMhB9F5ZW6CTeKVYYYGoVCM7SOw7pzYWJICc
         7m1Kg7mWjq2su/EXPTS5LqMbkq8foiy3abTOvgoYOHLzVPLYEqHiAAtvpD9PAuWL2TYQ
         z6CBdqbd/7ZAP5D5lZaDXDD8rTrb9zc5hTKCa8xz0Ih0Ql8x/m9fse+zhYsA7KMZ/cld
         sJpqoHiSrlurWfHqN0jEBbxmmeWvSe5Zy0yEYAyO0+HVaOTmt4sbTIXwJTnad/VPxnFP
         d2jwbeB+ba2JehARG5VUOpsj+UKPjegnThbpb04fJ5pQuuVyA099fG5oqsLaVipfeTmo
         i4uw==
X-Received: by 10.140.49.5 with SMTP id p5mr9803909qga.15.1424461632818;
        Fri, 20 Feb 2015 11:47:12 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 63sm12446476qhw.30.2015.02.20.11.47.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:47:12 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E78F3E.7010704@gmail.com>
Date: Fri, 20 Feb 2015 14:47:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Replace
 <asm/string.h>  with <linux/string.h>
References: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424460720-6136-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 14:32, Ksenija Stanojevic wrote:
> This patch fixes the following checkpatch.pl warning:
> Use #include <linux/string.h> instead of <asm/string.h>
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..80dfa07 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> @@ -15,7 +15,7 @@
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/slab.h>
> -#include <asm/string.h>
> +#include <linux/string.h>
>  #include <asm/errno.h>
>  
>  #include "ieee80211.h"
> 

I just noticed you were generating two patches for very similar changes
errno.h and string.h. Since these changes are to the same file and
basically identical changes, doing them both in one patch is preferred.

Cheers,
Jes


