X-GM-THRID: 6462772146556895232
X-Received: by 10.28.153.6 with SMTP id b6mr83040wme.20.1504731526267;
        Wed, 06 Sep 2017 13:58:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.151 with SMTP id n23ls315473lje.30.gmail; Wed, 06 Sep
 2017 13:58:44 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb53SwbQSZa8AxHV3xK3Jcq7CF/6+APLd2aVkl3rG4dij2RSUgQLWRRIdZpP22+WtBNB+yXW
X-Received: by 10.46.85.22 with SMTP id j22mr37233ljb.29.1504731524741;
        Wed, 06 Sep 2017 13:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731524; cv=none;
        d=google.com; s=arc-20160816;
        b=zjYp7oF8AiMBMLo4FoxiV9h56IgSDG2ajCoJbUoz32AWxsIJLABaFTKtBWVDrQtBg0
         W3TUfvwTVxT6Ep1PWG7qm0k37gLAZEyhX+szYvn2MWKzxHTLktQjViaKHH30zMAGMtEQ
         HXJ5KN6IxVlTIvNJ3ChmzBzBTgkd/M7WopzZe5j0zcYebAh+3yPMyPPkrdKlcOEieuou
         g7870ar8qy0oI87HV2AppT8Zn5AqMaTKciwst8v/kTGoddU3MpFFFpmWY3SrGa3aclVw
         XsH8n+EY5VVTW5JlErYjRfvhX7RhlpbnGx7sFggLU1zp9VTBewfE8XhCfywmbfCSPfHV
         hAQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NzfNE1F53fdu55foPL+GbvwVzWZDt9AXDdACYWc4dk0=;
        b=czd8/Pjik6P5uwvBcgOfefyS0sqZTMJBCoprSGy16nFc9ENlnxwHRXLOdQUv4eLtSo
         2hgQhem0Owc9/cdDYcLO8TPBly22n5+vb5WGcRH+zauuqTLU6hyWMraBkj1zj8cV0MeO
         j2LVoEvh3C8T4FcP7iS2CWk8WnHSGSMOb8Ik7ib4eccLjneMrhNXdOZ0B1MhZZqPZsfS
         gqQEIeGc0hjGA5pbNApGQLAckTHPOfxO3kD8JJgkifYsEb2+W/SutHjCdh8oThpjYPSJ
         x7v5maDqlwou/71l95c7FP1haAm4w5JFVfqiSyE3LhnBe+7ShbUin8eUc7uQGafgxnQW
         ISrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i17si185715wmh.9.2017.09.06.13.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 13:58:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="236572172"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 22:58:43 +0200
Date: Wed, 6 Sep 2017 22:58:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, gilad@benyossef.com, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: ssi_cipher.c: Make
 comment more comprehensible.
In-Reply-To: <1504731390-9536-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709062258000.2984@hadrien>
References: <1504731390-9536-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> Edited comment to make it more comprehensible.
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
> Changes in v2:
>  - Make comment more comprehensible , instead of just correcting typos.
>  drivers/staging/ccree/ssi_cipher.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index 99232b2..fec2faa 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -702,7 +702,9 @@ static int ssi_blkcipher_complete(struct device *dev,
>
>  	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>
> -	/*Set the inflight counter value to local variable*/
> +	/*
> +	 * Save inflight_counter in a local variable.
> +	 */

This is the format for multiline comments.  Your comments is only one
line.  You just need to add spaces around the text, as compared to the
original version.

julia

>  	inflight_counter =  ctx_p->drvdata->inflight_counter;
>  	/*Decrease the inflight counter*/
>  	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504731390-9536-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

