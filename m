X-GM-THRID: 6249405968751263744
X-Received: by 10.129.58.16 with SMTP id h16mr35519298ywa.56.1455085315955;
        Tue, 09 Feb 2016 22:21:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.82 with SMTP id a79ls128907ioa.105.gmail; Tue, 09 Feb
 2016 22:21:55 -0800 (PST)
X-Received: by 10.98.72.199 with SMTP id q68mr36203940pfi.14.1455085315625;
        Tue, 09 Feb 2016 22:21:55 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 79si234410pft.0.2016.02.09.22.21.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:21:55 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id p2so2398224pav.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WjaaiT99eDsJput9R9X5Ezo3lxFg0vUHp5vVu0q3+6w=;
        b=Pg5UglrK4NH0Xrr4WQgn4p8ttX+7HMxvoN04alt7rhSfbfl9m3WvyzlMcPybGhefPl
         WmkcNf2LvrVeTm8PfJOvNuqoaM+s04eg6vcwikR9rnocbWNfeHJhRi6sEaaHfkSwP98u
         ZY1V6LFwFdK2LjuL1eww1lKkyvcbx3LpETKXqPf+op2HMosA6VRFOafWjkzgdXybSq45
         mg9EoRHEQG8KkyFvi0m2EZtKgk6GJjtDP21crviYdEwtKcUTkbZRpREUF6AMaN22nvFs
         lu7TCZnvVEP2LwumN69MvsxduUQYjKBjfpKkITRFz8t1AnbCLofcHcUP/iAJwHIzqBDJ
         2zlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=WjaaiT99eDsJput9R9X5Ezo3lxFg0vUHp5vVu0q3+6w=;
        b=TGvO9fnpPSamTFhWERGpVqTN+bwSdCLrVKYREGlAX3DPfkmcT/m2bUNvBFhwWgR4G/
         AU8ShxjUGbefPEs8T8iCX7mkeXzrWtKszbk8p51zo0BhmLmTNsejHsU/9VIXCxkV2cYu
         6MO2hFEAbVkvWSXWOKLfqPJBga62DYGYRTIIzTGshIFiyPs0yQFZb4XyGiqjoBKooPKN
         p9fEPDWnq1FPSiG/CGeeuAr5a/Z4dVkpGrdhFJP8/0DAiN8Z9PaeC5P7XBtEI7HxBVW9
         c9cj8be83S4LgmjO4MMTfK1EhgY9DuHRHJcEOWaHT11U8ZXI2otGkAeUMZ+xkZWinMlu
         eZQw==
X-Gm-Message-State: AG10YOQ5Iu6EhfkJavymvWlRdaoV6LknXlL+HFHwPplJT4LRB47Gc/wN6YdlS0RI4b7R7g==
X-Received: by 10.66.150.66 with SMTP id ug2mr57089654pab.114.1455085315522;
        Tue, 09 Feb 2016 22:21:55 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id p8sm2082741pfi.34.2016.02.09.22.21.53
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 22:21:55 -0800 (PST)
Date: Wed, 10 Feb 2016 11:51:50 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Add spaces around
 operators
Message-ID: <20160210062150.GC374@sudip-pc>
References: <20160210022615.GA12636@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210022615.GA12636@janani-Inspiron-3521>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 09, 2016 at 09:26:16PM -0500, Janani Ravichandran wrote:
> Add spaces around operators for better readability. Change suggested by
> checkpatch.
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 82abaec..a08ea3f 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -419,7 +419,7 @@ dont_put_skbuff_in_hw:
>  		    cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
>  	}
>  
> -	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free, priv->fau+qos*4);
> +	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free, priv->fau + qos *							4);

oops.. some thing went wrong here. why so much space before 4?

regards
sudip

