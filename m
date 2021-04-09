X-GM-THRID: 6948745075073482752
X-Received: by 2002:a50:ec8c:: with SMTP id e12mr18638240edr.249.1617988443444;
        Fri, 09 Apr 2021 10:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls4482914edw.2.gmail; Fri, 09
 Apr 2021 10:14:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwufm2InDAiJVbuT7NCyw/mIM3UNNacYFuNCl8oIeAPhSRlWM7hN5T5R1ftW0CbJwLSyyai
X-Received: by 2002:a05:6402:6ca:: with SMTP id n10mr18601699edy.312.1617988442071;
        Fri, 09 Apr 2021 10:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617988442; cv=none;
        d=google.com; s=arc-20160816;
        b=DFFj64zVXf2+lQrdR1mkS8JYKutR5qniULSDd54dXuiUonVv3R7lPeDphPx/vUetqt
         PyabnIidpGeZ0IIuqEjzjoXWyQaR5wv7WFiJ/AvpDh7TJ1kWL2IyfuYu+2JemHbq0bsL
         STSfiNw8V35PTmwZ+dtj+JL1eHhg/dRCGWQTfILUDbm9qh2y7ZjhcRfCaiG3OQvMGMUD
         xQLdv1rhc1niVuX26DDwTvyFr6UYaPHy3t4mjffEsK4mCou6O+esYnPlXvRze4DhLiYj
         ug3FU5e24v0eOgsH56rtP5AtNBwVFMl7SXd+XseSwHfPwKg4w5Z92VALk10INKDZeW4m
         vMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9+KsrNGMheQyZi6tgUyj6QXCX6Kc00oXKAtfc1s77Sw=;
        b=egtJiAqBQuM7oRunn7Xd/mdtbfFnxMtwUwUJsSOf6Vhm7Yref6Du/DdlMsYUSVhQ3L
         Kv41kc3iscbfxhEUE2hbIMQct5NFQSINsMK80ChZJu1PDFRDb0IcVSCNjJABvapbFZ2j
         LvTInr8RwdR6TBnS5H3cbXQZBhQkbkN5SE7mTpQyCG84pHT2rjPu/Qc2pJdfFPoq4l2e
         cRW4M8sade0vOTqaZcrK5hp/339hsVLQKYmMd7kigf82jNqAfxP703TouKz+8vNCpfA3
         +YEwQuRb2zaYu73XP54J0Kuz3gKdhJujDenTNWSRR5wqRtdeb5R7BFhHrozJf3m5zLUY
         ga1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZYo2nvC;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id ck26si438543edb.1.2021.04.09.10.14.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sZYo2nvC;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id l4so9769382ejc.10
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 10:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9+KsrNGMheQyZi6tgUyj6QXCX6Kc00oXKAtfc1s77Sw=;
        b=sZYo2nvCM4l6vMu3KfhEwMtWHpcMwuW5poG9qPZXIF8hkF5nQHvd4rkz1M+zDN5UJ1
         LPrQWgwKrZ10cd8jr7TgD6B0foDoB+RqcrdFMXEdaH2dupWyUbAoNlLgyI2nwxHuVTSN
         /2EwZj8DpaBBz/9RWWW8C7iQ4AKoXByFXlTKAvwiWoQqAIUkvR3/AEttkTVsQ1F8qi9d
         /A+5nwNZHEO7atzA7NNfY9eWYuqTDdEISW1Y9fhU9dMwRn8YivdgmCDf3F/bVbRxwfnj
         qv3FKpAI1wkzq5au8CFMJpm43Ju7nz8rGRKZGjOgShKBTbLfqRsqwBnv5BvYCxeP48Hv
         UuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9+KsrNGMheQyZi6tgUyj6QXCX6Kc00oXKAtfc1s77Sw=;
        b=s/umNXEDi1ipGReKfZWQOfdiWISGDYa/SQMpf3GlxNH61B3AgJ8W8t6ZrLjFB3TNjf
         e7+vrfnqDPGqFpz5TYrcKvdNzrKtQyaCYj71w87Pn4ZAG61yWxndB6Z6LZiIcgd6K6pu
         wvIrn5fO7EsKD36AIoi1nSSBTLMwC/iYz5gXUFUB2jd6k9Yb6AyqE+7g88pCxEQ00Sj8
         Qv5CNVcjG3BZnBsEt6nc+HXhsNpEFug4FtJOAbCnirOW9FAqgGYwJ5ISRHqK8cMCbE+7
         EPoiZS07+pb6oAhc2LxY6YZcLKLYEoZuw8PWUOHm7LdzGqUqojdtHrZcSP4cipoTDXWy
         f07Q==
X-Gm-Message-State: AOAM531yuCKjZeb/ROfhsGrzfhFbnj9Yxl7oAyvYUzQRD2PR/sBn3LHn
	Qyfk3A3Xf+WnCkqlKMkf2FA=
X-Received: by 2002:a17:906:4f15:: with SMTP id t21mr6385260eju.338.1617988441921;
        Fri, 09 Apr 2021 10:14:01 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id m29sm1512592ejl.61.2021.04.09.10.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 10:14:01 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Change the type and use of a variable
Date: Fri, 09 Apr 2021 19:14:00 +0200
Message-ID: <2106328.ujm4fZfeqs@localhost.localdomain>
In-Reply-To: <YHBg1Sy2509vBtrA@kroah.com>
References: <20210408111942.19411-1-fmdefrancesco@gmail.com> <YHBg1Sy2509vBtrA@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, April 9, 2021 4:12:37 PM CEST Greg KH wrote:
> On Thu, Apr 08, 2021 at 01:19:42PM +0200, Fabio M. De Francesco wrote:
> > Change the type of fw_current_in_ps_mode from u8 to bool, because
> > it is used everywhere as a bool and, accordingly, it should be
> > declared as a bool. Shorten the controlling
> > expression of an 'if' statement.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> I now have 3 patches, I think, for this same driver, from you, and I
> have no idea what order they should be applied in.
> 
> So I'm going to drop them all.  Can you please resend me a patch series,
> with all of the outstanding patches sent to me from you that I have not
> applied yet, so that I know which ones to look at and what order to
> apply them in?
>
I just sent in the series of patches you requested. Hope the work is as you 
expected. 

Thanks,

Fabio
> 
> thanks,
> 
> greg k-h





