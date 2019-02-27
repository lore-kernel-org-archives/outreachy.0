X-GM-THRID: 6662431164424257536
X-Received: by 2002:a24:1303:: with SMTP id 3mr91897itz.40.1551285813578;
        Wed, 27 Feb 2019 08:43:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls523309itb.1.canary-gmail; Wed,
 27 Feb 2019 08:43:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqzXugLXh+H4t2mt/iw9CPk1X5qXPZ0xr6Pt2J7ibK2euuYRq+QwIQb2NkzW1XukQ4xb0+V3
X-Received: by 2002:a24:7647:: with SMTP id z68mr76571itb.27.1551285812827;
        Wed, 27 Feb 2019 08:43:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551285812; cv=none;
        d=google.com; s=arc-20160816;
        b=DqyA8zyA2S75h433btP8gADC011Uwh7FtXLKedx4ELpX0PrbX2R6TBZ0QR4QOemPtA
         Vxjm10/+VVnDdUS/fXLz1I0Y4gsVWlZivJZGOgBjAPumIGWf5Ym+HRp7SoiGTTYFxLc2
         pa+ufSLjUxIRYed2euJiVB7T8eFn9b4dWuX7SdbtCsQYcI4ju/ZLNEhpcveXbc/1eGSu
         rJVILgbTLZ7/nf7BY60blPx0T71qUBWT7n4JSYneqyIVkoaLofxPxLsuPu76EznkL/mk
         5C/4ho7odV2Q1k7R7gIwHp6VHHizY5ZxIgjbjtKC74qdxDFhFAHFoYPdaOkClBDg7XGA
         JMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=TWcmSBmP15HSDMRidkHSQm4hcPM7sAyjXJJSYi6BTzk=;
        b=l/C9vlcOjdzOwX2jmncKFcqjbSZJu0zuD/EK1NLTP6QkpQzjeAWxs4IF+A4q0D+Y6u
         bNCQ4q/0B4LFaLToXwydQgyJZvDlPj3t1rZiqgbjV1fC6Nq+tjixFxgZNkjedYE6fJEv
         6q/1uPRYwl7xntnU8VNWAbs9NEAQx13h58GCGXCoJj3MyCeQbefRF08b4Vk4wKHnEQoJ
         JRnvzkXkiFvI8/wdvnZzLU3ov+btOsMUanqpFUp8iaddrK0N4RMVDRIwS57HWV3Ri98d
         3xFl+PpmRzjqi2ga3pjt8MCxa0aC8EeRgVwXDj2RN6zT57YRcz989kBbbI6mgWALrKk2
         O5wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NaUm7auq;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id 184si828553iou.3.2019.02.27.08.43.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:43:32 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NaUm7auq;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id g16so13982535oib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 08:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TWcmSBmP15HSDMRidkHSQm4hcPM7sAyjXJJSYi6BTzk=;
        b=NaUm7auqeLVW6pX7WweikDc0pwITSjLU0wMVC2OEKO7DHnG1Vnd85KftiUg0466piN
         qlnZGPFNHnopSrUw2bfi3S6Oul+t/imw4XlZYpH7jxkV3M96MlKKKHYaSgpvReUZ7wOx
         FvjFzfBH6i5N8fHV/aMK0Y373vHyhhDI6rGZ9NxXPpCZRi/NM8pVxgknHG0RoR4ximei
         YIVB3478lzlxzeWwo2GBk+qCVxs53r6O9CKr9KINcPv7HqYuALc9PNiAyaqrRF8CWH/P
         QxiCY2GfN0Xc5eAebwsY/GhjGiuIocEnQMFdzskNj4CBl1NQHcK68LgzeCrvlp58ZOiZ
         OSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TWcmSBmP15HSDMRidkHSQm4hcPM7sAyjXJJSYi6BTzk=;
        b=OSROBAg/O6j2yAraBzttgBPjOXYfiOFUQIoE8PxP0RCUp6wuCjQow7PsiabsLZcS5m
         cPtDXTilyzRlFmoU716gL00v07fXqEUiEHjziTToG6jSlaD+as3Cx/Ysa6wsHajeyQhd
         x23h6rz+z3ZU+vU+Du03VAguIGhhTNl2Q9MpgVBb1ij6hMZyQE0K3+4NFYj3ak9EBfmc
         r/I1tf9qGAIVgqYRVrEjwHPxezaKL9e7LMV2pBC6TgJcpwGSQZ7GvDY/QnN4hBOOvxnI
         ZWz3+wOjY8XktmLqqoDCDkTYz7lEKAf1p34vZ1uu48RM4+7EWF8slwDGuENV/XTPNC9L
         l22A==
X-Gm-Message-State: AHQUAuaD2DfPuHtciUupuYjJ39PMZqFG2nNqgI201NUigApH33PPI/zd
	Ewmx2M68NGKNPIKmf9lkIiQ=
X-Received: by 2002:aca:ecd7:: with SMTP id k206mr112656oih.67.1551285812245;
        Wed, 27 Feb 2019 08:43:32 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n76sm7983148ota.51.2019.02.27.08.43.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 08:43:31 -0800 (PST)
Date: Wed, 27 Feb 2019 10:43:29 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227164328.GB22354@madhuleo>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
 <20190227144836.GA32231@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227144836.GA32231@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > FIx the warning by changing comment style based on header file type as
> > per License identifier syntax
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> > Changes in v2
> > - Modified subject line and commit log
> > 
> >  drivers/staging/vt6655/baseband.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > index f2b6a98de2c1..0cc2e07829c5 100644
> > --- a/drivers/staging/vt6655/baseband.h
> > +++ b/drivers/staging/vt6655/baseband.h
> > @@ -1,4 +1,4 @@
> > -* SPDX-License-Identifier: GPL-2.0+ */
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> 
> This patch does not apply to my tree :(
> 


I didn't understand why it doesn't apply to your tree. 


