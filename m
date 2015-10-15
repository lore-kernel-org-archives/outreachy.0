X-GM-THRID: 6205449459620380672
X-Received: by 10.66.197.136 with SMTP id iu8mr6176032pac.47.1444891675760;
        Wed, 14 Oct 2015 23:47:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.6 with SMTP id o6ls661323qgd.95.gmail; Wed, 14 Oct 2015
 23:47:55 -0700 (PDT)
X-Received: by 10.140.239.142 with SMTP id k136mr6176606qhc.7.1444891675043;
        Wed, 14 Oct 2015 23:47:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si1239128pbc.1.2015.10.14.23.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 23:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so78327634pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 23:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=McZFk6Nu4guy2zBxa5pgFv9BPzXd2NWH2o26ADOECE4=;
        b=DISMCz4du9zSLB/wX3pHzuLDxUV0WS7TQNmaAcKdGKa11JhFUX23MO2wzgDsKpmK2Y
         Qpdzybe8LkOrUxrU07s1TrVvOtRtYDZjNe0EpBXyaldOAShAglg9lIrlpDlHlRKQaDqX
         7RaPLA1F3s88B9goKX302RgGADgWGBcLr21IQG/myKuIOhDPetdufGcilnAKH5Y4mHDg
         YgwXoVXyP84SZW0f/aEg0BHGizhf+3juRV08j13EC31WApL+QLzILMVVXRNKp1xFFT95
         EsGqxpWXwBRMOJ9Mqjqe+xUrFjx9epdbeHWHz1eZgtTlMVFp3oeHqbnLLx0HuzlMNcrl
         FkSA==
X-Received: by 10.68.57.238 with SMTP id l14mr8383767pbq.150.1444891674901;
        Wed, 14 Oct 2015 23:47:54 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.135.176])
        by smtp.gmail.com with ESMTPSA id ai4sm13234283pbc.67.2015.10.14.23.47.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 23:47:54 -0700 (PDT)
Date: Thu, 15 Oct 2015 12:17:49 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
Message-ID: <20151015064749.GB3134@sudip-pc>
References: <20151014103256.GA4491@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151014103256.GA4491@ubuntu>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
> The variables which are preceded by NULL tests on them should not be
> checked again.
> Semantic patch used:
> @@ expression E;
> statement S1, S2, S3; @@
> if(E==NULL) {... return ...;}
> else S1
> - if(E==NULL)
>   S2
> - else S3
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
> 	-Correct the semantic patch and make commit message better.
> 
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index a4b6bb6..0ea521b 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  
>  	if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>  		/* encode mic code */
> -		if (stainfo) {
>  			u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,
>  					 0x0, 0x0, 0x0, 0x0,

Now this indention is looking wrong.

regards
sudip

