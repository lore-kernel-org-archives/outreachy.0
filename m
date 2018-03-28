X-GM-THRID: 6536479698699943936
X-Received: by 10.28.249.20 with SMTP id x20mr1868497wmh.5.1522242119724;
        Wed, 28 Mar 2018 06:01:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.130.166 with SMTP id 35ls1121628wrc.14.gmail; Wed, 28 Mar
 2018 06:01:58 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+Xize5n3CBcNew489X80rt03dgjkV4EfDPHNs05DctpqdTf9lk8BOrRj0zhb3Soks4ifYH
X-Received: by 10.223.220.82 with SMTP id m18mr576983wrj.1.1522242118427;
        Wed, 28 Mar 2018 06:01:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522242118; cv=none;
        d=google.com; s=arc-20160816;
        b=DxgwJAhv7w2KStQgBNYPvvl8KKqi1YUmjXgpeXKP3+86Ict4DChhrFEVFl45z+MlfZ
         DKiw2Rv0uorWTdraDs92uKU95ZBtMBfmuGRe0s7IUU4iex+xTlJ8vY++kAxOP6WpXy24
         Ul1h/8KzWDrv9VkBwKQbOGxeI9mHKv3MILxPbXWSCGp1DbltMBovsIzLvfGDiF7of00y
         wlR413YXIOq99zPWXDJ5CKn3WHp/f0yci+iaKf8D09+9EQ0V99SceDZgZwsMGR4cqIx7
         z+1eHBDJMNyZIX647pO9zXq/x2D6B1sZTaCc1qtv+colLUBrN0SAFnPSVC4YKwCD8kOq
         Q90g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=x0b6MzBmxVI6n5dnVHndCixD2pxdJwfCR9Ltfq1+kVg=;
        b=hwMALQ2tPZBNSVxy5xZXbK3l82x6IIeA5rzNN7PLzi3BbygnT4uF8466nXASe0S6CT
         GhRZi3sm8TjgLb/kJ23Q64Blj4QQIJOOQ1XAtGbCo63dPCmS2YH3DtdXMAaObmISlVLh
         Ttvp31wKeLfLIKpzCx4ocOpBusK+2sb0YRk87KvYK5HJR+ZdHezpZnTWkfRSaNB6Gej3
         Rb7kCDPrRge+qh2yPzYjg7FdkSujLRH7+cRf153vSIohiU9vq++taY6xi/1ynkAsUsLA
         xLky+6BlX814O0hV1VmfhwzJHnj426okIzVgpkDDhTLZAbaWSMY9uCRxDDkSN/FWSOis
         so/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j23si159718wmh.2.2018.03.28.06.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 06:01:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,371,1517871600"; 
   d="scan'208";a="260144986"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2018 15:01:57 +0200
Date: Wed, 28 Mar 2018 15:01:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 5/5] staging: vt6655: Remove
 else after return statement
In-Reply-To: <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803281501180.4724@hadrien>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <20180328115738.GA2145@kroah.com> <CAC4++KDDm5v+eSZynrWC2CpgWD-_CaN2xRE+-h0x3iyB99WPVQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Mar 2018, Nishka Dasgupta wrote:

> On Wed, Mar 28, 2018 at 5:27 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
> >> Remove else after return statement. Issue found with checkpatch.
> >>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >> Changes in v3:
> >>  - None.
> >>
> >>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
> >>  1 file changed, 18 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> >> index 9c4a532..89adee4 100644
> >> --- a/drivers/staging/vt6655/rxtx.c
> >> +++ b/drivers/staging/vt6655/rxtx.c
> >> @@ -568,28 +568,27 @@ s_uFillDataHead(
> >>                                                                               wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> >>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> >>                       return buf->duration;
> >> -             } else {
> >> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >> -                     /* Get SignalField, ServiceField & Length */
> >> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> >> -                                       byPktType, &buf->ab);
> >> -
> >> -                     if (is_pspoll) {
> >> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> >> +             }
> >> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
> >
> > NEVER add a build warning with a patch.  That's a huge sign you did not
> > do it correctly :(
> >
> > Because of that, I can not take this change, sorry.  Please fix it up
> > and resend.
> >
> Which build warning is in this patch? (I apologise for adding it, and
> will fix it when I can locate the warning.)

In the Linux kernel, variables have to be declared at the top of a { }.

julia

>
> Also, should I resend the entire patch series (when I fix this) as
> suggested on the website? Considering that the rest of the patchset
> has been added to staging-testing?
>
> Thanking you,
> Nishka Dasgupta
>
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKDDm5v%2BeSZynrWC2CpgWD-_CaN2xRE%2B-h0x3iyB99WPVQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

