X-GM-THRID: 6662414152906047488
X-Received: by 2002:aca:ecd7:: with SMTP id k206mr1020489oih.22.1551278655737;
        Wed, 27 Feb 2019 06:44:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c05:: with SMTP id o5ls1112407otk.6.gmail; Wed, 27 Feb
 2019 06:44:15 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibk1Mo5TAxS8qB7hXadPoQTjZjsHsKFj2AWycoErIHOHjx1JI74K1ewMjpHt8EjxLlnVO8q
X-Received: by 2002:a9d:6c58:: with SMTP id g24mr2087995otq.10.1551278655275;
        Wed, 27 Feb 2019 06:44:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551278655; cv=none;
        d=google.com; s=arc-20160816;
        b=hJXwJHCKCwzNVQXbVxVIfEJzf/xB9jwokACaJZx2tQnUOwkStCkrN8u2B931ctwY2I
         wphyagULyzAAMQkhtBEarOHNVRVnXsDZo2vaRwwP6y/hk22gUIC+M0d2SASruCfiV5+Y
         M5unIoZIMr7t9O9y9w7VKYjRoHr1/P0GQ0yXNMYw80+7h5CtEDVZkEPYUwnLK6A2wjs9
         uEijeRYsObHW40pViJdoq5ScwVS1pwvWuG0ln3Qe8cbzyaEo6Yij2pGUpV0T1I+1dGHc
         663V2igemn1s4/kC0xJUs4XE13+AWG3NmdHI5Thtw/QFYZOxfVMjJcVtzmdtOEWr/Iji
         pOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TrqqvZlpGXG9nfjsnvPtC0nASMwJF6gHeRT7t46eLuI=;
        b=e3FxcuAPjXeRyg4OL5DdDUHTcIzKE2MoJSE6eky8e9PCjroqN2/e5bdr4miwIa1gFf
         frQJKMwJTkHPuXhD75gcTkNmIs3Ynv7KXKTUE1FFYXUFyc6liXlPxJ0Dcc3F/4HvNYyu
         ufTFqx37mPScDeH9wVQhv/7lCspgP+PeMGAnkPTKhyUXjCvDSPouEmh7YR7Ty9OcjwYd
         g1CUSqUVP/hLHC/SCRgo4K7O/7yKi6TQ1cg5WynVawx/dyulDGrNvDYxIl38eAT3ApHE
         fivwtBG/f2H4jpHeC5DZ2ERyTlQcQYtMb6pQtszhOQuWgoUDHkd3WZziCeBgpu6FTlQT
         8pvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pm9nN1Nw;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x31si970168otb.1.2019.02.27.06.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 06:44:15 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pm9nN1Nw;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 33CC32083D;
	Wed, 27 Feb 2019 14:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551278654;
	bh=W2buzpkZqYgpH4HUI/MVnMMz/TN9vSqkGJjNB7WcEEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pm9nN1NwWCu3mGQAtwIWjtzBDe8hJIhTKdX+GBjzWDqotMHAJayLpkdHZE8S7YD7H
	 iJq+VDXm+qp4qKAVQYinS/wA4NdVQQd5gHs8SDcAR7BAGqNrduJWIUKaNFmH7zdcGa
	 0eNC2+E3duC5m1sHoIPGyFwaPnfnP1xQqTg9Eiq0=
Date: Wed, 27 Feb 2019 15:44:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: Alignment of function declaration
Message-ID: <20190227144411.GB21288@kroah.com>
References: <20190226204929.3933-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226204929.3933-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 02:49:29PM -0600, Madhumitha Prabakaran wrote:
> Align function arguments and function return type to improve
> readability.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v2
> - Modified subject line and commit log

Same here, you need the driver name in the subject.

thanks,

greg k-h

