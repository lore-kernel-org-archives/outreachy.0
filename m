X-GM-THRID: 6390634706454446080
X-Received: by 10.157.14.7 with SMTP id c7mr1240673otc.149.1487956753278;
        Fri, 24 Feb 2017 09:19:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.77 with SMTP id c74ls2132989ioe.29.gmail; Fri, 24 Feb
 2017 09:19:12 -0800 (PST)
X-Received: by 10.99.251.83 with SMTP id w19mr1415225pgj.24.1487956752409;
        Fri, 24 Feb 2017 09:19:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m190si594731vkf.5.2017.02.24.09.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 09:19:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="214631674"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 18:19:06 +0100
Date: Fri, 24 Feb 2017 18:18:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace BUG_ON()
 with WARN_ON().
In-Reply-To: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702241814330.3089@hadrien>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Varsha Rao wrote:

> BUG_ON() is replaced with WARN_ON() to fix the following checkpatch
> issue:
>
> Avoid crashing the kernel - try using WARN_ON & recovery code rather
> than BUG() or BUG_ON().
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
> - Added if condition to avoid dereferencing a NULL pointer.
>
>  drivers/staging/speakup/kobjects.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index ca075fe..68a4cc8 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -833,10 +833,12 @@ static ssize_t message_show(struct kobject *kobj,
>  	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
>  	unsigned long flags;
>
> -	BUG_ON(!group);
> -	spin_lock_irqsave(&speakup_info.spinlock, flags);
> -	retval = message_show_helper(buf, group->start, group->end);
> -	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +	if (WARN_ON(!group)) {
> +		spin_lock_irqsave(&speakup_info.spinlock, flags);
> +		retval = message_show_helper(buf, group->start, group->end);
> +		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +	}
> +
>  	return retval;

I think you should go back and think much harder about what this code
does.  Does WARN_ON return true if the condition is true or if it is
false?  If WARN_ON returns true, then should the code that you have put in
the then branch be executed?  What code do you consider to be the recovery
code?  BUG_ON always crashed the kernel, so there was no recovery code
before.  What new code have you added to perform the recovery?  What is
the value of retval if the branch is or is not taken?  Is this the
meaningful value in each case?

julia


>  }
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.1ae6%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

