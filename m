X-GM-THRID: 8319960875008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e1b4f33b9b6187dc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.233.5 with SMTP id ts5mr47198071pac.27.1426519707122;
        Mon, 16 Mar 2015 08:28:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.27.38 with SMTP id q6ls206048obg.74.gmail; Mon, 16 Mar
 2015 08:28:26 -0700 (PDT)
X-Received: by 10.182.245.169 with SMTP id xp9mr15210281obc.44.1426519706855;
        Mon, 16 Mar 2015 08:28:26 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si1986165pac.1.2015.03.16.08.28.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 04ABA8CF;
	Mon, 16 Mar 2015 15:28:25 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:28:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
Message-ID: <20150316152824.GB26262@kroah.com>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150316142901.GA18101@vaishali-Ideapad-Z570>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 16, 2015 at 07:59:01PM +0530, Vaishali Thakkar wrote:
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
> v2 : Use module_driver macro in definition of helper macro
> 
>  drivers/staging/speakup/speakup_audptr.c | 12 +-----------
>  drivers/staging/speakup/spk_types.h      | 12 ++++++++++++
>  2 files changed, 13 insertions(+), 11 deletions(-)

Please make this a patch series, the first one adding the new macro, and
the rest converting all of the different modules to use it.

thanks,

greg k-h

