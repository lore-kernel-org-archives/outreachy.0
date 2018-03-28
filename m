X-GM-THRID: 6536479698699943936
X-Received: by 10.159.52.85 with SMTP id s21mr20479775uab.23.1522238262768;
        Wed, 28 Mar 2018 04:57:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.2.1 with SMTP id 1ls501307uas.16.gmail; Wed, 28 Mar 2018
 04:57:41 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsAl5TW0QwzpW5yeuPBDH948jmURzuCj1IAIGVQlySHGdWmmk8PkEgrqYY3DOwIlu1wA188
X-Received: by 10.159.63.139 with SMTP id k11mr9888164uaj.124.1522238261771;
        Wed, 28 Mar 2018 04:57:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522238261; cv=none;
        d=google.com; s=arc-20160816;
        b=cWVP0R6tFrfu/Svf/y1PWQSIJqHCx5qKgbL023Nc1lO54GRokX7Lu3APmlGoUQvClT
         j8ZHZ/Jo5F/gSsbF3OkRfmY14w9DomslyOIZ0/+YxERljrzF0oP74Mbiww4sesDwR37c
         6tmADfviQbgAzvWgxrB6rnQn2vn6oLOJm6sElXFZnXtfS693kDJWVHIHpzVyY6+ii74K
         XH2zZoEFAiTmZlHtlHkhm78m2xIw+SzGz0fioxc4XBoNNUjOYQyXQ3et9L1xqZbKTo+3
         tw/k9VyvoJQBSgOxDWCsOWd7+NKABOj9Ah6/p6N4gYWqCOJxpZirjgx15E4gim75WNbU
         rCPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=nFZFx+YXiM1u+rWSu/Gk/B1b0BZx4TemRDuQZ5ergpk=;
        b=Zny/f9snJUoZWIPSorUKyjAKWb3jDbD7JHiZfRlsTsu0jGKINrBwd02qdX0hiWgihA
         Fv9BoJ5l8lC06QvD7pfAOXMKGY9tTp+9EHuqkMfWN0EM0FiuBJ73Cn/b84FKOvrr2GhZ
         0Gbu1OKDKpbYh1rNai6gWZ9wMm7I7XjaST2f0qy2MbYwrP70w6sO+yKBADo543/oMqL9
         iveeTSVCtbsG0KJvDE4MQ6BBxhDCJNFOvFRkFwePV/wDx3tRmcMrxHv0Cvp44cxgzGvB
         7oUikZl9rwTUOuHWRJSHnLHsm/BUa4iAK0oSJ3B1eg3cmEoJrtZi8/Awm7gyV73ovnPb
         LY7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k10si214806uab.5.2018.03.28.04.57.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 04:57:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7D7501102;
	Wed, 28 Mar 2018 11:57:40 +0000 (UTC)
Date: Wed, 28 Mar 2018 13:57:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 5/5] staging: vt6655: Remove else after return
 statement
Message-ID: <20180328115738.GA2145@kroah.com>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 24, 2018 at 11:59:18AM +0000, Nishka Dasgupta wrote:
> Remove else after return statement. Issue found with checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v3:
>  - None.
> 
>  drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
>  1 file changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9c4a532..89adee4 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -568,28 +568,27 @@ s_uFillDataHead(
>  										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>  			return buf->duration;
> -		} else {
> -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> -			/* Get SignalField, ServiceField & Length */
> -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> -					  byPktType, &buf->ab);
> -
> -			if (is_pspoll) {
> -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> +		}
> +		struct vnt_tx_datahead_ab *buf = pTxDataHead;

NEVER add a build warning with a patch.  That's a huge sign you did not
do it correctly :(

Because of that, I can not take this change, sorry.  Please fix it up
and resend.

thanks,

greg k-h

