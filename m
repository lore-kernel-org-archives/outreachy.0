X-GM-THRID: 6668772071902806016
X-Received: by 2002:a0c:9805:: with SMTP id c5mr6759142qvd.13.1552820430135;
        Sun, 17 Mar 2019 04:00:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3fed:: with SMTP id w42ls6339278qth.2.gmail; Sun, 17 Mar
 2019 04:00:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzy2CLzcwY1/rSotpkEK+0uSkqiEDRgZSpH7Fomrc5/BlPz1Vb8f1jRZvL/+l0PST7Es7Mx
X-Received: by 2002:ac8:2b3d:: with SMTP id 58mr7104541qtu.46.1552820429628;
        Sun, 17 Mar 2019 04:00:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820429; cv=none;
        d=google.com; s=arc-20160816;
        b=XS2YnRIiIEKZ6PnOOAW5E2wFMM4izp587SZ28YQGsO009VpL1GwR4rlOBfOfD3AjcT
         kn6UCQW7MfkbShPFd99JhZQ2ckn2qHft0losGxtlOCyB1jtFmquq0nvd1ATbXmkrBz7x
         N3+ByDMhJnwAhoWaAE/P6uDKSq1OYZcX2zP0IUVNBJ2AfHNPa5UpIugK+/MVcFIsoJ+o
         HNByz3yex9p/R1jNx2uBxnHOFZZyTGvTiJAnednfr9ev+2+3TqsYmJZQ/tosrvgp6iiH
         USse9wUyoXOTr1y1NMDcEP300nvLznKxaLbRPWYxibnQOFBH5iJR4MDEZnjmoBNxBeFj
         qzSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PFrlYZjyPr6Ty1QJairPkdZwVWD6cKKnWWRB7ufqRE4=;
        b=sllrh9Iu7xYAQpA7EijmYxTTSeC9XGBjCPykU5bYcl/t6ISK3K0uC3XgdlyKYfFmjw
         VN687lHfjPsaJ4FCiETmjLGaRPxR09AwlZQMkqIVqKw8WpA8QWhGL1WhTmZdg+KYmIFZ
         Dd+IA5aoEo8CrMGxYhpL8XMGmu7bcQ4bamUvseEqOf2WVdSFhUrv8FslliKGbFeW4sSy
         zoHUGYQNqvtfMUe641UP8DgMJursBa9qtwJoJ9b2O3SktlttoScJ4o+QIlvxzCNLdokd
         C8ROrbXU3rJAYtH2w6hB701QhjA+cd4v4JwDmu4SDOlAu0w8WjDNMYIW6RNzOZEePwej
         DDkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Isvy9H7p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u65si314723qkc.5.2019.03.17.04.00.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:00:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Isvy9H7p;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14A9721019;
	Sun, 17 Mar 2019 11:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552820428;
	bh=0LaxLznmtgM5RTmUwWLkpVUzpiW7wyKlQwHsk3lQJpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Isvy9H7pC2jV9O12AMZAN7znj4JhQNeKOvx7Cut6lfDRm16+0XIAN602c8N/+FWg2
	 mXLOdyptCiPCVkYIGdjpO83fQwhkBrPdio1KE8lD228AwPJKfzmTzcWQeAlUv4Ng36
	 Nvp1ONsLEARHp57sdo95w9VcMbwLKHNO2IHiYstU=
Date: Sun, 17 Mar 2019 12:00:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm759fb: fix camelcase check issue
Message-ID: <20190317110022.GA10411@kroah.com>
References: <20190316000109.22244-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190316000109.22244-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 16, 2019 at 12:01:09AM +0000, Jules Irenge wrote:
> Lower case of parameters to fix camelcase warning
>  Issue reported by checkpatch.pl tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..6bdf643707c2 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
>  	return chip;
>  }
>  
> -void sm750_set_chip_type(unsigned short devId, u8 revId)
> +void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>  {
> -	if (devId == 0x718) {
> +	if (dev_id == 0x718) {
>  		chip = SM718;
> -	} else if (devId == 0x750) {
> +	} else if (dev_id == 0x750) {
>  		chip = SM750;
>  		/* SM750 and SM750LE are different in their revision ID only. */
> -		if (revId == SM750LE_REVISION_ID) {
> +		if (rev_id == SM750LE_REVISION_ID) {
>  			chip = SM750LE;
>  			pr_info("found sm750le\n");
>  		}
> -- 
> 2.20.1
> 

This patch does not apply to my tree at all :(



