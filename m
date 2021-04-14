X-GM-THRID: 6950980105413853184
X-Received: by 2002:a19:614f:: with SMTP id m15mr22021016lfk.37.1618424701970;
        Wed, 14 Apr 2021 11:25:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls2869805lfu.2.gmail; Wed, 14
 Apr 2021 11:25:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2ZOtXFHGoHCUL8s5NGZL3kof1O5pW9A0Gc9js5SMbEH+4OA1BM+N5eek8XnJ633cFevXv
X-Received: by 2002:a19:f50d:: with SMTP id j13mr955096lfb.370.1618424700223;
        Wed, 14 Apr 2021 11:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618424700; cv=none;
        d=google.com; s=arc-20160816;
        b=dJqEpWWyXYLvd2/5Kd9xCCddI/tkxU378sCun0jT/J7fqdWP4VOBezKD5gT9PSsTIm
         GF1MMx7P9RqpQGOsOIChmJSagiclBLz4d6Q3A8Gu+NCvBW4Kv3CDMeJxz+UbxXzLwoOk
         jAIK9OZz1m8OOEkxy+l3iNuysbcZ49Qhj+4aOZngh5ios+AlFyDKF1oTOoPXz24RkHvO
         dDciAfaQjPrzCvT8aVCpXrDpSH0XIaSTLrACWqM8xpEkFZWKzNaNSeFdjPuJY2cyj6SI
         rIl6elWL/XgcNBfIOME3rs2BeBVatKgLGsBWMbjutNm9688doGz7lSNPXFkaGPkvnYhX
         wjrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FJgpVpnm59KDS8nnKfjN27Nq3KwrEWqv8OFg6Lc4YJw=;
        b=PjONC8rJqIvntDOcg1SQwE3V5hRky0zp3Bb1kdz8u89mEzTbN3Xk7ETbCwdk/2ztgG
         Ri/zTj7obprOl65lyYRYWYpuw8Yo7O4/30h9Ds/EVkqdcV4C5o302jWgAGWOFFCclpxM
         ofnmOdx9rRqDtECnDyjgDvA7JOaine/GFr9LaMMroe9RxcMmkwGPNTpaal4vXGnRY6aW
         vHGOLPmqqs17iw/nTbZlFk1fX9WVy9och6P2T9tj9IgfflpUIKKJJdRgZbSfH44KRcF8
         Z/1709wLEbIhEXY9Udr0at0Fbxe7srLD89CvC6JcR5JY681UMukPnSWck3oOo6SQ3u6r
         STVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZgcjIvGg;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id c17si8617ljn.7.2021.04.14.11.25.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 11:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZgcjIvGg;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id e7so24820639edu.10
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 11:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FJgpVpnm59KDS8nnKfjN27Nq3KwrEWqv8OFg6Lc4YJw=;
        b=ZgcjIvGgXnZrjotUEbeEHSlhNMutTh2BNSvbuTopkKY8r7G3Yc2o5Aka5ZSzThp/Ic
         x+KYKBnWmRQgpkx6N3PTTF+5fqK7UEpyUuFFQkRgHUx22cZZ8DdcnpeR5npwtJm0f8zo
         9lBMt7QXIIjBL0PeTVxF2t9Xmz3ezKEToR4goabJzF7WoLQjC+t3CDTu6z6J7/LIxrVe
         d/S386LaiOGR2lTV9mSe9AKkqXoonXf6V5KtdLEQmAd4NdNP6umneNMyhqdaNWYY+i7h
         GGBSMpL7fVh54Eby4hfzf0qbfZD98fzLLzsu6IgfpDIPhMK5TaDlexwJdD69mq68yxkW
         rSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FJgpVpnm59KDS8nnKfjN27Nq3KwrEWqv8OFg6Lc4YJw=;
        b=r0ItJeCC7U/3u2IpMWTM2m+cKcSrUchuGhTcnUhMmjY37oCtvCGp+zNo7IEKBCrKNF
         5TA/4ESjlhRr+B9F8polIdjBCByNX6i7LYHE+RYQJ7rIQJyodmRUgx8D0ugrfwBePivT
         stKmYkeRs/Fu21KwwCcKo/Y5NTzSq72Qap+yo075vtjD8rZSBCrs5Gc+Ch/7s2QjD8Ko
         706LUTfQUYmChISk7tcRZWJHY5euLpCBfcnuY3nQqvG3yKsDq1Nahmbar1rJyzHc8tvg
         u6ce8jY5Nv51cJHG0yC1dUQTw5wAvRv71foEc/FBHvz7x/KQg5Q73qo/a79zlujiT1QW
         avWA==
