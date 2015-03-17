X-GM-THRID: 8728898174976
X-Received: by 10.70.128.66 with SMTP id nm2mr44977692pdb.7.1426585436493;
        Tue, 17 Mar 2015 02:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls81417igi.25.gmail; Tue, 17 Mar 2015
 02:43:56 -0700 (PDT)
X-Received: by 10.50.30.106 with SMTP id r10mr91688947igh.0.1426585436184;
        Tue, 17 Mar 2015 02:43:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si2415258pac.2.2015.03.17.02.43.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 02:43:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D728A8CF;
	Tue, 17 Mar 2015 09:43:54 +0000 (UTC)
Date: Tue, 17 Mar 2015 10:43:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: speakup: Add helper
 macro for spk_synth boilerplate
Message-ID: <20150317094351.GA3917@kroah.com>
References: <cover.1426576680.git.vthakkar1994@gmail.com>
 <93e46b6ee278940db8dc7a4934b8115248f5131f.1426576680.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93e46b6ee278940db8dc7a4934b8115248f5131f.1426576680.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 17, 2015 at 12:59:45PM +0530, Vaishali Thakkar wrote:
> For simple modules that contain a single spk_synth without
> any additional setup code then ends up being a block of
> duplicated boilerplate. This patch adds a new macro,
> module_spk_synth(), which replaces the
> module_init()/module_exit() registrations with template
> functions.
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
> 	- Use module_driver macro in definition of helper macro
> Changes since v2:
> 	- Correct unnecessory line wrapping of module_driver
> 	- Split patch in to 2 patches
> 
>  drivers/staging/speakup/spk_types.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
> index 8c565c9..5d0bc5f 100644
> --- a/drivers/staging/speakup/spk_types.h
> +++ b/drivers/staging/speakup/spk_types.h
> @@ -16,6 +16,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/mutex.h>
>  #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
> +#include <linux/device.h>	/* for struct device */
>  
>  enum var_type_t {
>  	VAR_NUM = 0,
> @@ -179,6 +180,15 @@ struct spk_synth {
>  	struct attribute_group attributes;
>  };
>  
> +/**
> + * module_spk_synth() - Helper macro for registering a speakup driver
> + * @__spk_synth: spk_synth struct
> + * Helper macro for speakup drivers which do not do anything special in module
> + * init/exit. This eliminates a lot of boilerplate. Each module may only
> + * use this macro once, and calling it replaces module_init() and module_exit()
> + */
> +#define module_spk_synth(__spk_synth) \
> +	 module_driver(__spk_synth, synth_add, synth_remove)
>  struct speakup_info_t {

Please put a blank line after your new macro.

Can you fix that up and resend?

thanks,

greg k-h

