X-GM-THRID: 6951280273110597632
X-Received: by 2002:a05:600c:4f8e:: with SMTP id n14mr1791349wmq.166.1618472683706;
        Thu, 15 Apr 2021 00:44:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls579368wrb.1.gmail; Thu, 15
 Apr 2021 00:44:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw72FsYkAsup3VvA2Yxjnal2fsuGCcOljnaxUg11I3hRpr/PjQq2aoi4EjdhN9PuHKeIEN0
X-Received: by 2002:a5d:6a08:: with SMTP id m8mr1966710wru.57.1618472682347;
        Thu, 15 Apr 2021 00:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618472682; cv=none;
        d=google.com; s=arc-20160816;
        b=1EEsU7atqavSL928vJ69x08odgpACo+UsfzlW+1Dc4nY7D4x6oR28wpeT9PUGamO9U
         rJR3f3YhmNNqa+fUi+DcHtc2NB6XSMpM2O052jaYp/T1vVgn7VEntTRbbLF7JpdIWaZI
         lWTroSUgZ4v0XonV3oMxIOvdhYJn/igPUw3nBJvB+LVOFQThcYMTf7kFgZcm32CkpnjM
         Ay3azJ67uYiATXMfMi7WgMxdIoVsWJD0kRlspJk+mdE4WMRNXpBaFbJ9MqsvUAHyJSWy
         T/oEMhdV2gs8dW5xsRePSGVuJf4MQn7QJzMF28THtY0tqHAs1LWNEiihHOuKvVeDblRp
         IIUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mo8VcWChyiswYqXafOgPzC0rghxOGJeUf888xhDxB7A=;
        b=uGO0jFvodh5KmKG0+j88J+Uv+1v9D1joYsIbaMOdf3ilgynLWuPLtrF6a99VOG4n0X
         W3r7t8oQGwBQRVvamMmvxt80gwroj3KaxDfdZu8upEm2gKxkfFDwuq8SVp2cOGk+EWvt
         YLxJZ2bQVz7dcbbMLKiR+qDccTooKZCUUAsjlRbSfM3zfoUoap3CTDrNCewzK3gaPy17
         Lm33dcCCKnzqPCuY4wPsyyIeIJz1TS4zi/bz1tarf6jeSjPDIGjZgb9sJkWGIM0tJEK1
         uXdUd1BmFXSIR5YWT/kE5dTsQkjO+WaDXBXYA9LipHOHHFr1/odKypEDAYsa12MZYnz1
         URFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Djd1yu2y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id x16si98046wmi.1.2021.04.15.00.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Djd1yu2y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id i3so1177912edt.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 00:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mo8VcWChyiswYqXafOgPzC0rghxOGJeUf888xhDxB7A=;
        b=Djd1yu2ygNAB6AwkfDBSQM23UdPQgI7TRVwaPtaSVsOgZTsXMnEZf55dsV49AwyfqE
         2/COw0IOUs30bcMPL2xIijtqsFtCwG8xaSgDGHFaYP40hX9uG2ZQgm/QJeCFeXg7SUIW
         pP+Valr/YyuNLXEKM4zZ2tHWTNwZfXZ8BvDVv+hkeKYxeHDs5UqnX26mmGGAzClsHUsN
         +cnMY9Z32Oja7hCewZctIGbz1TTfSHo+SQ1xSerPw9GWBhcVTI7Mwtsx+o3RaEnItZ5p
         IOtllw0zzkMmaWZ1H88ziYgEuzUE/SzS0FDtsucdsP8ggYVaifte6MqK2hX9eJznRSjo
         sizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mo8VcWChyiswYqXafOgPzC0rghxOGJeUf888xhDxB7A=;
        b=DH8EKnW57z2z87dUqPXiLF3aTAcFhX4ADoIwf3pt4elJzuqT8iE/rKh6CE6bq72kYC
         boMmVwBmnd1S0OuMpkl/JiACnXEUZP6TlYFROtKGFvxh/jEs/22hiyjFg1pdlHW+OGMi
         8gr1aCaHK3JCLvZqSzR1/J/+h/1j7CObTaF7YFoLuLpC8jWh/Vrlr91lJgMoZIF1jeph
         AzIfoJ4so/ybuP2mPOBOPKDObqSwgYe+iJV0+ZR9j1RYXRnR29MTLkI+J3Zg7eeMBJXm
         WgQPKNnxE2RMrY5WJrMozqlpNG0rkbnKbWyIxrblHA6fLVwqpZs5PGeC4gfxSOChXZsU
         HfLQ==
X-Gm-Message-State: AOAM530IlJlmR+NAOUW1pdCbf9t4TvL6T7Qlv2ZuEYlCTuJDRwoWlHgY
	m+VtdBMTYNCRqbhpkW94FNs=
X-Received: by 2002:a05:6402:254a:: with SMTP id l10mr2543769edb.160.1618472682108;
        Thu, 15 Apr 2021 00:44:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ca1sm1654269edb.76.2021.04.15.00.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 00:44:41 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>, Fabio Aiuto <fabioaiuto83@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8723bs: Remove led_blink_hdl() and everything related
Date: Thu, 15 Apr 2021 09:44:40 +0200
Message-ID: <50579851.vdsvJbu58s@linux.local>
In-Reply-To: <YHfrLoot3iJSpAHU@kroah.com>
References: <20210415071731.25725-1-fmdefrancesco@gmail.com> <YHfrLoot3iJSpAHU@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 15, 2021 9:28:46 AM CEST Greg Kroah-Hartman wrote:
> On Thu, Apr 15, 2021 at 09:17:31AM +0200, Fabio M. De Francesco wrote:
> > Removed useless led_blink_hdl() prototype and definition.
> > Removed struct LedBlink_param. Removed LedBlink entries in
> > rtw_cmd_callback[] and in wlancmds[]. Everything related to LedBlink is
> > not anymore needed. Index of slots changed in arrays comments to
> > reflect
> > current positions.
> > 
> > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > Reported-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Suggested-by: Matthew Wilcox <willy@infradead.org>
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Changes from v3: Merged the series into one single patch for avoiding
> > unnecessary intermediate stages.
> 
> Much better, thanks for sticking with this.  
>
I think it was worth doing this job well and getting it done, despite the 
difficulties I had.

I really appreciate your message.

Thanks so much,

Fabio
>
> Now queued up, and I think
> this is going to be the last patch I take for 5.13-rc1.  The rest I'll
> store up for the next kernel release after that...
> 
> thanks,
> 
> greg k-h





