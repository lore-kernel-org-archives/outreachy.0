X-GM-THRID: 6528173745715019776
X-Received: by 10.28.213.144 with SMTP id m138mr54399wmg.19.1519972392484;
        Thu, 01 Mar 2018 22:33:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.3 with SMTP id c3ls104401wmh.9.gmail; Thu, 01 Mar 2018
 22:33:11 -0800 (PST)
X-Google-Smtp-Source: AG47ELu0BkCgsmTBch6ke2/w7SefEVo60lBDQLYP8T5hWL08DcXcKWz6mlgELImbNwLXLnsg2FIK
X-Received: by 10.28.50.4 with SMTP id y4mr58741wmy.1.1519972391353;
        Thu, 01 Mar 2018 22:33:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519972391; cv=none;
        d=google.com; s=arc-20160816;
        b=S84O2EGGd7Fzx8L6LRpfxQWBT8fYBCJZutL2gm9JxuuxnmACAYK8GLxyJeGTQodvmW
         Oh+bUpoIBkdOH4+ksdhdcwjFl8KH8Wz8asOsMSXXyyMpmFD+vn4K7gN8F6VqP6a05CSX
         elRr5oTE38qz27GYPBtBFLyGr0UaNgKLfjQU6/YevGJ/jsSO78GWY8Adpexz+QYBuWQ8
         kUTjwpUj3gNoafB/cO+UxtOeHiDFto0NbkNPjqHHSbxcQxUXZU3DcW9NuVw+vfdxv6pc
         vbIdo7kotQnfuF/ZZehkDYz4SIVipAJfCn5KWBejCDDO0uLe/7D6m2shfrM7Sv0DbBap
         kMeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=tZ3btzwRwW4rAmK/MjItujMwvRlkuo63W97RYx9q6/c=;
        b=LrS0xXFnqm2kbk/zCTo8yuDJpbJz9g7upZL/9zVmwzoOl0GT8NKeRKmHuGujLLUuHE
         q3LR1wFG8d4cQ7IHHD+tJj3eIWNs0rkxlMuLGpAdvBraOr8cO1ottZCcaTPZ1W49wZZM
         orm+iYvz176GGCaXfDv9yyWB2etOVDOQvaMTRkmM/29ICQAeBYIbtJcuz/IJRRUGyVIl
         3C9JbBjmCwytsvNDWqJXQddLijigtI8GZMUmt9LWyeuxyRu5hzmzM8vGm8fPxJu61Rba
         a2vdlokGFaEcdTxyex38AMXIHf4gvWWiV6I/w+R2eaJhBnfL/juIEzbJm5c7/5inCqQN
         JOcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 51si389519wrw.0.2018.03.01.22.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 22:33:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="315991140"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 07:33:07 +0100
Date: Fri, 2 Mar 2018 07:33:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixed 'tabstop'
 coding style warning
In-Reply-To: <20180302024749.GA16440@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803020732170.2214@hadrien>
References: <20180302024749.GA16440@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Arushi Singhal wrote:

> Replace a mix of tabs and spaces indentation by tabs only.
>
> Fixed checkpatch warning "Statements should start on a tabstop" in
> rtl8712 module.

There is no need to say "in rtl8712 module".  That is apparent from the
subject line and the diffstat just below.

>
> Signed-off-by: Arushi Singhal <arushisinghal@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rtl8712/drv_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index ae79047..ede99e9 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -161,7 +161,7 @@ struct _adapter {
>  	u8	EepromAddressSize;
>  	u8	hw_init_completed;
>  	struct task_struct *cmdThread;
> -	 pid_t evtThread;
> +	pid_t evtThread;
>  	struct task_struct *xmitThread;
>  	pid_t recvThread;
>  	uint (*dvobj_init)(struct _adapter *adapter);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180302024749.GA16440%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

