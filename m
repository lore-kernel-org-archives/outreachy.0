X-GM-THRID: 6205970063032320000
X-Received: by 10.194.192.71 with SMTP id he7mr2609402wjc.2.1444940447929;
        Thu, 15 Oct 2015 13:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.207 with SMTP id r198ls218345lfg.40.gmail; Thu, 15 Oct
 2015 13:20:47 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr2601561lbb.0.1444940447425;
        Thu, 15 Oct 2015 13:20:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-lf0-x22d.google.com (mail-lf0-x22d.google.com. [2a00:1450:4010:c07::22d])
        by gmr-mx.google.com with ESMTPS id ds4si452381lbc.0.2015.10.15.13.20.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 13:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) client-ip=2a00:1450:4010:c07::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c07::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lf0-x22d.google.com with SMTP id z124so46567908lfa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 13:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=wotPf2hRQoE1nnPWSIj6vSpLwZpGVqLOXa3VB/O2EgU=;
        b=BjuBoto95MNaIxjX1jJ8PTPN84jAoHHJPd0YT/7r0lnknbegG0VkKKP1znrAX/vRbJ
         Jzb9igMJO6UE5CXs+tYQ09t6Sxj6yY4orlKfaHSShWtBfI6Upx+DYlxhLAVc3j3BUUKz
         /g10wcXnfxZjkJfbYrr1WQfFhRNCKsijmEQIY6DbLIkA250rOeZX0EfnJ0O2FqXjlsJN
         4TJWU1GP5fF90FmWZtFkuL7Xuhm7DiiL+sDeo8hBcu5bq0Obqa1LudQpKOJuIJB6LcaK
         1IWPMCxrhJ0OhRZAFldWSImHl4nAKuf6SMBg8p2qNEcR/OAUOK2K6ir4ZOaztKMjIziX
         viAA==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr14088449wja.87.1444940447315; Thu,
 15 Oct 2015 13:20:47 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 13:20:47 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510152215180.2027@localhost6.localdomain6>
References: <20151015201311.GA45040@ubuntu>
	<alpine.DEB.2.02.1510152215180.2027@localhost6.localdomain6>
Date: Fri, 16 Oct 2015 01:50:47 +0530
Message-ID: <CAKHNQQGPX=Ku867t8UWX59hqta6e8EidrLX7H=M+Gfc_+GL+1A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_ptlrpc: Replace
 simple_strtol with simple_stroul
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 16, 2015 at 1:46 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>
>> The variable inst is a __u32 type and hence the function used should be
>> simple_strtoul.
>> Semantic patch used:
>>
>> @@ type T;
>> T e;@@
>> e=
>> - simple_strtol
>> + simple_strtoul
>>   (...)
>
> The semantic patch is not really helpful here.  Certainly you don't want
> to replace all calls to simple_strtol by simple_strtoul.  I guess that
> something around the call should have type __u32.
>
> julia
>
@@ __u32 T;
T e;@@
e=
- simple_strtol
+ simple_strtoul
  (...)

Like this?

>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> index ec44b3c..415817c 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> @@ -1251,7 +1251,7 @@ int lprocfs_wr_import(struct file *file, const char __user *buffer,
>>               *ptr = 0;
>>               do_reconn = 0;
>>               ptr += strlen("::");
>> -             inst = simple_strtol(ptr, &endptr, 10);
>> +             inst = simple_strtoul(ptr, &endptr, 10);
>>               if (*endptr) {
>>                       CERROR("config: wrong instance # %s\n", ptr);
>>               } else if (inst != imp->imp_connect_data.ocd_instance) {
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015201311.GA45040%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

