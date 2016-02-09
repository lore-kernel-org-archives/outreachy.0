X-GM-THRID: 6249310689819623424
X-Received: by 10.28.225.8 with SMTP id y8mr650108wmg.7.1455031770498;
        Tue, 09 Feb 2016 07:29:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.210.16 with SMTP id j16ls711223lfg.52.gmail; Tue, 09 Feb
 2016 07:29:29 -0800 (PST)
X-Received: by 10.112.125.99 with SMTP id mp3mr4067139lbb.3.1455031769778;
        Tue, 09 Feb 2016 07:29:29 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id w197si549453wmw.3.2016.02.09.07.29.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:29:29 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id g62so179116686wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=iExREUZSjES1jB1krrTeRc7rNPx5ixFqaGEGR4hCBzA=;
        b=UDALygplA23+m/PN53Q14804JE3rove4TN6vYWIyg+gOyRBnxbsd2QEk7aTGubNzsB
         VfbCCIdl8pVCos18iF+LdP3FgDbcOR1Q8cDove4YptgFcm60QPGS1i5vXAIYYoHKIAV0
         zgH5XQ1QB172mL9KxB461Nvl7qdufyQZJb+yowWPITL1BMLHBbaf2AgCVLko9YJRtWQE
         lDefiTtZS/P3HFpZpgpcUQsz/hSrk6DXNZvBIyK04Q0dqPAZ9DciEvus5/NjqvqkEMPw
         MzL2tkRmTBMQvVpMQ/lb/4kOaXMgDB6WgW7h9f75ub6UkhFw9+kAF4v+yYqY4mNW+UFK
         lryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=iExREUZSjES1jB1krrTeRc7rNPx5ixFqaGEGR4hCBzA=;
        b=gpWs24nryk7xP9JBJBhbkDgh6+fW9NPz1MKGdf6Fk/31/1hehFuXJPL0LO7DfsluK/
         toStmM/EkDjWT/MiVEU86J1ugYqO3/hPTqtF3G4RJQ0DXPWzUL2zuylnAx8dc4sy44/C
         8n+wvBqXdTGo+X7QyXJmixlkcvSYBQj//XkxqF8SMu2+iJTRX60sEwt8STcl45/i7dxN
         SB2weGK+mhYBwbwph7pqyYoYHh+Nof4r0PtHNuwuNfgouk7do9TLUV0UnY/FTBEyQ75H
         leuFZov4mxzr+axc6S1+g3J2gYzaUTJ6XxXL7Vttnol7obGvD212mc3+fJ661X87VNTs
         5faA==
X-Gm-Message-State: AG10YOQJoxLm666u0W2z13lwthfXwFp6xAzLNGKYbzWPAHFBGiHm8qvX0bMxMYWHjJmuIBjLz/cmoVAh1itiaQ==
MIME-Version: 1.0
X-Received: by 10.194.95.40 with SMTP id dh8mr10003856wjb.94.1455031769560;
 Tue, 09 Feb 2016 07:29:29 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 9 Feb 2016 07:29:29 -0800 (PST)
In-Reply-To: <1455031021-3825-1-git-send-email-dilekuzulmez@gmail.com>
References: <1455031021-3825-1-git-send-email-dilekuzulmez@gmail.com>
Date: Tue, 9 Feb 2016 17:29:29 +0200
Message-ID: <CAEnQRZC9W0SUzJ8w=gTMSN7D6O6Pq3jsR8GDi5JkTeNfKJy7Ug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Add * on subsequent
 lines in block comment
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 9, 2016 at 5:17 PM, Dilek Uzulmez <dilekuzulmez@gmail.com> wrot=
e:
> From: Dilek =C3=9Cz=C3=BClmez <dilekuzulmez@gmail.com>
>
> This patch fixes the checkpatch.pl warning:
> WARNING: Block comments use * on subsequent lines
>
> Signed-off-by: Dilek =C3=9Cz=C3=BClmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712=
/hal_init.c
> index 0a1c631..5b8b689 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -297,7 +297,8 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
>
>                 tmp8 =3D r8712_read8(padapter, 0x1025000A);
>                 if (tmp8 & BIT(4)) /* When boot from EEPROM,
> -                                   & FW need more time to read EEPROM */
> +                                   * & FW need more time to read EEPROM
> +                                   */
Better move this comment one line above if(). This would fit in one line.

>                         i =3D 60;
>                 else                    /* boot from EFUSE */
>                         i =3D 30;
> @@ -331,7 +332,8 @@ uint rtl8712_hal_init(struct _adapter *padapter)
>                     r8712_read32(padapter, RCR));
>         val32 =3D r8712_read32(padapter, RCR);
>         r8712_write32(padapter, RCR, (val32 | BIT(26))); /* Enable RX TCP
> -                                                           Checksum offl=
oad */
> +                                                         * Checksum offl=
oad
> +                                                         */
The same here.

>         netdev_info(padapter->pnetdev, "2 RCR=3D0x%x\n",
>                     r8712_read32(padapter, RCR));
>         val32 =3D r8712_read32(padapter, RCR);
> --

thanks,
Daniel.

