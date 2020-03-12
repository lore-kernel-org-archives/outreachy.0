X-GM-THRID: 6803293292760924160
X-Received: by 2002:a17:906:5604:: with SMTP id f4mr6688210ejq.255.1584017258820;
        Thu, 12 Mar 2020 05:47:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls3457522ejj.1.gmail; Thu, 12
 Mar 2020 05:47:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvrPKwGBKG/eBU1lOMl2Oh3jNcImz+RAtHbZVGv5M6NrTLLtVUSZNSaIhBO1k6kHhvRckr2
X-Received: by 2002:a17:906:7f84:: with SMTP id f4mr6765438ejr.92.1584017257424;
        Thu, 12 Mar 2020 05:47:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584017257; cv=none;
        d=google.com; s=arc-20160816;
        b=o3IZnz+WNbYmENQLDR3YvO0YAlQ3CK1ceE68+edu2MkAlTTh5R4End95IevtKiSJ05
         fbEKQXEwgARPSoyfaXKW1ZoirAxqqOlp53F8tYxCkm+9O3JnDeCHcYVHCYH4Q1MbEuCV
         gdaE97xNWNuHNl1WQ0umIQH0BHEGm4eN/whU1yiXaXKq5zxfybpzf1Fmn5Ke+kmD9rMj
         nmTWq89e7EpFlDaIoyoKevXCA9SU6GzMor+OCv6vZR69WRTiHfa80YU1NBuo7cGV+KFK
         UAb6gsV4mN4LxaZM64zgl+GwObrCJSmiEYwfhIDLd3W5NWXjd82XKRsuuYo/GD0Np/h3
         kFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=oLc7C9aMM4a7rQ8eMVMm6VnTM1EN+PB3JaxeA+Y1Ypo=;
        b=ginB20V7z9i0LEmpkFImpk40yZ9OG+VQXcbE9XAfaiZhOV63KV+I7Q1ik/mAQQuEMw
         SSCETFLkzyHgCQdfwPDWHhthff81E3IBG0XahbMrXaBcn65mHcXh4DZH0WeuonHjD3o6
         bQR77F3YX5oqn8NycMbWtksDiN5AV62ymWPacRgVX7pPXp32HO3YrGpLjU+uYwaTPyoR
         oUjXwizusJTSoxExTu5R3SU2HvtfgWOAxSB4dOfZ8Xsqij3UHuS91PDHCnHgWhDTWY+p
         jalYCX3S/kf7/9Tq7tEkIEY/gFuyUfSg/+OELBWMj6Uk7Y8MPEpdY//quj8N8MgjWdCH
         h0QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com. [209.85.208.194])
        by gmr-mx.google.com with ESMTPS id cw13si284282edb.2.2020.03.12.05.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) client-ip=209.85.208.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.208.194 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lj1-f194.google.com with SMTP id f13so6281973ljp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:47:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oLc7C9aMM4a7rQ8eMVMm6VnTM1EN+PB3JaxeA+Y1Ypo=;
        b=nRzVTF7g/z7Hahe+sIck+ozsuU/ixclncoItaQ1fzAIZr/DLYeLXySv4Gc8M4JKOZz
         sP8SwpBB4bbBr9T708cwsbs8SwU3Qf/cYMvFJuXGUHwKEl36L9uuQjCmK6NDRNzVlaUk
         DS4qObUzQBOV+mFdKJxMSZHTXAKoAVLIV4eTC5rG5J7asWMZ/GX7/JtXpza5BJSSA+nK
         TjTL72lYPSGejXNu6tlmkovT9VwTLsJzxDVtMzu+CNN60xDX/ry7EXWoouHJHgl1IGej
         G6yGP49nTDZ3Z+NRD2pmH0pRyE5lwBwxFPjQCSe8b5lNRWRxb0N7PdQqJ/9HA6q7NW71
         MgGA==
X-Gm-Message-State: ANhLgQ1UgzuSJZsZxNWMcuO0d10ijabBGmoa0SQ/kwbP3W/IusKQpLV9
	elfNsTgjAtBaU7HKrcb7VWY=
X-Received: by 2002:a2e:b521:: with SMTP id z1mr5258857ljm.19.1584017256920;
        Thu, 12 Mar 2020 05:47:36 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se. [85.228.170.18])
        by smtp.gmail.com with ESMTPSA id r7sm4031195ljc.3.2020.03.12.05.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 05:47:36 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
	(envelope-from <johan@kernel.org>)
	id 1jCNFE-00045Y-Ut; Thu, 12 Mar 2020 13:47:25 +0100
Date: Thu, 12 Mar 2020 13:47:24 +0100
From: Johan Hovold <johan@kernel.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH] staging: greybus: i2c: remove unused pointers
Message-ID: <20200312124724.GR14211@localhost>
References: <20200312121222.6609-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312121222.6609-1-lu@pplo.net>

On Thu, Mar 12, 2020 at 01:12:22PM +0100, Lourdes Pedrajas wrote:
> Remove unused pointers in gb_i2c_functionality() and int gb_i2c_probe()
> functions.

The out-commented function pointer is in the gb_i2c_algorithm struct,
not gb_i2c_functionality().

Looks good otherwise.

> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> Suggested-by: Johan Hovold <johan@kernel.org>
> ---
>  drivers/staging/greybus/i2c.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
> index c48fa1de89b0..de2f6516da09 100644
> --- a/drivers/staging/greybus/i2c.c
> +++ b/drivers/staging/greybus/i2c.c
> @@ -224,7 +224,6 @@ static u32 gb_i2c_functionality(struct i2c_adapter *adap)
>  
>  static const struct i2c_algorithm gb_i2c_algorithm = {
>  	.master_xfer	= gb_i2c_master_xfer,
> -	/* .smbus_xfer	= gb_i2c_smbus_xfer, */
>  	.functionality	= gb_i2c_functionality,
>  };
>  
> @@ -267,7 +266,6 @@ static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
>  	adapter->owner = THIS_MODULE;
>  	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
>  	adapter->algo = &gb_i2c_algorithm;
> -	/* adapter->algo_data = what? */
>  
>  	adapter->dev.parent = &gbphy_dev->dev;
>  	snprintf(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");

Johan

