X-GM-THRID: 6522213287288897536
X-Received: by 10.28.145.13 with SMTP id t13mr440400wmd.14.1518597833389;
        Wed, 14 Feb 2018 00:43:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.9 with SMTP id r9ls5164609wrg.4.gmail; Wed, 14 Feb
 2018 00:43:52 -0800 (PST)
X-Google-Smtp-Source: AH8x227Or7TdLCH1uD9DuQykSL2k/9/FsBFxDfQ7bcLizJSXBfrDxKtm/dIf8NotvYb/Lqb8jh3Q
X-Received: by 10.223.151.207 with SMTP id t15mr428235wrb.10.1518597832216;
        Wed, 14 Feb 2018 00:43:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518597832; cv=none;
        d=google.com; s=arc-20160816;
        b=DFzDckPeMeBVllpuP8h0jvtxQUuWC19JOVLiw1Ae6hUvxW8YVIXC1EWLI8YEl057/Z
         mYwsFI+p1aLu9c8tHtiA3ut4zGXaAWH687vREvHWzheTV1XLnFiHOWlCfLGq1dQHQutq
         KPEly1b4W9JkWvHTB9yuQ1jebiBM32pOsjpGig9Wgakyv4EO4Uk+4BPp2d7vaHF7+hh2
         fQvSWInF/PTW5+2jmvB3JeFOg94vGHSOvR/xTdNw9MVRkDe2QV33Y3iF3ffc9v+6A0uP
         XKPpN6bZs2iPxp2OJLxaM6VcWdqwsBeVqdI4g1yFAyDegBidWkGiP1poipMne4IAjJ0w
         duHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=jV2+jb2J+3RWL0HkQPPZMeRkWybRc388bsEr4L9Pcxg=;
        b=jW5AaxQOVhQklndcGQEqfqx6hJOpFgQ0DrCYb427VDQ3UNMk46tZcKQorwGr93R5cI
         LYR0WIU6ZcgE2Dwavhb8WD7SWnH5sApgU+Kqls8Z/W6K5wAc44HEkzXuImFUNQ5NWJ2B
         VFG7W2YhhZ0ae1y4X7R0Qha1437t5wh3H0Za6cXKieuQnLG0xJwEh6FbZe7rsfF/aMy1
         j7gjMu1sFUEXmUWo1fXFfrtomH/fPtRJ0zgJJYzaIOoyTMyrK+22WLyGUUjKdI4tb/92
         rCLFbLJYhH/oo8jKT8f7ibvanLRoBxtoWswJ0tciccaX8rHk3EE5MBtacylkFryoAP1C
         gNCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FNDXeyxT;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id y42si615877wry.5.2018.02.14.00.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 00:43:52 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FNDXeyxT;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id f136so28365784lff.8
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Feb 2018 00:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jV2+jb2J+3RWL0HkQPPZMeRkWybRc388bsEr4L9Pcxg=;
        b=FNDXeyxTj2ZdXjBqm12vHBfHINLU/ZnvSyJLdrWXdiRWdIvEIlzf2/n/cUQ6BZGeS/
         r7fRnTnDv+EMYdrdc6emQbp62cAIIWNS/j4mASJtyNnvyIKtPLAsZpVhJ6YhX0Lf0h6L
         nTp0LCc48mb83ZXUL0UTNFylRj0UELr596xgdK/AOa0ed3H2RzH8c0sn1J4lQPQfD6lm
         va5WtXkrneoXaHl8cPdLEnGnHFymhicru4BOihdKvZzyxu/44y9ql8i+jaXSn5cmErmh
         Pl4SLWLqY6Z/Ya8owXjQq+5Dd0eiLA/eLqRGFID8voSH8LxW6KEJvVOKOUXvGbw3G9YW
         9cYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jV2+jb2J+3RWL0HkQPPZMeRkWybRc388bsEr4L9Pcxg=;
        b=HCFU9098pjA6EQx4dScoxavAS5ms1F6Amo0gaZ5vx7mBcovsSYGjFg6DqpXlMxYbRv
         sFhCrM6AqGNKmwbhbjl9lE4qGGuw1Ix7J5qcVmQMqHvbpUHqYb+P6weoGqJSzTVtlgxZ
         rfVBv01Bs2P6RPXBBIALOF/n0BBRyYgHwjqCy8IesPPc842B5MSIT47UigoHYrNDn4zD
         AugxNH2EeOo/t3aBC1wqsfuYAMAyOOIQ4dKfLIXla8tFCOY4yJ2VjNgxg1mk04SlTCQm
         b//2eLHDMKvxjECb8GUW0LjHQPFLV6ng1a94jhtaGLqZkB/4xwQZTG5d6OeT4guk4WQ6
         lhKQ==
X-Gm-Message-State: APf1xPCSYCw78i/Kps84FbN3NoPj3UCvQCYd4w8oXWV9fAoBHle47Rom
	zDzx+DY+wlnTiHLj048cp3WriiVzfkrZz6+5Wjs=
X-Received: by 10.25.105.7 with SMTP id e7mr2650752lfc.138.1518597831772; Wed,
 14 Feb 2018 00:43:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.112.4 with HTTP; Wed, 14 Feb 2018 00:43:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1802140843210.3874@hadrien>
References: <20180214011834.4t7ltqv632mspyy7@kdunne-Inspiron-5566> <alpine.DEB.2.20.1802140843210.3874@hadrien>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Feb 2018 14:13:51 +0530
Message-ID: <CAK-LDbJHmSzXW+n3HXGYke0_siubjruTrPD4n0dNA26VtrTGuA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Initial Application
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Katie Dunne <kedunne@ucsc.edu>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 14, 2018 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 13 Feb 2018, Katie Dunne wrote:
>
>> Hi Vaishali and other mentors,

Hi Katie,

Thanks for your email.

>> The introduction message says we need to fill out an initial application
>> before contributing. The outreachy website says we must make a
>> contribution before applying. There is a Linux Kernel landing page where
>> we must 'Record a Contribution' before we are given access to a link to
>> submit an application, e.g. 'Once you've recorded at least one
>> contribution, you can start your application for the project.' from the
>> following link:
>>
>> https://www.outreachy.org/2018-may-august/communities/linux-kernel/migrate-nand-driver-to-new-exec_op-framework/contributions/

It seems like there was a confusion between what we were being
told versus how actually process is implemented on Outreachy's
website. We will update the welcome message with details in
sometime after confirming.

Thanks!

> I wasn't able to access this link directly.
>
> I think that there is a problem with the "How to apply" section in
> https://kernelnewbies.org/OutreachyApply.  It is quite out of order as
> compared to the new process.  We will update this.  With respect to
> something on the outreachy.org site, could you send a screenshot rather
> than a URL of anything you find confusing?  Then we'll try to resolve it
> with the Outreachy administration.  In any case, what you should do is
>
> 1. check eligibillity
> 2. work on the kernel tutorial
> 3. pick a project (or more than one - two more projects are expected to
> be announced)
> 4. work on the relevant small tasks
> 5. complete your application with information about your contribution
>
> Thanks very much for the feedback.
>
> julia
>
>>
>> I take this to mean we have to have a patch accepted before we can start
>> an application. Let me know if that is incorrect.
>>
>> Thanks,
>> Katie
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180214011834.4t7ltqv632mspyy7%40kdunne-Inspiron-5566.
>> For more options, visit https://groups.google.com/d/optout.
>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1802140843210.3874%40hadrien.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

