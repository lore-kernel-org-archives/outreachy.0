X-GM-THRID: 6754207479593172992
X-Received: by 2002:a5d:5221:: with SMTP id i1mr8639460wra.297.1572593065844;
        Fri, 01 Nov 2019 00:24:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e8cc:: with SMTP id k12ls6056214wrn.9.gmail; Fri, 01 Nov
 2019 00:24:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy/0w0pmv2je4Bhk6C5o7u7EmZLg1AEVXUwkKx0OKPQLVkrANO/EsS3LxCdB73bRySmKCT1
X-Received: by 2002:adf:ea07:: with SMTP id q7mr9542834wrm.78.1572593064638;
        Fri, 01 Nov 2019 00:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572593064; cv=none;
        d=google.com; s=arc-20160816;
        b=R+QWFMYs2O3Qifx7vUtxRpAFY0kPXb/N59PwX0V0DcRhGtSYa3zOmyA8M5WM23DQRH
         sl23ktXMIl17dNPSWAR0GYnamtxPTnxjAfRAOFADpBY3XvPM9WqIG24fc7FMT/azDnD2
         KamSQuaOtE6jSkHjqrpQPqi7N36iGbxT5jz5mD6wVnMz/m9ADCUSQGY/+cvHY1VdSSRi
         6kcV7NvC0wP5bvvVqUAMuMy+277LnQqvZNYGMLjTyghAM77zGrklk8TvRzkaHCGpeLVW
         29nfzKdKeK7EuJsn6k0uO3eBot35RZJZwmvqd7MpvBXHW/ZVdAAHlMq4AF9up6RWTMLM
         Teeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FQOygDMDy2qCPjhS3jqg2hDoAyNljfBgOPRTsX3ZGP0=;
        b=s5h5yOUpaGnGVNXVawvgXdaOt0gX55VcYWXMVx+PPhfDvOJQS14gMk+9YkgcP45/99
         WRt7fMdarKr7Zc/VzSVgM/ogIhtbszYbUNVH+FxraCKcNX0Ocus9zKQM86ILkqAxjfKD
         dDjLZPBgV2Dj2/TRytZanTe+u71wPCqzvljKUsfXGBWm+Jw50KGY3U429a2xCp57bW7B
         Ie3Tt72XhwBp6TM2cgBaR04rRyQ3FmtEKnWnANMDG2LPxBvCNNgE7HSQx1BEPM8T+Y/K
         c5pdOUoBS9fqMx2oDN5nPqidG6ikXYgslglqLZEadDoou7FAU8NQkPzsZh8ZrfICCSRX
         5QqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q1si25802wrc.4.2019.11.01.00.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 00:24:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,254,1569276000"; 
   d="scan'208";a="325305515"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 08:24:23 +0100
Date: Fri, 1 Nov 2019 08:24:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: exfat: Fix logical
 operation continuation
In-Reply-To: <4c1e92802ad82567fb312bce096386d3285196c1.1572586238.git.frank@generalsoftwareinc.com>
Message-ID: <alpine.DEB.2.21.1911010822090.2883@hadrien>
References: <cover.1572586238.git.frank@generalsoftwareinc.com> <4c1e92802ad82567fb312bce096386d3285196c1.1572586238.git.frank@generalsoftwareinc.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Nov 2019, Frank A. Cancio Bello wrote:

> checkpatch.pl message:
> "CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the
> previous line"

Actually, in general, your commit message should not just repeat the
checkpatch message.  You should say what you do and why.  It is good to
also acknowledge checkpatch if checkpatch helped find the problem.

This partch also drops an unnecessary pair of parentheses, which would be
worth mentioning as well.

julia

>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  drivers/staging/exfat/exfat_super.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 3a7a10dbded4..3e19d5d7ef20 100644
> --- a/drivers/staging/exfat/exfat_super.c
> +++ b/drivers/staging/exfat/exfat_super.c
> @@ -2980,8 +2980,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
>
>  	pr_debug("%s entered\n", __func__);
>
> -	if ((attr->ia_valid & ATTR_SIZE)
> -		&& (attr->ia_size > i_size_read(inode))) {
> +	if ((attr->ia_valid & ATTR_SIZE) &&
> +	    attr->ia_size > i_size_read(inode)) {
>  		error = exfat_cont_expand(inode, attr->ia_size);
>  		if (error || attr->ia_valid == ATTR_SIZE)
>  			return error;
> @@ -2990,8 +2990,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
>
>  	ia_valid = attr->ia_valid;
>
> -	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET))
> -		&& exfat_allow_set_time(sbi, inode)) {
> +	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) &&
> +	    exfat_allow_set_time(sbi, inode)) {
>  		attr->ia_valid &= ~(ATTR_MTIME_SET |
>  				    ATTR_ATIME_SET |
>  				    ATTR_TIMES_SET);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4c1e92802ad82567fb312bce096386d3285196c1.1572586238.git.frank%40generalsoftwareinc.com.
>

