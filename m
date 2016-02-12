X-GM-THRID: 6250301403759116288
X-Received: by 10.194.85.169 with SMTP id i9mr156997wjz.4.1455277487878;
        Fri, 12 Feb 2016 03:44:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.212 with SMTP id t203ls100984wmd.42.canary; Fri, 12 Feb
 2016 03:44:47 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr422696wmv.3.1455277487477;
        Fri, 12 Feb 2016 03:44:47 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id s141si239164wmd.1.2016.02.12.03.44.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 03:44:47 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id p63so2212731wmp.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 03:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6NkqSaB6mmPV4cKqsF4A2FYXLcHRmyI0MwzvRFVWBvQ=;
        b=ieSlgPyhVlo/S9fbIUL+s84QGmsoAmtBauzhFehtkW2/DuxQYxYavDsDdn5TE3b+Fb
         FjdnSFAqFF148Hn+Fyol2Ql0sFsucI6wz5lHbb7GDYI3aW+gvPxG1U54DBDoPu0VfPwJ
         klo51pONNkzD3C0LJZLkPVAyxCDvABDsu8FN+wtJS9puUyTL8OnbLhoqx0zt8mJP2uz1
         8kHdBODqUgmNCm4r1qkmdCVul+1qt6rOWpA0xJJ8ESeiMmH1+rvLHUENOtzJotrIILeM
         nRNGEGQT+6CHGt6mHcWxhOHSwGUpBmDNJzHK8yzZIxFZYSX7st/3KLB9ZyMVgdIrUpyX
         PTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=6NkqSaB6mmPV4cKqsF4A2FYXLcHRmyI0MwzvRFVWBvQ=;
        b=KUx5j0y48CbwsgDKdhzPU9coRNE/V7B+F6OXG+jfj6Gzi5ElHQSAv8MiHVbtTBXv5s
         DJ+4W+yMwcMJnh2Z/0wvkIdCdy7zz5HkRQ+c0/kPj75Fg9GOI8DPBtbXfgNSHHoV2pAb
         Zszh0KwRopvJGj3YoUrIhgN0aKzdA8QBLKRaBd8+9wqTFbDd7OHjZAfTpR2UHahwSDh8
         BhP40dvjsL2pGbg/xJNWftyWtzLJavMvK4TNA1uldqz4VLELYav1/Ji4F+M+fKqSt02S
         WM4V+/K24f/zev0PgoB5AoSzs9xonLUTpPnRGW+SQ5DrxwUPmlTFlRJo8UVgiskBr+4l
         eCsA==
X-Gm-Message-State: AG10YORO0anHb0zSbYZXeuvlyrI0YiRzz/hJAo7IlxLmCoMmpmaerURlTQUZRb6NLXAulCEUTX8ytrYdQuXRow==
MIME-Version: 1.0
X-Received: by 10.28.126.65 with SMTP id z62mr2631849wmc.3.1455277487370; Fri,
 12 Feb 2016 03:44:47 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Fri, 12 Feb 2016 03:44:47 -0800 (PST)
In-Reply-To: <1455262646-14649-1-git-send-email-amsfield22@gmail.com>
References: <20160212072127.GA14416@d830.WORKGROUP>
	<1455262646-14649-1-git-send-email-amsfield22@gmail.com>
Date: Fri, 12 Feb 2016 13:44:47 +0200
Message-ID: <CAEnQRZD3vm2jfVM+j5jU3p2ya=8QxeT=Tq+fcCjsPz4U9Sx9EA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6656: replace GFP_ATOMIC
 with GFP_KERNEL for urb allocation
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 9:37 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> Replace one instance of GFP_ATOMIC with GFP_KERNEL during urb buffer
> allocation.  This makes vnt_alloc_bufs() consistent in setting GFP_KERNEL
> during kmalloc() and usb_alloc_urb(). GFP_KERNEL is safe because we are in
> process context, not in an interrupt handler, nor holding any spinlock.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Really nice idea. While at it please also fix the allocations in the same
function for priv->interrupt_urb and rcb->urb.

> ---
> Changes in v2:
> expanded abbreviations in commit message
>
>  drivers/staging/vt6656/main_usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 05f86ff..f7c4362 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -439,7 +439,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>                 tx_context->pkt_no = ii;
>
>                 /* allocate URBs */
> -               tx_context->urb = usb_alloc_urb(0, GFP_ATOMIC);
> +               tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
>                 if (!tx_context->urb) {
>                         dev_err(&priv->usb->dev, "alloc tx urb failed\n");
>                         goto free_tx;
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455262646-14649-1-git-send-email-amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

