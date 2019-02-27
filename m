X-GM-THRID: 6662411476241743872
X-Received: by 2002:aca:ed95:: with SMTP id l143mr990547oih.56.1551278640564;
        Wed, 27 Feb 2019 06:44:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls552722oif.1.gmail; Wed, 27 Feb
 2019 06:43:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwDLJrKeRgY7KYB9V5e+qHwmRWL20kGYofUxKE5sr6vWjuxVqWSskVoFoYyBmRgTeC2igCM
X-Received: by 2002:aca:4e93:: with SMTP id c141mr963383oib.27.1551278639645;
        Wed, 27 Feb 2019 06:43:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551278639; cv=none;
        d=google.com; s=arc-20160816;
        b=oujAQplQWNX0mQYZNnCcgWGsIMv1Nf8hFxt0WcydwZU8mHHal9PIE4oKfL3uI9lqez
         oSpGrokNH1WeyIWD1N2sOxup9/UpbEn1GD4U8il/5j/1ym92lUZnwLygqWWeQSyT8+q1
         eVuMmRNM7YaKr+hNt1S6bkAlFoeymNo2eRqhAjNmvp4yqo3vz/LVWajnuVFhVySFQXx9
         NelC0pmnnzabZ5iwbS0gau2onde0smr04dkWx3UU6JXvUZBhTKnRFXv3c/uJKyEfrdiF
         LNc8BGwPAGNSrO5ea5eE06mTOopv56K9F+He2VU8DZtRuqzgl/G74hKF8CHl/xTi31j5
         AZZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9j1+GhYfw/qdUMElrenWcRvxF2X9rQl7uodR9nfew5s=;
        b=SC8tnWWh9XwnoIvX3Aj3IGemap472HDgGIh2OtNhCl1aeulKc/bbc9kWFM4cKskNTd
         Ry5xvKdg6/6pZGuFFinzZ3h3vTM+sWu5NNAr3Cd9JkYQBSEjGKnGF+nslp5nBo6knchK
         Okr+N/SLoc94FWNPKm+kHaxU8bAngvZZTU/155pL7l5yn8okxbay1/5HLVrOgb6E12Hs
         HZak+VJSK/P56eyEStHUKGyLMruwk9fvOAYiXvzBdXXXSFoMxsfpsjIK31PYAdO7PUIW
         Z2tYtxsnow8u9rV5VdIgO7o3vcojMW35NdOj02GtOxmIoamCd6I5SE+nMnZFGNx0vftx
         W2oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0sKvKc7u;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x31si970141otb.1.2019.02.27.06.43.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 06:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0sKvKc7u;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5D1DA2083D;
	Wed, 27 Feb 2019 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551278638;
	bh=nUYDxK3mfoxdStNel9kExcblXzoEuKMbUPgoeN98J+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0sKvKc7us9Psfn/JIDGouhPkyJzFoNnTgufvBa9Psdfgi62MkfO5mrFOGn8nOmPp2
	 wYoc5AMrpHmuI2lFbyoWrRJKxbwCfmbdIgM9KJkYAwFge6ASK9aUPim7j7/crPEO27
	 i083RqN3SMR660dNNjTfii0+NK6kKVI+t2Q/EcZg=
Date: Wed, 27 Feb 2019 15:43:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: Alignment of static function declaration
Message-ID: <20190227144356.GA21288@kroah.com>
References: <20190226203906.3700-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226203906.3700-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 02:39:06PM -0600, Madhumitha Prabakaran wrote:
> Align function arguments and function return type to improve
> readability.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

The subject line needs to have the driver name in it.

thanks,

greg k-h

