X-GM-THRID: 6886283537092182016
X-Received: by 2002:a9d:7502:: with SMTP id r2mr694271otk.82.1603344577896;
        Wed, 21 Oct 2020 22:29:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:494b:: with SMTP id w72ls89495oia.9.gmail; Wed, 21 Oct
 2020 22:29:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkmLApsHclopAMR59O7lis6bdtVA8LTQGi9CckPFyPi6kfhNu1E9rNmkGhjTqmv6Mf+8FZ
X-Received: by 2002:aca:ddc2:: with SMTP id u185mr454421oig.81.1603344576669;
        Wed, 21 Oct 2020 22:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603344576; cv=none;
        d=google.com; s=arc-20160816;
        b=VqBrcvM2CzfivkOOOc7jDLmadEicTrKDalirk5QANslTqxs+wmw3WnOwABBiSXg/U0
         2DIuccxUlnjAWHpsUUWFPBACOWiGpJTLPFysdYZw2/cf3ocBfIvfv1QmjRQBCfXVxGNR
         JutnWxVOEl5ZceLnDp85LGy3oHPAP323yYzQAJK8Iv9l/0XAEDAccr8RzTTIHeuuDow1
         5uxcUeDlJJTvj4T8MzSXkWP6wufY5JK2BNoaUK1XJ9cFQp0VjZ041uNXkrc1mQ0ny66d
         LOfvb4LQ4gGGn5rRcOGoJRH1p3kePf2CNb5E8lo9EHB3OsXHbDSL+UDTR8o1aLXq+tW3
         Adrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RxoQR6FPdO2na09crQ7wBBRZV1pO5FWJuEADJXp4gtE=;
        b=YNZo4lNUJHNdJXmhj6FRcjpM5vM0ylOtncXwk30TcbsK2P/SJRkWIXluwAp5NXZOMP
         qF+y0EUApaV1eRdLoUiJh+F7332NvrB8E0HVe5YMfNjxWpXoGF3J5oazQ/wkzklF2OQX
         TnkSOdN/Q8SpLqaXEDd4Q/NNqydzchq3ZWpx1eQL2alQwXRG8rbJMEWJmGylNUoPrINZ
         KgIxnfrXCzLBUbT+x2NjPitpwpCbOQEAg53hF3s1eATAWMI4yu2p45RYalNj1snfCqij
         9BNCVtuS93NWmppZEEfCN5pPuk5QJBtrJwp5rjEIcER9ycalE3KN0joIk1yNa4o6bct7
         lYMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kULppAnK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si38317oij.2.2020.10.21.22.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 22:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kULppAnK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A02F2225F;
	Thu, 22 Oct 2020 05:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603344575;
	bh=RxoQR6FPdO2na09crQ7wBBRZV1pO5FWJuEADJXp4gtE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kULppAnKrD26Kte2Qisi3cglwPBKAzJGQHBlEk8uJr73Kb7wLMeRqkXUhkWbFYm13
	 I5R3YUCC1PKiT+oCoykPW386QwnqOAcqp0Idb/hnLJpM0feODlpRzDUCjoeZaQgw5i
	 r/2sGpD64Cu6k/u8yxtbSMteZUr5GK6xvpqwED94=
Date: Thu, 22 Oct 2020 07:29:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022052931.GA6093@kroah.com>
References: <20201022033701.GA329478@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201022033701.GA329478@ubuntu204>

On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> Hello,
> I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> and have found that there are several gb_audio_module_*_show functions
> that accept "struct gb_audio_manager_module_attribute * " as a function
> parameter. However, this parameter is not used and should not be
> necessary. Would you suggest cleaning up such functions.

Try removing it and see why it is really needed to be there :)

good luck!

greg k-h

