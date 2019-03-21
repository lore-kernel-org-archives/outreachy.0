X-GM-THRID: 6670800294132056064
X-Received: by 2002:aa7:8d01:: with SMTP id j1mr5000954pfe.122.1553195150736;
        Thu, 21 Mar 2019 12:05:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls3408339pln.3.gmail; Thu, 21
 Mar 2019 12:05:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyf1cesMRkj+FsHzd+zQ4W6HXvyQp/tzWZa2rBdt7RqhtiHV0RGCLFTYDz5ajCSQrymPH6Z
X-Received: by 2002:a17:902:8c8a:: with SMTP id t10mr5239893plo.160.1553195150067;
        Thu, 21 Mar 2019 12:05:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195150; cv=none;
        d=google.com; s=arc-20160816;
        b=Fahknku5CImhLYMhMp/wmG051VE5vLhtfkht3z0XboMBLptfosQv+S/N1hw+9qWgmY
         BaDrSbSPibV8WJp2zGj7s05MoM01brXd98bf1+Itg1VjFwFNK152zADWC5Rt/FzyrQPG
         yXzvqRCdzdbTNKE7JcZMwCJOZ+8H5DRC7lDCGT4+f2az6J5fIQuReYk4PeV/6RqKGxCC
         A+lEFvNwcNAiYk08LkMnvffSJgFH2g+tc5YZNkt5ZjS/tnAbq7T+lGW2i40P7XmgopYE
         hwHbXJDzlbYpKLiQ/1lf1E7As0CHu7lYoOyado0upTgfIsbFKTciQflu+YgMctNdthd2
         Vrug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7AStKse54+HdLav4vasAsSxoK5OHp1MaIABxAqesYzo=;
        b=irKfHrNVmG31LhBsmAO79il82q4kO6mDUQrvQQft/l4YCpw1h69V+kGwYJEmcZ7thI
         arrqNluu9FaawxyF/wKMwYsLRj7LCrKPVssYf5QoM0Hd9+OwOfujN3uXEH7SgUcW9RS0
         4cZWbuXGvi3LA5HqKBOrEy5nrWneL+mJ3ksUn2M7wJa5GVjzTIsW1bAPHgU0Dj5HW21M
         GrdQeYlrxgVSD6YQhHy36I30XW3ieLDEnc860UVYqATrGDlAqy5UruqXuD29BsOxKq+L
         Q+rhw3w2qasg0PSMsEV6NKIBbPA/KAOKEYhev3u4MffUPTttV2AefD8WldrDhvzpNp74
         4eOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S4qdvxJO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k13si282401pll.0.2019.03.21.12.05.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:05:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S4qdvxJO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 50237218D3;
	Thu, 21 Mar 2019 19:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195149;
	bh=d3O1m7qvjvvZ2pCBTho5Wq+zzyDi9+fu1OY4UYwiaDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S4qdvxJOy8SlwOkW7smS16CzzOWMkFzQodIN/6PlhSd1WikoIvQg1qLdTZ8fHwiBZ
	 sdfy1r5DYhvH7/EL0+H/a7ng+EbRMsUepottcDlcqzEqfYEyVzV4MSSGe2DZuY1Qcb
	 q/HuQaDpAYTe3zUqdu87c0KbNPvPLoVwhADz53ds=
Date: Thu, 21 Mar 2019 20:05:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] [Outreachy kernel] staging: sm750fb: avoid camelcase
 structure fields
Message-ID: <20190321190547.GA23519@kroah.com>
References: <1553166709-12186-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1553166709-12186-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 04:41:49PM +0530, Payal Kshirsagar wrote:
> Eliminate camelcase structure fields to fix the style issue – ‘avoid
> camelcase’.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 52 +++++++++++++++++------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 5e35fec..b55cd96 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -13,13 +13,13 @@
>   * HW only supports 7 predefined pixel clocks, and clock select is
>   * in bit 29:27 of Display Control register.
>   */
> -static unsigned long display_control_adjust_SM750LE(struct mode_parameter *pModeParam,
> +static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,

Why did you put "p_" as the prefix here?

The original code is trying to use the horrible Hungarian Notation way
of naming variables (and doing a bad job of it), which is not needed in
the kernel at all.  No need to keep following that, this should just be
"mode_param", right?  We "know" it is a pointer by virtue that the
compiler will tell us if we get it wrong.

thanks,

greg k-h

