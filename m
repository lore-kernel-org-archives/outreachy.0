X-GM-THRID: 6608144919941873664
X-Received: by 2002:a19:504d:: with SMTP id z13-v6mr84200lfj.23.1538582850320;
        Wed, 03 Oct 2018 09:07:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:e304:: with SMTP id a4-v6ls92152lfh.66.gmail; Wed, 03
 Oct 2018 09:07:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Xao/AsLKCDElcMDMzCJwXB0CGAFJscfB8Afxc3om0xgHwqEPBg3bur8+Kr69+z50WbXZ3
X-Received: by 2002:a19:504d:: with SMTP id z13-v6mr84197lfj.23.1538582849227;
        Wed, 03 Oct 2018 09:07:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538582849; cv=none;
        d=google.com; s=arc-20160816;
        b=Qdqx9CKN79X5NEAPqBY6fFgmSjmEXMJxBJQ8SfETpTg6/C8XHGZcZcAdEQI/iQD24g
         7A42LJtNtQNMEebnW6j6i8Hay7wA3A1vaOTuYvb8lvm5CkAYJeRlkducd9YgvWyo2HtB
         4r7EI2nYdXC9Qti/X1VL4oY2BXhU8N95vCo6ojiBu6eQu6kxnBROYl3KJ5Xokhb1PWyj
         7zn8E5zWFGgq6xvPJZxuSMcGscTNON0q04aLui80zprHxgqcI57eW4OA8ukTTJ6MAPWz
         qHeHv3+En2rA9hQZv0+Tarz7wFIAVgOfB6XUz0eQCx0kXmqci7XHjjNcr9g8sE7wsWK1
         SyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=CG7pxUSEbR5tgs+omWK6WCXy6bULHMkWpgUjcfHb+3g=;
        b=R7WsAlVUn7lov6kZWVlTDfS2QLOgY9xypD2saR41GPtgyaD0Tl1rJ24TsR++HZ7rmu
         ox5d2kXORghB0oq9EVgAX3v2O+RpTqZEIBgLlo4GYj4cqpDiILRxFJeL/F/fdJQvz1RQ
         ILEmGx/XMZi//k7JEvk+M7EZJ7lTDdTGb7L9Ts72sts2hWpJyXSvqbfrAL1MUhRo7am3
         RefjvlLvJbTK7gIOSB4QQHKD/6ZG9s0REVco3q2Ptk9qcnYoa6h3X28wgyrRTWE3gWbD
         CAdBpWlXdHcpuZQHl9sdfVTv4QJgdx/Nxhp1Fk5Q5npTNzTQ9gLjburLNPdEgl7apZDq
         gUVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ABdNpQEg;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a199-v6si82566lfa.2.2018.10.03.09.07.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 09:07:28 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ABdNpQEg;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x544.google.com with SMTP id f4-v6so5877596edq.3
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 09:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CG7pxUSEbR5tgs+omWK6WCXy6bULHMkWpgUjcfHb+3g=;
        b=ABdNpQEgt68D2a83Rlh7+LqzdSBIOCg62EDp53gkOgO93z1U+Q7mfiVewL2i5h6zWR
         3SY2UiXOJrMlcY2T8xwuotoX3IwriBsbI7jyRcuwMqW44ZfFjzb349fwVuePQP9vxbYD
         UmsuwecDMfR+9+SIL5n9Z543pTW6/C+dver/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=CG7pxUSEbR5tgs+omWK6WCXy6bULHMkWpgUjcfHb+3g=;
        b=WWfo9h5K9X7KnMzRKILX295s3tVMhkum2yFLKRl1o1x19fXtksKt1XcFMjPK0g4EG6
         TSLIp7P2cV8N/H3m2pw8GpRbsPCx0xU81QEQfwcGU9nJFbmu5BVO+F8lfMbRR0iWLHDD
         bI36wKB/hYCS66K6M/CTrqkY4EQeN94dCs52rGtlTpW4Tt+MNoEXwhwfWwfqbHeWPsFe
         PkYwAsZNfXK/BixmAphDsLiE8GaycxK3bEU8cUA6I/O2/YsAHpfzg658S/RJESX7zkH0
         l3ml147reuceeQd7Nv5bUjBPOSD7Kd3NeITCDAULI6oq0LYjYBvuiCAJkM/UrTrV0zzs
         NRuQ==
X-Gm-Message-State: ABuFfoi/9PTapfMC44ysRwGR95FbiL1twGpDZXHejiUxG4M4gaF+M+ha
	IPKommhRSfB8RqPC+03Lc7d6KsszXOM=
