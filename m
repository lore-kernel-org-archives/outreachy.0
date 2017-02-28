X-GM-THRID: 6391852583766458368
X-Received: by 10.46.69.7 with SMTP id s7mr498629lja.18.1488308494360;
        Tue, 28 Feb 2017 11:01:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.67 with SMTP id 3ls201203ljw.43.gmail; Tue, 28 Feb 2017
 11:01:33 -0800 (PST)
X-Received: by 10.25.67.70 with SMTP id m6mr461222lfj.21.1488308493841;
        Tue, 28 Feb 2017 11:01:33 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v201si165628wmv.3.2017.02.28.11.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:01:33 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id y193so421894lfd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GOcr3H8krXZ6qWezYNstV/r81WcKTE8MgPCVCOy2VeY=;
        b=hSXUAH++XmwX6AQyWJ4M0XRE/TLs7pwMDVv3KZlmI5K55VBhqbpPJfivySNo+dR5tT
         X4A9CglHXwEfFBe9tuR6RIdUL1Fbdc8YVyZRtX2w07q6fvqPECO9szroXfKsBmoYJW1D
         Qkdyzd15ptzMqSlBnYNp9XF+FVmrhp3EWw86NG81XcgaEYXPtAMRmKrJLfiaIeM65WqR
         Lo4v4/YGIN39bEm7jbNPDSHsFmCzVxSQpt/YEn3jCg5V7P07/bWHB7kOq01Erifu9nLJ
         cwbjMp4OMJg6MjBjuoUPEX4A4+hFktQQqhDBrZsXnog3b+yySkQW/CdYdwKazDxHrbfN
         BtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GOcr3H8krXZ6qWezYNstV/r81WcKTE8MgPCVCOy2VeY=;
        b=FmGrPshLelw7X3CtfKEuU3j0X21Uj2R4CCSxr2cZL+2k+QQYGQJJJrefYsESsIbSXR
         YaonbQ4T/9RkwRhU/VYE0g02TbXEt2eZb01coKvcrFIkXTjSDH9dfuXEqpuDGbXH0bnw
         PvjN//hKue5yBKxxVrF71+tiTfWRITXeOdml2rnj1nB7lwANzYjoaNCmNYQ6UXY+sLCz
         1GrXfcPqOr25rBYrZ4pNnE4LYVQ88e60geQQmj4rbHy0xJHEbIZI1SM/vlRuVrozedft
         4OZ8UfiT+xrZPl05iPelxLMheh8UAAqQiA+g9s3jvvF0UKp7ajHvIoFGmg8salJvE54l
         Pp3g==
X-Gm-Message-State: AMke39kdpnhtc3QJP2ug9FzEawnFD1E9uH6kVSL1bPLA0S+OQdCMS/uew1EMuxb1oypDucqNIGwo0ZBFMN13aA==
X-Received: by 10.25.198.19 with SMTP id w19mr1367442lff.175.1488308493284;
 Tue, 28 Feb 2017 11:01:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 11:01:32 -0800 (PST)
In-Reply-To: <1488228200.25838.14.camel@perches.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488223529.25838.8.camel@perches.com> <CALrZqyMTTk4o5Y5e3DzH_cqXxvHsHDtByG0oYwWMjekZSR7Kkw@mail.gmail.com>
 <1488228200.25838.14.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 00:31:32 +0530
Message-ID: <CALrZqyP-BRPj4jEFgU=B_AV7E4-tJfgaXwwxRhUprLg_4gWQkg@mail.gmail.com>
Subject: Re: [PATCH 1/5] staging: lustre: Remove unnecessary else after return
To: Joe Perches <joe@perches.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 2:13 AM, Joe Perches <joe@perches.com> wrote:
> On Tue, 2017-02-28 at 01:51 +0530, SIMRAN SINGHAL wrote:
>> On Tue, Feb 28, 2017 at 12:55 AM, Joe Perches <joe@perches.com> wrote:
>> > On Mon, 2017-02-27 at 23:44 +0530, simran singhal wrote:
>> > > This patch fixes the checkpatch warning that else is not generally
>> > > useful after a break or return.
>> >
>> > checkpatch doesn't actually warn for this style
>> >
>> >         if (foo)
>> >                 return bar;
>> >         else
>> >                 return baz;
>> >
>>
>> ok, My bad
>> so, I have to change commit message as checkpatch doesn't warn for this style.
>
> Perhaps better would be to leave them unchanged instead.
>
>> > > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> []
>> > > @@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
>> > >
>> > >       if (!count)
>> > >               return -ENOENT;
>> > > -     else
>> > > -             return 0;
>> > > +     return 0;
>
> There might be a case for this one.
> error returns are generally in the form
>
> {
>         [...]
>
>         err = func(...);
>         if (err < 0)
>                 return err;
>
>         return 0;
> }
Not sure, what's the problem in removing else as according to me
there is no use of else.

In this case if (if condition) does not satisfy then else condition will
be satisfied and function will return 0.

