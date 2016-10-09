X-GM-THRID: 6339162656111329280
X-Received: by 10.66.66.4 with SMTP id b4mr5980324pat.34.1476030114208;
        Sun, 09 Oct 2016 09:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.48.1 with SMTP id w1ls2975715iow.4.gmail; Sun, 09 Oct 2016
 09:21:50 -0700 (PDT)
X-Received: by 10.66.152.143 with SMTP id uy15mr5935931pab.152.1476030110008;
        Sun, 09 Oct 2016 09:21:50 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id a62si1772203vke.2.2016.10.09.09.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 09:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id p80so5987386lfp.1
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 09:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZOmoMggFSKF0hLHFy7xgtX9sgHWaFe80XIkwWM/e8t0=;
        b=wc6BR6VRwp6xwGm1E5ypQpTM8hM4/0F6Ze22t+dejJypXMzsJauwxKKQtrnN8b7qGQ
         /Maxv+LZ3fEfSdE7HDDYuq3N7ft4NfB9I64LXk0hc8HTp4UU/MsnzUl1O35cTclkOQaS
         mzT2p1pnyRQH8Y4AfBC2Y9m2wCKBLfsrB48emUgX4RRKdHmuTNAqpkVwayWZykqqpSmB
         QosfMy7BDKJtZh3zuHpBGto4ulD8hAwF0NaTUV7silTXLDhHNaW0gjO7+2fV4a5aEmDi
         Qrui9iwDpE0KAXOUP8MvM7AHw098zSNAQa4unOisXNxOQq+z6aSBZWX1nugKeSK+eDCk
         TS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZOmoMggFSKF0hLHFy7xgtX9sgHWaFe80XIkwWM/e8t0=;
        b=Qp6FjMel/fXsTQyWpBej97j62q35H0PPob2vLvByi326/cOO1TgNyxRyQlI6RmvY/p
         V2xdAKVKkY0kADcUDhfzO4vUiSGDst2Gc1MNGCVPemARQTzvhZpsXGYq8a9BfhDUIKxW
         sPPKGL0kWcLr9r1xP3WRk8V6bUnwZb2XLeyr+G5/UtamiWKy8V5cPJAh0xVCt/eJ1WwH
         gaIch3LnIOykXOvXw2dBKxVcYHwOwpJHxDMpjdcIPzCMYksR1NEXw7MfQkHXJ7B7SAlr
         kEjXVg2coCNsbwS9lXPAOd0eVJFEGXyfR6xrezOSSXsYNnVeCB9/ricJUTQu9MkTHaH0
         yt0g==
X-Gm-Message-State: AA6/9RmZ25PhwwRccrbWmnDT8mnVKY+Rw8eW52B9WVj1GoGT8n7oyExoUKQ/Cve+bopH73Hi8lHYiAUfuuFcvw==
X-Received: by 10.25.196.85 with SMTP id u82mr6213013lff.125.1476030109453;
 Sun, 09 Oct 2016 09:21:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sun, 9 Oct 2016 09:21:48 -0700 (PDT)
In-Reply-To: <20161009144636.GA11833@kroah.com>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
 <20161009142656.GA27065@kroah.com> <alpine.DEB.2.10.1610091635130.3462@hadrien>
 <20161009144636.GA11833@kroah.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sun, 9 Oct 2016 21:51:48 +0530
Message-ID: <CAOH+1jFFPfROtUnStdkY_CRBkcpLXxWjTMM5iOYQKLyY6Xm=Xg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8192e: Remove ternary operator
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 9, 2016 at 8:16 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Oct 09, 2016 at 04:36:34PM +0200, Julia Lawall wrote:
>>
>>
>> On Sun, 9 Oct 2016, Greg KH wrote:
>>
>> > On Sat, Oct 08, 2016 at 11:58:17PM +0530, Bhumika Goyal wrote:
>> > > Relational and logical operators evaluate to either true or false.
>> > > Explicit conversion is not needed so remove the ternary operator.
>> > > Done using coccinelle:
>> > >
>> > > @r@
>> > > expression A,B;
>> > > symbol true,false;
>> > > binary operator b = {==,!=,&&,||,>=,<=,>,<};
>> > > @@
>> > > - (A b B) ? true : false
>> > > + A b B
>> > >
>> > > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> > > ---
>> > >  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
>> > >  drivers/staging/rtl8192e/rtllib.h         |  2 +-
>> > >  2 files changed, 5 insertions(+), 9 deletions(-)
>> > >
>> > > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> > > index dd9c0c8..8cd51a9 100644
>> > > --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> > > +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> > > @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
>> > >  #endif
>> > >   HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
>> > >                     (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
>> > > - pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
>> > > -                          true : false);
>> > > + pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>> >
>> > Ugh, I _hate_ ? : statements.
>> >
>> > Just write the thing out, is this easy to read as is?
>> >
>> > >   pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
>> > > -                             ((pPeerHTCap->ShortGI20Mhz == 1) ?
>> > > -                             true : false) : false);
>> > > +                             (pPeerHTCap->ShortGI20Mhz == 1) : false);
>> > >   pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
>> > > -                              ((pPeerHTCap->ShortGI40Mhz == 1) ?
>> > > -                              true : false) : false);
>> > > +                              (pPeerHTCap->ShortGI40Mhz == 1) : false);
>> >
>> > Is this?  Kernel code is meant to be read by humans first, and the
>> > compiler second.  None of this will be any different if you write out a
>> > if () statement.  Please just do that instead.
>>
>> Wouldn't && or || be nicer if possible?  If the == 1 are actually testing
>> booleans, it could be quite concise.
>
> Yes, maybe, but never ? : if at all possible (as function arguments it
> makes sense.)
>
Okay, I will convert all these ?: operators into if() statements.
Thanks for the feedback Julia and Greg.

Thanks,
Bhumika

> thanks,
>
> greg k-h

