X-GM-THRID: 6808597928719941632
X-Received: by 2002:a02:a1c2:: with SMTP id o2mr11264441jah.98.1585299261472;
        Fri, 27 Mar 2020 01:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:608:: with SMTP id t8ls2576506ils.11.gmail; Fri, 27
 Mar 2020 01:54:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu00kdqWE8o0SVlIOcLh/xBiwq+2Ktu6g4p9nnlrGM3JSfkSmAmeMfr4+fUmotySD3Sxo2J
X-Received: by 2002:a05:6e02:8b3:: with SMTP id a19mr491873ilt.36.1585299260139;
        Fri, 27 Mar 2020 01:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585299260; cv=none;
        d=google.com; s=arc-20160816;
        b=y8HZUELF31Ek7aBFhYeEVEaGRBx0a2X15pp3DkbYqlWPvnnNaFKHoFN8jqjw9RR1Xx
         hugT2ZDYd1uSVMNx4vFH4/FJ++2P/SBHlJGEYvat+PDFsqn8uztL5xELWLgQBUUVqSYG
         I0vQaeceDEGROjearzVyUYo25cIrbHzFeDRbfUEmyRoDXvsHThrIuqnO0pJDmNLcqGFi
         1qSy1XHtjB+e/RN7DlNTXSpdpEb8lx544kffLE97xMEzHZjaSyRF6ADto1SdWicK3EEN
         EmWQUExSvYJfs0GVvPQLoI0z3oguojyXV84DuNBsQhAhn2NaVN/08h77m8blVW006ntB
         N5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dxp8kmZe+5gh+7FAuF+2bAFbkdp7yeyVVr9DQgz1xEg=;
        b=faHghGrCcJo2DjsFRRUZxVXUwuFedOlM8oPJEe3MTt9uaU9Pg3+8VACoc/fI/SW+mJ
         7JO4JaWCdpmeIu8zOUTxjJJdwTvczqSlfbEKDS+eB72NmA3zOhUqeKrahTzjbhdCJ5SZ
         Ik3ZPq0L4eruzXVCY26Ag2xEWcDSuszLaAObdw2KbBINndXzm8qMiWZBk6EmLZYb5tPz
         HbuJXi1HN9h7RdkLgUuotcIWhhGN/1SpZSBUqDrjM41khZvLKlNk0uErOsb/u2qQY76O
         /D3vyu22NQ9L3JZCiWWxMItbhDpsYJg1dbhdIYNnZaUH6Q52vVK3cIlcVsjqAIESqFU6
         +WrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1/zQv+K4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t13si241726ilk.5.2020.03.27.01.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 01:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="1/zQv+K4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DFC4920714;
	Fri, 27 Mar 2020 08:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585299259;
	bh=YBK0/nb9jaOelkvqSQok457DxRmhUvO/WWgs5d3xqo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1/zQv+K4qOejnPgnMxN1L8+C/w9PhNyyS+X7sdgDs/3nP6ycZEd/+X7NtOGm9B1iu
	 KfmXTxhRMW9Pn0SbWQbPkg0MMko6xB0JSOpFcBNWK1/GgHM0H3WLgH18VK14hZMYXB
	 R3TkPE11AD8eqVypud/BHQbZPo85XBAruZY5fDVk=
Date: Fri, 27 Mar 2020 09:54:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: qlge: Adjust end of block comment
Message-ID: <20200327085415.GA1654282@kroah.com>
References: <20200326191712.GA9938@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200326191712.GA9938@siyah2>

On Thu, Mar 26, 2020 at 10:17:12PM +0300, Gokce Kuler wrote:
> Drop an unnecessary * on the last line of
> a block comment to follow the Linux kernel coding conventions.
> Problem found by checkpatch.
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/qlge/qlge_mpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed from v1?

Always put that below the --- line.  Please do a v3 with that
information.

thanks,

greg k-h

