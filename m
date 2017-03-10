X-GM-THRID: 6395412283312308224
X-Received: by 10.25.169.14 with SMTP id s14mr2291392lfe.3.1489127668713;
        Thu, 09 Mar 2017 22:34:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.23 with SMTP id e23ls919865ljb.28.gmail; Thu, 09 Mar
 2017 22:34:28 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr2833966ljd.27.1489127667774;
        Thu, 09 Mar 2017 22:34:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n128si87014wmf.2.2017.03.09.22.34.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:34:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="263959727"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 07:34:27 +0100
Date: Fri, 10 Mar 2017 07:34:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: speakup: i18n.c:
 Refactor conditionals in spk_msg_set
In-Reply-To: <89a7e1067f4868fa5ef02ae94c32b6aff37b529e.1489099212.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703100727530.2169@hadrien>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489099212.git.narcisaanamaria12@gmail.com> <89a7e1067f4868fa5ef02ae94c32b6aff37b529e.1489099212.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subjject line is not correct.  There should not be .c.  In general,
you need to run git log --oneline on the file and see what are the common
subject lines for patches that touch this file.  There is no deterministic
algorithm for choosing the subject line, so you should not try to make up
the file name part of the subject line on your own.

On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce the indentation level in spk_msg_set and remove
> unnecessary return variable.
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

This looks much nicer now :)

If you want to search for other cases like this you could try the
following semantic patch:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
S
else { return -E; }

@disable neg_if@
expression e,E;
statement S;
identifier l;
@@

*if (e)
S
else { rc = -E; goto l; }

The disable neg_if prevents Coccinelle from considering the case where the
branches are flipped around.  Due to the *, this will give you something
that looks like a patch but in which the lines that contain the header of
a matching if have a - at the beginning.  It's just for information, not a
suggestion to remove the code.

julia


> ---
>  drivers/staging/speakup/i18n.c | 44 +++++++++++++++++++-----------------------
>  1 file changed, 20 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index a8326db..7809867 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -541,34 +541,30 @@ static bool fmt_validate(char *template, char *user)
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
> -					  newstr)) {
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
> +	if ((index < MSG_FIRST_INDEX) || (index >= MSG_LAST_INDEX))
> +		return -EINVAL;
> +
> +	newstr = kmalloc(length + 1, GFP_KERNEL);
> +	if (!newstr)
> +		return -ENOMEM;
> +
> +	memcpy(newstr, text, length);
> +	newstr[length] = '\0';
> +	if (index >= MSG_FORMATTED_START &&
> +	    index <= MSG_FORMATTED_END &&
> +	    !fmt_validate(speakup_default_msgs[index], newstr)) {
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/89a7e1067f4868fa5ef02ae94c32b6aff37b529e.1489099212.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

