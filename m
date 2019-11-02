X-GM-THRID: 6754555674055671808
X-Received: by 2002:a2e:819a:: with SMTP id e26mr7706039ljg.26.1572678218870;
        Sat, 02 Nov 2019 00:03:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c53:: with SMTP id t19ls1224972ljj.12.gmail; Sat, 02
 Nov 2019 00:03:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVMxa9G22kc/LxLj1Crgf6yOnWSvY2NJruUY4gVV+icSZ0/m0p8KqkC1pqtEWXpjbfUDEk
X-Received: by 2002:a2e:28a:: with SMTP id y10mr8861130lje.155.1572678217360;
        Sat, 02 Nov 2019 00:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572678217; cv=none;
        d=google.com; s=arc-20160816;
        b=E6iOqIbRda87SQDLBkCimnyBITKwJ+OOEKO3jiG/FD7L5fnSkHX6+/qu8mIOVOrcam
         /f/bAMoSUQ/IHiNpad708ayBhjhdhwxaj2cAaMc8s5Sye9tsMbeZZzs4P81Hwyq7slrV
         MX0xRAZNUSZ9rbKwnbVjw7ZAPmYCCMhOnCY6EzXjcEPudr+RR+bj/eFo9iN5X873AtGV
         Fra66DboXWb67XfHjmt8TFaoX988GK0NCHUaWpCnYEHf0vKanOg7+o9/kKXmlqxIieOj
         k+7s22YSj285D9sQD9O0m3IzJV+yw0FUBPk5YmzdY4Sjf/1TKkl0u+zhGsYy8zyX44zy
         cjGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vxRftW5nlBrPHBUqjtuBnTBcyCNcX9wxOGrAOhYEoUo=;
        b=qXe5FGs8CbAaS7tTyoBNWl51RDUCGNT0PoSEg5HkQaB6tNc3bnyNd8iTn2alMWaEdx
         /pLBMJxS9qEXoggl7tPicI0OD1dLcza/1G8X7DmmGBjNgCKcL+GdFHZF1LbmcIjrO83Q
         8GmFJprXBqhMLsDsS3hTxhFvp3DnYZQo6NkM2l6/35lbQsiUQojBrkzjpxJ1NTdnplc0
         1pAhXCnqT3d1aNe6PA9PIhKlDX1ZRRlfMYmGjXlvyPPgHHv644HdTakn1Jpq7Jwv+ufN
         d1l3l9Kw4kjZG0Bf3TLoOQir2wUbEOzu0aXzNzOa/XQbEsiVLIy03/EKrudecSTi9xNF
         z1TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 17si412315lfa.3.2019.11.02.00.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 00:03:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,258,1569276000"; 
   d="scan'208";a="409969638"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 08:03:36 +0100
Date: Sat, 2 Nov 2019 08:03:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org, 
    Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: exfat: Fix logical
 operation continuation
In-Reply-To: <ace2cbd5e4c03751fb522e7bbd60149e7ed969ae.1572666556.git.frank@generalsoftwareinc.com>
Message-ID: <alpine.DEB.2.21.1911020803230.3254@hadrien>
References: <cover.1572666556.git.frank@generalsoftwareinc.com> <ace2cbd5e4c03751fb522e7bbd60149e7ed969ae.1572666556.git.frank@generalsoftwareinc.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Frank A. Cancio Bello wrote:

> Operators inside a multiline logical expression should be at the end
> of the line not at the beginning. This patch fixes two of those cases
> and remove an unnecessary parenthesis too, to comply in that way with
> the preferred coding style for the linux kernel.
>
> Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/exfat/exfat_super.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
> index 77984a73ba6e..5f972588669c 100644
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ace2cbd5e4c03751fb522e7bbd60149e7ed969ae.1572666556.git.frank%40generalsoftwareinc.com.
>

