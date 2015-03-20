X-GM-THRID: 9199559901184
X-Received: by 10.66.234.10 with SMTP id ua10mr63672741pac.45.1426838882794;
        Fri, 20 Mar 2015 01:08:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.213 with SMTP id 79ls1461731qgn.12.gmail; Fri, 20 Mar
 2015 01:08:02 -0700 (PDT)
X-Received: by 10.140.235.83 with SMTP id g80mr85552454qhc.5.1426838882489;
        Fri, 20 Mar 2015 01:08:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a11si267272yho.7.2015.03.20.01.08.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 01:08:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,435,1422918000"; 
   d="scan'208";a="126879239"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Mar 2015 09:08:00 +0100
Date: Fri, 20 Mar 2015 09:07:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ste_rmi4: Use SIMPLE_DEV_PM_OPS()
 macro
In-Reply-To: <20150320071750.GA8322@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.10.1503200906150.2554@hadrien>
References: <20150320071750.GA8322@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Mar 2015, Vaishali Thakkar wrote:

> Macro SIMPLE_DEV_PM_OPS() can be used when same suspend
> and resume callbacks are used for suspend to RAM and
> hibernation. So, here use SIMPLE_DEV_PM_OPS to make code
> shorter and cleaner.
>
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> index 6385b33..0f524bb 100644
> --- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> +++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
> @@ -1112,12 +1112,11 @@ static int synaptics_rmi4_resume(struct device *dev)
>  	return 0;
>  }
>
> -static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops = {
> -	.suspend = synaptics_rmi4_suspend,
> -	.resume  = synaptics_rmi4_resume,
> -};
>  #endif
>
> +static SIMPLE_DEV_PM_OPS(synaptics_rmi4_dev_pm_ops, synaptics_rmi4_suspend,
> +			 synaptics_rmi4_resume);
> +
>  static const struct i2c_device_id synaptics_rmi4_id_table[] = {
>  	{ DRIVER_NAME, 0 },
>  	{ },
> @@ -1128,9 +1127,7 @@ static struct i2c_driver synaptics_rmi4_driver = {
>  	.driver = {
>  		.name	=	DRIVER_NAME,
>  		.owner	=	THIS_MODULE,
> -#ifdef CONFIG_PM
>  		.pm	=	&synaptics_rmi4_dev_pm_ops,
> -#endif

How does this work?  I guess that before the pm field could sometimes be
null, if power management is not supported.  Not the field is not null.
Are the fields for the functions now null if there is no power management,
or are there just trivial definitions?  (It's not a suggestion about
changing the patch; I am just wondering).

julia

>  	},
>  	.probe		=	synaptics_rmi4_probe,
>  	.remove		=	synaptics_rmi4_remove,
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150320071750.GA8322%40vaishali-Ideapad-Z570.
> For more options, visit https://groups.google.com/d/optout.
>

