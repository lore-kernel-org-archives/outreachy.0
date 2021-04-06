X-GM-THRID: 6946280249577439232
X-Received: by 2002:a05:600c:4998:: with SMTP id h24mr5761798wmp.174.1617739011000;
        Tue, 06 Apr 2021 12:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls607418wrd.0.gmail; Tue, 06 Apr
 2021 12:56:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOwQ+3djE1AVwn19lEuqyZyXpWS4TFg6DRY2CdIaplyoNoFav/97Xs2VVo3UpMXWpqrlQt
X-Received: by 2002:adf:a15e:: with SMTP id r30mr18744088wrr.101.1617739009630;
        Tue, 06 Apr 2021 12:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617739009; cv=none;
        d=google.com; s=arc-20160816;
        b=CVBXgCDVv1wyxYes3MSNHgmkpukICL1iWeC81q9jbYo/5lZY1fAY8+wfke6dpA9n5l
         bjIY9HTmCzkZt5SVxzzA6jqJvKp/HEY+oy4fnyyuYkBOhSnqWD99sQlXyURwXU6YWMYT
         UpY9LY6imzP+aZZ4waOKcafrXl2ismSnvw9/Fv3PnZIoo6I0w8T81Uo+ymhhmK5qktSt
         4/KNLEnz7TCsAoxUaeP46xgqJ6n1gK4H71irxZLWCibeMzlE64dGYs5LI5c5w+kInjhj
         uGFwA30eCkNUpQElEGTCFirCyFo/24omYfftwzKsgd4vugiPmmSALCyy2SVe2fPXOyKp
         dSoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SmuAICY7BfV2FQ+TWZqN5rr6C144dVwfzZ62LXjDgDI=;
        b=Fs79dPt71EyI0Ociw6tv+Qbh7/PsyBWeGha0Hm5smjUbHXELHS/n0jemLPFcw7mGd8
         XIM8InF18o2Yp5X6ic97jYIhGELU3Qh9vXD2tKwMqeLN4aTAop0/5OmiplHbzo1FkZ8a
         BbeRSdX9zqL3SD6rZdlWkliphEdsWi8QO3jeQZo/Utq08pqOmYoXwDTSxs5OkuLW3VG+
         3MGFpqIjQI77dLLFqC8bmzmU0xndk4czG88oXoIglWWVlMEt34GJrYzcU5CRS1DBOQkk
         hjQfDjX0Fj9qTsWCEZ74I8kxwdWVKpFqhvA1XNWszqegaia6i10FyWHaJFKOrmFpqnZ1
         xtVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=EhawNeEX;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p189si274171wmp.1.2021.04.06.12.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 12:56:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=EhawNeEX;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SmuAICY7BfV2FQ+TWZqN5rr6C144dVwfzZ62LXjDgDI=; b=EhawNeEXpMRPlr1ZhJ3QQHx5Zf
	+LoaIUlKOpitU0CxrCHiXJT68Dr645j4vuu6J0PZIqVtqW+RSRoyPzocyN6tBo86mm169kTIUAJtW
	mOvce3s1KJ2x+9bIgfqJvCInxD1dYguBlOwvsXwYLNrYsw2sQwdODQCAeXh/5Uk5YWT2hnYX+XISl
	jS62mWkspKvymAoUOuSRrTnQl85OXp9zr4dygdB0YHq7xCDExbcMdAGsxkascDc7hUSWDVFiYVg+F
	o8KUXoNpkgVQcglfei6ujXuv5GOLqI99o4p2Gy25H/aLjM9VvyDckYLORCgvK7qj29C1PuVGB2CJE
	Nm3geIqQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lTroD-00DLMI-Tr; Tue, 06 Apr 2021 19:56:27 +0000
Date: Tue, 6 Apr 2021 20:56:21 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: emxx_udc: Ending line
 with argument
Message-ID: <20210406195621.GU2531743@casper.infradead.org>
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>

On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
> Cleans up check of "Lines should not end with a '('"
> with argument present in next line in file emxx_udc.c

I appreciate that you've removed the checkpatch warning, but this is
still harder to read than the original used to be.

> -				_nbu2ss_writel(
> -					&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
> -					p_buf_32->dw);
> +				_nbu2ss_writel(&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
> +					       p_buf_32->dw);

> -		length = _nbu2ss_readl(
> -			&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
> +		length = _nbu2ss_readl(&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);

> -			regdata = _nbu2ss_readl(
> -				&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
> +			regdata = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS);

The real problem with this driver is that their abstraction layer is
wrong.  For example:

        /* Interrupt Status */
        status = _nbu2ss_readl(&udc->p_regs->EP_REGS[num].EP_STATUS);

        /* Interrupt Clear */
        _nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_STATUS, ~status);

If instead this were:

	status = nbu2ss_read_ep_status(udc, num);
	nbu2ss_write_ep_status(udc, num, ~status);

that would be a lot shorter and clearer.  Cleanups along these lines
would be a lot more useful, and would fix the 80 column warning.


