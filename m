X-GM-THRID: 6536479698699943936
X-Received: by 10.101.67.10 with SMTP id j10mr12968052pgq.168.1522241628906;
        Wed, 28 Mar 2018 05:53:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.6.76 with SMTP id 73ls829238pgg.13.gmail; Wed, 28 Mar 2018
 05:53:47 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsLJpyEWO5/W8gCi8AAAhNS9sq8teXYPQQJ5uTKXH5xYZStn80ULz5zpwFGyAdcmWJMaPdj
X-Received: by 10.101.64.131 with SMTP id t3mr13906601pgp.43.1522241627423;
        Wed, 28 Mar 2018 05:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522241627; cv=none;
        d=google.com; s=arc-20160816;
        b=EsyTlkkighwMynCx3pz1VFO0Y25Zhugy5BLMqXqr/amVdWGtn8NQuVzHglwGxnMVm8
         j8UUZPwHgzWqpusFBGJm8thPP6zylnNfrb5znB3HCrPdM7D3bBj+OD/UlpnSt3VrMvkH
         q9JWKYVLAjH0Kmypa+Vq7BedsfUnOQiM0IvgVaAFhTCwLwnWUVETMbMS3vigA3/mzln6
         Oite/iVuJtUgEMGdbGNZb5XQwXoeojXlB5IZExsKEifLTh3ASBsbqerwKTFKiU7kXDaF
         0e1MgPpzdNH9+6AEw8XSDYdHxr5nD1LrDaISfINtbRA4bQlgqRM1QrATEfPnxDWikg4/
         zsdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=SzorCqL66I+2YxLgPlXnmwwFzcYG6oYORKYpxrmdvSw=;
        b=q38EKVP9P3V4lWsPRR6gXGaXLUpHVcUHePiM3QdHDtg+opMuTSCFbrWDAI7ms7faYU
         qSngN/HMqJjKqzdMprBzVSKdt/KD8b3DuK7hMInrI2FdomVKZFHDZ7AtnJTqH/IBQOiZ
         fHbE7E0/MCvwPb/xFYgTqpoR2UVOzk8kJX4UX6zzXU6eswVoh1Tkka6xeofzytwvNIGC
         Dev1dLBiB6HPaY8z3fP1NxGIWuYYULZH/+Ac6YVe94K0WFgiWWESqVlBCOrKX8a/IS0S
         167cIje6F0Z+AfqGgemQNcEkP8ez6Fy/7Hy0f5yJPQVlskuvSrwIAZBm4OP5FoBux6k6
         NLZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=TaGKgl2U;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id k1si231108pgt.1.2018.03.28.05.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 05:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=TaGKgl2U;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x244.google.com with SMTP id z143-v6so19416748itc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 05:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=SzorCqL66I+2YxLgPlXnmwwFzcYG6oYORKYpxrmdvSw=;
        b=TaGKgl2U3RkfMPc1PkwRbDqBrU0nfDxvyQJUJ4cu6cIJzJdNfPXC+gbTvO3A8ooPu8
         kOO4GH/gDro3CxXeeDlSRN94/IgYSscdReq+GoFPjo829arHjah/wkCngyDTeKlZ/rzy
         i2J65yQ/hVdWGUpv0q9QQCkOnbjFYD7MZ22YU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=SzorCqL66I+2YxLgPlXnmwwFzcYG6oYORKYpxrmdvSw=;
        b=UBBZKxhoEPFMQorROMlguAXI07u4r4YsyfgtxMXb/Q9dE02ZAfe5dylJWlCZj5R9Nv
         q3R/FOnEWIPc4/zXZmXv0jm2ZfPFQaSree7mWaTof693n5BWWu0zkxikA46i6mxfhpnf
         E2Xh1GzcbcnPPj+Yj51/ZCxc+fqxyzbXh3u37mySr0ho3oQQdXDaw9qGETSM3r6S1p/o
         L04Mdmv7LRnH3VSzcvzgJBYHUa79gRNLoNlYSltEnvnbofP2k94c/bAV2+VlfpPSmsWY
         4chfsfHNi2iPqhdpH+6kIO2juaXGbj4STOn3it2s9ztMAY3ymxilFSYLT5ZeEz9VwRBF
         Za1A==
X-Gm-Message-State: AElRT7H8/rt06q2vGGLghCGPhueqdMG2uvB3CZnQjpAb6TAENkiaNnT/
	Vs32OMoIvyFqCi+Yae22ogWZSCgA2qpHBW9JZl8m5w==
X-Received: by 2002:a24:7a15:: with SMTP id a21-v6mr3249814itc.65.1522241626606;
 Wed, 28 Mar 2018 05:53:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.204.130 with HTTP; Wed, 28 Mar 2018 05:53:46 -0700 (PDT)
In-Reply-To: <20180328115738.GA2145@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <20180328115738.GA2145@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Wed, 28 Mar 2018 18:23:46 +0530
Message-ID: <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] staging: vt6655: Remove else after return statement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: forest@alittletooquiet.net, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
>> Remove else after return statement. Issue found with checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>> Changes in v3:
>>  - None.
>>
>>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
>>  1 file changed, 18 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> index 9c4a532..89adee4 100644
>> --- a/drivers/staging/vt6655/rxtx.c
>> +++ b/drivers/staging/vt6655/rxtx.c
>> @@ -568,28 +568,27 @@ s_uFillDataHead(
>>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>>                       return buf->duration;
>> -             } else {
>> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> -                     /* Get SignalField, ServiceField & Length */
>> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
>> -                                       byPktType, &buf->ab);
>> -
>> -                     if (is_pspoll) {
>> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>> +             }
>> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
>
> NEVER add a build warning with a patch.  That's a huge sign you did not
> do it correctly :(
>
> Because of that, I can not take this change, sorry.  Please fix it up
> and resend.
>
Which build warning is in this patch? (I apologise for adding it, and
will fix it when I can locate the warning.)

Also, should I resend the entire patch series (when I fix this) as
suggested on the website? Considering that the rest of the patchset
has been added to staging-testing?

Thanking you,
Nishka Dasgupta

> thanks,
>
> greg k-h

