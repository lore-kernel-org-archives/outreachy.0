X-GM-THRID: 6948029216404275200
X-Received: by 2002:a92:6012:: with SMTP id u18mr12959204ilb.92.1617718964047;
        Tue, 06 Apr 2021 07:22:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:248b:: with SMTP id x11ls2448676jat.7.gmail; Tue,
 06 Apr 2021 07:22:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6N+H26CKI403W1GwRrZgMojhCxCVFl6vbGwxb9i/bRYo4YSvtWXyqnN9jvwG90166Hgpp
X-Received: by 2002:a02:3304:: with SMTP id c4mr29033814jae.68.1617718963330;
        Tue, 06 Apr 2021 07:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718963; cv=none;
        d=google.com; s=arc-20160816;
        b=wsurorBRF32gRSWOGeTNp6TLd5+c9MQgdMesqSH35aYqnRlzeMf6E2qvu2WiSntECG
         F2UzFb+jDup1aMdEhPLMNCbN4MN1ulZXiA070J6l34R2g+jrz0IfHMMzeu90QEtua9sb
         vwvWBlPEffP638Q6AAm30ojv7/iJmwV5A8+yWukA97ugN7z8h4qbIm5X8RSum36N4Bss
         ZKiYd3QVbE26W00mMrZeGd9k5LelPD0BN5P1JvEPe4QdjLRylPhu+jBsOrcBQinUyjHe
         6YFJ1rDmHqifXSu2VFqEBF9WTp911MasyemjR8JkUxaIgGQJxuFNeqk1xt8XxqB2EYBP
         B+pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2C58heWhjWSXVwd82d75mh+4ssAK4ihVn1YcjIF/AAg=;
        b=KjsxuRrvWnKmhLUWBwuU/64n717NNiGD7f3ElIzyFMy3PwfP8wQOiHMOetDOlpYUnn
         IWLIZzQvvJ8IpmzDm1RJnv/Kg8k5bAbIDUw/j4S139hrggtf1UIYPKT16Kyv6YL4TxYI
         DovIAgeg4AW15EcDKLpHxrVgn1b3Q/EZJwxQlF6mQdsiq7q2a5rX+U4RfdryotDbAA7a
         Pf5Nf54h8wHlGPN4w9vg7pXLVCUrIzH/VkdEhtw5Onyz1iThot24cpWpizey4he8nU1d
         vuIt/NjMUktk0YJlM52S+8nrzaIvuWebRqJKQEAEAawGFx7akBPP2ixBzaJaeJcV9zyj
         PLbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=soHVhgYD;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id i2si1129552iov.2.2021.04.06.07.22.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:22:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=soHVhgYD;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id s11-20020a056830124bb029021bb3524ebeso14842983otp.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 07:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2C58heWhjWSXVwd82d75mh+4ssAK4ihVn1YcjIF/AAg=;
        b=soHVhgYDQK5DhGL2cYR8dtJ3mFb+IY7oWhlKrSZCmDH1eu4FvpnLjil8XXxZp8VfI1
         KMfyYHBaG4bbiJGwZVZclylKZoUl+Vbq+NrD7aEkhlRvckUYo4j3I8AQNFzsAoioZEv+
         W9aI91zfZzVrrfEOpCA52VvHoMwsr5hJFfWbc/19Myy/9rp8ysbtrUXfpdv+MXN2CHbG
         S1BHi1AorKcTyhjRmhqoS5OEJ8UwUK2MwlIeRcVuYLUBg76CREejoZyN9phYCF311Dk2
         sSYUHg4A3W2eGOXnYDhPc7MzEG32PaakcTBpLeeTgyYyZZyKL78UGPxJFO1EaHYLtzxr
         p7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2C58heWhjWSXVwd82d75mh+4ssAK4ihVn1YcjIF/AAg=;
        b=CDxoFMfQxNfYBjO3uZ01CJjz/XUoyMnJkukhOm9qVVGquCKe8YRWOTuQJHruNi6WJo
         yXx9qVmMcSfdltbZIw7yJXTTmu7aBU/42IAVyshRN0LJiOyvZ3m1HQBLOyr7JClQyHwx
         8dMDk1B6t7uJMcQGgbSXVftiUGos33wAny9YDjM8tIAx8qIpnvSmJvSR8iFqZ4qttaEc
         g1EkrQaozTzccyJSHCw555wudO2RSzBupuvmhEUoop7tq+5nRKCl+bxtkJajz7VOB92k
         xjpsQDyZ9pFSL8inq9LdU72SFVAiJnBXe+8FC8mQ8RjQQjzOvpfUANqp/ntTONoY/ISq
         4RXw==
