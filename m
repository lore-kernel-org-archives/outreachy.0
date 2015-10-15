X-GM-THRID: 6205970063032320000
X-Received: by 10.112.142.195 with SMTP id ry3mr2708631lbb.22.1444940812811;
        Thu, 15 Oct 2015 13:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.201 with SMTP id m192ls8699lfm.55.gmail; Thu, 15 Oct
 2015 13:26:51 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr2607570lbb.12.1444940811401;
        Thu, 15 Oct 2015 13:26:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-lf0-x22d.google.com (mail-lf0-x22d.google.com. [2a00:1450:4010:c07::22d])
        by gmr-mx.google.com with ESMTPS id jp7si448182lbc.2.2015.10.15.13.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) client-ip=2a00:1450:4010:c07::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lf0-x22d.google.com with SMTP id z124so46677054lfa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=JslL4P62TYOBeFy4dtKN3QqnurPyI9UiuIxcs7AOzfU=;
        b=F9BkSMgb8gnpyGDVXaKzG+KUDfL2566nrCQlSMR07msvkX85QWVbCiQ00loDRqF/Xy
         tHKXubdN+dbHyvz8xrYTKfxYYj8ikL62d1pjjupVsqsICtqkbi2svJ/7gXjdZw8614J+
         9O/ilXnHUcn5cNk+ORIopGx8ViIaCNhw4SrsHCeAkT+MiRMULbeHoHO4ohlAhIg2dArh
         5Tp1K3MTTF5KyqU6OyUZyoPao9I0BNNIJzYRzoL2/cF1yhRxsvKVpSnielSHfeYiR2+S
         h0+ZOrhr5prw0fV6NE+IIyXAmsmG31AfCCHy6+kWJxeAz2NfQCIF25v1j17YfdXFhtfb
         NT1w==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr676038wiz.66.1444940811272; Thu,
 15 Oct 2015 13:26:51 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 13:26:51 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510152222460.2027@localhost6.localdomain6>
References: <20151015201311.GA45040@ubuntu>
	<alpine.DEB.2.02.1510152215180.2027@localhost6.localdomain6>
	<CAKHNQQGPX=Ku867t8UWX59hqta6e8EidrLX7H=M+Gfc_+GL+1A@mail.gmail.com>
	<alpine.DEB.2.02.1510152222460.2027@localhost6.localdomain6>
Date: Fri, 16 Oct 2015 01:56:51 +0530
Message-ID: <CAKHNQQFLOnnXntd85qZJ1s+Uhz6R71nbY7rP5phuORg1woXqWA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_ptlrpc: Replace
 simple_strtol with simple_stroul
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 16, 2015 at 1:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Fri, Oct 16, 2015 at 1:46 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> The variable inst is a __u32 type and hence the function used should be
>> >> simple_strtoul.
>> >> Semantic patch used:
>> >>
>> >> @@ type T;
>> >> T e;@@
>> >> e=
>> >> - simple_strtol
>> >> + simple_strtoul
>> >>   (...)
>> >
>> > The semantic patch is not really helpful here.  Certainly you don't want
>> > to replace all calls to simple_strtol by simple_strtoul.  I guess that
>> > something around the call should have type __u32.
>> >
>> > julia
>> >
>> @@ __u32 T;
>> T e;@@
>> e=
>> - simple_strtol
>> + simple_strtoul
>>   (...)
>>
>> Like this?
>
> No.  You want e to have type __u32.  So it would be
>
> __u32 e;
>
> You don't need T at all.  In some other semantic patches there has been T,
> but that was a metavariable to hold any possible type.  Here you want to
> specify a specific type.
>
> julia
>
All right. Thank you. I'm sending new version.

>>
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> index ec44b3c..415817c 100644
>> >> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> @@ -1251,7 +1251,7 @@ int lprocfs_wr_import(struct file *file, const char __user *buffer,
>> >>               *ptr = 0;
>> >>               do_reconn = 0;
>> >>               ptr += strlen("::");
>> >> -             inst = simple_strtol(ptr, &endptr, 10);
>> >> +             inst = simple_strtoul(ptr, &endptr, 10);
>> >>               if (*endptr) {
>> >>                       CERROR("config: wrong instance # %s\n", ptr);
>> >>               } else if (inst != imp->imp_connect_data.ocd_instance) {
>> >> --
>> >> 2.1.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015201311.GA45040%40ubuntu.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGPX%3DKu867t8UWX59hqta6e8EidrLX7H%3DM%2BGfc_%2BGL%2B1A%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

