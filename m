X-GM-THRID: 6523279529594585088
X-Received: by 10.37.119.135 with SMTP id s129mr3512979ybc.63.1518822099248;
        Fri, 16 Feb 2018 15:01:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.212.209 with SMTP id w200ls204488ywd.0.gmail; Fri, 16 Feb
 2018 15:01:38 -0800 (PST)
X-Google-Smtp-Source: AH8x227bAEQaDSEwoU5EnkfpImx2O9E981Aoqs5URxwfVcAJUHxq4EX52LCka5eSbHqDFZ51gj2v
X-Received: by 10.129.181.72 with SMTP id c8mr7600079ywk.189.1518822098101;
        Fri, 16 Feb 2018 15:01:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518822098; cv=none;
        d=google.com; s=arc-20160816;
        b=vQDDbMfNspcE8x1WkqXUZkc97jcjALbi6is7ioa+BvTdXpmDbSB0hTDDJDXDcTKyj1
         upOSdMbT+7swwk71on5BPkJHayTIqwc2/T5P2kuroLq2kRuASkEJ3IBOv27FS6QLovq8
         mMVRno52k2DIHgmOWjtY6ZWlKs/+sVLLqSLBPUPD1CTCbV2aGFM/rHDO4gm/uUxLj9Xu
         2yIOXTo3vChTWrz+M1IM1kEiiUnRw0BTUHhArSkak1u0cZShNkC3TZ1V+SvNlOsojd6K
         kPdkTadpSPDqTdPRyXBB4ps6SwuExNSspLElC3ohtV1G1YPN7OtzDSfUQx4BN07rlL5K
         D37A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=0DzR28YNuSHRdFdA02ANwjDPGKZmj5huphuHdGILFtY=;
        b=e7qcaQ4Nj047Q0hfp9Yt1SgZqGaPNlIgHLrgai9LaPQBc+DbmdTKsQHjcPQCBwg3JY
         A3B246ScGI/kUhrK7oZhHKykIOmXKNlrE4ODLFyaOtyKh0tNZ+3iWAIqcqgf9jFVRTZN
         paQRkg316udwixL9cLRQd7yxH0n2feXhAL6YnMR8s7kuFiTxZJ2czQxoLjr7m9AbpWXU
         BWSSQW8/mDd7JlUVt/H2gIEk8yEfXssWWfTXKKUX6tHhZvJ/ef42Q3qcocupiPgSv1vK
         C3ahGiAHDHDYMKuG5FGPWCVhbnnJQefXO10ZHmhZtuBsSJUay/8rWJlom+jTMNnVRTvG
         N/Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5SclHlz;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gs051095@gmail.com>
Received: from mail-oi0-x242.google.com (mail-oi0-x242.google.com. [2607:f8b0:4003:c06::242])
        by gmr-mx.google.com with ESMTPS id l13si704869ywm.0.2018.02.16.15.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 15:01:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) client-ip=2607:f8b0:4003:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o5SclHlz;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x242.google.com with SMTP id e10so112517oiy.8
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 15:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0DzR28YNuSHRdFdA02ANwjDPGKZmj5huphuHdGILFtY=;
        b=o5SclHlzhKHNI/3ggaaDmSxASl9tG+yG3qNglASsdNJy3vUYe2+YBfDOge3Yr5MRkF
         8L93pV5jkF6U06TPsQxSN/+rnVf2i6hM3YmYHwvbu49AXoWStVCigzn+IKRmUmCw353H
         BwNiZA0W++7q1HusmW//7kHAZ5gSik8ZN923fXypy5iZiiGjc1DDciPRbUEOJO9Mrt4s
         XM9mUg1fsPW2asj3eMTTzSEglTiKTWW9mDEZ9s2sf0msw1KTFB2QXq0ohuiTJtzpOn76
         m6V9zVGrZ6VvtgPsGKJz2SBQ0kT3B5efqxj1UzkdqGybb0nSaQq3d2FfU6ezF0FdxdAw
         RVng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0DzR28YNuSHRdFdA02ANwjDPGKZmj5huphuHdGILFtY=;
        b=IJoiZ9OKIWBvUA3FmU9hI3HfgVk7T7dMZBuHZggfjk9uzILg4YSoyGcDeB9ESwYQef
         iR8ks4/BdzaAD5f7d/d6UPn17oJY3gmnEZ/9r0CklY3T/8v83NbETVUBZaItb6IYFGUs
         Px5YivudcSxUeauH9uKiiJe0aAF910HQLtBxqK8RJDIcUxWR0lyth61F/a6JQ05UTYV/
         AYv5I+jLAsyiazFoM7frkOlfolACDo5atui5mbsI89Bm7YgqHFqldi1fCpILM0h7dXFW
         skvw/6HZaTMhOzZQ7wa5Q+f1iNzmcP1gGkbfyQv/mKedT67nsBVYFMsydNlKMBeKxY13
         teOQ==
X-Gm-Message-State: APf1xPDQf0X9HgOyrXL+Whf+GHDW9D7WDJRUSbmwsM6krB6Tycr2oYyU
	+z4IYeEaM3aM3+LAYaDQmInbs/yPvKIrDCu4bRFXkmTG
X-Received: by 10.202.74.130 with SMTP id x124mr2205747oia.325.1518822097434;
 Fri, 16 Feb 2018 15:01:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.180.201 with HTTP; Fri, 16 Feb 2018 15:01:07 -0800 (PST)
In-Reply-To: <20180216221603.GA77503@ubuntu>
References: <20180216221603.GA77503@ubuntu>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 16 Feb 2018 23:01:07 +0000
Message-ID: <CAOCi2DH1OBjhY8SF4zdekC1MOU4f1YdesdXnSJ_itUg4EUydVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtd520.c: Fix new line
 after dereference operator
To: Ishita Tripathi <sakurakhadag@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	H Hartley Sweeten <hsweeten@visionengravers.com>, Ian Abbott <abbotti@mev.co.uk>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 16, 2018 at 10:16 PM, Ishita Tripathi
<sakurakhadag@gmail.com> wrote:
>
> Delete new line after the dereference operator (->).
> According to https://kernelnewbies.org/CheckpatchTips, it is better to
> have longer lines than break at this operator.
>
> Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>
> ---
>  drivers/staging/comedi/drivers/rtd520.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
> index bb400e0..47b7093 100644
> --- a/drivers/staging/comedi/drivers/rtd520.c
> +++ b/drivers/staging/comedi/drivers/rtd520.c
> @@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
>
>                 if (cmd->scan_begin_src == TRIG_TIMER) {
>                         arg = cmd->convert_arg * cmd->scan_end_arg;
> -                       err |= comedi_check_trigger_arg_min(&cmd->
> -                                                           scan_begin_arg,
> -                                                           arg);
> +                       err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,

This goes over the 80 character limit, and you would want to move
&cmd->scan_begin_arg to the
next line and lining it up with arg.

Thanks,
gargi

> +                                       arg);
>                 }
>         }
>
> --
> changes in v2:
> -changed subject line
> -improved description
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180216221603.GA77503%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.

