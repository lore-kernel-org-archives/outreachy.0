X-GM-THRID: 6390634706454446080
X-Received: by 10.223.133.180 with SMTP id 49mr207500wrt.21.1488025987625;
        Sat, 25 Feb 2017 04:33:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.217.24 with SMTP id q24ls274496lfg.44.gmail; Sat, 25 Feb
 2017 04:33:06 -0800 (PST)
X-Received: by 10.25.41.85 with SMTP id p82mr1028317lfp.16.1488025986217;
        Sat, 25 Feb 2017 04:33:06 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [141.255.128.1])
        by gmr-mx.google.com with ESMTP id 14si401557wmn.2.2017.02.25.04.33.06
        for <outreachy-kernel@googlegroups.com>;
        Sat, 25 Feb 2017 04:33:06 -0800 (PST)
Received-SPF: neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=141.255.128.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 141.255.128.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id BFDE0B9CE;
	Sat, 25 Feb 2017 13:33:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5pqvJdTt6noz; Sat, 25 Feb 2017 13:33:05 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 19643B9BA;
	Sat, 25 Feb 2017 13:33:05 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1chbX0-0003dC-SA; Sat, 25 Feb 2017 13:32:58 +0100
Date: Sat, 25 Feb 2017 13:32:58 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: speakup: Replace BUG_ON() with WARN_ON().
Message-ID: <20170225123258.3maetecd6luapnuz@var.youpi.perso.aquilenet.fr>
References: <58b17766.8709630a.800a5.a95c@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <58b17766.8709630a.800a5.a95c@mx.google.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Varsha Rao, on sam. 25 f�vr. 2017 17:53:58 +0530, wrote:
> BUG_ON() is replaced with WARN_ON() and EINVAL is returned, when
> WARN_ON() is true. This fixes the following checkpatch issue:
> 
> Avoid crashing the kernel - try using WARN_ON & recovery code rather
> than BUG() or BUG_ON().
> 
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
> Changes in v3:
> - Modified commit message.
> - Added if condition to avoid dereferencing a NULL pointer.
> - Added return statement, which returns EINVAL.
> 
>  drivers/staging/speakup/kobjects.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 4ea441d..5d871ec 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -833,7 +833,9 @@ static ssize_t message_show(struct kobject *kobj,
>  	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
>  	unsigned long flags;
>  
> -	BUG_ON(!group);
> +	if (WARN_ON(!group))
> +		return -EINVAL;
> +
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	retval = message_show_helper(buf, group->start, group->end);
>  	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> @@ -845,7 +847,9 @@ static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
>  {
>  	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
>  
> -	BUG_ON(!group);
> +	if (WARN_ON(!group))
> +		return -EINVAL;
> +
>  	return message_store_helper(buf, count, group);
>  }

