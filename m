X-GM-THRID: 6395412283312308224
X-Received: by 10.46.20.16 with SMTP id u16mr920197ljd.23.1489049705763;
        Thu, 09 Mar 2017 00:55:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.67 with SMTP id 3ls241309lju.49.gmail; Thu, 09 Mar 2017
 00:55:05 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr1873923ljb.2.1489049705108;
        Thu, 09 Mar 2017 00:55:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si895159wmg.3.2017.03.09.00.55.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:55:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,268,1486422000"; 
   d="scan'208";a="216115667"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 09:55:04 +0100
Date: Thu, 9 Mar 2017 09:54:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: speakup: i18n.c: Refactor
 conditionals in spk_msg_set
In-Reply-To: <2f91d0d2b5d05a6be6191b3090507106257ae05a.1489047172.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703090954170.3186@hadrien>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <2f91d0d2b5d05a6be6191b3090507106257ae05a.1489047172.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce the indentation level in the conditionals in spk_msg_set
> and remove unnecessary return variable.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 44 +++++++++++++++++++-----------------------
>  1 file changed, 20 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index 00ffa4e..a5b343c 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -540,34 +540,30 @@ static bool fmt_validate(char *template, char *user)
>   */
>  ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
>  {
> -	int rc = 0;
>  	char *newstr = NULL;
>  	unsigned long flags;
>
> -	if ((index >= MSG_FIRST_INDEX) && (index < MSG_LAST_INDEX)) {
> -		newstr = kmalloc(length + 1, GFP_KERNEL);
> -		if (newstr) {
> -			memcpy(newstr, text, length);
> -			newstr[length] = '\0';
> -			if (index >= MSG_FORMATTED_START &&
> -			    index <= MSG_FORMATTED_END &&
> -			    !fmt_validate(speakup_default_msgs[index],
> -			                  newstr)) {
> -				kfree(newstr);
> -				return -EINVAL;
> -			}
> -			spin_lock_irqsave(&speakup_info.spinlock, flags);
> -			if (speakup_msgs[index] != speakup_default_msgs[index])
> -				kfree(speakup_msgs[index]);
> -			speakup_msgs[index] = newstr;
> -			spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> -		} else {
> -			rc = -ENOMEM;
> -		}
> -	} else {
> -		rc = -EINVAL;
> +	if (!(index >= MSG_FIRST_INDEX) || !(index < MSG_LAST_INDEX))
> +		return -EINVAL;

You can push the ! inwards here.

> +	newstr = kmalloc(length + 1, GFP_KERNEL);
> +	if (!newstr)
> +		return -ENOMEM;
> +
> +	memcpy(newstr, text, length);
> +	newstr[length] = '\0';
> +	if (index >= MSG_FORMATTED_START &&
> +	    index <= MSG_FORMATTED_END &&
> +	    !fmt_validate(speakup_default_msgs[index],
> +	                  newstr)) {

This would all fit on one line now.

julia

> +		kfree(newstr);
> +		return -EINVAL;
>  	}
> -	return rc;
> +	spin_lock_irqsave(&speakup_info.spinlock, flags);
> +	if (speakup_msgs[index] != speakup_default_msgs[index])
> +		kfree(speakup_msgs[index]);
> +	speakup_msgs[index] = newstr;
> +	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +	return 0;
>  }
>
>  /*
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2f91d0d2b5d05a6be6191b3090507106257ae05a.1489047172.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

