X-GM-THRID: 2788406853632
X-Received: by 10.50.85.18 with SMTP id d18mr13018117igz.3.1424721069634;
        Mon, 23 Feb 2015 11:51:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.116 with SMTP id i107ls1597380qgd.41.gmail; Mon, 23 Feb
 2015 11:51:09 -0800 (PST)
X-Received: by 10.52.88.67 with SMTP id be3mr13466426vdb.3.1424721069427;
        Mon, 23 Feb 2015 11:51:09 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x230.google.com (mail-qa0-x230.google.com. [2607:f8b0:400d:c00::230])
        by gmr-mx.google.com with ESMTPS id ba9si6223002qcb.0.2015.02.23.11.51.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:51:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) client-ip=2607:f8b0:400d:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x230.google.com with SMTP id dc16so23717759qab.7
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=4NjS2Db9BMN135L25N5MEseO9lpiQIUyCZOBuOTKFH8=;
        b=0bP6GW654AAP4Zfs2v7Cm/FhbNfCzz7y0uMRgPc3QUfBZed2hg1T1G+HhS/K3Ko/mD
         zoc2479HfdGV+x9H+3Drjnvbib6OGbYQ9i1SUswO/YG+K5YrCGDeNsVGzstFj+J0qMXM
         1Yxqgiv8HUekr1EZ6Drar0F8hhAvjD2UhuMZBN57SzCE3B9FxILkZWTGGP5aa3uaGfns
         qYf0KllvBCothRONhF14nE0N8YCgi7oaziHRCh915XblWDZID/EZurELTgYHerIVj3Le
         FzYekB9LFFyg2LwfxkX9iKdrEBDcYJeOSVpNVraB7uvvXsju8keLaLEVfv1UVh//Efax
         oUOA==
X-Received: by 10.140.134.198 with SMTP id 189mr1345973qhg.7.1424721069349;
        Mon, 23 Feb 2015 11:51:09 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id k13sm8691673qae.32.2015.02.23.11.51.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:51:08 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB84AB.3040408@gmail.com>
Date: Mon, 23 Feb 2015 14:51:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: Remove redundant
 if condition
References: <20150223194642.GA28233@gmail.com>
In-Reply-To: <20150223194642.GA28233@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 14:46, Vatika Harlalka wrote:
> Remove redundant if condition as !result is always false.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
> Changes in v4: Added "Staging: rtl8188eu" to commit message.
> Changes in v3: Removed unneeded newline after if condition to
>                 follow kernel coding conventions.
> Changes in v2: Removed {} around the outer if condition as
>                 it has single statement.
> 
>  drivers/staging/rtl8188eu/hal/phy.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

The patch description here does not match the code.

Jes


> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3f663fe..e005150 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -386,19 +386,18 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  
>  static u8 get_right_chnl_for_iqk(u8 chnl)
>  {
> +	u8 place;
>  	u8 channel_all[ODM_TARGET_CHNL_NUM_2G_5G] = {
> -		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
>  		36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64,
>  		100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122,
>  		124, 126, 128, 130, 132, 134, 136, 138, 140, 149, 151, 153,
>  		155, 157, 159, 161, 163, 165
>  	};
> -	u8 place = chnl;
>  
>  	if (chnl > 14) {
> -		for (place = 14; place < sizeof(channel_all); place++) {
> +		for (place = 0; place < sizeof(channel_all); place++) {
>  			if (channel_all[place] == chnl)
> -				return place-13;
> +				return ++place;
>  		}
>  	}
>  	return 0;
> 


