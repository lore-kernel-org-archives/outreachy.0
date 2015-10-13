X-GM-THRID: 6205270918308036608
X-Received: by 10.194.109.233 with SMTP id hv9mr25787wjb.1.1444780225837;
        Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.232 with SMTP id fr8ls8936wib.28.gmail; Tue, 13 Oct
 2015 16:50:25 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr4797089wic.3.1444780225351;
        Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id w4si888449wiz.0.2015.10.13.16.50.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gb1so108843052wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2Gs4sNRb1kvSqfZyonE7Wd9+bwuBpsZe2AbHIHBuE3g=;
        b=0TLsKqH3UtblGFV4Y/ugjS1MNlVDUkm7xxtH+FpuSthNjg13jq6+Fi9c0a85x620uN
         fVcT+5pAR/0IowXuXhex9IL/4eTA/qPwWqGmS8R41CNEHvhfnWmQ5uXVDIqGpcJwD7iy
         dZF+A0ZAlu9vV+Xc2DR6fQMKexKmR2cd6hLhOm5fAyAtWA8Fa6+gpdCTiwTtJipHZGJr
         eLzqPFVHQ8pxlq56ie5MnxbdCfCYZ0O+4mhRxt0jGPo0zBbl0SI9kI3Knl39un6PPh0V
         nQRWfRYwjIiY9dBxx3QJFJBzGpP4vyPeT1mBFkiyVUiXqcNt+ha1HdwFivkmhn90JjCq
         5k6w==
MIME-Version: 1.0
X-Received: by 10.180.102.230 with SMTP id fr6mr604227wib.66.1444780225252;
 Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 16:50:25 -0700 (PDT)
In-Reply-To: <CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
References: <20151013230010.GA16506@ubuntu>
	<20151013231421.GA8240@kroah.com>
	<CAKHNQQHbg8ge_m3jjpcLU+x3EQrpzqCQviqM=E_avMYnRNJDUQ@mail.gmail.com>
	<20151013233902.GA9458@kroah.com>
	<CAKHNQQEB4pmKB+UujyZa_te1BZfubs4JVR2Z+4qRe1e814iNLg@mail.gmail.com>
Date: Wed, 14 Oct 2015 05:20:25 +0530
Message-ID: <CAKHNQQHSDct=KsyLGZSBuWSJSLMLztyXa53ZV_NrwepZy37v4A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 5:15 AM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 5:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> On Wed, Oct 14, 2015 at 04:54:45AM +0530, Shivani Bhardwaj wrote:
>>> On Wed, Oct 14, 2015 at 4:44 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>>> > On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
>>> >> Change the order of statements and remove extra code.
>>> >>
>>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>>> >> ---
>>> >>  drivers/staging/rts5208/sd.c | 11 ++++-------
>>> >>  1 file changed, 4 insertions(+), 7 deletions(-)
>>> >>
>>> >> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
>>> >> index d6c4982..4269be9 100644
>>> >> --- a/drivers/staging/rts5208/sd.c
>>> >> +++ b/drivers/staging/rts5208/sd.c
>>> >> @@ -2707,17 +2707,14 @@ RTY_SD_RST:
>>> >>               return STATUS_FAIL;
>>> >>       }
>>> >>
>>> >> +     CLR_SD_HCXC(sd_card);
>>> >> +
>>> >>       if (hi_cap_flow) {
>>> >>               if (rsp[1] & 0x40)
>>> >>                       SET_SD_HCXC(sd_card);
>>> >> -             else
>>> >> -                     CLR_SD_HCXC(sd_card);
>>> >> -
>>> >> -             support_1v8 = false;
>>> >> -     } else {
>>> >> -             CLR_SD_HCXC(sd_card);
>>> >> -             support_1v8 = false;
>>> >>       }
>>> >> +
>>> >> +     support_1v8 = false;
>>> >>       dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
>>> >>
>>> >>       if (support_1v8) {
>>> >
>>> > Are you sure you didn't change the logic of what is happening here?
>>> >
>>> > Why are you making this change?  What prompted it?
>>> >
>>> > thanks,
>>> >
>>> > greg k-h
>>>
>>> Logic remains fine, I think. support_1v8 statement was common to if
>>> and else so it is taken out. Also, it can be noted that programmer
>>> wants to set sd_card value only if hi_cap_flow is not null and (rsp[1]
>>> & 0x40) is true. For rest of the cases, programmer wants to clear the
>>> sd_card.
>>> I think I'm sure about the changes made.
>>
>> But now you always call CLR_SD_HCXC() where before there was one code
>> path that did not make that call.  Are you sure it is safe to call
>> CLR_SD_HCXC() before SET_SD_HCXC()?
>>
>> thanks,
>>
>> greg k-h
>
> I don't think it should be a problem because that is what we
> ultimately want in our code - to clear the memory card subject to
> constraints that one of the two if conditions is wrong. Now, if both
> the if statements, that is,
> if (hi_cap_flow) and if (rsp[1] & 0x40)
>
> turn out to be true, they set the cleared sd_card again.
>
> That is what we wanted. If both the if statements are true - set the
> sd_card else clear it up. :)

Also, a plus point is that even if the value is to be set (I do not
know the inside mechanism of how it will happen) , there would not be
any scope of errors (considering some bits are to be written/
logically operated) because sd_card would be empty. :)

