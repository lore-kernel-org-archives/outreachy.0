X-GM-THRID: 6948463626776739840
X-Received: by 2002:a5d:60c2:: with SMTP id x2mr3953370wrt.397.1617864446273;
        Wed, 07 Apr 2021 23:47:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:23c2:: with SMTP id j185ls2051100wmj.3.canary-gmail;
 Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyEgtyKdAOiivkB2m0jyeYGPSwcmgOmqgF4jJ6Cc/tI9GFVunEP2xk6w5M9dVyY+z7z8YeK
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr6742669wmd.42.1617864444818;
        Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617864444; cv=none;
        d=google.com; s=arc-20160816;
        b=LuFW2VtR69FCkRZrCbKzl7yVQjPfzWsqTVMhU7qpiQJgehJGf4K9c4r/htFmMq/FKU
         iPTFDWjrWzzYUWLRWYza3l7IJinRqaO/4xG6i6KRlgqwxh5W9VEOitTTiu7V2LwW/qK4
         acbdyOdRbGj9OTlgXpWLFc0x6i2Nck518OpavbJDoBw+5pthVI8YBd3aHJpleLGmLTW1
         AUsxH5ebuoSHLM/w55fzVu8W2ZuyExNpe8RO97BLWfQ0Fj3/evBGrYmNKv+Qf2oYr1yQ
         jBeTT/kUt0gdBcvFnPGP7iqIDPtc9UdjT/rSWBJ01xrxuvEKRFkJLcsNC/QXtm83ovo+
         jVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eEMG+quC1tEexFmdg2ovTE5avx1YqEXkN0uVd1QBehA=;
        b=vfE7jBVRqKCKkvclRGQ6HHoOc/jlbldLSyDfdeoxp0PwRwio/FxuT/KO1xkkAjF60m
         hUKG6ft2mRNiCRtBlbdfShNNr1IopQGC4YcbP6xHbIXQAf8Dr/AM/r5f0ke8OVWc0T94
         N+slV6AeWEVcsg4JkQnYCHO2ayyxA2nlykkMPQFw3EPLidRVsWzT7VXT+tAMu3pDaPsd
         bqv6kljVC6xSgxucIf9p8CG+ZjJ541de2/qa9eYO/Wo3PCS4kZMdlDdGlsmI+sYPD4CU
         28qovia79Ff7v4QblGBiajfdDin1zN3ENYRMGd9+kfGO+RgvwWb+32dqOtsPABk4zdpU
         lLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rFE+UkPy;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id a4si529109wme.1.2021.04.07.23.47.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rFE+UkPy;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id w18so1090953edc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eEMG+quC1tEexFmdg2ovTE5avx1YqEXkN0uVd1QBehA=;
        b=rFE+UkPyGFvebDufiBQLobp12xwMIBjhS9/FzqNoWvSUBpXxRepEofAoQUN0hJLKIX
         RQbrvbTD2v87/xTEDzhdNUsADb6D6FvnDXFkMp/9qsHWtER4oTzfY5DlO4NEzHHaacuM
         kY43Yp0/3t7kBAKkGpOvRVMnQb+JflNmptmhNA5rH3Rx+39HXUeKx7mQTPi2F1uKGiLY
         KAVY+cJwA2QBqwT7F6XnuAkd9XCqLzjgAYi6ruI2A6TNBLHuvtZ7VxB5Ua++L8atXnSm
         HgzXsqvt5rMaBljfw5xBRrYwT62CficZrcsBjOLYyYRP/WVB3AoVRmSfZYTZso3ihTU2
         7Grg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eEMG+quC1tEexFmdg2ovTE5avx1YqEXkN0uVd1QBehA=;
        b=YoLuU30iZ+Y9wQ6NtyxqsGH1sWcQ4ln68ljyPKv7eOG4N3BST6rXGXugcuu1f346Li
         EDJNL/eU3vcXDwIS9FAKbY4doM48eK9sy2C7RC6r3V7ozOM8t7mkNqDhhjHI7O1p9TE4
         hozeeKbeRbWRQqtlOoak2kQFYhqnq69B8Fh65YglA4ZexeAKCqTXp8W5Qwhk/3Y4RkvF
         kwJOskc/pkzsp4U1ZUV9+Gvdt+SNY9TyxzvD2mu6TfscPUHZmHJHYjVcmuxzfGQyDad+
         XFsBJC9IMryDhMUd5MUXX9wCSLuxtOQcftlXzcKrv0QlwhflC8cpCI0Iqa92+4onnjbj
         XMQg==
X-Gm-Message-State: AOAM532wJ7SZpcQ4Lo90MgkuDRhTNzfkWO+a89GLWYAzCitt9II4MR5u
	bptdOmNsyW8qRxxz7Am8BjI=
X-Received: by 2002:a05:6402:3092:: with SMTP id de18mr9089033edb.96.1617864444634;
        Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id w1sm9087622edt.89.2021.04.07.23.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 23:47:24 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove camelcase in sdio_ops.c
Date: Thu, 08 Apr 2021 08:47:22 +0200
Message-ID: <18387208.g0g5C3WDPH@localhost.localdomain>
In-Reply-To: <YG6hsvA54ieV6ujj@kroah.com>
References: <20210407181914.7079-1-fmdefrancesco@gmail.com> <YG6hsvA54ieV6ujj@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, April 8, 2021 8:24:50 AM CEST Greg KH wrote:
> On Wed, Apr 07, 2021 at 08:19:14PM +0200, Fabio M. De Francesco wrote:
> > Changes from v2: Remove unnecessary comment. Shortened a function name.
> > Changes from v1: No changes to the code but only to the subject for the
> > purpose to differentiate this patch because other removes of camelcase
> > have been made in other files of the same directory.
> 
> The "changes" need to go below the --- line, not here in the changelog
> text.
>
Sorry, I knew that. I had already done this in other patches
but this time I got distracted. I am about to send a v4 patch.

Thanks,

Fabio
>
> thanks,
> 
> greg k-h
> 






