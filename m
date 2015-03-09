X-GM-THRID: 7174525812736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,81deab53fa1b567f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr1082557lbm.9.1425880861731;
        Sun, 08 Mar 2015 23:01:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls224561lap.17.gmail; Sun, 08 Mar 2015
 23:01:01 -0700 (PDT)
X-Received: by 10.112.98.38 with SMTP id ef6mr2896813lbb.3.1425880861183;
        Sun, 08 Mar 2015 23:01:01 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id sf8si269329wic.2.2015.03.08.23.01.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:01:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so14878393wgg.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=rYf1l7ZOx46FwRH3q9btufgV6/+JoNNOna6ktCQ4XVA=;
        b=cQWv8KGuGcfNO+U+a2Q32CBsCEFyp2ejZdbtAl8uhuri0i48R796h2jmsDBV8H3T66
         jOrVddEnjdvwQcUcoZ45XGNPDPpD0Cc2t/QmkQSuHOmydwLfxLgW2p6v82Xpkgdf3KJh
         EHjxOT9xBNmYiMSG4aG7fGnT1bkHj946O0iOS2YpMhB+B0XGiMy/kG9I5IwkZWLV25uY
         x++0FMR8A6USK2E6QoQokherPZeMTW/P4wWLfazl51ondTpGLm4o8WyccZ39nUzEcTGT
         Ptw9oVD+mWhYgcH5NybX5VR1rSKVL+BIGkbR+tb+WyrgFlnebB4UemGycAz2jO6xh7g4
         rkkg==
MIME-Version: 1.0
X-Received: by 10.180.206.143 with SMTP id lo15mr73790283wic.22.1425880861030;
 Sun, 08 Mar 2015 23:01:01 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Sun, 8 Mar 2015 23:01:00 -0700 (PDT)
In-Reply-To: <20150309051708.GA4116@vaishali-Ideapad-Z570>
References: <20150309051708.GA4116@vaishali-Ideapad-Z570>
Date: Mon, 9 Mar 2015 11:31:00 +0530
Message-ID: <CAK-LDb+mtA=+bMhacGuyjhCeNa3ZJX9X+ZH_iRsYDumouSWivQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: rts5208: Use module_pci_driver
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 10:47 AM, Vaishali Thakkar
<vthakkar1994@gmail.com> wrote:
> Macro module_pci_driver is used for drivers whose init
> and exit paths does only register and unregister to pci
> API. So, here remove some boilerplate code by using
> module_pci_driver.
>
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx.c | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index c74f1b8..7f3f16a 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -1048,21 +1048,4 @@ static struct pci_driver driver = {
>         .shutdown = rtsx_shutdown,
>  };
>
> -static int __init rtsx_init(void)
> -{
> -       pr_info("Initializing Realtek PCIE storage driver...\n");
> -
> -       return pci_register_driver(&driver);
> -}
> -
> -static void __exit rtsx_exit(void)
> -{
> -       pr_info("rtsx_exit() called\n");
> -
> -       pci_unregister_driver(&driver);
> -
> -       pr_info("%s module exit\n", CR_DRIVER_NAME);
> -}
> -
> -module_init(rtsx_init)
> -module_exit(rtsx_exit)
> +module_pci_driver(driver);
> --

I am sorry for this patch. It has some issues.

So, please ignore this patch for sometime.


> 1.9.1
>



-- 
Vaishali

