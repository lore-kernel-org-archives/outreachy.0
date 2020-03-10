X-GM-THRID: 6802508842899865600
X-Received: by 2002:a1f:4d85:: with SMTP id a127mr11492018vkb.67.1583840317393;
        Tue, 10 Mar 2020 04:38:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:644e:: with SMTP id j14ls951475uap.8.gmail; Tue, 10 Mar
 2020 04:38:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuRLJpTWitWj33KBdHUsruLuI+HrdZbNe8LDusyK0PDyocdnCUBtoRs/AxP9sGNOXpvMeuB
X-Received: by 2002:ab0:2448:: with SMTP id g8mr583255uan.108.1583840316130;
        Tue, 10 Mar 2020 04:38:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583840316; cv=none;
        d=google.com; s=arc-20160816;
        b=B1HuNcN5vwl18APJW1ic3m8chLEGjoQJQrstNDpfI/XU6gakPLavwqhjWWV2B3SOp2
         Rr6Gnu/YZSqle105sEqGCYArLYc4/Ve0JrbntG/LqRiZ2FsJEr8midoPr27YDfnk/SZE
         B7ET3JlSwUe94PYqsufdSmMp1KSEIYDlu8kxHRTiKqTvWQZp8t2DdRb4yjLC2gCKZG3m
         qmoSoHbKpPkjvDOUZG4/CRLNwbdNNY5sp98GUFcP8Jwk2KA1Q3U3ZqGTGmH0BGwJo2g5
         UHDpalUl+y5yBf+KYqA5GeiI6jn5AkI/Bn24Sb+U4yrsv+tRdF5Yr78hijlbq6n2MExd
         nR7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=LgTXUwzi5wyWjuZ5nVpVMeFZSlUnlSxkgFq0om7ucRE=;
        b=pS4+/+qGFQ7rudtAXDUWoj5tQt3M2X8zY1VpsCivNPM1ik13mj+1LSftCnHFVosqS/
         +MuDPzDECRo1s7NMp/cTfUR2GUKvxD27qLadHcveTHszRLmuFzsXV6a7plxQ6zM/gSuJ
         Oi9J/RpXHKTEWdol+Nk3f/S+zOWTItqY9of9Thnbb+mjBcrE0HlEcmj++ZbNKQOxJnwR
         ZrLpGRwlxbqVL+US0oWGh1GuegESBawe8ctkQE7jXTSyhizb4E5X6/V3zEFPCOeOdHbF
         cDO5ZPVE309d+KmTRRK3qRXTa86+21z+zChHNLqEZfVLbP4LsM/L/ZGOLp9JOFJr0FoP
         Klog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-06.prod.phx3.secureserver.net (p3plsmtpa06-06.prod.phx3.secureserver.net. [173.201.192.107])
        by gmr-mx.google.com with ESMTPS id r6si620831vkr.0.2020.03.10.04.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 04:38:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) client-ip=173.201.192.107;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f181.google.com ([209.85.208.181])
	by :SMTPAUTH: with ESMTPSA
	id BdDVjKPbFFhHCBdDWjXolG; Tue, 10 Mar 2020 04:38:34 -0700
X-CMAE-Analysis: v=2.3 cv=PauBeRpd c=1 sm=1 tr=0
 a=yddmuxop3eaF2vhkAzXwyw==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=SS2py6AdgQ4A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8
 a=Wm2QblFjYE37K_-gV7gA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lj1-f181.google.com with SMTP id u12so9508985ljo.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 04:38:34 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3BvXG1mdsyP4peBmu5l7qqxbvilV5HmdpbkIXuA3mDU7YE7TH0
	qbwANmNjPXQ0VuSrrCdnuOFLfXeNLWlYDVcVPE4=
X-Received: by 2002:a2e:920d:: with SMTP id k13mr11053195ljg.13.1583840313346;
 Tue, 10 Mar 2020 04:38:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200310092819.GA20959@deeUbuntu> <20200310094630.GA2514761@kroah.com>
 <02081ae5-284b-401d-85df-dc1e6911e1f1@googlegroups.com>
In-Reply-To: <02081ae5-284b-401d-85df-dc1e6911e1f1@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 10 Mar 2020 17:08:21 +0530
X-Gmail-Original-Message-ID: <CAK-LDbL=MhAPrE76N4kXoEDmOan53K1Vi0DP1507zZNc7hZsmg@mail.gmail.com>
Message-ID: <CAK-LDbL=MhAPrE76N4kXoEDmOan53K1Vi0DP1507zZNc7hZsmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] wilc1000 : rearrange line
 exceeding 80 characters
To: Deepak Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfONpyDjM65Koqj1DPGFJOGCuaGfdn9FvbSt+2lRlIrrucWZRT8ifG/9DjWm4ANgWfrF9X6gWETpVGSXFrBsaIbtg63qL+nL4asJHvKyUpWac7veYeWEo
 yYyygvGmPpnypEWJx+szkCfco9NU1R7/j9ThXj39Un5vPplcZi00GlHgSR2Sp4kw0kCZwAB1tsRQHWyDchn0sDjNOcchCSvfAeM=

On Tue, Mar 10, 2020 at 4:34 PM Deepak Varma <mh12gx2825@gmail.com> wrote:
>
> Thank you Greg. What you commented makes sense.

Hi Deepak,

Please don't top-post. You can read 'Responding to emails'
a section in the kernel first patch tutorial to understand the
difference between top-posting and responding inline.

> Deepak.
>
> On Tuesday, 10 March 2020 15:16:35 UTC+5:30, gregkh wrote:
>>
>> On Tue, Mar 10, 2020 at 02:58:24PM +0530, Deepak R Varma wrote:
>> > A long if condition exceeding 80 characters that makes evaluation
>> > appear confusing. Rearranging the condition makes it easier to understand.
>> >
>> > Signed-off-by: Deepak R Varma <mh12g...@gmail.com>
>> > ---
>> >  drivers/staging/wilc1000/netdev.c | 6 ++++--
>> >  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> You forgot "staging:" in your subject line.
>>
>> >
>> > diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
>> > index 045f5cdfdca0..d7a632c92a76 100644
>> > --- a/drivers/staging/wilc1000/netdev.c
>> > +++ b/drivers/staging/wilc1000/netdev.c
>> > @@ -802,8 +802,10 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
>> >                  u16 type = le16_to_cpup((__le16 *)buff);
>> >
>> >                  if (vif->priv.p2p_listen_state &&
>> > -                    ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
>> > -                     (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)))
>> > +                    ((type == vif->frame_reg[0].type &&
>> > +                        vif->frame_reg[0].reg) ||
>> > +                     (type == vif->frame_reg[1].type &&
>> > +                        vif->frame_reg[1].reg)))
>>
>> The original code is really easier to follow than your change, so I
>> would just leave it as-is please.
>>
>> thanks,
>>
>> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/02081ae5-284b-401d-85df-dc1e6911e1f1%40googlegroups.com.

