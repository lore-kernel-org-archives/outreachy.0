X-GM-THRID: 2747840593920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,73676da7c7ae513
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.224.42 with SMTP id qz10mr13608392pac.0.1424720486023;
        Mon, 23 Feb 2015 11:41:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.6 with SMTP id y6ls976083ign.23.gmail; Mon, 23 Feb 2015
 11:41:25 -0800 (PST)
X-Received: by 10.50.154.41 with SMTP id vl9mr13023635igb.6.1424720485836;
        Mon, 23 Feb 2015 11:41:25 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x235.google.com (mail-qa0-x235.google.com. [2607:f8b0:400d:c00::235])
        by gmr-mx.google.com with ESMTPS id ba9si6220186qcb.0.2015.02.23.11.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:41:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::235 as permitted sender) client-ip=2607:f8b0:400d:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::235 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f53.google.com with SMTP id k15so23719744qaq.12
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=mtHb9BWruxoOyGOSbOt70JMnsw6fHi22m6oBpPi6/tI=;
        b=v+9o9t4jtbZk+9ZjKXG2bEZPR0IWdAP+MWW1s7fqrKDsWquEcDyJ8HFh5kS38m2XKU
         LaYI5s68mta2R/HaK9Yqy8YyJbVKQxHhStNcbc4EOYNxE8AxHt20c9/0YD35EByoZrbH
         v/vwp60yYxvG/1pk+BzRI/V4NDoOefabjUgGpfd9bA6rY9q/HcQblekJ1FrSMhscjQSL
         0CdXPRw+oU5yKlDHslOFaVtsB3NbWqqvr58cT+9DMwb6LVyIYAwlzM8DGQ3ou66sr1ZR
         RWGBLPm9GrSg+lEpPM6HZuvV2wlHM/q/o2/Pr2GjQ6PBz38mn9wd3zt+m09UYzf7xCcj
         RlJQ==
X-Received: by 10.140.37.39 with SMTP id q36mr26837380qgq.18.1424720485742;
        Mon, 23 Feb 2015 11:41:25 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id q5sm28204037qat.6.2015.02.23.11.41.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:41:25 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8264.8070506@gmail.com>
Date: Mon, 23 Feb 2015 14:41:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Remove unused
 variable
References: <20150223094130.GA4668@gmail.com>
In-Reply-To: <20150223094130.GA4668@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 04:41, Vatika Harlalka wrote:
> We only need the last 8 bits of the offset variable so we can
> directly operate on it instead of introducing unneeded
> newoffset variable.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  Changes in v2: Changed commit message to make it more descriptive.
> 
>  drivers/staging/rtl8188eu/hal/phy.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 623fb4f..341f0db 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -117,10 +117,9 @@ static void rf_serial_write(struct adapter *adapt,
>  	u32 data_and_addr = 0;
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	struct bb_reg_def *phyreg = &hal_data->PHYRegDef[rfpath];
> -	u32 newoffset;
>  
> -	newoffset = offset & 0xff;
> -	data_and_addr = ((newoffset<<20) | (data&0x000fffff)) & 0x0fffffff;
> +	offset &= 0xff;
> +	data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;

Fix is good, but you need to comply with the space rules as well when
you do this. It should say:

	data_and_addr = ((offset << 20) | (data & 0x000fffff)) & 0x0fffffff;

Cheers,
Jes

>  	phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
>  }
>  
> 


