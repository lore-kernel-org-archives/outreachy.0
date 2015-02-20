X-GM-THRID: 1587638435840
X-Received: by 10.182.18.102 with SMTP id v6mr11847372obd.11.1424467846276;
        Fri, 20 Feb 2015 13:30:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.97 with SMTP id pn1ls232096obc.22.gmail; Fri, 20 Feb
 2015 13:30:46 -0800 (PST)
X-Received: by 10.182.102.73 with SMTP id fm9mr11866884obb.38.1424467846079;
        Fri, 20 Feb 2015 13:30:46 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id kt5si5711765qcb.3.2015.02.20.13.30.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:30:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id z60so16239734qgd.13
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=7snC90zZt3PrpTGDHB98BbhjyEc/F84GVoMyBOmH+Vo=;
        b=qETfBEpj7dF15CEwCq+Qe6k2ng7CanWfp7oHyAlvsn/I316bBKD4BR/+PqledS03JM
         FYhB7r1MoQlaH9o8cz47gWAUuLjgzmPbb21BxfYXGhJ/5nW51qgfVofJDquo5CLVU290
         PJWDi1TB6H+8Fmu19TyutYNyL4ow1H2Kw/fhXFl7t1WKcEcr2UpPzmlyPSgremynQOBu
         vdOa8DNWOj5weX4VCQrbyqENgi04iV455aTcjK8PKmnfsAfMMmiEQl/jVjs7T2jqRFe0
         iPGquvbawmBCvEx9N8PeBWX3gFWpecfFeAJ4RfZyWFjA0h3+94zgBEgdt8JhTYN86mUW
         Dq8g==
X-Received: by 10.140.48.67 with SMTP id n61mr26576899qga.82.1424467846010;
        Fri, 20 Feb 2015 13:30:46 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 80sm12621106qhb.26.2015.02.20.13.30.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:30:45 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E7A784.9050507@gmail.com>
Date: Fri, 20 Feb 2015 16:30:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace header
 files
References: <1424467617-21266-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424467617-21266-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 16:26, Ksenija Stanojevic wrote:
> Files <asm/string.h> and <asm/errno.h> should not be included directly.
> This patch fixes the following checkpatch.pl warnings:
> Use #include <linux/errno.h> instead of <asm/errno.h>
> Use #include <linux/string.h> instead of <asm/string.h>
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This looks fine - next time, maybe add a blank line in the description
between "Files .....  and the line where you reference the checkpatch
warnings.

Cheers,
Jes

> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
> index 5533221..1fb6d85 100644
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


