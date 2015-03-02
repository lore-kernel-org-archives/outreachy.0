X-GM-THRID: 5841740627968
X-Received: by 10.66.219.131 with SMTP id po3mr9623751pac.16.1425317013739;
        Mon, 02 Mar 2015 09:23:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.8 with SMTP id xs8ls721512obc.8.gmail; Mon, 02 Mar
 2015 09:23:33 -0800 (PST)
X-Received: by 10.182.78.69 with SMTP id z5mr27516817obw.4.1425317013497;
        Mon, 02 Mar 2015 09:23:33 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x232.google.com (mail-qc0-x232.google.com. [2607:f8b0:400d:c01::232])
        by gmr-mx.google.com with ESMTPS id z1si758038qcn.2.2015.03.02.09.23.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:23:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) client-ip=2607:f8b0:400d:c01::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x232.google.com with SMTP id x3so25632704qcv.5
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=7zaJi4Nxtk0/hCJAzNgfMmj+S5SeMAq/4A1YsHsQl5w=;
        b=BanvUdYVjQEUW4RoHyf7g189L7e1E5ywkHThtyYd2pfnHzK6VOajWPNuzpGxVVj3VI
         YLHmLI2eYCUwvEVG40qSn/8p7xxx3yrEH28WKmnSeKAy3Dzv92WMbCZ/8UIHun+ATU2i
         o7E2xgex9aD8sHaYHn3m+jg4+wbAVdgaEas2uLvHn9zFGlsHELf02fuBQzyK62GBjhRH
         YYVlgO2YnROz74ZCwxdvJmCfNtUE1Xsb4aBfEolUiZAhXC92PAeNvJIw8bgjFrGsVYse
         KZ9W30L1dIvvwV1p2hFNARjhSjgopHfjaOo1Cu9GMXH/lj2GyQ1/Fxj7tz2lr2a3Jq4z
         p1pw==
X-Received: by 10.229.3.8 with SMTP id 8mr45507973qcl.12.1425317013406;
        Mon, 02 Mar 2015 09:23:33 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id a19sm8797436qac.4.2015.03.02.09.23.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:23:32 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F49C93.9080208@gmail.com>
Date: Mon, 02 Mar 2015 12:23:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8188eu: Remove redundant
 if condition clause
References: <cover.1425276736.git.vatikaharlalka@gmail.com> <78424de094126cf4c12d3fbc98ccbc6de07f52a3.1425276736.git.vatikaharlalka@gmail.com>
In-Reply-To: <78424de094126cf4c12d3fbc98ccbc6de07f52a3.1425276736.git.vatikaharlalka@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/02/15 01:22, Vatika Harlalka wrote:
> Clause removed as !sim_bitmap is always true.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 2af3013..2bbdcca 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -1025,7 +1025,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
>  		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
>  
>  		if (diff > MAX_TOLERANCE) {
> -			if ((i == 2 || i == 6) && !sim_bitmap) {
> +			if (i == 2 || i == 6) {
>  				if (resulta[c1][i] + resulta[c1][i+1] == 0)
>  					final_candidate[(i/4)] = c2;
>  				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
> 

How do you come to the conclusion that !sim_bitmap is always true here?
This is inside a for() loop, and once i > 0, sim_bitmap could be != 0.

NACK

Cheers,
Jes