X-Received: by 2002:a50:a186:: with SMTP id 6-v6mr3447426edk.12.1538582848190;
        Wed, 03 Oct 2018 09:07:28 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id k4-v6sm364849ejz.67.2018.10.03.09.07.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 03 Oct 2018 09:07:27 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 3 Oct 2018 18:00:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Prefer using the BIT
 macro
Message-ID: <20181003160025.GA31561@phenom.ffwll.local>
References: <20181003144015.GA31815@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181003144015.GA31815@armorer>
X-Operating-System: Linux phenom 4.14.0-1-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 03, 2018 at 08:10:15PM +0530, Mamta Shukla wrote:
> Replacing all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Looks good!

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 25302ff..ac427ba 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)                          \
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF
>  
> -#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
> -#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
> -#define DEBUG_TIME_EACH_UPDATE      (1<<5)
> -#define DEBUG_DEFERRED_IO           (1<<6)
> -#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
> +#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)
> +#define DEBUG_TIME_FIRST_UPDATE     BIT(4)
> +#define DEBUG_TIME_EACH_UPDATE      BIT(5)
> +#define DEBUG_DEFERRED_IO           BIT(6)
> +#define DEBUG_FBTFT_INIT_FUNCTIONS  BIT(7)
>  
>  /* fbops */
> -#define DEBUG_FB_READ               (1<<8)
> -#define DEBUG_FB_WRITE              (1<<9)
> -#define DEBUG_FB_FILLRECT           (1<<10)
> -#define DEBUG_FB_COPYAREA           (1<<11)
> -#define DEBUG_FB_IMAGEBLIT          (1<<12)
> -#define DEBUG_FB_SETCOLREG          (1<<13)
> -#define DEBUG_FB_BLANK              (1<<14)
> +#define DEBUG_FB_READ               BIT(8)
> +#define DEBUG_FB_WRITE              BIT(9)
> +#define DEBUG_FB_FILLRECT           BIT(10)
> +#define DEBUG_FB_COPYAREA           BIT(11)
> +#define DEBUG_FB_IMAGEBLIT          BIT(12)
> +#define DEBUG_FB_SETCOLREG          BIT(13)
> +#define DEBUG_FB_BLANK              BIT(14)
>  
> -#define DEBUG_SYSFS                 (1<<16)
> +#define DEBUG_SYSFS                 BIT(16)
>  
>  /* fbtftops */
> -#define DEBUG_BACKLIGHT             (1<<17)
> -#define DEBUG_READ                  (1<<18)
> -#define DEBUG_WRITE                 (1<<19)
> -#define DEBUG_WRITE_VMEM            (1<<20)
> -#define DEBUG_WRITE_REGISTER        (1<<21)
> -#define DEBUG_SET_ADDR_WIN          (1<<22)
> -#define DEBUG_RESET                 (1<<23)
> -#define DEBUG_MKDIRTY               (1<<24)
> -#define DEBUG_UPDATE_DISPLAY        (1<<25)
> -#define DEBUG_INIT_DISPLAY          (1<<26)
> -#define DEBUG_BLANK                 (1<<27)
> -#define DEBUG_REQUEST_GPIOS         (1<<28)
> -#define DEBUG_FREE_GPIOS            (1<<29)
> -#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
> -#define DEBUG_VERIFY_GPIOS          (1<<31)
> +#define DEBUG_BACKLIGHT             BIT(17)
> +#define DEBUG_READ                  BIT(18)
> +#define DEBUG_WRITE                 BIT(19)
> +#define DEBUG_WRITE_VMEM            BIT(20)
> +#define DEBUG_WRITE_REGISTER        BIT(21)
> +#define DEBUG_SET_ADDR_WIN          BIT(22)
> +#define DEBUG_RESET                 BIT(23)
> +#define DEBUG_MKDIRTY               BIT(24)
> +#define DEBUG_UPDATE_DISPLAY        BIT(25)
> +#define DEBUG_INIT_DISPLAY          BIT(26)
> +#define DEBUG_BLANK                 BIT(27)
> +#define DEBUG_REQUEST_GPIOS         BIT(28)
> +#define DEBUG_FREE_GPIOS            BIT(29)
> +#define DEBUG_REQUEST_GPIOS_MATCH   BIT(30)
> +#define DEBUG_VERIFY_GPIOS          BIT(31)
>  
>  #define fbtft_init_dbg(dev, format, arg...)                  \
>  do {                                                         \
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181003144015.GA31815%40armorer.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

