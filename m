X-GM-THRID: 6205270918308036608
X-Received: by 10.194.118.65 with SMTP id kk1mr555158wjb.5.1444817770392;
        Wed, 14 Oct 2015 03:16:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.147.66 with SMTP id v63ls22951lfd.22.gmail; Wed, 14 Oct
 2015 03:16:09 -0700 (PDT)
X-Received: by 10.112.54.197 with SMTP id l5mr553732lbp.21.1444817769800;
        Wed, 14 Oct 2015 03:16:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id h2si898056wiy.0.2015.10.14.03.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id ge5so228989320wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 03:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Lr2qy/82vqgXAxT9Dl9BSy/p5278qcQb9NZIS+SzsNc=;
        b=A3tBrPYo1uZvI2c82eFV++UlxMwid5bZ9zv6Ze+BUwARJ1/rchGePDvWZqi9D4B+cd
         cjzU7VtvRq+jrhNHJSB/60I5VdJDfl5908n6ayL5Q+n9OA8M2BOb2JKR0Y8v5r27ewD9
         PgDkZ3DCqpZmrPveYmNrRqJHB+3DlO4kcyJZKDIAHN0SG42Czq8DYhXnD6ssj3OeTiYD
         B2reXPH0xxjWk3EPFLOdWRdujgepGsSkStQkiOM8ay90bwLWx0uAgpo3ICtmlQF3TxIh
         DDfJC5A3G620WyftQf22sT6JEwGJJBUbrzA4xCMCMGsi8SUt0LuY8zDXC40CKE49zOqF
         XipA==
MIME-Version: 1.0
X-Received: by 10.180.189.102 with SMTP id gh6mr24625563wic.95.1444817769675;
 Wed, 14 Oct 2015 03:16:09 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 03:16:09 -0700 (PDT)
In-Reply-To: <6287823.a8MvGuEn0R@wuerfel>
References: <20151013230010.GA16506@ubuntu>
	<20151013233902.GA9458@kroah.com>
	<CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
	<6287823.a8MvGuEn0R@wuerfel>
Date: Wed, 14 Oct 2015 15:46:09 +0530
Message-ID: <CAKHNQQG9oEj_d1QEPrxPrG+nevXHM0SYn=oxO8_Gr_rk7s148w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 2:54 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Wednesday 14 October 2015 05:15:12 Shivani Bhardwaj wrote:
>> On Wed, Oct 14, 2015 at 5:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Wed, Oct 14, 2015 at 04:54:45AM +0530, Shivani Bhardwaj wrote:
>> >> On Wed, Oct 14, 2015 at 4:44 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> >> > On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
>> >> >> Change the order of statements and remove extra code.
>> >> >> +     CLR_SD_HCXC(sd_card);
>> >> >> +
>> >> >>       if (hi_cap_flow) {
>> >> >>               if (rsp[1] & 0x40)
>> >> >>                       SET_SD_HCXC(sd_card);
>> >> >> -             else
>> >> >> -                     CLR_SD_HCXC(sd_card);
>> >> >> -
>> >> >> -             support_1v8 = false;
>> >> >> -     } else {
>> >> >> -             CLR_SD_HCXC(sd_card);
>> >> >> -             support_1v8 = false;
>> >> >>       }
>> >> >> +
>> >> >> +     support_1v8 = false;
>> >> >>       dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
>> >> >>
>> >> >>       if (support_1v8) {
>> >> >
>> >> > Are you sure you didn't change the logic of what is happening here?
>> >> >
>> >> > Why are you making this change?  What prompted it?
> ...
>
>> I don't think it should be a problem because that is what we
>> ultimately want in our code - to clear the memory card subject to
>> constraints that one of the two if conditions is wrong. Now, if both
>> the if statements, that is,
>> if (hi_cap_flow) and if (rsp[1] & 0x40)
>>
>> turn out to be true, they set the cleared sd_card again.
>>
>> That is what we wanted. If both the if statements are true - set the
>> sd_card else clear it up.
>
> I guess this would be easier to verify if it were not obscured by the
> SET_SD_HCXC/CLR_SD_HCXC macros ;-)
>
> Your change looks like a correct transformation, and it would be logical
> to remove the support_1v8 variable next, as it can never be true.
>
> However, I wonder whether that is just a bug in the driver, as UHS-1
> cards are required to support 1.8v operation, and there is clearly
> code to handle it here. Maybe one of them should actually say
> "support_1v8 = true".
>
>         Arnd

I do not exactly understand the role of variables here. But, as far as
I can guess (after having checked the secure digital)  support_1v8
should be true for hi_cap_flow=false. That is, if capacity flow is
less, we can allow voltage to be 1.8V otherwise it should be 3.3V.
However, I really do not understand what the array rsp is for. So, I'm
not sure what its status should be.
Please correct me if I am wrong.
Thanks

