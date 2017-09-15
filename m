X-GM-THRID: 6465882401621934080
X-Received: by 10.28.140.199 with SMTP id o190mr202780wmd.6.1505456467654;
        Thu, 14 Sep 2017 23:21:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.144.147 with SMTP id s141ls141537wmd.20.gmail; Thu, 14 Sep
 2017 23:21:06 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5Mj9x8Am310tq0St0pE7GrDa7JIMzLMMBHb0BwJDlMGdfI8Aib0ZbCtF894vJ1HzzIFe5w
X-Received: by 10.223.184.197 with SMTP id c5mr1376678wrg.17.1505456466722;
        Thu, 14 Sep 2017 23:21:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505456466; cv=none;
        d=google.com; s=arc-20160816;
        b=cNgXvB5+K6YYvT+cQ4GgdpMGqW67S5KLnvTsvnZATkwShshwN/q+Cct8c/s7z9Xeae
         wUDDbQtPOCPCMCrRi8qeSRzi5Tb04wws0qnUMXiVNXK4jHeLBkj7jNS/K9urPC3lB3mK
         jNkNQI+bfNNuQjqM19TRNExsnU/yGVdVC1IWS4DVftsqNPhGrgw40b72F0L3SZ7PH7GO
         3pM3gX1QQ/Z9MjZqammL59eOsUG02S3PwUQKkUAzn87Mx591k+tyiDtT5DN1M/3z80Tt
         QxUqmZ/dCJHbqV8FzDbwF5iAH+CRqDVvH64A4S2EDFMRFjE8kk5GsuDv52u6qMlYrW5f
         oQgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8O5b+L6q2VH0PJh+hhIpxcEyvlaHT4WVNpS9zYu+7cg=;
        b=yfD3/9HrcJ6aWEdgr78MS1Bu8LHYvd4dchLRdegAiZPPcygA/K4eEfZAf2pL+Q28y9
         0U1iAJWD4wsn1tevYblDMZlSz2VD2cYga0OYla+MOOBRtvVGtmAZBgv06xnoDriObRxg
         gK+p4VEbVmaHAQ8uNjM2XPGWcox2c4R0pzOoAyaMVFiQfZEMQf45odyqHRaOHObJYBhv
         Vp79fA40OjTy2wp7V9D/hVN4MgT8W2MYeja92C7ea/PnWvp1fhL0724DwN1Fu+1hPB30
         kpMJgSiO58VUAlTgzHmgHwMX5E1bksRPxTleu9HPSwuDGA+fvLrW1m2CiLJo3It000Kv
         18Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si187066wmj.0.2017.09.14.23.21.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 23:21:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="291184197"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 08:21:06 +0200
Date: Fri, 15 Sep 2017 08:21:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: fid: fix line over
 80 characters
In-Reply-To: <1505455551-14649-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709150820250.2287@hadrien>
References: <1505455551-14649-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning:
>
> WARNING: line over 80 characters
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/fid/fid_request.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

This one is on the same file as the one I acked, but is not in a series
with it.  And they have the same subject line.

julia

>
> diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
> index ba73623..6a98225 100644
> --- a/drivers/staging/lustre/lustre/fid/fid_request.c
> +++ b/drivers/staging/lustre/lustre/fid/fid_request.c
> @@ -279,7 +279,8 @@ int seq_client_alloc_fid(const struct lu_env *env,
>  	*fid = seq->lcs_fid;
>  	mutex_unlock(&seq->lcs_mutex);
>
> -	CDEBUG(D_INFO, "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
> +	CDEBUG(D_INFO,
> +	       "%s: Allocated FID " DFID "\n", seq->lcs_name,  PFID(fid));
>  	return rc;
>  }
>  EXPORT_SYMBOL(seq_client_alloc_fid);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505455551-14649-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

