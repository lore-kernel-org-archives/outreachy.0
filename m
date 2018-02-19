X-GM-THRID: 6523432871904935936
X-Received: by 10.25.0.140 with SMTP id 134mr971335lfa.9.1519025830402;
        Sun, 18 Feb 2018 23:37:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.79 with SMTP id l76ls182291lfe.1.gmail; Sun, 18 Feb
 2018 23:37:08 -0800 (PST)
X-Google-Smtp-Source: AH8x227i8TPMkjE89MbFvNnF2x/vmwhSsPpRCf7hR+IAzHwcBdTuK3thj6cNNdHvgjb3LnAfTgcg
X-Received: by 10.25.213.201 with SMTP id m192mr919291lfg.43.1519025828774;
        Sun, 18 Feb 2018 23:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519025828; cv=none;
        d=google.com; s=arc-20160816;
        b=oPnmPSExFJ/myRwUdcN+NZfy2PBXCqlOaiUfxm39fZr4jD2Y5voWgGMe/J0C8nqMa9
         AhgNK7cdqMCH3aemfxCYuXG/swGk+yHig9Z6tHBfPt+3g2y/rR+t1u7lPgCOy4RLd5J5
         SbHdarq0usmBqhDzLa/dQoG3WFxIFQubClCYKZ+aTA8EdUhOV3D+b+rL4ndMg/nDx38J
         N5Uh/XW9tgFTWY030edU6Wwdc/kCabLLyYzJqwQOkIUQGVjEKptOhi6VVffhgQRzpqCi
         6hkD1y/0AlNyuNDPu0s6HE6SU3EBlKn8zMisjJ8S27ZDCDP1F1mhdzZbn+MUR51DfI0R
         jQNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=Gr27J2Ned72XhHw1slSp01LiGg8vRy/6NYuvt5tl29c=;
        b=bw8dPw7j8lUwj6EEXctnE/WSiEtdmOJ7JgAncqsS2CYSuwP2mBXSiF7TmdLuCLjB4s
         kqCHuI0QECm2uTf6/lyCGHmPorNKF5LgUTwEhKU4WGXimPyivgeDqWQViD1vkmXs3Smz
         XNgo4uxgGvNrHWUN1IffRSlOeeLWrhxswYO2KjynHFpnmE/n+vqIoX5Nbw8Ue5cqCEiw
         o2uvOEgIXJ/ZBHtysnKt2WGhNkl+u2vqGGzzeR+mGQRdjoPnC58II1paeIMKFdPOjHgA
         ipLBSWspR1+Iax3UpC6bLuhJ8i4o9UkFCxqFbkoWa6mI5ZSz5T2I66H8u4H052DkDAW0
         1t4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.67 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com. [209.85.215.67])
        by gmr-mx.google.com with ESMTPS id 25si289755ljt.1.2018.02.18.23.37.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 23:37:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.67 as permitted sender) client-ip=209.85.215.67;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.67 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f67.google.com with SMTP id x196so11697383lfd.12
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 23:37:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Gr27J2Ned72XhHw1slSp01LiGg8vRy/6NYuvt5tl29c=;
        b=qR/58ToWWanUBl7sb0piVcx5BiF7/mV6ioy6nzL5NeNc+ROSAMH8BXAToobo3kyATw
         YGSq0JHuxKWfLVOB9I+uaCAhgMLo8ZxqWORYgc74TG7u5HTKLHsieuaWSr3GRs1WtJbi
         yFMizkDHOkSSKgndCJoMa9djUf8zYaPaA97Qho/G07N37YQLM2IV6//VrYKpQJSv/OyZ
         YNsDc8VP5ds+FIAywv7wJeuS3ZaDVFBV2YDdZM3SqtC2nf78QS3T0LaDNIcPtW6TGpQy
         TTrunk57pbC3eK2n/HOQIa/VwxnSD8XVqmAsMs7c51usTNyzPT0uqTRgeRC6HnayEpDm
         Hs0A==
X-Gm-Message-State: APf1xPBZHqwjAajMY6vVp3BBFQiXItoUpjQgNmNALQT/QNsRGn4+f1TP
	mcKAT0DOE5nbCPWGjglOKzRJ+WX5
X-Received: by 10.46.33.230 with SMTP id h99mr6761982lji.47.1519025827720;
        Sun, 18 Feb 2018 23:37:07 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com. [209.85.215.48])
        by smtp.gmail.com with ESMTPSA id w14sm1512952ljd.25.2018.02.18.23.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 23:37:07 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id x196so11697334lfd.12
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 23:37:07 -0800 (PST)
X-Received: by 10.46.85.157 with SMTP id g29mr8433997lje.118.1519025827043;
 Sun, 18 Feb 2018 23:37:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.112.4 with HTTP; Sun, 18 Feb 2018 23:37:06 -0800 (PST)
In-Reply-To: <20180217081047.5763-1-chenyensu0@gmail.com>
References: <20180217081047.5763-1-chenyensu0@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 19 Feb 2018 13:07:06 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKka2y9+6yKHa_v3YCiiQPCsJ1bpLKCFSstToS2O0=Tbg@mail.gmail.com>
Message-ID: <CAK-LDbKka2y9+6yKHa_v3YCiiQPCsJ1bpLKCFSstToS2O0=Tbg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: Remove a newline
 inside a dereference
To: Eisha Chen-yen-su <chenyensu0@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, abbotti@mev.co.uk, 
	hsweeten@visionengravers.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 17, 2018 at 1:40 PM, Eisha Chen-yen-su <chenyensu0@gmail.com> wrote:
> This patch fixes the checkpatch.pl warning:
>
> WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'

Hi Eisha,

Good work on subject.

For the commit log, as Julia mentioned in her previous comments
it's not necessary to keep the checkpatch.pl's warning message in
the commit log. Instead you can write about what change you with
the reason of doing that change. And at the end to give credit to the
tool, you can add something like 'Problem detected by checkpatch.pl'.

> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
> Changes in v2:
>   - Change the commit log to mention what I have done.
>   - Remove the unnecessary cited lines from checkpatch inside the commit body.
>
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index b657beedd5ff..eea44435a2aa 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>                         devpriv->ao_buffer[i] =
>                                 dma_alloc_coherent(&pcidev->dev,
>                                                    DMA_BUFFER_SIZE,
> -                                                  &devpriv->
> -                                                  ao_buffer_bus_addr[i],
> +                                                  &devpriv->ao_buffer_bus_addr[i],
>                                                    GFP_KERNEL);
>                         if (!devpriv->ao_buffer[i])
>                                 return -ENOMEM;
> --
> 2.14.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180217081047.5763-1-chenyensu0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

