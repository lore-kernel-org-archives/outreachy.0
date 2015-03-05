X-GM-THRID: 6692949458944
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,989b02bf0dedfbda
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.198 with SMTP id xy6mr7543765obc.26.1425519472094;
        Wed, 04 Mar 2015 17:37:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.227 with SMTP id i90ls967175qge.59.gmail; Wed, 04 Mar
 2015 17:37:51 -0800 (PST)
X-Received: by 10.236.230.39 with SMTP id i37mr7675738yhq.47.1425519471928;
        Wed, 04 Mar 2015 17:37:51 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x232.google.com (mail-qa0-x232.google.com. [2607:f8b0:400d:c00::232])
        by gmr-mx.google.com with ESMTPS id kt5si955114qcb.3.2015.03.04.17.37.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:37:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::232 as permitted sender) client-ip=2607:f8b0:400d:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::232 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f50.google.com with SMTP id f12so36943513qad.9
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 17:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=rUFh6EDQYvC5KOd7KYhPlH1ipgyn337kmQI2h+00EPM=;
        b=H63n39vzXZGGcpIsEiEAA4W1QZ+UJVczzOjwRNyokjjTcrO+CRMB3/qBIROnUxsvW5
         uAW92AvjF4TDky3ljd4o6k0UPorH6dktf3g5CKFJGOTrDVpm/YR/BBGwRwChVTdGpCXW
         KPf2HW3EnPgGvrxO2DdemkiFsZDioIJ3FlG7m+3QZ5DnR3ng60KF8naWmhfE2vWS47rH
         hlr8t4Ubpw7E2slvW/F3RQIXFBYkU7zH3RGJkcY810FckqyFl8oURJUX38SCUFEyM8v0
         dmjA6DmuUOQ5Aa5HDBdfcgA804t+KFWlAPhUpHg+8FAyeDTrN0983+iwtdhpS7wpbIne
         kwog==
X-Received: by 10.55.23.135 with SMTP id 7mr13203947qkx.19.1425519471845;
        Wed, 04 Mar 2015 17:37:51 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id 32sm2019959qkp.39.2015.03.04.17.37.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:37:50 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F7B36D.2060801@gmail.com>
Date: Wed, 04 Mar 2015 20:37:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if condition
References: <1425511958-1021-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1425511958-1021-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/04/15 18:32, Ksenija Stanojevic wrote:
> This patch simplifies if condition using following Coccinelle script:
> @@ bool a; symbol true; @@
> (
> - a != true
> + !a
> |
> - a == true
> + a
> )
> @@ bool a; symbol false; @@
> (
> - a != false
> + a
> |
> - a == false
> + !a
> )
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The patch is correct, however you should write a proper commit message
rather than just relying on the coccinelle script.

It's important to try and show in a commit message that you know why you
made the changes, and not just comply with an automated tool.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index b5a26f3..8359705 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -335,7 +335,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
>  	if (!priv->up)
>  		return -ENETDOWN;
>  
> -	if (priv->ieee80211->LinkDetectInfo.bBusyTraffic == true)
> +	if (priv->ieee80211->LinkDetectInfo.bBusyTraffic)
>  		return -EAGAIN;
>  	if (wrqu->data.flags & IW_SCAN_THIS_ESSID) {
>  		struct iw_scan_req *req = (struct iw_scan_req *)b;
> 


