X-GM-THRID: 6204818417303683072
X-Received: by 10.180.184.164 with SMTP id ev4mr3179308wic.3.1444672089052;
        Mon, 12 Oct 2015 10:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.5 with SMTP id em5ls863138wib.22.gmail; Mon, 12 Oct
 2015 10:48:08 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr2340214wjc.2.1444672088708;
        Mon, 12 Oct 2015 10:48:08 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ch7si556178wib.2.2015.10.12.10.48.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ge5so26894390wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=9lENOcHP+DGsUhbsyzpvcfBSjLVzI0Xj8+PtgQQ4n4E=;
        b=w6Xfz9RvMhOkDoTC68cV9nU69zZUUAtwbFwu6VUBm1iMHSl6OKSt3jzK90VIk+i8Vo
         6qJ5OVJQZ1q1oDYgeQwt8zvl7M/Hn8g3FI6puGi8XJufaxSiFAsXQVgGRrqFNKQnIBya
         CcQiPwDsZAv5PY6pb7Dw2AygZJI7IQ7jR3vlRUZOmnAVF/untm0p/bfNP6nsbo3DVwOB
         +pt8URfkdNSlph74ZQXXMgCODCOkl++qA7mCNwQklUpLySwZEGL+biifTXND5H0YpMvx
         IuuWGImPVZ8L96+hB5FsLAt3h/VMXpTrjC50dwh0jSSHCDwk5oGqjGN7kEC2TTaJET59
         TSOg==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr15117742wic.93.1444672088565;
 Mon, 12 Oct 2015 10:48:08 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:48:08 -0700 (PDT)
In-Reply-To: <20151012174415.GA48424@ubuntu>
References: <20151012174415.GA48424@ubuntu>
Date: Mon, 12 Oct 2015 20:48:08 +0300
Message-ID: <CAEnQRZCKBipOi5QQ1XK7d=jnmwr8QqxGpcW+LVHhHRWMOB+FTg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: mac: Remove extra braces
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 8:44 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Remove braces from an if block as it comprises of a single statement.
> Fix checkpatch warning: braces {} are not necessary for single statement
> blocks
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/vt6655/mac.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index 3dfd333..688c3be 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -689,9 +689,8 @@ void MACvSetCurrAC0DescAddrEx(void __iomem *dwIoBase,
>                 if (!(byData & DMACTL_RUN))
>                         break;
>         }
> -       if (ww == W_MAX_TIMEOUT) {
> +       if (ww == W_MAX_TIMEOUT)
>                 pr_debug(" DBG_PORT80(0x26)\n");
> -       }
>         VNSvOutPortD(dwIoBase + MAC_REG_AC0DMAPTR, dwCurrDescAddr);
>         if (byOrgDMACtl & DMACTL_RUN)
>                 VNSvOutPortB(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_RUN);
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151012174415.GA48424%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.