X-Gm-Message-State: AOAM531WMEl75TgtotQ9yPSM/WZu7oNr/MFZ6R2l4NMRa1mPcv658fgP
	zDat2B4qdqLCUcfiFC7BIdVBc/NEMHfvK+ypu2A=
X-Received: by 2002:a9d:7f8a:: with SMTP id t10mr26150737otp.239.1617718962943;
 Tue, 06 Apr 2021 07:22:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210406130138.30744-1-fmdefrancesco@gmail.com> <YGxsNVs+sexiPMJS@kroah.com>
In-Reply-To: <YGxsNVs+sexiPMJS@kroah.com>
From: FMDF <fmdefrancesco@gmail.com>
Date: Tue, 6 Apr 2021 16:22:27 +0200
Message-ID: <CAPj211s_MCJ6R+DgETqzj8pbzToZv=aYsDjT-c-HvLst+4nNOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces
 around operators
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 6, 2021 at 4:12 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Apr 06, 2021 at 03:01:38PM +0200, Fabio M. De Francesco wrote:
> > Added spaces around operators in file HalBtc8723b1Ant.c. Issue detected
> > by checkpatch.pl. Spaces are preferred to improve readibility.
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 98 +++++++++----------
> >  1 file changed, 49 insertions(+), 49 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > index 3e794093092b..b2b872016e45 100644
> > --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > @@ -38,7 +38,7 @@ static u8 halbtc8723b1ant_BtRssiState(
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
> >               ) {
> > -                     if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> > +                     if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> >
> >                               btRssiState = BTC_RSSI_STATE_HIGH;
> >                               BTC_PRINT(
> > @@ -85,7 +85,7 @@ static u8 halbtc8723b1ant_BtRssiState(
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
> >               ) {
> > -                     if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> > +                     if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> >                               btRssiState = BTC_RSSI_STATE_MEDIUM;
> >                               BTC_PRINT(
> >                                       BTC_MSG_ALGORITHM,
> > @@ -104,7 +104,7 @@ static u8 halbtc8723b1ant_BtRssiState(
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_MEDIUM) ||
> >                       (pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_MEDIUM)
> >               ) {
> > -                     if (btRssi >= (rssiThresh1+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> > +                     if (btRssi >= (rssiThresh1 + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> >                               btRssiState = BTC_RSSI_STATE_HIGH;
> >                               BTC_PRINT(
> >                                       BTC_MSG_ALGORITHM,
> > @@ -353,11 +353,11 @@ static void halbtc8723b1ant_MonitorBtCtr(struct btc_coexist *pBtCoexist)
> >
> >       u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regHPTxRx);
> >       regHPTx = u4Tmp & bMaskLWord;
> > -     regHPRx = (u4Tmp & bMaskHWord)>>16;
> > +     regHPRx = (u4Tmp & bMaskHWord) >> 16;
> >
> >       u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regLPTxRx);
> >       regLPTx = u4Tmp & bMaskLWord;
> > -     regLPRx = (u4Tmp & bMaskHWord)>>16;
> > +     regLPRx = (u4Tmp & bMaskHWord) >> 16;
> >
> >       pCoexSta->highPriorityTx = regHPTx;
> >       pCoexSta->highPriorityRx = regHPRx;
> > @@ -1317,7 +1317,7 @@ static void halbtc8723b1ant_SetFwPstdma(
> >       pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
> >
> >       if (bApEnable) {
> > -             if (byte1&BIT4 && !(byte1&BIT5)) {
> > +             if (byte1 & BIT4 && !(byte1 & BIT5)) {
> >                       BTC_PRINT(
> >                               BTC_MSG_INTERFACE,
> >                               INTF_NOTIFY,
> > @@ -1349,9 +1349,9 @@ static void halbtc8723b1ant_SetFwPstdma(
> >               (
> >                       "[BTCoex], PS-TDMA H2C cmd = 0x%x%08x\n",
> >                       H2C_Parameter[0],
> > -                     H2C_Parameter[1]<<24|
> > -                     H2C_Parameter[2]<<16|
> > -                     H2C_Parameter[3]<<8|
> > +                     H2C_Parameter[1] << 24 |
> > +                     H2C_Parameter[2] << 16 |
> > +                     H2C_Parameter[3]<< 8 |
>
> Why did you miss the space that is needed here too?

I really don't know why I overlooked these.

>
> Did you run this patch through checkpatch.pl?

Yes, I did it as I always do.

>
> Please do so.
>
> thanks,
>
> greg k-h

I am going to send a v2 as soon as possible.

Thanks for your review,

Fabio

