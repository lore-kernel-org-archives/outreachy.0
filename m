X-GM-THRID: 1517610336256
X-Received: by 10.236.207.230 with SMTP id n66mr11203758yho.30.1424467015448;
        Fri, 20 Feb 2015 13:16:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.126.133 with SMTP id my5ls398855obb.13.gmail; Fri, 20 Feb
 2015 13:16:55 -0800 (PST)
X-Received: by 10.182.226.234 with SMTP id rv10mr12157031obc.44.1424467015224;
        Fri, 20 Feb 2015 13:16:55 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x234.google.com (mail-qa0-x234.google.com. [2607:f8b0:400d:c00::234])
        by gmr-mx.google.com with ESMTPS id kt5si5707730qcb.3.2015.02.20.13.16.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:16:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::234 as permitted sender) client-ip=2607:f8b0:400d:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::234 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f52.google.com with SMTP id v10so14309118qac.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 13:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=qyNSrpMdmwcZZ1p9ucn8GS9Ckq3QwYVLp1B0Vux2wPs=;
        b=YHnifduiJlwMbmEaFxKq+AxdOoDb5XvCaL8kftxBZ5EwD0xJqGdL41ZcI4zs0LxoT+
         gZPAtSPPmB+k3cd+LeEm+xvmDVlqhBkUsJpq7QTNkvbMOy9JgCHdZ4+XPp5g7kwYWIk+
         jiz7NI2qGnoTULNty0M0MYMhaIDimoVz2GdSQJsIaMDuFMd9dMy4CwK/gL2ePkA5CtKS
         H16C89x4UWz6OdknnPxyqoxA5zYvOkfQQ54x2ARhUVeKzYPad/F82iFVhAy8KQZ2gai5
         Cg23Fs2xTaUDobZnAMfEr0FlunPRzpXX84xi6lGg3BoSKhke+PVUl0xWFFooBMpST8Dr
         B0rA==
X-Received: by 10.140.92.161 with SMTP id b30mr10384558qge.59.1424467015110;
        Fri, 20 Feb 2015 13:16:55 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id z75sm12593107qhd.9.2015.02.20.13.16.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 13:16:54 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E7A445.609@gmail.com>
Date: Fri, 20 Feb 2015 16:16:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: aybuke ozdemir <aybuke.147@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unnecessary
 else after return
References: <1424466318-9550-1-git-send-email-aybuke.147@gmail.com>
In-Reply-To: <1424466318-9550-1-git-send-email-aybuke.147@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 16:05, aybuke ozdemir wrote:
> This patch fixes "else is not generally useful after
> a break or return" checkpatch.pl warning using goto statement in lcommon_cl.c
> 
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lclient/lcommon_cl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Looks good to me.

Jes


> diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
> index 23095bb..b8311c6 100644
> --- a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
> +++ b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
> @@ -834,7 +834,7 @@ int ccc_prep_size(const struct lu_env *env, struct cl_object *obj,
>  				    size_index < cur_index)
>  					*exceed = 1;
>  			}
> -			return result;
> +			goto out;
>  		} else {
>  			/*
>  			 * region is within kms and, hence, within real file
> @@ -857,6 +857,7 @@ int ccc_prep_size(const struct lu_env *env, struct cl_object *obj,
>  		}
>  	}
>  	ccc_object_size_unlock(obj);
> +out:
>  	return result;
>  }
>  
> 


