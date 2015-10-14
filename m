X-GM-THRID: 6205578387969277952
X-Received: by 10.180.210.71 with SMTP id ms7mr1263965wic.4.1444850127971;
        Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.1 with SMTP id fw1ls771385wic.26.canary; Wed, 14 Oct
 2015 12:15:27 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr1256480wic.5.1444850127586;
        Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id m4si376050wib.0.2015.10.14.12.15.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q12so97982549wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tHKCPCm2izKoArg/HFiWUvTsjc4u8Nm6eyJzeMqnEIc=;
        b=fezcOcARm1UUaTClHXZAz8YNA0CyU3JSG0QnNUj2aOKhPVkCCDJjQ+gVXzdn0h2L1h
         aJq6EqlTCrWSkHSydA1kGEMtZx6fwQWPjS/7dTtrbQZNItU36FGkv1+qqqUCYOzYCUIj
         K9NDeUK87L7NXbxxl7XYontUXRRLZP6yyxtkMqk/vW98K7YDKoGrqzF3aJmV0OKBunMm
         mKoSoVHd/SqxS+3jxV2NOVmH3PRlSCJClQk6cUx+LmA55rOiOGp8pgfbNxZP1gGvDoUa
         JYQO9+psJPflvw34Y0H95wDebUcmhfWcnTUB9qUAIKmkambyrRQXFjNlBilUwjRoCX3L
         u0rQ==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr28237495wib.93.1444850127466;
 Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:15:27 -0700 (PDT)
In-Reply-To: <20151014185111.GA29205@ubuntu>
References: <20151014185111.GA29205@ubuntu>
Date: Wed, 14 Oct 2015 22:15:27 +0300
Message-ID: <CAEnQRZDrhoxLPsy-102sdTq+3KV8XjNQnfsmTe8VpD85MxsNnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: rf_cfg: Remove
 useless cast
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:51 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Type conversion of variables can be done by compiler implicitly so,
> explicit conversions should be removed.
> Semantic patch used:
> @@
> type T;
> T e;
> identifier x;
> @@
>
> * T x = (T)e;
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/rtl8188eu/hal/rf_cfg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> index 954cade..067649a 100644
> --- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
> +++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> @@ -188,7 +188,7 @@ static void rtl8188e_config_rf_reg(struct adapter *adapt,
>         u32 addr, u32 data)
>  {
>         u32 content = 0x1000; /*RF Content: radio_a_txt*/
> -       u32 maskforphyset = (u32)(content & 0xE000);
> +       u32 maskforphyset = content & 0xE000;
>
>         rtl_rfreg_delay(adapt, RF90_PATH_A, addr | maskforphyset,
>                         RFREG_OFFSET_MASK,
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014185111.GA29205%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.

