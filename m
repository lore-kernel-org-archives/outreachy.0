X-GM-THRID: 6206976986922876928
X-Received: by 10.112.54.197 with SMTP id l5mr5810752lbp.21.1445177682408;
        Sun, 18 Oct 2015 07:14:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.70 with SMTP id f67ls447258lfg.78.gmail; Sun, 18 Oct
 2015 07:14:41 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr5890554lbb.10.1445177681812;
        Sun, 18 Oct 2015 07:14:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id o3si390998wiz.1.2015.10.18.07.14.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 07:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so63798459wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 07:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vT+Y121BsNYccaxpZmDWECY1XxBRSIY6j7g/VLwb09U=;
        b=GjFx5FAtM8CQaUSM4910YiMnJZrjQApjByEaPYOfiEvzpDEVVQ9QK4tDRGkqmIRVPx
         W6KnsxPksmpdZpHYMwExEM3lz3I7JGMRpkHnRJqR0G6to3ZEV03T6FFS286VrNvUEPfT
         CAUhRHG+O4rchqdZvtndHmEcut1VCNu1gVMlUX54+R62EvmtsRreYpCvFnQxISt/1/G8
         x9iFn+hIDGKgtEoPmJse4vgriVf56BXarGGNZb+UJJfO/vN7JWtYMnD1p8K5o84H1fZ6
         Be6dBCAA0aeFNrDrW3Y6DHUWyZfaRc7iMiFKWAVoSfGKAJn6AOkRoQoZOC+7U/c+gnId
         K13A==
MIME-Version: 1.0
X-Received: by 10.180.198.233 with SMTP id jf9mr11405111wic.66.1445177681710;
 Sun, 18 Oct 2015 07:14:41 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 07:14:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510181529260.2614@hadrien>
References: <20151018132030.GA30680@ubuntu>
	<alpine.DEB.2.10.1510181523580.2614@hadrien>
	<CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com>
	<alpine.DEB.2.10.1510181529260.2614@hadrien>
Date: Sun, 18 Oct 2015 19:44:41 +0530
Message-ID: <CAKHNQQFtPSq5TRrFrGq4gqOPC_oWxOZqdUsPdSaVp0DVux1OBg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 7:02 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Sun, Oct 18, 2015 at 6:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> Variable rc is not tested for negative values and hence a check should
>> >> be included. Also, a check for variable val should be introduced.
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +++-
>> >>  1 file changed, 3 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> >> index cdc7f88..c4d44e7 100644
>> >> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> >> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> >> @@ -61,7 +61,9 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>> >>       unsigned long val;
>> >>
>> >>       rc = kstrtoul(buffer, 10, &val);
>> >> -     if (rc < 0)
>> >> +     if (rc)
>> >
>> > If rc is never > 0, then why do you want to change rc < 0 to just rc?
>> >
>> > julia
>> >
>>
>> Because in case rc=0, it will be success and we don't need to return.
>> This patch is a fix up on earlier patch as suggested by Greg.
>
> I don't follow.  When there was rc < 0, there would also not be a return.
> There are three cases: rc < 0, rc = 0, rc > 0.  If you put rc < 0 you will
> get a return on rc < 0 only.  And if you put rc you will get a return on
> rc < 0 and rc > 0, but rc is never > 0 (you have said - I don't check), so
> with rc you will also only get a return when rc < 0.  Putting rc is a bit
> more concise.  But putting rc < 0 makes it more clear that what is going
> on is an error check.  And I guess it is the code that was there
> previously, so it is what the developer preferred,
>
> julia
>

What you say is perfectly fine. But, earlier code mentioned 'if (rc)'
only [developer version]. I changed that to 'if(rc<0)' along with some
other changes that I got wrong. I've been asked to provide a fix up.
If you say, I can change it to rc<0. Yes, it would be more precise.
I've consulted Arnd about the positive values. It is never going to
happen. Please suggest?

>>
>> >> +             return rc;
>> >> +     if (val > 1)
>> >>               return -ERANGE;
>> >>
>> >>       /* opposite senses */
>> >> --
>> >> 2.1.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151018132030.GA30680%40ubuntu.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQEJLf1LXOZr7KS%3DBdC8riOXdjg6jgfDMfV8OK2uXvpJww%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

