X-GM-THRID: 6802255880053063680
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr28977741wrw.313.1583853229424;
        Tue, 10 Mar 2020 08:13:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls441360wma.3.canary-gmail; Tue,
 10 Mar 2020 08:13:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsET9vcKmKh60be5Mi7DvPFu1XNrf8cRw/STicXhdlXsmmzwDB1IyBtwZ0UJMX+s9xMquEV
X-Received: by 2002:a1c:3585:: with SMTP id c127mr2655880wma.124.1583853227703;
        Tue, 10 Mar 2020 08:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583853227; cv=none;
        d=google.com; s=arc-20160816;
        b=fu0vcw6y0f5+pFkoZAbFQYUe7jOOXFEFeBb3jKNwwEJIrlBKDgm9kHP/wSFpALbcCA
         slhe8+e5TyFf/uXVyrpBC3trDzuRTqpI0Fy80R2UcHd9C3kGh8/iHDjxUb/NYAv5X71V
         MLxJDL39kNOjvzxRjqQn25TvMp1FOerZI3RNGLWqRev5FzHj6oRYCEEiml7wIbvZw6YN
         50fE77XJO9gTyNDlWfWdHQd/J83EzrY0TvSwznpQf43BMCzFJoMhsdVBoJWXIRvF4Enp
         nj5k25Ppq/WnPyEmWEL1ktDyeUdvIYCAQbtkp69Wgl/e+OzOTPLOA57YPBP7uoWgBR0X
         db3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/OfyM0fjH0TxAxHpmvgD7O+rOkdCVP+ra4EHPs0asx8=;
        b=KP/feuOzqS6c1Yvl1yOhiVjkTcaGyE22QqAEjfYfvEDUBGzGIU3tBLwfGl0JuplbPx
         kyVyKr48lvidihU6Bc7xxVRBtWoud69nWnnVap6uPoPIG6S8/j8TPDji9ZIyFmR1jv0u
         kLjDSjO8wVIfRu4RqToOLqX/aUhI0VNEmhMXJYLQWMk9E4+dkIutLwUd83TdCeGRIkR0
         19bRzHraaTu1sPjiJzWXtwn73C6ij8OYtSJEJirlvQ2ym+TVJDG0p4mDaJfVEz4gPNFE
         JnvhqIRWsl+ehUbkQtQGlY03wGLJPc0jbl9rF0mXaAsodjbBXdJ//cgaqXub3GVx2hwM
         hoHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.68 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com. [209.85.167.68])
        by gmr-mx.google.com with ESMTPS id d16si650535wrv.4.2020.03.10.08.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 08:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.167.68 as permitted sender) client-ip=209.85.167.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.68 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lf1-f68.google.com with SMTP id g4so4877252lfh.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 08:13:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/OfyM0fjH0TxAxHpmvgD7O+rOkdCVP+ra4EHPs0asx8=;
        b=JCyqaL60IU1O84QBN0oped2ows1KxKZnlfYs9/o0ou7mD05N4ar0rsJ1K9x9qYRBEa
         iQe7n35+vV0EeQIUY/OSzwOYlr73aEN/+GdhVap4DicddD7CUC7frWK91lGFQg1gm69t
         RAwSy6fjiUQ/NutyVBnEO2BvDERUEJnumVlDuiIoX2o1So06vFGkJaf+NQTiMAO11W3n
         vmSuGjCTWME9fGrWIhH+Eht6TEhlgbmuMqGb9jl3VAj/Sl2S9W/S3yMbO3x8hhXSQUPT
         7TUAWopBMUlGPqCQfoPBuV9yYUQVnUI3zm2L6+zmA6LO8+iQsf7kXJDeTLZPvTdsuxr1
         RQCw==
X-Gm-Message-State: ANhLgQ2gBzDM9rN3PUWQXyco3TtMAWdXNMZZajylxJV3rEzocSZhAunz
	GK8jg2uH965VZcuZbkFSIv8=
X-Received: by 2002:a19:4a13:: with SMTP id x19mr13152229lfa.177.1583853227149;
        Tue, 10 Mar 2020 08:13:47 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se. [85.228.170.18])
        by smtp.gmail.com with ESMTPSA id r9sm2471448ljd.10.2020.03.10.08.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 08:13:46 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
	(envelope-from <johan@kernel.org>)
	id 1jBgZY-0003GB-0i; Tue, 10 Mar 2020 16:13:32 +0100
Date: Tue, 10 Mar 2020 16:13:32 +0100
From: Johan Hovold <johan@kernel.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH] staging: greybus: i2c.c: remove commented out function
Message-ID: <20200310151332.GD14211@localhost>
References: <20200309170643.4947-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200309170643.4947-1-lu@pplo.net>

On Mon, Mar 09, 2020 at 06:06:43PM +0100, Lourdes Pedrajas wrote:
> Remove function gb_i2c_smbus_xfer() which is unused.

Sure, why not. But please remove the out-commented pointer in
gb_i2c_algorithm as well.

Also please drop the ".c" in the module prefix; "staging: greybus: i2c:"
is enough to indicate which driver (component) is being modified.
 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/greybus/i2c.c | 14 --------------
>  1 file changed, 14 deletions(-)
> 
> diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
> index ab06fc3b9e7e..c48fa1de89b0 100644
> --- a/drivers/staging/greybus/i2c.c
> +++ b/drivers/staging/greybus/i2c.c
> @@ -215,20 +215,6 @@ static int gb_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
>  	return gb_i2c_transfer_operation(gb_i2c_dev, msgs, msg_count);
>  }
>  
> -#if 0
> -/* Later */
> -static int gb_i2c_smbus_xfer(struct i2c_adapter *adap,
> -			     u16 addr, unsigned short flags, char read_write,
> -			     u8 command, int size, union i2c_smbus_data *data)
> -{
> -	struct gb_i2c_device *gb_i2c_dev;
> -
> -	gb_i2c_dev = i2c_get_adapdata(adap);
> -
> -	return 0;
> -}
> -#endif
> -
>  static u32 gb_i2c_functionality(struct i2c_adapter *adap)
>  {
>  	struct gb_i2c_device *gb_i2c_dev = i2c_get_adapdata(adap);

Johan

