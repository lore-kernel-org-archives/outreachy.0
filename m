X-GM-THRID: 8319960875008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e1b4f33b9b6187dc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.168 with SMTP id mz8mr61888130obb.9.1426416620845;
        Sun, 15 Mar 2015 03:50:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls779341igr.37.gmail; Sun, 15 Mar
 2015 03:50:20 -0700 (PDT)
X-Received: by 10.42.254.202 with SMTP id nf10mr52095414icb.23.1426416620635;
        Sun, 15 Mar 2015 03:50:20 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1288380pac.0.2015.03.15.03.50.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 803988CF;
	Sun, 15 Mar 2015 10:50:19 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:50:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Add helper macro
 for spk_synth boilerplate
Message-ID: <20150315105016.GA5207@kroah.com>
References: <20150314165235.GA24545@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150314165235.GA24545@vaishali-Ideapad-Z570>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 14, 2015 at 10:22:35PM +0530, Vaishali Thakkar wrote:
> For simple modules that contain a single spk_synth without
> any additional setup code then ends up being a block of
> duplicated boilerplate. This patch adds a new macro,
> module_spk_synth(), which replaces the
> module_init()/module_exit() registrations with template
> functions.
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> v1 : Here, I know, I can go for changing all files
>      and make them use module_spk_synth at a single point.
>      But as I am sending this patch as a sample patch, I
>      am changing only one file to show the use of helper
>      macro. I will go for changing all other such cases in
>      this driver if this patch will be accepted.
> 
>  drivers/staging/speakup/speakup_audptr.c | 12 +-----------
>  drivers/staging/speakup/spk_types.h      | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
> index 5cbaec8..ea89e36 100644
> --- a/drivers/staging/speakup/speakup_audptr.c
> +++ b/drivers/staging/speakup/speakup_audptr.c
> @@ -177,18 +177,8 @@ module_param_named(start, synth_audptr.startup, short, S_IRUGO);
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
>  MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
>  
> -static int __init audptr_init(void)
> -{
> -	return synth_add(&synth_audptr);
> -}
> -
> -static void __exit audptr_exit(void)
> -{
> -	synth_remove(&synth_audptr);
> -}
> +module_spk_synth(synth_audptr);
>  
> -module_init(audptr_init);
> -module_exit(audptr_exit);
>  MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
>  MODULE_AUTHOR("David Borowski");
>  MODULE_DESCRIPTION("Speakup support for Audapter synthesizer");
> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
> index 8c565c9..e0c4fe3 100644
> --- a/drivers/staging/speakup/spk_types.h
> +++ b/drivers/staging/speakup/spk_types.h
> @@ -179,6 +179,23 @@ struct spk_synth {
>  	struct attribute_group attributes;
>  };
>  
> +/* module_spk_synth() - Helper macro for speakup drivers that don't
> + * do anything special in module init/exit. This eliminates a lot
> + * of boilerplate. Each module may only use this macro once, and
> + * calling it replaces module_init() and module_exit()
> + */
> +#define module_spk_synth(__spk_synth) \
> +static int __init __spk_synth##_init(void) \
> +{ \
> +	return synth_add(&(__spk_synth)); \
> +} \
> +module_init(__spk_synth##_init); \
> +static void __exit __spk_synth##_exit(void) \
> +{ \
> +	synth_remove(&(__spk_synth)); \
> +} \
> +module_exit(__spk_synth##_exit);
> +

Can't you use the module_driver() macro here instead of "rolling your
own"?  Look at how module_usb_driver() is defined as an example.

thanks,

greg k-h

