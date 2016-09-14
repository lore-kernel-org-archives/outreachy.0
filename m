X-GM-THRID: 6330109506616295424
X-Received: by 10.66.124.162 with SMTP id mj2mr499409pab.25.1473843847628;
        Wed, 14 Sep 2016 02:04:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.1 with SMTP id w1ls243653iow.4.gmail; Wed, 14 Sep 2016
 02:04:06 -0700 (PDT)
X-Received: by 10.66.65.174 with SMTP id y14mr1045971pas.34.1473843846539;
        Wed, 14 Sep 2016 02:04:06 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id p193si340833ywe.6.2016.09.14.02.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id g192so531691ywh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=B2NvLMMCK8IlFUsKop7tFV7uuk8OOVqQb+TDpMvlnag=;
        b=ZZSGERcn37aWyeVVqZDMKyv1PK50WLVzO8xFUTATxzn30WOlvV78mF5BGRdLaeQic3
         BEoJN1//NVVyrBAvCdqiq4Ba+TTfhPxwJhenxVir5T4GvKMZ3b65rvbCM6D+NqhxtE5J
         XghtulJfBLLQcRObSGg509/H7k7YNEesaUnndZoj2LmWTNdhqBoCS+z9qIwqIKpGx+iQ
         9IlVyRrdBmBEg8U/pv/ceraE/fnJxiHHkeI63ilKaLQPU5BWImBBrqVdtZCqEwzvpafQ
         aiG+i7kb37vukLMhHAaFVnvwl60ewOYHV3hRehlQHtdmDFRQkKxq6WKxeAanXLngKL4x
         4ZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=B2NvLMMCK8IlFUsKop7tFV7uuk8OOVqQb+TDpMvlnag=;
        b=J+d04wmZiwX3y4wWoKh0sSpQTeobUvG6sMN3NVMI149xZ7MzzrDpK2txSNkfjmywIk
         kERniF71B03XYJ6QyBlL6Cv7xQheSRYs6r/XxaXhESz2DaFliGCx+RBpWlefuNBiBb+8
         3Wjh3iI8z9eUXAeEEQ4xE/RB75S8li7a/ZFoANF/j5sLbnsuDAqdptYllFu/LZvAsIF6
         CBJg2ney3NoQX0jsHIJ7GLse1gXu+w9YzT49Em46Ix+r7wVPPqGNRwOspcF4LG7eXCm0
         mfMgcukKUT0hiDn2nxqIdYvelVPz7hF3CliPR+g4XKP/xpobRlLvg7ajSkyJON483Akq
         tH6g==
X-Gm-Message-State: AE9vXwOp1JW4lzJgTtZqEiCuyrvkPiF/DxVRHiTTv/29vm9d5LExPZqJyBQTquTeJEw+mqxRxbMnI1HLIL/bQw==
X-Received: by 10.129.101.132 with SMTP id z126mr1176198ywb.241.1473843846252;
 Wed, 14 Sep 2016 02:04:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Wed, 14 Sep 2016 02:04:05 -0700 (PDT)
In-Reply-To: <20160914085822.GA2558@sandhya>
References: <20160914085822.GA2558@sandhya>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Sep 2016 14:34:05 +0530
Message-ID: <CAK-LDb+M9yazGyEvCMKMztGNnJ8dWQax4iXONn=p7pRmE1w=kA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Use x instead of x
 != NULL.
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed, Sep 14, 2016 at 2:28 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Use x instead of x != NULL.

Commit log should contain the information about why doing this change is good
instead of what you are doing. Also, if you have used any tool for detecting or
solving the issue then probably writing something like 'Issue found using x'
would be useful. :)

Thanks

> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/speakup/fakekey.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/fakekey.c b/drivers/staging/speakup/fakekey.c
> index 8f058b4..032b936 100644
> --- a/drivers/staging/speakup/fakekey.c
> +++ b/drivers/staging/speakup/fakekey.c
> @@ -56,7 +56,7 @@ int speakup_add_virtual_keyboard(void)
>
>  void speakup_remove_virtual_keyboard(void)
>  {
> -       if (virt_keyboard != NULL) {
> +       if (virt_keyboard) {
>                 input_unregister_device(virt_keyboard);
>                 virt_keyboard = NULL;
>         }
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914085822.GA2558%40sandhya.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

