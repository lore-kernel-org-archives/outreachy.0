X-GM-THRID: 6205970063032320000
X-Received: by 10.112.169.34 with SMTP id ab2mr2598554lbc.23.1444941238258;
        Thu, 15 Oct 2015 13:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.134 with SMTP id ay6ls7180wib.28.canary; Thu, 15 Oct
 2015 13:33:57 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr2617971wjd.4.1444941237724;
        Thu, 15 Oct 2015 13:33:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-lb0-x235.google.com (mail-lb0-x235.google.com. [2a00:1450:4010:c04::235])
        by gmr-mx.google.com with ESMTPS id os10si440328lbb.3.2015.10.15.13.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) client-ip=2a00:1450:4010:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lb0-x235.google.com with SMTP id wb3so22444664lbb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8DDBgoamyGdiWecz9NhswOf1feJobW4t2kGvJMxP8yo=;
        b=fg3X5sRjX9JdSEsj8IiIEwQOo8iSQAoGFLMzRbn3maS+XSb8uf5MuTLIqmaA6T+rD5
         0Z0VDGXS2gdYojZwjvmoSEqdBCMQbQRKD3rFNXupnZ1ycZLwfLc1+9m8h3WuO+120GOO
         bBc6Htufh0CGgoaRV+pWVJxAdT+Rnk+tPejAXSyfnehHEQRthSUojegd5dV8TfzccXJe
         22CmMNdovAzJkrwhQC9JrQBAlERVlNFL1AyV2/xuotVOJbeELuDtsp2XGgZEzaf7yker
         wTnUDM+eawklrVsb5eimJfQudZxCp3ApjktHJVmODbE3dBI6LLpdi8AATnL8SBXUm4Nr
         IIZA==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr13081234wjb.86.1444941237570;
 Thu, 15 Oct 2015 13:33:57 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 13:33:57 -0700 (PDT)
In-Reply-To: <CAKHNQQFLOnnXntd85qZJ1s+Uhz6R71nbY7rP5phuORg1woXqWA@mail.gmail.com>
References: <20151015201311.GA45040@ubuntu>
	<alpine.DEB.2.02.1510152215180.2027@localhost6.localdomain6>
	<CAKHNQQGPX=Ku867t8UWX59hqta6e8EidrLX7H=M+Gfc_+GL+1A@mail.gmail.com>
	<alpine.DEB.2.02.1510152222460.2027@localhost6.localdomain6>
	<CAKHNQQFLOnnXntd85qZJ1s+Uhz6R71nbY7rP5phuORg1woXqWA@mail.gmail.com>
Date: Fri, 16 Oct 2015 02:03:57 +0530
Message-ID: <CAKHNQQH9iKJL02m5p+KjH0-H947u5ncpV5GbPm_-g_o6KLEqcg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_ptlrpc: Replace
 simple_strtol with simple_stroul
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 16, 2015 at 1:56 AM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> On Fri, Oct 16, 2015 at 1:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>>
>>> On Fri, Oct 16, 2015 at 1:46 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> > On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>>> >
>>> >> The variable inst is a __u32 type and hence the function used should be
>>> >> simple_strtoul.
>>> >> Semantic patch used:
>>> >>
>>> >> @@ type T;
>>> >> T e;@@
>>> >> e=
>>> >> - simple_strtol
>>> >> + simple_strtoul
>>> >>   (...)
>>> >
>>> > The semantic patch is not really helpful here.  Certainly you don't want
>>> > to replace all calls to simple_strtol by simple_strtoul.  I guess that
>>> > something around the call should have type __u32.
>>> >
>>> > julia
>>> >
>>> @@ __u32 T;
>>> T e;@@
>>> e=
>>> - simple_strtol
>>> + simple_strtoul
>>>   (...)
>>>
>>> Like this?
>>
>> No.  You want e to have type __u32.  So it would be
>>
>> __u32 e;
>>
>> You don't need T at all.  In some other semantic patches there has been T,
>> but that was a metavariable to hold any possible type.  Here you want to
>> specify a specific type.
>>
>> julia
>>

It shows parse error for __u32, works fine for int. What should I do?

> All right. Thank you. I'm sending new version.
>
>>>
>>> >>
>>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>>> >> ---
>>> >>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> >>
>>> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>>> >> index ec44b3c..415817c 100644
>>> >> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>>> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>>> >> @@ -1251,7 +1251,7 @@ int lprocfs_wr_import(struct file *file, const char __user *buffer,
>>> >>               *ptr = 0;
>>> >>               do_reconn = 0;
>>> >>               ptr += strlen("::");
>>> >> -             inst = simple_strtol(ptr, &endptr, 10);
>>> >> +             inst = simple_strtoul(ptr, &endptr, 10);
>>> >>               if (*endptr) {
>>> >>                       CERROR("config: wrong instance # %s\n", ptr);
>>> >>               } else if (inst != imp->imp_connect_data.ocd_instance) {
>>> >> --
>>> >> 2.1.0
>>> >>
>>> >> --
>>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015201311.GA45040%40ubuntu.
>>> >> For more options, visit https://groups.google.com/d/optout.
>>> >>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGPX%3DKu867t8UWX59hqta6e8EidrLX7H%3DM%2BGfc_%2BGL%2B1A%40mail.gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>

