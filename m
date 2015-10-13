X-GM-THRID: 6205270918308036608
X-Received: by 10.112.202.165 with SMTP id kj5mr9113lbc.5.1444778686498;
        Tue, 13 Oct 2015 16:24:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.74 with SMTP id p71ls662548lfd.77.gmail; Tue, 13 Oct
 2015 16:24:45 -0700 (PDT)
X-Received: by 10.112.184.170 with SMTP id ev10mr16607lbc.4.1444778685881;
        Tue, 13 Oct 2015 16:24:45 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id q6si810944wif.2.2015.10.13.16.24.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 16:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so78527509wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 16:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=iu8KTIXLWFkUSytoo3KVIb3EEvFqqZmhhyiPpJhS6Gc=;
        b=GUcUbLHtD3i0tHuBFcOX6tkcrQZtikWouUbhB6lGnUlyh7x2jKG2UA27Fn7Da5j1e2
         vI+i5PctGGHoRHHzZvPymCQ/frr8AJtRIU+zzb7bE8CdLtj81lbf08ehlQ7seniIzLN4
         m4Adf6uFK8YrOw02iaBwoxOo+c9nGJ9NXE47M1YNLwy33yNe6r4r63GtctPGjGdK1yPv
         C4BB3n3l2takZWu5xT7bossz8kEhZc0gVzMwqgqqmOQsORb6FnQv4Xk/uTl0hZszP3Pr
         ow0EupWDD97ODcQEWBnVAT4xgzVALZjqAc5y9IDp4TOpFBJp/djkawLYZIxhsLqyHgNW
         23RA==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr19398wjo.119.1444778685788; Tue,
 13 Oct 2015 16:24:45 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 16:24:45 -0700 (PDT)
In-Reply-To: <20151013231421.GA8240@kroah.com>
References: <20151013230010.GA16506@ubuntu>
	<20151013231421.GA8240@kroah.com>
Date: Wed, 14 Oct 2015 04:54:45 +0530
Message-ID: <CAKHNQQHbg8ge_m3jjpcLU+x3EQrpzqCQviqM=E_avMYnRNJDUQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: sd: Remove redundant code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 4:44 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 14, 2015 at 04:30:10AM +0530, Shivani Bhardwaj wrote:
>> Change the order of statements and remove extra code.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/rts5208/sd.c | 11 ++++-------
>>  1 file changed, 4 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
>> index d6c4982..4269be9 100644
>> --- a/drivers/staging/rts5208/sd.c
>> +++ b/drivers/staging/rts5208/sd.c
>> @@ -2707,17 +2707,14 @@ RTY_SD_RST:
>>               return STATUS_FAIL;
>>       }
>>
>> +     CLR_SD_HCXC(sd_card);
>> +
>>       if (hi_cap_flow) {
>>               if (rsp[1] & 0x40)
>>                       SET_SD_HCXC(sd_card);
>> -             else
>> -                     CLR_SD_HCXC(sd_card);
>> -
>> -             support_1v8 = false;
>> -     } else {
>> -             CLR_SD_HCXC(sd_card);
>> -             support_1v8 = false;
>>       }
>> +
>> +     support_1v8 = false;
>>       dev_dbg(rtsx_dev(chip), "support_1v8 = %d\n", support_1v8);
>>
>>       if (support_1v8) {
>
> Are you sure you didn't change the logic of what is happening here?
>
> Why are you making this change?  What prompted it?
>
> thanks,
>
> greg k-h

Logic remains fine, I think. support_1v8 statement was common to if
and else so it is taken out. Also, it can be noted that programmer
wants to set sd_card value only if hi_cap_flow is not null and (rsp[1]
& 0x40) is true. For rest of the cases, programmer wants to clear the
sd_card.
I think I'm sure about the changes made.

I came across this code while running notnull.cocci against this.
However, after I checked the code, cocci script was not very apt, I
saw this, took references from
http://lxr.free-electrons.com/source/drivers/staging/rts5208/rtsx_chip.h#L421
about the macros and deleted the extra code by changing order.
I've explained the logic above, if you still find any discrepancies,
please tell me.

Thank you.

