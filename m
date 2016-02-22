X-GM-THRID: 6254106980545200128
X-Received: by 10.112.173.6 with SMTP id bg6mr735419lbc.0.1456147951410;
        Mon, 22 Feb 2016 05:32:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.136.139 with SMTP id k133ls311370lfd.103.gmail; Mon, 22 Feb
 2016 05:32:30 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr3371187lbb.23.1456147950787;
        Mon, 22 Feb 2016 05:32:30 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id w10si907879wmw.3.2016.02.22.05.32.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:32:30 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id g62so163621392wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LKpI1oCFrGUwD6Y9im+4CeNGdry0QmDyht8YARgxlFE=;
        b=wop4KBFbQQYDmGLLiOH2CDh8y4HWYMkZfIuxPHsUCXiJZ0JW2IlTjl917OhbZixYQg
         q4laSyThJae6teGZ2UE5ABYe9uaFE+l30sKKjmGGqY509qJE2RNYORi+K/QrjtJIaXW/
         U1JZ4jDkilzQpn/zSPcQ2O1Oqd+cYOyy3665Fxs+x5KPtkk8jnHNTpg/gGwk0gEzXvzM
         UFd1VTE1aRjER2mRi8dlWo4IEbXK1T8W+A/XxkILQFYiPtc1UZ3n5ptCY4a8vTPnwL/2
         ad/kPEU8QHjIVIuSA8ra8gNHqCpXcMH9uFMe0NF4zUpMwamHA4VUpexWEtebR9MjQ+Bs
         2ucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=LKpI1oCFrGUwD6Y9im+4CeNGdry0QmDyht8YARgxlFE=;
        b=hG+ERPHfQNX0NwXpVXCLguNnzhLS6m8Q3FPlDE8o3911pusYe0Gz4EInffg0+UGMEv
         VYFBtYxqq7mprtWvoRrOL+rJ6c+/LNnjOb1fFgnwnQ7G6lAZso7wwSFCoRyjJju2ZYza
         FZ9A38kfeS52gpAXkq4Ay29aXUbHojlRa+RS2z8EQBcPUHXIA8vrjRAlfOBHEvtZH6Vx
         Hwg4RSJhFv1aJOeqkMsCU+gS9MJhJjLaoeytGbWaJ7UJdniwazAY8pDOrwO1RbqAuFuM
         yd9k830NjeQ8V84NLmH5+p4jflTnbENbJxrk8YGJRFFMinp1z68p8JZONxaRxD0Qp4p3
         wpKw==
X-Gm-Message-State: AG10YOQpL89a4JwN00yDfwwOrmHxznQVrkMoqBLBIcbjFDaTViIbUmStTEbr8WXttzdTu6takGglVAomO7h3mA==
MIME-Version: 1.0
X-Received: by 10.28.111.202 with SMTP id c71mr13192066wmi.77.1456147950652;
 Mon, 22 Feb 2016 05:32:30 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Mon, 22 Feb 2016 05:32:30 -0800 (PST)
In-Reply-To: <20160222132944.GA18018@Karyakshetra>
References: <20160222132944.GA18018@Karyakshetra>
Date: Mon, 22 Feb 2016 15:32:30 +0200
Message-ID: <CAEnQRZD6=v7E-dOLxF4WGHVH+S7pTOoDj_2KGpwGmyF=4Z98_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Simplify return
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 22, 2016 at 3:29 PM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> Simplified the multiline check to a single return statement.
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  Changes in v2:
>         - Removed if-else and replaced it with a single return statement
>  drivers/staging/rtl8712/xmit_linux.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index f8866d7..f708d95 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -70,10 +70,7 @@ uint _r8712_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)
>
>  sint r8712_endofpktfile(struct pkt_file *pfile)
>  {
> -       if (pfile->pkt_len == 0)
> -               return true;
> -       else
> -               return false;
> +       return (pfile->pkt_len == 0);
>  }
>
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222132944.GA18018%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.

