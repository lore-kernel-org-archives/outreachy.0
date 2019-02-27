X-GM-THRID: 6662701472934789120
X-Received: by 2002:a63:6b41:: with SMTP id g62mr1238521pgc.47.1551281978562;
        Wed, 27 Feb 2019 07:39:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2c81:: with SMTP id s123ls655333pgs.6.gmail; Wed, 27 Feb
 2019 07:39:37 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia07hWfO0eovD7FS5yJARXfo/j4v3/hzn5gxJeDU7JCt0cNb8/FllqcJE0Z/ximSNRp1km+
X-Received: by 2002:a63:ce07:: with SMTP id y7mr1247452pgf.105.1551281977772;
        Wed, 27 Feb 2019 07:39:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551281977; cv=none;
        d=google.com; s=arc-20160816;
        b=xA/Lk1ku+AYNr7x8Y4hJpVPkOIcguUI+oAt7NOgZ0Ge1mgH7TJXQfhGbuIRCuejgkd
         98jQ5rugRVWh+mnQBiTdLGkC9cCeowkHTtr/4JtHJkTis62adTqrdbNE1KQTRwCANa3P
         kd3H0jA5ewtMai2pISpueP2F8aj2XWfgVZJIFk5qmSPTIJmOSHowgi4f5085DaxSsCYd
         zeixrZ0eFYpjJBflLpZl61t/wHgUnF6NjY/oHP59Sc+DRO6iS6S8dGQKysorXC6OnM9Q
         iEPEj0qm13GUMWJZYjY9Vg5BUORR6pJfTqKoOQBnHDvB+TCA34m3H+FIK/rQL9A/5oGf
         4VaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dP0EhIG54iw/0qkrBBUw0OLWx+M2BNgcvqfyxs94qUM=;
        b=WdekytxJA8QodGrq0AM+JdNH7BuZm+hMuUNzmkmukmPTvZKlpZlS1IwhRMlFMtBnlL
         t7q7lY79JtO4ZGXel4dKZe0bTNIJkUgtEa/krdygGWPQqofHqJPQdxmGmC+VCw/eOB4Q
         PUUPnWs2eyDN3NuzWcLgT4iCOfqYiMILy6H1PvGQ3739NIQcUfiJTxthTFTtG0rIg2tV
         NgRbSQ2CLiVslLis9CPeK/mKCzmIdAFjUGJ7iKziPwbtIpJjjyYM6RpoPOioYWlW/SP5
         oq1zJq4lKX4A+OZhxbnv87T0UbWJzDLqBr362fWd+nUf94v4A4wpXGx7v0x43tq+Msw2
         J8SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="nGofQph/";
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b38si556896plb.1.2019.02.27.07.39.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 07:39:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="nGofQph/";
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EFAFD20C01;
	Wed, 27 Feb 2019 15:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551281977;
	bh=EO7AuF4g5piRvM5t0ywrS8uqknK4XvXiEwBBIQhwKXA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nGofQph/R6y8uEV/ZHM0+68EqkA8v89Nnu/ygM/dYTysdLam1k4ykkTk6d5Utbnsd
	 bnti5GLBgYzprETMTly/GIPspyRvlMgzVLDEkbh6h7LSXGjFQW4Bo3+VneFXrxwghk
	 01jWftHRP4XcM4zkEVAhqpnFQ4j0NMeUghJIB4V4=
Date: Wed, 27 Feb 2019 16:39:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: line over 80
 characters.
Message-ID: <20190227153934.GB16361@kroah.com>
References: <20190227152422.GA4547@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227152422.GA4547@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 08:54:22PM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/speakup/main.c             | 14 ++++++++------
>  drivers/staging/speakup/speakup_decext.c   |  3 ++-
>  drivers/staging/speakup/speakup_dectlk.c   |  3 ++-
>  drivers/staging/speakup/speakup_soft.c     |  3 ++-
>  drivers/staging/speakup/spk_priv_keyinfo.h |  6 ++++--
>  drivers/staging/speakup/spk_ttyio.c        | 20 ++++++++++++--------
>  drivers/staging/speakup/varhandlers.c      |  3 ++-
>  7 files changed, 32 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 869f40e..778bbde 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -901,8 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, int read_punc)
>  	while (start < end) {
>  		sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
>  		if (i > 0) {
> -			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.' &&
> -			    numsentences[bn] < 9) {
> +			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] ==
> +					'.' && numsentences[bn] < 9) {

Ick, no, that's much harder to understand now, right?

The 80 column ruls is there to make it easier to read code, not harder
:)

thanks,

greg k-h

