X-GM-THRID: 6464894536375074816
X-Received: by 10.28.27.195 with SMTP id b186mr975086wmb.23.1505225831776;
        Tue, 12 Sep 2017 07:17:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.93.93 with SMTP id r90ls116952ljb.30.gmail; Tue, 12 Sep
 2017 07:17:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDZukkl7gK4fbxC8NCAtJRxd7yAU/vyznit+y6Jt49fYjgTIRFvZPqGz+0Qz4LEz1RpannS
X-Received: by 10.46.22.92 with SMTP id 28mr1140893ljw.32.1505225830358;
        Tue, 12 Sep 2017 07:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505225830; cv=none;
        d=google.com; s=arc-20160816;
        b=eo/saBRNxo908u81iGho/KoF82XSPMJ9EgRPRJvnzoODtXZswFhYmcuLDDQ2dJ2Dfk
         19+q4LAK2oolV4vkycARZAHCKwH7TI/jY4yzWWahkGEBK8jIkg2iJ2cKyaQjd1gIWJZy
         pHzTywGdBsvbADKv4f2eNN8otjWgNFjV0bnCC5yY1ATiSbYv0J8zHxarB4gsFnRjyOyf
         XJg7Fj66CTNn8QDaVLmNwinbx3gci6B360W/k5zs3jKdrZd48tnlrxunW6C0o5Ov6+kX
         QfYlfXO/2sru4EwZ2rO/WB/1xCOEFyLJcwtaSQWgsE5vC7BiaXIsBxRFyMaT1vl7N7OZ
         cZ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=sgnHF6qs3MVKZSCiN7DHd+YR91tM4VbhCKYSAhT3Hgw=;
        b=I94oCjRrCQV/YZBT0jqoz6Yq+rT3bQEaMVuNs9N/7h36h4xrWF+p0G8r/ZslzV2zom
         xm8yrAOBlisvVTTGsM1OMdAzHR/2So0bPdq/PfqZCj5sG6m74WNmaZHapjtY8gSLiFFt
         6qTWFoe7bqp09+MkLXLONiYl9egL0qsj7kmi3V2Dg4AHRLOFAdWSBLfj11XEuZWC0Buj
         3p54tDHExmOpy4sYk3HfFFZHWWodzycV+7kYf2d4J12Th+D5Cb1qs5zNr2yOFtHUu41o
         dBO1YD+H9UxULkQKLwQ4iSGQUY+A91FbN8lrCyMrlN4jVBIJ8hXbkBF0hdOoSW2xpwgI
         rJ7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i90si789141wmh.5.2017.09.12.07.17.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 07:17:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,383,1500933600"; 
   d="scan'208";a="237210949"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 16:17:09 +0200
Date: Tue, 12 Sep 2017 16:16:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Merge
 assignment with return
In-Reply-To: <1505225549-4432-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709121616240.3149@hadrien>
References: <1505225549-4432-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Srishti Sharma wrote:

> Merge the assignment and the return statements to return the value
> directly. Done using the following semantic patch by coccinelle.
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/media/atomisp/i2c/ov5693/ov5693.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
> index 1236425..2195011 100644
> --- a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
> +++ b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
> @@ -945,12 +945,8 @@ static int ad5823_t_focus_vcm(struct v4l2_subdev *sd, u16 val)
>
>  int ad5823_t_focus_abs(struct v4l2_subdev *sd, s32 value)
>  {
> -	int ret;
> -
>  	value = min(value, AD5823_MAX_FOCUS_POS);
> -	ret = ad5823_t_focus_vcm(sd, value);
> -
> -	return ret;
> +	return ad5823_t_focus_vcm(sd, value);
>  }
>
>  static int ov5693_t_focus_abs(struct v4l2_subdev *sd, s32 value)
> @@ -1332,7 +1328,6 @@ static int power_ctrl(struct v4l2_subdev *sd, bool flag)
>
>  static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
>  {
> -	int ret;
>  	struct ov5693_device *dev = to_ov5693_sensor(sd);
>
>  	if (!dev || !dev->platform_data)
> @@ -1342,9 +1337,7 @@ static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
>  	if (dev->platform_data->gpio_ctrl)
>  		return dev->platform_data->gpio_ctrl(sd, flag);
>
> -	ret = dev->platform_data->gpio0_ctrl(sd, flag);
> -
> -	return ret;
> +	return dev->platform_data->gpio0_ctrl(sd, flag);
>  }
>
>  static int __power_up(struct v4l2_subdev *sd)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505225549-4432-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

