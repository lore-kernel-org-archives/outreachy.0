X-GM-THRID: 6329551284190838784
X-Received: by 10.46.5.140 with SMTP id 134mr2999464ljf.6.1473714952782;
        Mon, 12 Sep 2016 14:15:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.146 with SMTP id e18ls1548157wmi.16.canary; Mon, 12 Sep
 2016 14:15:52 -0700 (PDT)
X-Received: by 10.28.27.132 with SMTP id b126mr2116863wmb.0.1473714952099;
        Mon, 12 Sep 2016 14:15:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si850049wmg.3.2016.09.12.14.15.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:15:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,324,1470693600"; 
   d="scan'208";a="236181826"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 23:15:32 +0200
Date: Mon, 12 Sep 2016 23:15:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace simple_strtoul
 by kstrtoul
In-Reply-To: <20160912205044.26537-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609122312160.3549@hadrien>
References: <20160912205044.26537-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Gargi Sharma wrote:

> simple_strtoul is obsolete and hence has been replaced by kstrtoul as
> mentioned by checkpatch.pl

To my recollection, the transformation from one to the other is not so
simple, and is sometimes not possible.  Could you explain in more detail
why what you have done is correct?  At least the second case looks like it
cannot be, because your transformed code doesn't initialize temp any more,
and it is used a couple lines after the call site.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 528cbdc..884b2eb 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -126,6 +126,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  	int do_characters = !strcmp(attr->attr.name, "characters");
>  	size_t desc_length = 0;
>  	int i;
> +	int err;
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	while (cp < end) {
> @@ -153,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		err = kstrtoul(cp, 10, &index);
>  		if (index > 255) {
>  			rejected++;
>  			cp = linefeed + 1;
> @@ -757,6 +758,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  	enum msg_index_t firstmessage = group->start;
>  	enum msg_index_t lastmessage = group->end;
>  	enum msg_index_t curmessage;
> +	int err;
>
>  	while (cp < end) {
>
> @@ -783,7 +785,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		err = kstrtoul(cp, 10, &index);
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
>  			temp++;
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912205044.26537-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

