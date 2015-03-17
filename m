X-GM-THRID: 8728898174976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dab188cd27b71f71
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.1.71 with SMTP id np7mr64752990icb.15.1426597828314;
        Tue, 17 Mar 2015 06:10:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.2 with SMTP id y2ls134925ioi.2.gmail; Tue, 17 Mar 2015
 06:10:27 -0700 (PDT)
X-Received: by 10.70.34.47 with SMTP id w15mr32822331pdi.9.1426597827899;
        Tue, 17 Mar 2015 06:10:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si2537174pac.0.2015.03.17.06.10.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 06:10:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4728E9AC;
	Tue, 17 Mar 2015 13:10:25 +0000 (UTC)
Date: Tue, 17 Mar 2015 14:10:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] Staging: speakup: Add helper
 macro for spk_synth boilerplate
Message-ID: <20150317131020.GA22383@kroah.com>
References: <cover.1426586934.git.vthakkar1994@gmail.com>
 <2905c4008dfeb64eaff938812d63202c1828f041.1426586935.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2905c4008dfeb64eaff938812d63202c1828f041.1426586935.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 17, 2015 at 04:06:23PM +0530, Vaishali Thakkar wrote:
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
>         - Use module_driver macro in definition of helper macro
> Changes since v2:
>         - Correct unnecessory line wrapping of module_driver
>         - Split patch in to 2 patches
> Changes since v3:
> 	- Put blank line after module_spk_synth
> 
>  drivers/staging/speakup/spk_types.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
> index 8c565c9..38e0a3c 100644
> --- a/drivers/staging/speakup/spk_types.h
> +++ b/drivers/staging/speakup/spk_types.h
> @@ -16,6 +16,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/mutex.h>
>  #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
> +#include <linux/device.h>	/* for struct device */

Ah, more complaints sorry...

You aren't including this for 'struct device' you are doing it for
module_driver().  Just remove the /* */ entirely, you don't need to
specify why you are including a .h file, that's not needed.

thanks,

greg k-h

