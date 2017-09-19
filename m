X-GM-THRID: 6466344790011150336
X-Received: by 10.55.20.217 with SMTP id 86mr731006qku.0.1505832516926;
        Tue, 19 Sep 2017 07:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.67 with SMTP id g64ls4527238ioa.26.gmail; Tue, 19 Sep
 2017 07:48:36 -0700 (PDT)
X-Received: by 10.159.60.24 with SMTP id u24mr925507uah.122.1505832516069;
        Tue, 19 Sep 2017 07:48:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505832516; cv=none;
        d=google.com; s=arc-20160816;
        b=YaVBI4khRm9DSqSxC6RTlxMi9pAZ5jp7mvg6qPq0hq7Wi8yF1D89VIOvQUl95BQ0Kh
         SqgujDa4HjAoPZ/8dQrzpPOmbY202a58uClH+w8qNKARTe3sN5OjXVEo2e1L4lJPZ0tW
         kLyG4Wr06+5wq0gzDB4nBsGoyMBLGd8U7x2bDYtDIdYEKvYh1YMVzSICwdyrWjUIsvuB
         j+n0KlWEPZCan0tIoaHp8+8+yZPYEtWYInjN4dFNVXuc9oiBiHE5tX3UAbkYwd8SuSk9
         TQ/mzXqeeycgftq0kyIOpPdxlxpDIvIoQrcqx7+RSl37JBuai1R81Sw8LUtq7NT8C5eE
         n6yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Lx97BXkY+SGrHBSm716gPOq2i+WKwSjYa+/fT00+KAc=;
        b=x4WA3qqdWkCCzpptRC5RbNf+s8XO2Hs5vo1UTCUGIZd7BWce8LQfWdvZWnCbFhaR68
         0VIeaszYjVX0aTNJhE8/TyFPUdQdajLet5wR7eqxp5Cv4YwW9oG2ANOFb6OpA+CJixGb
         LlDV9kVGIRW7q19bcX+/rvovEMMDgs20Kr7gx6A9BDN2foac4h+oWHZcg6NWK3E+4B50
         KiXDKgjKgS1XXK4k4KzmSsNLFiTL0fzRkpQqPclGr2S4sPxZGMrEVTtTIjWZxOoj7Y17
         txppCKdvzH/MHi/aamKStDcndhXi950R6SR5/LPXSOjXDs1l66x1qzH6HPqvLSZK3JpS
         3ZmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pIUGPQIJ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id q85si477961vkb.1.2017.09.19.07.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 07:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pIUGPQIJ;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id k23so1247029uaf.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Lx97BXkY+SGrHBSm716gPOq2i+WKwSjYa+/fT00+KAc=;
        b=pIUGPQIJjO3PZ0CYtfp2iA99Yr4c6owZc6ljZb73+HwdmBs+KY2eA/XLNcp1fTCSuU
         wipmYqsGogEtGEbeXXRwmJ5tYo5Orhf4j/HYqUkMf7y9yTmTcMNLXumiCEiO8dUNbwTv
         mEKLLgfRyeauObjx4d48dE9UGJ9cTLRTAmrKxgAuTZg84r9RWN5wX1Sg9L6yuInkG0yZ
         hWjjPgUM1v/bTzenmHijbjEWk/vz9wA/imQml138Gq+YnJRp2PceJEIAb1qGen+Ui8Xt
         BTMkpCfeJqK6KMJxAkmNg5WPRpi7U5aNmhDM8JaCYQm4SJHlODpHQ0BeRPU16VnxOY+K
         jiNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Lx97BXkY+SGrHBSm716gPOq2i+WKwSjYa+/fT00+KAc=;
        b=NGHzCFBpEj4DsVC2r7yEGmiWwh34s0/Md2Te5ng+nZFRH3TyWdz4aMh686IHTvKVkb
         7KgopEu5U5QVW3QwYc/IWAwd8HwyYiGkKOVpX33Y0Je7QeJz50/+MhYGAYz0OcG6jRuL
         bjJQmo9y3X9fzIa2e4FTteRSLNCSaWEpXP7dv2Q6SvQfabXgasrI/uQdCvI6Lg8vY7Pc
         JdsGf7IdgaYWhZoxAIwTc8TqpnFPHbUTUwST7lWk2hBKAuwJrPvwUdOViVV2BYya3lnX
         TVzvlAFjQ04l0kEzmZVQHWYf6nvNK01zB0MDdO3IjvVFN4E/nDoj5LTrTbg3CO1dbbDC
         fRqA==
X-Gm-Message-State: AHPjjUiepjqU8TI+2Ip84xrNKSLVgJ5//jDZxN2VUVB9yhhUVe8UcqYR
	lJqY7aYKpbZYT+10yfueKlUp4eXX0Y6m88UjftM=
X-Google-Smtp-Source: AOwi7QALakEoH0Fv5UXv1dvwutor3LNq4VjPLn1hzTMo0jaJ2V/Mt6UqCRGLyOOGmhJzPChzM9DlenfPuRKIZ4MKhqw=
X-Received: by 10.176.86.18 with SMTP id y18mr1498364uaa.1.1505832515648; Tue,
 19 Sep 2017 07:48:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Tue, 19 Sep 2017 07:48:35 -0700 (PDT)
In-Reply-To: <20170918100450.GB24451@kroah.com>
References: <1505563212-2690-1-git-send-email-aastha.gupta4104@gmail.com> <20170918100450.GB24451@kroah.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Tue, 19 Sep 2017 20:18:35 +0530
Message-ID: <CAHXiS58Lp9VaSwxGd2MG+kQmtw_--Zmir8v3z3==EzuY7F8CjA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8191u: ieee80211: prefer pr_debug() to
 printk(KERN_DEBUG, ...)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 18, 2017 at 3:34 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Sat, Sep 16, 2017 at 05:30:12PM +0530, Aastha Gupta wrote:
>> This patch replaces call to  printk with pr_debug function
>> thus addressing the following checkpatch script warning:
>>
>> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>
> As this is a network device, it should be using netdev_dbg() instead,
> right?  Or, worse case, dev_dbg(), almost no driver should ever call a
> "raw" pr_debug() call.
>
> thanks,
>
> greg k-h

I did think of replacing it with netdev_dbg() but netdev_dbg()
requires an object of netdev which is not present in the file.
Including it won't be right. Or is the parameter optional?

Aastha

