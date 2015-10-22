X-GM-THRID: 6208221372561227776
X-Received: by 10.112.136.99 with SMTP id pz3mr3314776lbb.11.1445501425765;
        Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.24.70 with SMTP id s6ls546130wif.17.canary; Thu, 22 Oct
 2015 01:10:25 -0700 (PDT)
X-Received: by 10.180.221.227 with SMTP id qh3mr3398175wic.2.1445501425352;
        Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id em5si198138wib.2.2015.10.22.01.10.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id ll6so107164993wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hMjbLFJlo4UlbRS4WQM1Uqq9Qxen09VZtaX/ydVHjoI=;
        b=CljkVw9BaUZXGHXbDQAxxTiOffLYlcm5+vmviJg/wmhgKaZsCbhsDp6hZx4XXori65
         /t6LeyxXPic4dtMuSRDoAZLAu0m+CLCl+WD+AOkRroBk/rLenLjHNMQxlA+PrtQbNsP1
         kVXEPIURJcMIVbcRLdjQ8o8JbyxuiBcOqQ61w/gl893arojLp225Gk4txUYclu8h0nx8
         Q0bYA0xO8iOklNprWb/2An1/OMZ5jNskFdF3K+15TT3FzwwERjtxH2P7jeHwAjBEEALY
         YFhhc84Pei6HAIbrL9/LnzLvWNrMeBbvf2U6xWhGaXq7Kba9QEh9mznwY3HhdMceK335
         N/Og==
MIME-Version: 1.0
X-Received: by 10.194.202.137 with SMTP id ki9mr15051918wjc.16.1445501425213;
 Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Thu, 22 Oct 2015 01:10:25 -0700 (PDT)
In-Reply-To: <1445464109-13553-1-git-send-email-brcnakalin@gmail.com>
References: <1445464109-13553-1-git-send-email-brcnakalin@gmail.com>
Date: Thu, 22 Oct 2015 11:10:25 +0300
Message-ID: <CAEnQRZASrHVuoxuC6zMBM_96GEELYcCZj8YA8mOgi40UbGxvqQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Add space around '*'
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 12:48 AM, Burcin Akalin <brcnakalin@gmail.com> wrote:
> Add space around operator '*'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '*' (ctx:VxV)
>
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/vt6655/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index ecbe94f..6989050 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -238,7 +238,7 @@ bool CARDbSetPhyParameter(struct vnt_private *pDevice, u8 bb_type)
>                 BBbWriteEmbedded(pDevice, 0x88, 0x03);
>                 bySlot = C_SLOT_SHORT;
>                 bySIFS = C_SIFS_A;
> -               byDIFS = C_SIFS_A + 2*C_SLOT_SHORT;
> +               byDIFS = C_SIFS_A + 2 * C_SLOT_SHORT;
>                 byCWMaxMin = 0xA4;
>         } else if (bb_type == BB_TYPE_11B) {
>                 MACvSetBBType(pDevice->PortOffset, BB_TYPE_11B);
> --
> 1.9.1
>