X-Gm-Message-State: AOAM530mWxiQXPRB3oh+9+r0iHtWGSsRAo66WZga9yM7b9bC0PB9lmdQ
	1M1jxutmOKcAkvm8a3j1Rgg=
X-Received: by 2002:a50:c004:: with SMTP id r4mr253319edb.192.1618424699994;
        Wed, 14 Apr 2021 11:24:59 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id ws15sm186274ejb.38.2021.04.14.11.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 11:24:59 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 20:24:58 +0200
Message-ID: <3820176.uhjs84E3K9@linux.local>
In-Reply-To: <7427098.3VjF5iJQtU@linux.local>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com> <YHcs70RdhaBBZv0i@kroah.com> <7427098.3VjF5iJQtU@linux.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 14, 2021 8:05:59 PM CEST Fabio M. De Francesco wrote:
> On Wednesday, April 14, 2021 7:57:03 PM CEST Greg Kroah-Hartman wrote:
> > On Wed, Apr 14, 2021 at 08:48:09PM +0300, Dan Carpenter wrote:
> > > On Wed, Apr 14, 2021 at 07:00:41PM +0200, Greg Kroah-Hartman wrote:
> > > > On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco
> 
> wrote:
> > > > > Removed useless led_blink_hdl() prototype and definition. In
> > > > > wlancmds[]
> > > > > the slot #60 is now set to NULL using the macro
> > > > > GEN_MLME_EXT_HANDLER. This change has not unwanted side effects
> > > > > because the code in rtw_cmd.c checks if the function pointer is
> > > > > valid before using it.
> > > > > 
> > > > > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > > > > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > ---
> > > > > 
> > > > > Changes since v1: Corrected a bad solution to this issue that
> > > > > made
> > > > > use of an unnecessary dummy function.
> > > > > 
> > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
> > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > >  3 files changed, 1 insertion(+), 11 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > 0297fbad7bce..f82dbd4f4c3d 100644
> > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
> > > > > 
> > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > > > >  	set_chplan_hdl) /*59*/> > >
> > > > > 
> > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > > > > led_blink_hdl) /*60*/ +	GEN_MLME_EXT_HANDLER(0, NULL) /
*60*/
> > > > 
> > > > Better, but you really do not need to keep this here, right? 
> > > > Remove
> > > > the
> > > > "led blink command" entirely, you didn't do that here.
> > > 
> > > No, this is right.  We have to put a NULL function pointer in the
> > > array
> > > or the indexing will be off.  But Fabio is correct that the struct
> > > type should be removed.
> > 
> > The indexing can be off, just remove the other place where the
> > "command"
> > is in the index and all is good as rebuilding will fix it.  These are
> > not external "values" we have to keep stable.
> > 
> > This has been done for other drivers exactly like this, there are loads
> > of "odd" commands in there that should not be.
> > 
> > thanks,
> > 
> > greg k-h
> 
> I'm not sure if this task is so close related to deserve a v3 or if I
> should make a new v1 patch with a different "Subject".
> 
> Thanks,
> 
> Fabio
I'll make a v3 series, submitting this patch again (as 1/2) and adding the 
above-mentioned changes in another one (as 2/2).

Fabio



