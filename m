X-GM-THRID: 3231867469824
X-Received: by 10.194.201.10 with SMTP id jw10mr2282121wjc.3.1424796301144;
        Tue, 24 Feb 2015 08:45:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.68 with SMTP id y4ls712478lay.12.gmail; Tue, 24 Feb 2015
 08:45:00 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr2080755lba.16.1424796300594;
        Tue, 24 Feb 2015 08:45:00 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id i7si946416wif.0.2015.02.24.08.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 08:45:00 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so28510595wid.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 08:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=jCOdonb8NTWHOUdL+b++nDQY9YTl5kAMAWELqxDncZ0=;
        b=VvlnsNCh2/fLQc2wwikF1bMUK0d0PA5iEIJEDuhrt30Z1CHIy3REJi/gcpzi+dA7Fv
         EFr9tqxN+dQ53QIpz5X30N4kC08HMmPZF6g4KE8W1H1expd70/ssSe8nIZCx34zkVqWM
         vfSLJNj4W8htPOecsirzBdXa7qePB8MLHI1byyYsov+zHaJBA2SMismx3AAQcjhe/Qko
         HtINI0BsKpgeoxRF7DDyf+ep54qSEIYmZZjLYMNDGUYq3cbvsmibHORq+OrNQHDgooVf
         AvU8SC2bCvusxDwCWlbsgVMJFb3XSwn++rrNT/f7aj2GwH7i/yoTbmaaYISWJXmYILQL
         fiNQ==
MIME-Version: 1.0
X-Received: by 10.181.8.103 with SMTP id dj7mr31914369wid.75.1424796300390;
 Tue, 24 Feb 2015 08:45:00 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.59.194 with HTTP; Tue, 24 Feb 2015 08:45:00 -0800 (PST)
In-Reply-To: <20150224162637.GA9677@katie-Inspiron-5748>
References: <20150224162637.GA9677@katie-Inspiron-5748>
Date: Tue, 24 Feb 2015 18:45:00 +0200
X-Google-Sender-Auth: y9g_g26v8SgOL6a-D1L316FZ4uk
Message-ID: <CAEnQRZByMQGHSW8Y=1wSysX+JzX6um8PFaspvhkqfLVRcTsU7g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unused Macro
From: Daniel Baluta <daniel.baluta@intel.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 24, 2015 at 6:26 PM, Katie Dunne <kdunne@mail.ccsf.edu> wrote:
> Removes SetFrameType Macro because its not used elsewhere
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/rtl8712/wifi.h | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
> index 5ba7e71..356059b 100644
> --- a/drivers/staging/rtl8712/wifi.h
> +++ b/drivers/staging/rtl8712/wifi.h
> @@ -246,13 +246,6 @@ enum WIFI_REG_DOMAIN {
>  #define GetFrameType(pbuf)     (le16_to_cpu(*(unsigned short *)(pbuf)) & \
>                                 (BIT(3) | BIT(2)))
>
> -#define SetFrameType(pbuf, type)       \
> -       do {    \
> -               *(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
> -               BIT(2))); \
> -               *(unsigned short *)(pbuf) |= cpu_to_le16(type); \
> -       } while (0)
> -
>  #define GetFrameSubType(pbuf)  (cpu_to_le16(*(unsigned short *)(pbuf)) & \
>                                 (BIT(7) | BIT(6) | BIT(5) | BIT(4) | BIT(3) | \
>                                 BIT(2)))

Also,

$ ack-grep SetFrameType
drivers/staging/rtl8188eu/include/wifi.h
314:#define SetFrameType(pbuf, type) \

drivers/staging/rtl8712/wifi.h
249:#define SetFrameType(pbuf, type) \

Daniel.

