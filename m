X-GM-THRID: 6668261535001870336
X-Received: by 2002:a25:a2c1:: with SMTP id c1mr6013195ybn.85.1552819668996;
        Sun, 17 Mar 2019 03:47:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c00b:: with SMTP id c11ls2956750ybf.6.gmail; Sun, 17 Mar
 2019 03:47:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyxJb/zwk8jfghzFqIN9BuR/Ivxy760Ehzb4l2xwLlbUfQLA3Qm+NzeTJb2aYBXn8r7+GTJ
X-Received: by 2002:a25:2f44:: with SMTP id v65mr5645451ybv.2.1552819668445;
        Sun, 17 Mar 2019 03:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819668; cv=none;
        d=google.com; s=arc-20160816;
        b=nGyIof/y93hos561xEwKCPgWWGgHJ9OqtIpGDICRuuHTcwT9im0/5TTOrOg9mXDnTA
         7xe3WJxzCZc7Ryt/FhteoulM1GuyYlyK+U25CXfUTYn+QLHOJd9W22YHrv8UiwowVYUJ
         CqU+eFL+D/41z4CroQmJfZRILclqqJNR20UzzpfkOLI7xwUReRs3oz5A8P4/3BD6DQTP
         ZA05BGYhxYcI6UzKtG7KFNqpQeMVt0/N+nCsEGwDhztXREdM2TsSRCtqGDR4xBhWNPp+
         XEp0PsIjwNsJjKzSuIi762iBI66HlRkeSgKE7BuDlwUl0Yl/7wjaMh8kFCDemr0Tfi7x
         v7HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UH+NWi9Qt1yQ49wTwl+9eV1r8ZxafSuDL3a+O/0zxKU=;
        b=xS+1sqPTwNtXSQ4XWrAvXeJ/rAVdlPRX5guuJmbMxCtkLF84VYcze/mHHUw1pLY/l/
         Lf/GNV01Zz6Epq6EpUnSbMhWRODNs4BfmvZKsN/ETIxJvho5e05zdKeOswQVvhJI7PC9
         m471F2k5+Af8Bt4LMwKFLfLwJaWUWS3dvlkPbWOLsL9yb3M6aYLISvDpgViFnIs9RIkT
         RwaPdgBuTEjSbTC0jgcTvlQf92qAWCUb3GnGftt8SQJKAfN+6jij2fS6WHq3EyRbMIuk
         Ofz8Ri/+y4uzHAb7EY+AGBej5st9/0czx6RXX/jbAS3W82hg8M9Nkgh1gsn66d2FgEBf
         ta0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RAyyfQlg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k62si402630ybb.4.2019.03.17.03.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RAyyfQlg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E030A2085A;
	Sun, 17 Mar 2019 10:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819667;
	bh=2xNt7OiGl6nVK9iWaptHEcpRBsCCFYf99ps1RizhBaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RAyyfQlgxEmHhO8qJKLnmbAqjggFV1ygSz8jXqrkNfll6CgfLUs8BtmhzE2VxRuui
	 b1G4Nr3lyP+qv918rb9ShfIM2yTUcKAlN/b7CRwDAKtxJz2rHzV3SI3IxIYdiq5aMC
	 nuCPf3hF8/ErHvMyfAJaWH1hMCdgoTwYwTffPdK8=
Date: Sun, 17 Mar 2019 11:47:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Branden Bonaby <brandonbonaby94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rts5208: Lines should not end with a '('
Message-ID: <20190317104744.GD16257@kroah.com>
References: <20190314150017.25470-1-brandonbonaby94@gmail.com>
 <20190314152828.25859-1-brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190314152828.25859-1-brandonbonaby94@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 14, 2019 at 11:28:28AM -0400, Branden Bonaby wrote:
> Start function arguments after initial bracket so that the
> line does not end with a opening bracket.
> CHECK: Lines should not end with a '('
> 
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
> Changes in v2:
> 	Moved function arguments that do not go over the
> 	80 character a line limit, to the same line as the
> 	function name.
> 
>  drivers/staging/rts5208/rtsx_transport.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index 8277d7895608..a476e22767e9 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -257,8 +257,9 @@ int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
>  	spin_unlock_irq(&rtsx->reg_lock);
>  
>  	/* Wait for TRANS_OK_INT */
> -	timeleft = wait_for_completion_interruptible_timeout(
> -		&trans_done, msecs_to_jiffies(timeout));
> +	timeleft =
> +	   wait_for_completion_interruptible_timeout(&trans_done,

Indenting 4 spaces is not acceptable coding style, sorry.

greg k-h

