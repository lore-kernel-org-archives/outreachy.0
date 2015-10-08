X-GM-THRID: 6203392298463526912
X-Received: by 10.107.163.80 with SMTP id m77mr8910960ioe.0.1444343399832;
        Thu, 08 Oct 2015 15:29:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.235 with SMTP id i11ls315188igt.11.gmail; Thu, 08 Oct
 2015 15:29:59 -0700 (PDT)
X-Received: by 10.66.168.12 with SMTP id zs12mr8461549pab.37.1444343399342;
        Thu, 08 Oct 2015 15:29:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x229.google.com (mail-yk0-x229.google.com. [2607:f8b0:4002:c07::229])
        by gmr-mx.google.com with ESMTPS id q68si1089791ywf.0.2015.10.08.15.29.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 15:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) client-ip=2607:f8b0:4002:c07::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::229 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x229.google.com with SMTP id c126so25767118yke.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 15:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=e/lZG+/HdtKOK7ZcyK5qIoG9gSRcGDwpStWv82gU8vI=;
        b=KJUB3L1qkk7L5mbjM8mjTlhxfLITF3Vt0Cq0tw6CxZrJi3A/9NfOZxXW6pdjBKv85M
         5ioq0h9u1keOTvHPS14bZpUWQNKfd8i6kt1cuPF4vwr3gRWI/NdpTOaCNKy6NB2SP3iq
         jpV19AkB1PyEX0qVwevNC7Gd5bes4aYMswsY+n2OdqNBx+WOsLbOf90MzW0YOpMVLzQS
         nPsqGGkB+ckU17000oWXUWn75c39fWz/QUt9A0u+B85bP2M+RUaTH9hyPhm25AMPxF+Q
         6Yo2jsaLRFR497qdh+9VpD8I5EePohmZXtspHERxKCpYM8pbQH+4fmuqXBFIL1BwAl72
         DwcQ==
MIME-Version: 1.0
X-Received: by 10.129.74.138 with SMTP id x132mr6992806ywa.112.1444343399162;
 Thu, 08 Oct 2015 15:29:59 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Thu, 8 Oct 2015 15:29:59 -0700 (PDT)
In-Reply-To: <6819793.vktgQQm1tK@wuerfel>
References: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
	<6819793.vktgQQm1tK@wuerfel>
Date: Fri, 9 Oct 2015 01:29:59 +0300
Message-ID: <CAHWJYFnS3+EvKFGDsNHz5hPvbdXvOQyxSzJAZdy77Y3W6HVbvA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lent: add missing
 __user __user annotation
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 9, 2015 at 12:34 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 09 October 2015 00:30:13 Ioana Ciornei wrote:
>> Add missing __user annotation when using copy_{to/from}_user() to indicate that is
>> a pointer from userspace and that it should not be derefenced.
>> Also, remove sparse warnings such as:
>>
>> drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning: incorrect type in argument 1 (different address spaces)
>>   1 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    expected void [noderef] <asn:1>*to
>>   2 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    got struct sfw_counters_t [usertype] *[assigned] sfwk_stat
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Your subject line has a duplicate "__user" in it.

Sorry about that.

>
>> ---
>>  drivers/staging/lustre/lnet/selftest/console.c | 44 +++++++++++++-------------
>>  1 file changed, 22 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
>> index 024aaee..7ba9022 100644
>> --- a/drivers/staging/lustre/lnet/selftest/console.c
>> +++ b/drivers/staging/lustre/lnet/selftest/console.c
>> @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
>>       case LST_TRANS_SESQRY:
>>               rep = &msg->msg_body.dbg_reply;
>>
>> -             if (copy_to_user(&ent_up->rpe_priv[0],
>> +             if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
>>                                    &rep->dbg_timeout, sizeof(int)) ||
>> -                 copy_to_user(&ent_up->rpe_payload[0],
>> +                 copy_to_user((void __user *)&ent_up->rpe_payload[0],
>>                                    &rep->dbg_name, LST_NAME_SIZE))
>>                       return -EFAULT;
>>
>
> This looks wrong. I have not checked what is actually going on here, but
> you should never add a __user cast to a variable that is accessed
> through a kernel pointer. Can you find out where the ent_up variable
> is and why it is not marked __user itself?
>

I searched a bit through the source code and the hierarchy of calls
starts with an ioctl interface where a copy_from_user() is used for
getting user data.
In the entire file (and also others browsed through searching) I do
not see any _user annotations and, sadly, I do not understand
perfectly what you are looking for.

Also, if there is a copy_{to/from}_user call isn't it supposed that
the source, respectively the destination parameter, point to a
userspace pointer?
Or is there any other way this type of functions could be used
successfully with only kernel space pointers?

It would be very appreciated if you could expand on what I should look
for in this situation.

Sorry for the newbie questions.
Thanks a lot,

Ioana

