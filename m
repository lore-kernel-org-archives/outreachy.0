X-GM-THRID: 1026580021248
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b2e8c53bfffa69b8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.136.79 with SMTP id py15mr376728pab.40.1424431731507;
        Fri, 20 Feb 2015 03:28:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.131 with SMTP id r3ls713576ioi.82.gmail; Fri, 20 Feb
 2015 03:28:51 -0800 (PST)
X-Received: by 10.66.65.109 with SMTP id w13mr8936451pas.28.1424431731221;
        Fri, 20 Feb 2015 03:28:51 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x236.google.com (mail-qc0-x236.google.com. [2607:f8b0:400d:c01::236])
        by gmr-mx.google.com with ESMTPS id kt5si5521065qcb.3.2015.02.20.03.28.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:28:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) client-ip=2607:f8b0:400d:c01::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcvp6 with SMTP id p6so98330qcv.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=0LtKWcarVGXBhdxUcOnQDdCrCduwLKJbqqn1lovwMKs=;
        b=DMQSJS9sG5bhraBD+vwh1qxHtVuX4aamjitdbkzqOVidSHbyTg/YIFFphilA6Qv5yI
         i45SIOfSpawKWVMBp82wryfA3DYlC6SkvYXlG+yuz2yjTwq89XSiv7vSr4CSTym2TmSc
         PqcqKIAjLzU9Z7MsSyOt5iSOd70qU0SK6pwJTJGbqN9aUkn13Faj+47Sv0jk1F/05nHD
         ajS4RrZWh4hpsUcVAQMba9X59rsSJZbsKhv8SQcJEhAQ9ll6BiuL5q4US0tjGZY9Y0do
         uA3awLTHBGXvo7ac2hBa8OEh4430ZmKIW5jWeag2i99n0EtDUw6xqbIiiLOPM9heLIQY
         4XBQ==
X-Received: by 10.229.175.131 with SMTP id ba3mr6283224qcb.3.1424431731084;
        Fri, 20 Feb 2015 03:28:51 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id 128sm11603036qhu.15.2015.02.20.03.28.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:28:50 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E71A70.5010308@gmail.com>
Date: Fri, 20 Feb 2015 06:28:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove brake statement
References: <1424384019-21836-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424384019-21836-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/19/15 17:13, Ksenija Stanojevic wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "break is not useful after a goto or return"
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_phy.c | 1 -
>  1 file changed, 1 deletion(-)

Patch looks good - your patch description works, so this is in the minor
section.

However, in general I recommend writing a message rather than relying on
automated output from checkpatch. You can note in the message that the
issue was found by checkpatch if you like. Something like this:

"Remove meaningless break after return in switch statement. This was
found by checkpatch.pl."

Cheers,
Jes


> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
> index dbd3321..d006602 100644
> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> @@ -1344,7 +1344,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
>  	default:
>  		RT_TRACE(COMP_ERR, "Unknown RFChipID: %d\n", priv->rf_chip);
>  		return true;
> -		break;
>  	}
>  
>  
> 


