X-GM-THRID: 6666504737930608640
X-Received: by 2002:ab0:20d2:: with SMTP id z18mr4407337ual.24.1552419432731;
        Tue, 12 Mar 2019 12:37:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls4682394vsc.2.gmail; Tue, 12 Mar
 2019 12:37:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzeBBRh0Uwl7bjSPw5il2GdpY0HL26b5xq3aL/ktfAJin8xzhWbgE9bDcFqGg/K2QkkS3T
X-Received: by 2002:a67:788c:: with SMTP id t134mr25593568vsc.18.1552419431919;
        Tue, 12 Mar 2019 12:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552419431; cv=none;
        d=google.com; s=arc-20160816;
        b=sZOitkb24StkaYycSBZaUBIeINavBMZzDe6tGpRj++OkgCxXypbY4xs/ocgHLfKmR3
         6xyrkRSQGF4GcgBI807oPDRZoXeRFcqt591kOWmg/vUyuG2zvruEbP3yZAjFn6rEdGgC
         bOcHKZCwxawny3N2DSaFToYW2nZK6iBelpyhSnyZprFJIdyc6QXvmBD63BX5+H6rKpZa
         1M1t3E2nPSXBP/hpgp6l9yn1wUT8o6jBttp9zuDeA6Wxcb9gpOJFT+ltXlF0Lc2p6kUc
         hIt2h2/leJ46ptL+n6FH1bLnaQJMr3Osb64l6zX71ohPo0Y2vp9B0Om15cwQ5/tlLNza
         wYtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CBWjO7hpY2N/IKDbhUWJ048GTf5bCWD7SLDdcvR6S/I=;
        b=QYAD69QCvMIu22LvVluHOTuzsBI4ZoqWg8aNkQre/eODReN9p3afG+BHI5/UtAHJ6y
         CUNQIXzuIqTmbL0s12pbqfx3rAVFg+gf1kKYTYFLyKZZFYJsvm3UByT7IvVW+m8fXNkT
         63RrFoIGkUtC88wgXwuHPfEOi5L5UGtxRhl4n80ZK6JmkkteKMWTsKTCywJEPMKhTbA+
         K7mkacncG4q5GtRN6/tQyDIGCNszBE0QQs4o54UuUTyL47S1IsADazyoNHawdVn1U2DK
         23eYfEZUATcAAmAFXspqeeGRVWS9VNV3h6mMy69mqyKkDzU9j0H1gUiHoe2Xi86qbllN
         lOTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zMzVS0Pj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si489370vsm.0.2019.03.12.12.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zMzVS0Pj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 963452147C;
	Tue, 12 Mar 2019 19:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552419430;
	bh=qEq13TVxU/zpM69o6N8riFpzn1k679zlo5WQih2kPlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zMzVS0Pj4UJcVJP6p3e5q4rRZRkdg2eEiDIDQ+s6PaKea0kMGLTHkpmcjZpKudR24
	 s4F4uM2SDb9LFyXVU/uMQQep8vaJLwmjQrE2INZoSk+gzni3BSHIDJt0FMox478pUM
	 gYOf3pPZkHarXmvGAFhb+HUc1qup7wqTHW9EFiRw=
Date: Tue, 12 Mar 2019 12:37:10 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 2/2] staging: rtl8712: Modify coding style alignments.
Message-ID: <20190312193710.GA13828@kroah.com>
References: <1552375016-5169-1-git-send-email-digholebhagyashri@gmail.com>
 <1552375016-5169-2-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552375016-5169-2-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 12, 2019 at 12:46:56PM +0530, Bhagyashri Dighole wrote:
> @@ -583,8 +583,13 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
>  			stainfo = pattrib->psta;
>  		else
>  			stainfo = r8712_get_stainfo(&padapter->stapriv,
> +<<<<<<< HEAD
>  				  &pattrib->ra[0]);
>  		if (stainfo != NULL) {
> +=======
> +						    &pattrib->ra[0]);
> +		if (stainfo) {
> +>>>>>>> 172fbd1... staging: rtl8712: Modify coding style alignments.
>  			prwskey = &stainfo->x_UncstKey.skey[0];
>  			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
>  			     curfragnum++) {

You obviously did not build this change, as this is incorrect, you have
git merge markers stuck here in your patch :(

Please, ALWAYS test build your patches to verify you do not break
anything when you create them.

thanks,

greg k-h

