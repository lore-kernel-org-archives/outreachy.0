X-GM-THRID: 6616097415299596288
X-Received: by 2002:a1c:5715:: with SMTP id l21-v6mr274209wmb.17.1540477474098;
        Thu, 25 Oct 2018 07:24:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8309:: with SMTP id f9-v6ls220349wmd.3.gmail; Thu, 25
 Oct 2018 07:24:33 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fG3/hoQ9tQRuHyOPM9IeOmRqZZVyek1L6zoW3YPOFP/owOU7aMVBNHBK8BmfEKIA8NUrfu
X-Received: by 2002:a1c:8354:: with SMTP id f81-v6mr281257wmd.23.1540477473295;
        Thu, 25 Oct 2018 07:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540477473; cv=none;
        d=google.com; s=arc-20160816;
        b=lp4K7hdv+Qa3qUW4TmY+keg15AdGWc+3o8xGAl6i30KE1nl1kAiDEogo9wxbxRuzLM
         2qqvsBqOFkoiiDvL6vvTS9v5dumt1zj7gnSa/kGNuM1ODzG8h0uU489H6mx8+8vXOXGy
         qASuKnjCnCPzaX92WA9oR/u6W4zznY5SjrfrDnZZ6wG+LSmTiqZCXmcInnRNLbuoB92q
         o1RBy13P8lOAp8WxSKRSNub7/eZjl+bfFd4u8xbOnYplDParUee9IowsnYSePWTQH+tX
         H6QnDJwEtRmVQNBpcc92lqcu7pyoLTTnTRZkriVyNn4r5TX/i2lqFuRGIxGDzb6uWoQl
         siTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AhyGB4NQRAyq1PwkXoxLbv7IBzV6JwMTmCMHBEkRsmU=;
        b=CTULyX6QudMeUoYejk5I8nQakgZv4KY+2+fds0r7CEiPusG9kl3rk+5ToqU6QKTY5z
         aNoVeMKDNSBbi6Tk0pChVaMzxfmluuvQxKYpIaLMma4Fn1aYVerioi8+HUhn48mIltyL
         ITlmXBb75VFFoYN/s+ivwcePzzZu30wBWyiW9US3eMxZ/G2PyJ26FkWbRUXIegBOwCcU
         +7wQcjMrBjl0RunArd3UHKRYXKFrNJCM3k+n5gYGnP8fDXMsjk5P9YVtUSQHliFuxIQU
         2RZChPzIg/jLBQCnBICbfsSxRaZ6tDc8TGgWJfRlb/w42i0YhiIRwhgN/Vd5v9XSVUpR
         wgeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h137-v6si51241wmd.1.2018.10.25.07.24.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 07:24:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,424,1534802400"; 
   d="scan'208";a="283329351"
Received: from unknown (HELO hadrien) ([167.98.65.38])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2018 16:24:32 +0200
Date: Thu, 25 Oct 2018 15:24:32 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtlwifi: Remove function
 that only returns zero
In-Reply-To: <bfb248e133326fe1cc0ca387f6fae4129656b72c.1540428705.git.m.maya.nakamura@gmail.com>
Message-ID: <alpine.DEB.2.21.1810251523520.2363@hadrien>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com> <bfb248e133326fe1cc0ca387f6fae4129656b72c.1540428705.git.m.maya.nakamura@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 24 Oct 2018, Maya Nakamura wrote:

> Because the odm_sq_process_patch_rt_cid_819x_lenovo function is only
> called to return zero, remove the unnecessary function and change one
> statement that calls it. Issue found by Coccinelle's semantic patch
> results for returnvar.cocci.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index fd208581d857..335a435caa2c 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -477,14 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
>  		return 100 + ant_power;
>  }
>
> -static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
> -						  u8 is_cck_rate, u8 pwdb_all,
> -						  u8 path, u8 RSSI)
> -{
> -	u8 sq = 0;
> -	return sq;
> -}
> -
>  static u8 odm_evm_db_to_percentage(s8 value)
>  {
>  	/* -33dB~0dB to 0%~99% */
> @@ -891,8 +883,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
>
>  			if ((dm->support_platform == ODM_WIN) &&
>  			    (dm->patch_id == RT_CID_819X_LENOVO))
> -				sq = odm_sq_process_patch_rt_cid_819x_lenovo(
> -					dm, is_cck_rate, pwdb_all, 0, 0);
> +				sq = 0;
>  			else
>  				sq = phydm_get_signal_quality_8812(phy_info, dm,
>  								   phy_sta_rpt);

Would it be better to just put u8 sq = 0; ?  Then you could negate the
condition and drop one of the branches.

julia

