X-GM-THRID: 6747862437229232128
X-Received: by 2002:a81:244e:: with SMTP id k75mr17166495ywk.208.1571158503021;
        Tue, 15 Oct 2019 09:55:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5f51:: with SMTP id h17ls356643ybm.15.gmail; Tue, 15 Oct
 2019 09:55:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxB902a/m8EVfzLeI3TUs+V11YS60mC7BoJDuNRsBSlzRXJgU7nIyGzzULbExOJY65r3qNb
X-Received: by 2002:a25:7207:: with SMTP id n7mr18006086ybc.406.1571158501649;
        Tue, 15 Oct 2019 09:55:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571158501; cv=none;
        d=google.com; s=arc-20160816;
        b=aH0xb1uNv3yYSfgULRcgM2Cx9aiicqwtCkzo0lpkl72XBP4pdNdJLYxRdNWFPNbw0H
         ZO1L8nhjY1Z1acBH/9/gFnxfB4/DzsRkQUh6R6kOt/XgctfiHAGxazNc7LjdJ+dIfEMa
         qLblCVKkozmaTu43ALI5yA2/cJam9WqbFoC2k86F/WvcsjY4ivO8bjCBJKY9duVj9yuc
         tqzHv8pQwVI7n5KufXZCdnW7VS6+Mw+GsSlK74vh+oTev7XxgvSp5jNVt8konRVyhGGS
         BiyyZIEvRBXMZNffUxmndasgwGhgx7hWQsH+NHepXcaBKoQ5paqz2JdmkDdSHRe29utP
         ucQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PejI7d2ymz0GU0a12B5DNRrHG+IKBfaO4OeAq0uNm0U=;
        b=lq39eVBE0MBlSBks+rIPWBn5f36202WI4kK+jeHl8CmXyYkok/C0SrGh/3W20GYWLY
         gBiizVOACLeD8W1afAnjpIGrkJuKeMOybVMA5NfHZXN19AvdjUhISdi6+yZP5gu+6xr9
         uMBWf5LnIkLtEIwRmIR+OqVbpSIklbfYBAfKjXvTte542OfGEGDOe8b3JOlfZxJQyQbR
         GzXVnqbZ2DB0eLHumsyGqTOkMtNAI5XA9w8RuJIgbhhwDU9+ZXXD0rUDHkvJ/hkQXE9t
         rDq39RWhLOnd+m0DSK3on2KeK3n1EemOa0pbDPl4opX7qQ9I2HhXYApJPgMRyqGFc58j
         nPkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SuOihIC0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r16si411263ybk.1.2019.10.15.09.55.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 09:55:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SuOihIC0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5F5E2064A;
	Tue, 15 Oct 2019 16:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571158500;
	bh=nKI+GnWMYntWRQD/mlDOfGGgCf8STJRuxu33F4pE8OQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SuOihIC0yNaxXAeXelpSwUlF3LSBrJYWCiwxUyGlh+du9UJ2YjMdzxpFh9cbx37jq
	 05wo5ELw5EMhCzayJMHfWTpr9jgK5Y1ESxLtpqkdCZlp6qLGZv0ocyYkdTRCrHkQw9
	 Ag/BwQdrtA9gz+m2U2UCCeKyMYGWj+iLYVHvt8JU=
Date: Tue, 15 Oct 2019 18:44:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: sm750fb: Fix comments
 and assignments over 80 chars
Message-ID: <20191015164459.GA1052688@kroah.com>
References: <cover.1571108943.git.jamal.k.shareef@gmail.com>
 <5e1ec6d6977f27f39844abf38f598e15cc70916d.1571108943.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e1ec6d6977f27f39844abf38f598e15cc70916d.1571108943.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Oct 14, 2019 at 08:12:13PM -0700, Jamal Shareef wrote:
> Fixes block comments and variable assignments
> that were over 80 characters in length. Issue
> found by checkpatch.
> 
> Fix typo "mean" to "means". Add comment for
> ROP value in sm750_accel.h as it is in
> sm750_accel.c file.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c       | 22 +++++----
>  drivers/staging/sm750fb/sm750_accel.c | 69 ++++++++++++++++++++-------
>  drivers/staging/sm750fb/sm750_accel.h | 51 ++++++++++++++++----
>  3 files changed, 108 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 59568d18ce23..7eb3f7b0a86b 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -133,13 +133,15 @@ static int lynxfb_ops_cursor(struct fb_info *info, struct fb_cursor *fbcursor)
>  		/* get the 16bit color of kernel means */
>  		u16 fg, bg;
>  
> -		fg = ((info->cmap.red[fbcursor->image.fg_color] & 0xf800)) |
> -		     ((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5) |
> -		     ((info->cmap.blue[fbcursor->image.fg_color] & 0xf800) >> 11);
> +		fg =
> +		((info->cmap.red[fbcursor->image.fg_color] & 0xf800)) |
> +		((info->cmap.green[fbcursor->image.fg_color] & 0xfc00) >> 5) |
> +		((info->cmap.blue[fbcursor->image.fg_color] & 0xf800) >> 11);

No, never indent this far to the left for these lines.  You just made
this code harder to understand, the original is fine.

thanks,

greg k-h

