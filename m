X-GM-THRID: 2829093699584
X-Received: by 10.140.196.209 with SMTP id r200mr14366592qha.0.1424733806434;
        Mon, 23 Feb 2015 15:23:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.74 with SMTP id m71ls1751692iom.109.gmail; Mon, 23 Feb
 2015 15:23:26 -0800 (PST)
X-Received: by 10.42.81.68 with SMTP id y4mr11160203ick.17.1424733806150;
        Mon, 23 Feb 2015 15:23:26 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x231.google.com (mail-qa0-x231.google.com. [2607:f8b0:400d:c00::231])
        by gmr-mx.google.com with ESMTPS id ba9si6297069qcb.0.2015.02.23.15.23.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 15:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) client-ip=2607:f8b0:400d:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f49.google.com with SMTP id w8so24510893qac.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 15:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=Cn0U9dYhdkCtoUCVcgi3VaqzbtIDXcGs/BUI3PR0hjM=;
        b=EKTTMy2nta76iZ/QnQE1Dwp4/v0Y9lT6/pJzbDOx7QWdY4eTHSVNFHxn76PCxc+KoO
         hu2mXJrLfXGg8FkRBYOPluWzXjYJLebbpFZZL832JnrT0FQCgPrzuBpvMXxNSAQc5ExC
         1jk6snZUkbp/4rv89hTz4dni1tE0YGJmxxC2wcH0r15h9QX/KHXOlO88W4pjbu1SkDQB
         Ir1i87XDv0wz+A8cUGKTw1EM7g0i0NdPElb9a3RKHGYJ0NB8RA5YjFkt/N3eVE57Q/+Z
         7TGxsV6xBfw22vTsSiuYCIyn2RjalRbcwdjPj5TpkUVKf8Ov8hb34aarIw2fJy/2WCXL
         +uaQ==
X-Received: by 10.140.85.137 with SMTP id n9mr28509845qgd.17.1424733806053;
        Mon, 23 Feb 2015 15:23:26 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id n20sm5343648qgd.48.2015.02.23.15.23.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 15:23:25 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EBB66C.3020104@gmail.com>
Date: Mon, 23 Feb 2015 18:23:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add blank line
 after declarations
References: <1424730764-21137-1-git-send-email-aysemelikeyurtoglu@gmail.com>
In-Reply-To: <1424730764-21137-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 17:32, Melike Yurtoglu wrote:
> WARNING: "Missing a blank line after declarations"
> That was found by running checkpatch
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> index 3c651d5..2c23aa9 100644
> --- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> +++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
> @@ -538,6 +538,7 @@ int ODM_RAInfo_Init(struct odm_dm_struct *dm_odm, u8 macid)
>  	struct odm_ra_info *pRaInfo = &dm_odm->RAInfo[macid];
>  	u8 WirelessMode = 0xFF; /* invalid value */
>  	u8 max_rate_idx = 0x13; /* MCS7 */
> +
>  	if (dm_odm->pWirelessMode != NULL)
>  		WirelessMode = *(dm_odm->pWirelessMode);
>  
> 

Patch looks fine - I as always prefer focusing on a slightly more
personal commit message, and less so on the checkpatch warning, but I
think this one is fine. I don't think you need to re-post this patch.

Jes


