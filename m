X-GM-THRID: 6670105232964321280
X-Received: by 2002:a17:902:9a81:: with SMTP id w1mr7161492plp.37.1553006387518;
        Tue, 19 Mar 2019 07:39:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:227:: with SMTP id 36ls9373448plc.8.gmail; Tue, 19
 Mar 2019 07:39:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwuw4rL5lmCpApmdtsy4ivdi2oHpNjiF1yODGKAw/HUd6UzIKMMVy5YpjjhlICR1EFzC9gg
X-Received: by 2002:a17:902:8e86:: with SMTP id bg6mr7346341plb.94.1553006386646;
        Tue, 19 Mar 2019 07:39:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553006386; cv=none;
        d=google.com; s=arc-20160816;
        b=LhEbcREdwSS4I6TD/xErPfp1N0d/bDe4+4o7w1W/0sH2p8ZpsFs/LiWSHU+ZtaS50q
         P6qcp84vzj5F+W0Du9/pU7PhvzDWxf6aPpp9tk6kV05g43Hdr1QCf+S4491aiD47dOON
         N2oe+4RJolI4LypOen1pRcJE26pHE51HG+YbjICXB0MEOcLR8QHRz/AsYkD5+lzv1dCC
         ZDcVpljtWAuDbZ+JUUnjXduDbs4+tabCkQf7w25Kj4hez5hcXNzwzlqYB7o6vOHMNTyP
         sdJfZ8DX6TFlhWmM5SkOO61i0aV5WKx646sUtbcLNUsV8qdY+0O9u2ybDkxR8g3D8s9+
         6mKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8rBikWe4FqcDJAGHM2UR8beqsMcPYpyHJkuFWzEVgzQ=;
        b=GoD+180ApEsYSxF8Rf2wag7YvGnGUkwUP/g2WrYq7oVBYqR/wgan157K6xif+fCv5K
         wBHSOi5paIyPjEAGq0aUQc7iUprC18CtsKhRYV9PHguTxE86NyooFNGizYoILTiW6XxX
         BACVhMR2GwJXhZ0qafuxQbSIgLUOJSr6JxHeGyNHRlAOQ2Ek3Nx3Tps07nuNTRDK1Vqk
         8oyE6QyGwVXwtUy8lcIuxYuIYOCqahwScdfWPRzCgmfl77X814j4tWz3gLzn37OenoV8
         1+DXRZk0vIp6xY0Y8swp4LyWB5Jx4SJK9UXDguz+uyQbke01Eo09N5aMQd7PYSnNZWfh
         Mlkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vcQ1SbuX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si686183pfc.0.2019.03.19.07.39.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:39:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vcQ1SbuX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D4DF82133D;
	Tue, 19 Mar 2019 14:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553006386;
	bh=qKak+vYm2L0IP8R9vZxWORb1ZtyOyftFUIuw5+aGLJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vcQ1SbuXK/aDb5RRBxSeIA3iVgKfbKQabp/pcBkge0MkN/wlwLw0R+iGzrdGxHG/E
	 pr4MCinxdzfaJG1ZbTOGPqlx02Z1o3qV06SgF26Uge7YXWmsCxCBdjoUtbb84ozMdm
	 fE785WgfTkrHqr9tQ17U1uX8en4TM69LJ3iVVY5E=
Date: Tue, 19 Mar 2019 15:39:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/3] staging: rtl8192u: r8192U_dm: Remove unnecessary
 blank lines.
Message-ID: <20190319143943.GA25838@kroah.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
 <20190319143003.9118-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319143003.9118-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 08:00:03PM +0530, Sanjana Sanikommu wrote:
> Remove unnecessary blank lines.
> Issue found by checkpatch.pl
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> No changes
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 1 +
>  drivers/staging/rtl8192u/r8192U_dm.c     | 3 ---
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
> index a8c8e8c0660d..0c42eac07e2c 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.c
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
> @@ -230,6 +230,7 @@ void phy_set_rf8256_cck_tx_power(struct net_device *dev, u8 powerlevel)
>  {
>  	u32	TxAGC = 0;
>  	struct r8192_priv *priv = ieee80211_priv(dev);
> +
>  	TxAGC = powerlevel;

That change is _NOT_ removing a blank line :(

Please be more careful.

thanks,

greg k-h

