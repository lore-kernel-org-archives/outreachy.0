X-GM-THRID: 6668655286716203008
X-Received: by 2002:a24:5a04:: with SMTP id v4mr7122645ita.37.1552820284648;
        Sun, 17 Mar 2019 03:58:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls4605798jaf.3.gmail; Sun, 17 Mar
 2019 03:58:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2oUiAygG0OAUu6Nf2Wtm7VIWoZ8yEnTyXtsM0nKFFFHq8RYn4gTyLOg7h+eQpbNQ+M8kL
X-Received: by 2002:a02:5ec9:: with SMTP id h192mr5168531jab.2.1552820283946;
        Sun, 17 Mar 2019 03:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552820283; cv=none;
        d=google.com; s=arc-20160816;
        b=i9J4V0yfLSxP1Ko4mkVAx0MlpHExjxwIWTzgY+KSdjSf8J7N7pjB2uyImJBSNJ8I29
         uBTHjAldmwt8O9AnY1VzIm+096ydak3plpjwQIBAexR0+RWxb58ohBotLAjFjD1dZb/R
         JmcfI6bn/9KCIaA8yhRppc1k9beBVPKoHuRMOe/7DqAGJbZ/M7DbI+MapUNW/ScqzvSF
         MehCkSV9I7+NOXVdJF37RbgJ1UMN9+4FWSpFfdtGJjZUPt4G9anSM8+0XfWsgp8akLM/
         udoGw86Q3HykbpXMXqbAqoCRnGlhYY2JkU7lCwzY2IBJ3qde1JfDANkuzb7yEpHWsjzX
         gFEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PntqPUpwl5fJ9NaeRJsCXm209C9BuPfHdDq6iwBd20o=;
        b=Hs1cW4eH+N0E8EGvvHbK4TgUTUICaJloTjYgcecHBZ2RqSwKQre2Vm+2VeutS4fVGD
         ANOIlOqLn6LhjaxdrN4mj1ZQjw/HH7+fA+1Auj4kK0uF/QQFblNeZmtn34PVuKBdLLee
         ZnhZ5ExO0B81wtTmh7EudibiIMRvFImtrZb/EuDII+ixPGtCZlHDoH+zwGkDUgPYU9PZ
         Wz2zX2jjOYbcnugYim0n/GsftaD6t3DNiCEf6DmSdjGDEOJcm2DXCaa2CDPoNfH/gctn
         2TRbT5a1qHhdfQsp047FLSQOfETOF481OcnHTOk8RFRxm2Ph69WYgQIrazsj0JhHx6R7
         X+aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xk8ZtAmY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si365939iok.3.2019.03.17.03.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:58:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xk8ZtAmY;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B956221019;
	Sun, 17 Mar 2019 10:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552820283;
	bh=+nIPrd8QW/p8JtWP8G/55XAYO5OIyNcHtKwKICm+cbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xk8ZtAmYFFm44Z1RXYmv4BuDg//4vtgrZjUCymxpqN6fQhtz6yIUyVaBLBVjkN7Rs
	 ooclS9hgsCJwxNdThOTkCTRtaR6Bse8u2xcixqtYGF4YMfrFNma76cOeSZ5+jRxdlR
	 b3Y/BvaGzHpyXGuUSTwnIDiyfoW4+HdbKnSvTVxc=
Date: Sun, 17 Mar 2019 11:58:00 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtlwifi: remove unnecessary statement
Message-ID: <20190317105800.GA27187@kroah.com>
References: <20190315162808.10646-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190315162808.10646-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 15, 2019 at 04:28:08PM +0000, Jules Irenge wrote:
> Remove unnecessary assignment statement
>  and variable before return from function.
> Issue suggested by Coccinelle using ret.cocci.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_rainfo.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> index ed740a93c8b6..c9837fbde54d 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.c
> @@ -926,8 +926,7 @@ void odm_refresh_basic_rate_mask(void *dm_void) {}
>  
>  u8 phydm_rate_order_compute(void *dm_void, u8 rate_idx)
>  {
> -	u8 rate_order = 0;
> -
> +	

No need to keep a blank line here, and you have trailing whitespace,
which checkpatch.pl should have told you about :(

thanks,

greg k-h

