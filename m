X-GM-THRID: 6464558532911955968
X-Received: by 10.99.7.132 with SMTP id 126mr7483336pgh.163.1505147840144;
        Mon, 11 Sep 2017 09:37:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.201 with SMTP id n70ls4487081ioo.53.gmail; Mon, 11 Sep
 2017 09:37:19 -0700 (PDT)
X-Received: by 10.159.55.39 with SMTP id z36mr8084311uad.35.1505147839447;
        Mon, 11 Sep 2017 09:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147839; cv=none;
        d=google.com; s=arc-20160816;
        b=mMZaWsRiQzI3Le2xakks6K6jePFlTJokrGB/UHyyegOqg5rrL6aAnejkWb7zoIvwr+
         d/Mxtp3a/Vuu2CGzRkroTl8rEDT5b+gSx28NNY00jHcX9sNyXDnp+YyCe+7lKb8HhxD7
         j5BTi23wugJRfOqZB9Apyl/P7Khy+EcnSo3QyFcCuzP03+BGvvvmYU9kMeLQ1k6N7T8g
         3o6b3OUGvIYHlFkcwkyABbu5CggWx2ZF2tbZn4K1SzqE0IZ92crgypY8q/plV2Ir02+L
         JWmLSN9Y7P2wcJ81KnqN8QGfANoQ51fksmQVTnP6gthcHSrbYl5hX3EVddGxFUpU4d18
         fQFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Ou+R24v+HAjCMl4WIOM4PNCJ81RZsKCWM1KflUGTbfU=;
        b=UBOcadQEd/nzpSFCT/StEbHstZG1nkBupnmLh/9877usGKNHQlWF6hxLA9iLxSsslX
         ejLSg6CtiiD+CiSp6dlDZoPZ00rmOp4ScTVYeASRU2ECGhsFb1J2ltUjyjT5IZswe9mq
         EmzWA3qb37G2U7ck3fcz9tphMI2UF7zgI/+BXtmyanMsiLnl4HtS1NCINPa6MJPDb0Ys
         61oEQ/RXdhINnkqvJlWx9Pl7bWgFHjaB7eQw2FZ2zZScTLcJu1IX9nwXJp2FbS0ZYCpM
         Mh+/mNR+Wx/kF8pR2xPK5OsJUT6kf6HOknpLX8oFGdhvNzLE/vB2NeSjGRCrezr/HgCa
         7Hgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H4MRMpJj;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::231 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x231.google.com (mail-yw0-x231.google.com. [2607:f8b0:4002:c05::231])
        by gmr-mx.google.com with ESMTPS id l77si683269ywc.16.2017.09.11.09.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:37:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::231 as permitted sender) client-ip=2607:f8b0:4002:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H4MRMpJj;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::231 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x231.google.com with SMTP id r85so22738706ywg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Ou+R24v+HAjCMl4WIOM4PNCJ81RZsKCWM1KflUGTbfU=;
        b=H4MRMpJjGpRM+38xqMhOH1BYfLzeWOMGw0i7xeyMqKpdJzYpfOstQNUHmcAxjMgkyA
         vMJ1m8+7HyxbkGDLBYsee50Z1cXP39cyVXxLE3nfphtrsM/dlMEU94p1EYgB6JKsq0At
         jlKxTfcH1YO+5rTBi+7SfTpm3GKQ+S0FS/N2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Ou+R24v+HAjCMl4WIOM4PNCJ81RZsKCWM1KflUGTbfU=;
        b=hlaEvksS6GMunoAy9QvKd4VgSyThqO8VD7FWwZGo5ZiNq+WswMZVRTpvLtgm9eSPuR
         Hp3m2Tnf5bPwJ+3KdCORjVvR2ElyRhvIJVKd05HqYa1pjGUQfsFA6AwWj8lJ6P73RZAe
         +hXoVHsjjlqNfb5peXzJfMMorzawGKybFoJeQ7c692Tll1qvy5a7SkRh0yZQaC2zJjTY
         P/2LpTHSSHx8cP8nXL0PuLXqpeVp9lF7HPl5zPdB8JYiCX7ajWnkGtrq5FHZEyuj5BHD
         W1cOQHmjbZ0G/oPuMlQzrjQzqXN6ufLaRF3fjdeuM+9v7som0zyy0n6fEm6ZxghrrQ1m
         VNsg==
X-Gm-Message-State: AHPjjUhVZuxD+u5X62r+ZHDuiH9H74Pex7hquDmlBJVkql3O+uniVkg/
	2UaAC52NPA3tmGkXXENTfA==
X-Received: by 10.37.178.26 with SMTP id i26mr9400515ybj.3.1505147839088;
        Mon, 11 Sep 2017 09:37:19 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com. [209.85.214.47])
        by smtp.gmail.com with ESMTPSA id i5sm3222498ywe.56.2017.09.11.09.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:37:18 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id c195so20447735itb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:37:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QANxD6z75f6tnjfB+M9tU3nnbI3zatn81Lx6dpj1dz32LeMbj8SpJeQhnLbYbYeUezc8VJc5vLvyOkVm1Q7DFw=
X-Received: by 10.36.165.8 with SMTP id k8mr5857297itf.83.1505147837834; Mon,
 11 Sep 2017 09:37:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Mon, 11 Sep 2017 09:36:57 -0700 (PDT)
In-Reply-To: <1505147317-13411-1-git-send-email-srishtishar@gmail.com>
References: <1505147317-13411-1-git-send-email-srishtishar@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 11 Sep 2017 12:36:57 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+CZWz39-6_dtPzwi4=mxJkp_fQ=saUrLG8TfFORZkSkA@mail.gmail.com>
Message-ID: <CAOw6vb+CZWz39-6_dtPzwi4=mxJkp_fQ=saUrLG8TfFORZkSkA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: Remove unused
 variable monitor_lock
To: Srishti Sharma <srishtishar@gmail.com>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 12:28 PM, Srishti Sharma <srishtishar@gmail.com> wrote:
> Remove the variable monitor_lock as it is not used anywhere.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
> Changes in v2:
>  -The variable that was not to be declared as volatile can be
>   eliminated as it is not being used anywhere.
>
>  drivers/staging/ccree/ssi_request_mgr.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
> index e5c2f92..b94a91f 100644
> --- a/drivers/staging/ccree/ssi_request_mgr.c
> +++ b/drivers/staging/ccree/ssi_request_mgr.c
> @@ -49,7 +49,6 @@ struct ssi_request_mgr_handle {
>         dma_addr_t dummy_comp_buff_dma;
>         struct cc_hw_desc monitor_desc;
>
> -       volatile unsigned long monitor_lock;
>  #ifdef COMP_IN_WQ
>         struct workqueue_struct *workq;
>         struct delayed_work compwork;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505147317-13411-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

