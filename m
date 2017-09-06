X-GM-THRID: 6462776611954491392
X-Received: by 10.36.17.194 with SMTP id 185mr816224itf.32.1504733257571;
        Wed, 06 Sep 2017 14:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.213 with SMTP id b204ls53190ioa.37.gmail; Wed, 06 Sep
 2017 14:27:36 -0700 (PDT)
X-Received: by 10.31.166.215 with SMTP id p206mr311627vke.54.1504733256746;
        Wed, 06 Sep 2017 14:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504733256; cv=none;
        d=google.com; s=arc-20160816;
        b=CEMK7smpxZxBCOOFjvrXXx5J7DgLzX5MGTcsQyai40nrZkmOwV178oUIqO1RXM9oze
         db3Fdzt6enpGnxzHVs1VaQ/8iB/GN85C3IWZ99U4dJxuucfv1cGmOdO7xrriGTnZeVkr
         twb4KqlNq4oSFdR1zu0Tah2+1PDhs/3QTzr7V54k3KN+bi2Vj+6mXoSvGVv2U8IznUZv
         c9xM4RRx3ZVRbB3y6+VihLpaOXHm2qqejtnxgKuBUilTFBaIH6Pshcc3KyuWtbjf2s+D
         0CAn05qQNhGuL7ey/B+CM1yIWewBlg0JOy/4cLxj32UHTt3CH2oq1o63JdQktPrj6zXd
         XcQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=7/K7ihoxnq2ZqQwiks6lnohC7+kCTwBKvFtaBcU8AYw=;
        b=nFCu1apm0yZrhVm1rjMeEM6D0qTIPzitg4V2nsQ285VZMVIBWnomxwzEJjVxCUWGhM
         Yb1lyH+Mx5jySXHuCKnkUObKKAwJctTtA5geSGVkPTV2NY0qh6vCyeYQ9+bHSf1boahz
         F6u4mfWH2THxTZtjePxLhQLIAcy6anqpaE/A9LfOPmg7uVamTkG6rM68WweeEBTV6bFq
         V4WI0E+LtrG4r3I/CDh478MIHK5A/96dPQq9P4yfS9CwdX9oe+JWS0/uDpofbl0Prv44
         KEF774lHp94cAkgQiib0CkpSEFT28M/GMMTVYVYL4xSQILgXt63qpAgI62O2LN2JhkI1
         8T0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dm8ScNl1;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id w189si82908ywd.9.2017.09.06.14.27.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dm8ScNl1;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id n64so4538385qki.4
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 14:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7/K7ihoxnq2ZqQwiks6lnohC7+kCTwBKvFtaBcU8AYw=;
        b=Dm8ScNl1HbPaza+JEEkhEskzE/mXjaoWNtmIkCU8lthSDmZf8wALoY6wZjno/9fcrs
         rHvJlxGHI/4Jf2UHSCZebLmqMCmHkKWeNtqoOH/yIgFK3rvNTymEH0VHTpSDcTHasMnp
         5heHcUZV02VBk/coHGeyxQXrZN6OYttsCsKPiNS68jTttDk+FnShLSK57gOZwOzI14UB
         YCHVCr6MqnRsO5yD7q5ZVTqTpAYBxfVbrtTNpYhnUUc3anXoaFNGnPBZIfJp5An06W1h
         w2JB+OUc5tZ9iTVqoISKfa63gVIkjrQR1RHNhYtSUVncqkDWFD2BXOkJEG6/VSJwIqGz
         cenQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7/K7ihoxnq2ZqQwiks6lnohC7+kCTwBKvFtaBcU8AYw=;
        b=gFxalsdrlGUnWTYmbc14BIXn9q5XfqIMu6qeN+h5+8vjV5S6y4bkOTmvGKrnRqty/K
         oTI8qGOStp0Aq77uBKrkQmKJIzqDmc5CcHF+sYBLcl+bezfZLD5kYtEVPB3Bw8O4XyIs
         r6n1NujNAD6+mSaQf5LKLi4FBkhf+FuvcsDrFL7esf8OwL/SBFUdJrTJC+FV9cAexf8m
         fqTSxlN2ZudMM1DhK7BrG32temss67aBpcS8oG1MDlH4gGk4dBPcJ3WoRhF3dOM6hTSR
         zRS0RF134wyVrD9qa1nVy59LMlf4ykGBj0fulX6dqDti+qwNImLa9zVimflcR45qAl/g
         R6dw==
X-Gm-Message-State: AHPjjUjVLa4FRkK5waUS0TltDCUMr4HabJ7BtpoK14VfVp5+ibwH4QEF
	b7K9HeGJs4HMVZ/WgEzoi33+Zz9CEw==
X-Google-Smtp-Source: AOwi7QAgWN8BaLQR2rH7OgXOvaagNtSqLVuyoD8pO5bFMUKBuFeS77XQx84xjDC1YtvuHKU47vxLUUbeitm8OYSnaVs=
X-Received: by 10.55.158.6 with SMTP id h6mr785016qke.32.1504733256198; Wed,
 06 Sep 2017 14:27:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Wed, 6 Sep 2017 14:27:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709062325070.2984@hadrien>
References: <1504732426-9765-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709062316450.2984@hadrien> <CAB3L5owYErPk2hh3OnE68eHCyrbgqUY0cHj3TrU6DUL44ZbPgQ@mail.gmail.com>
 <alpine.DEB.2.20.1709062325070.2984@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Thu, 7 Sep 2017 02:57:35 +0530
Message-ID: <CAB3L5ozix75XLL6nPmV8jQaoz1xa6RuBKXrBBY=mwVmRd_7hOw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: ccree: ssi_cipher.c:
 Remove unused variable.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:56 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 7 Sep 2017, Srishti Sharma wrote:
>
>> On Thu, Sep 7, 2017 at 2:47 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 7 Sep 2017, Srishti Sharma wrote:
>> >
>> >> Remove local variable inflight_counter ,as it is never used.
>> >
>> > "counter ,as" -> "counter, as"
>> >
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >> ---
>> >> Changes in v3:
>> >>  - There was no longer a need to make the comment more comprehensible as
>> >>    I have deleted the variable associated with it because it is unused .
>> >>  drivers/staging/ccree/ssi_cipher.c | 5 +----
>> >>  1 file changed, 1 insertion(+), 4 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
>> >> index fec2faa..609ebe4 100644
>> >> --- a/drivers/staging/ccree/ssi_cipher.c
>> >> +++ b/drivers/staging/ccree/ssi_cipher.c
>> >> @@ -702,10 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
>> >>
>> >>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>> >>
>> >> -     /*
>> >> -      * Save inflight_counter in a local variable.
>> >> -      */
>> >> -     inflight_counter =  ctx_p->drvdata->inflight_counter;
>> >> +
>> >
>> > This is a patch on your previous patch.  It should be a patch on the
>> > original code.  Also, don't add a new blank line.  Just remove the line
>> > completely.
>>
>>   so , when I resend it should I version it as v3 or send as a new
>> patch as it is now fixing a different problem ?
>
> v3 (or maybe now v4?) would be fine.  It's still the same code that is
> under consideration.  Then it will be clear that he previosu patches are
> not needed.

 Okay , Thanks !
 Regards,
 Srishti
>
> julia
>
>>  Regards,
>>  Srishti
>> >
>> > julia
>> >
>> >>       /*Decrease the inflight counter*/
>> >>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
>> >>               ctx_p->drvdata->inflight_counter--;
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504732426-9765-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

