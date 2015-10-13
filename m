X-GM-THRID: 6205270918308036608
X-Received: by 10.112.151.9 with SMTP id um9mr18297lbb.19.1444779913475;
        Tue, 13 Oct 2015 16:45:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.231 with SMTP id fb7ls1192617wid.38.canary; Tue, 13 Oct
 2015 16:45:13 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr25847wjd.4.1444779913051;
        Tue, 13 Oct 2015 16:45:13 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id m4si232080wib.0.2015.10.13.16.45.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:45:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so209003548wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 16:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8CyROyEcSPAwjgSJKOJeY7YhDk4k0qkJG+jDDLbRGA0=;
        b=yFh/2wXBKKBIT00KZbU1osFWPLgv2Dtwhzk40BHnR/0YwpjxZNR/FCoOB+XbxDGgj8
         dtVjJCVZEi29Zoy5oprv6TktRmIZD9N5DgvQIrxvAKmf+bKoc6Mg62uARXsrxWerts0s
         NQlYFbjKvSgwp/ceD2FD3tlzFeMb/F3ynikiuavxdD8BfVFzol0T9iRG5U7lMgWvPrRI
         jlQiohAa7/gTkk6PwYQ1Zlk7p1ffWz5YIvc+2NPQ5zxeIZZHnFlr11rDYQLEVH/QA5f0
         Xw9GaChduXXxeAH3IivZa0XUM0oM02skMdESMdj87kvSBWSkwEopGwZ/XB7pKsncDRlq
         eJXw==
MIME-Version: 1.0
X-Received: by 10.180.206.52 with SMTP id ll20mr594718wic.48.1444779912907;
 Tue, 13 Oct 2015 16:45:12 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 16:45:12 -0700 (PDT)
In-Reply-To: <20151013233902.GA9458@kroah.com>
References: <20151013230010.GA16506@ubuntu>
	<20151013231421.GA8240@kroah.com>
	<CAKHNQQHbg8ge_m3jjpcLU+x3EQrpzqCQviqM=E_avMYnRNJDUQ@mail.gmail.com>
	<20151013233902.GA9458@kroah.com>
Date: Wed, 14 Oct 2015 05:15:12 +0530
Message-ID: <CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 5:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 14, 2015 at 04:54:45AM +0530, Shivani Bhardwaj wrote:
>> On Wed, Oct 14, 2015 at 4:44 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
>> >> Change the order of statements and remove extra code.
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >>  drivers/staging/rts5208/sd.c | 11 ++++-------
>> >>  1 file changed, 4 insertions(+), 7 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
>> >> index d6c4982..4269be9 100644
>> >> --- a/drivers/staging/rts5208/sd.c
>> >> +++ b/drivers/staging/rts5208/sd.c
>> >> @@ -2707,17 +2707,14 @@ RTY_SD_RST:
>> >>               return STATUS_FAIL;
>> >>       }
>> >>
>> >> +     CLR_SD_HCXC(sd_card);
>> >> +
>> >>       if (hi_cap_flow) {
>> >>               if (rsp[1] & 0x40)
>> >>                       SET_SD_HCXC(sd_card);
>> >> -             else
>> >> -                     CLR_SD_HCXC(sd_card);
>> >> -
>> >> -             support_1v8 = false;
>> >> -     } else {
>> >> -             CLR_SD_HCXC(sd_card);
>> >> -             support_1v8 = false;
>> >>       }
>> >> +
>> >> +     support_1v8 = false;
>> >>       dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
>> >>
>> >>       if (support_1v8) {
>> >
>> > Are you sure you didn't change the logic of what is happening here?
>> >
>> > Why are you making this change?  What prompted it?
>> >
>> > thanks,
>> >
>> > greg k-h
>>
>> Logic remains fine, I think. support_1v8 statement was common to if
>> and else so it is taken out. Also, it can be noted that programmer
>> wants to set sd_card value only if hi_cap_flow is not null and (rsp[1]
>> & 0x40) is true. For rest of the cases, programmer wants to clear the
>> sd_card.
>> I think I'm sure about the changes made.
>
> But now you always call CLR_SD_HCXC() where before there was one code
> path that did not make that call.  Are you sure it is safe to call
> CLR_SD_HCXC() before SET_SD_HCXC()?
>
> thanks,
>
> greg k-h

I don't think it should be a problem because that is what we
ultimately want in our code - to clear the memory card subject to
constraints that one of the two if conditions is wrong. Now, if both
the if statements, that is,
if (hi_cap_flow) and if (rsp[1] & 0x40)

turn out to be true, they set the cleared sd_card again.

That is what we wanted. If both the if statements are true - set the
sd_card else clear it up. :)

