X-GM-THRID: 6465599179763744768
X-Received: by 10.25.201.136 with SMTP id z130mr1213530lff.3.1505389900230;
        Thu, 14 Sep 2017 04:51:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.70 with SMTP id h67ls695305wmg.26.gmail; Thu, 14 Sep
 2017 04:51:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBNcn2eYghLbObRE+3ITwrHZBXIHdORomcjrq45PA0otmmXGZZfMXtDzh6oHawyuqXANr/5
X-Received: by 10.28.184.81 with SMTP id i78mr189590wmf.2.1505389899153;
        Thu, 14 Sep 2017 04:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505389899; cv=none;
        d=google.com; s=arc-20160816;
        b=vqV/EWjY9zv2mbAMij9TKDv9hctyr2bqo8J1KISPvAtJxYRejMrZLhl7tPIqBHCtsl
         naDYD/eNYX4VrRDkP8J0n0ZEFCGFKgxnzO27ugQxSifwtPIEOXx+W94YUfmevafufE5F
         Fs0FfspPIcBxQh0N/LyBEpebkwOefDdXazAIax8jlChv683Rw/1aMVmBP7Rp3l3QlvAj
         ADtkL4WV+uI5ZieK60KL2QK6B80YfODZUUF/MXDZbNBSIDopSLQ8TAylRPhy0ILMjrZg
         A0eNrOw5jrCZ40IR5NLZLzJ4xS2DRp/l9JINGZINZ2JmD3ERBK49Dp0YYHf3KeJOEafj
         TeDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2okER3t+trigC6t6bRvvqCq7g94LXsw8x1/Grlnb2Tc=;
        b=EELpp+sFkWuL2kxHe4CmkINrpACPrBWkRxL1j98ZMJ/xj5Yfsq2es0u8l+s1K7gJCc
         XElTU3GSCdy8BjsdLF8DtkQZMjNiTZ7yrLAOYBlS2MpRagElZjxeUX5IeJQGkH9GCf9r
         tkdEG6mZ2Z1fBP6v2MmCj6gO2r7L01kSALOnFX3n+q36kjsE8elvC1KZ+LZYnr/dRiXO
         WOHp7gzSKFTKKlYtGNGD/tODXEUdra/VoB/DaCUiTjci9BDTcu2PQjUYHgXjcypW9vve
         SoDZ0NiJ1E0ouSYCvhYvL4nHiC+h/+gUAGzgT+V/oaOT/hBHALNjObC8/k0HDm7Dke6G
         zvmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si90551wmg.4.2017.09.14.04.51.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 04:51:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="237478657"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 13:51:38 +0200
Date: Thu, 14 Sep 2017 13:51:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fix comparisons
 should place the constant on the right side
In-Reply-To: <1505389603-8642-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141350240.3185@hadrien>
References: <1505389603-8642-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning:
>
> WARNING: Comparisons should place the constant on the right side of the test
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Technically, both sides are constants, but at least one side looks more
constant-like.

julia

> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
> index 4f213c4..a3c0481 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1130,7 +1130,7 @@ struct lu_context_key {
>  	{							 \
>  		type *value;				      \
>  								  \
> -		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
> +		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
>  								  \
>  		value = kzalloc(sizeof(*value), GFP_NOFS);	\
>  		if (!value)				\
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505389603-8642-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

