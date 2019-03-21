X-GM-THRID: 6670738983645872128
X-Received: by 2002:a02:3c06:: with SMTP id m6mr861082jaa.9.1553152762350;
        Thu, 21 Mar 2019 00:19:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1474610itg.0.canary-gmail; Thu,
 21 Mar 2019 00:19:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyB4FkUcwCyt9naYtnnOXtQzEavhbAbCCAFVtiWvITb2nb/PaTwdG2Vqh0LySWnSSrcGWm6
X-Received: by 2002:a24:6283:: with SMTP id d125mr837366itc.14.1553152761417;
        Thu, 21 Mar 2019 00:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152761; cv=none;
        d=google.com; s=arc-20160816;
        b=VZwo4Fs4W/rIH5SX597H3lK3v3/1jpI+kiAtONmk1/qKFB3FAAHMGZm84PKNUuPMLm
         P/0i6dCz+1KBAmITYJfwWOaDeQM6KmuEG/9wcKtZsMm99bV9hN/MZ4Z4bIKOQVmzQ0tJ
         qp/l8on6TPfZgyRZuDdP0aY5iwEDfBj9pzhoueFWVVMiAYqU+WGLyPmobzWA6SClYk4v
         4Ps+u3fbqR+uKpkXCmdMnHQVkoFdAUATdO39woiAt7fyENeG5zaPDfC22VWBYDUPMZ4A
         rChdpWF90MFACLB596ezpfpmOiQO0ToM78hxHmsNKbRbDMz5hshh4285UoP1UH5gYJeU
         WnuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V9pkpSdfkZYJKh+hd5fEQtfJEe7VmMl5EaIetm5V1H8=;
        b=QzGbF4wgGKQPNFqxfKAZj6ZUK7JOsChGYwvxlqtWQenZIccLJCJxQAUxXFt+35UNTZ
         9Gib/IpSCDua1ygmiXmLesSgMq/ZBfFQhIricYobdOGKe/S2AM1cSglL8juj2hX50bh2
         iQTdp8G600O/k35hnuM/8tuLtrhOsR4bGv8H/ULaKx9ezXM+91VKvbUQLV6mvC6kNUfq
         ArwNZj6Dgz9fXu1jJKJWjNTiVVz9J+OTsrvCz6ItuVg3ADmGe7NRdUzx6g8VGwNCY5tJ
         hJVGqyE8iP/u7WgoEfibLymYL3BcgWUrUy/afFMAKPXD7g6Yw4SQkPOo3j0+87qK8pUy
         S/lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DwUaKmTM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 71si341275ita.0.2019.03.21.00.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DwUaKmTM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 322772077B;
	Thu, 21 Mar 2019 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152760;
	bh=l6cR31nZvvrGw7PsyUS+7JgUT6QyCo3chlO0FGZDEbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DwUaKmTMxOAOvKWMolDlX7fP7AU9h22lPvZwEOodr0IF+h2Kd1DefHrYyau9aczHE
	 sU7lf1ObS6+6loVxMfqsunNzn/nqOU0TPk58E3VgtyA0giRT6d3kVr1LqaUm+IFfCG
	 6lYbbzyBYCQg6dWv0KqcqxeSnFd7vyzwX+RsviOg=
Date: Thu, 21 Mar 2019 08:16:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] v2 [Outreachy kernel] staging: vt6655: spaces around
 operators
Message-ID: <20190321071646.GA28171@kroah.com>
References: <1553152434-10057-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553152434-10057-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 12:43:54PM +0530, Payal Kshirsagar wrote:
> Add spaces around operators
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c |  2 +-
>  drivers/staging/vt6655/rf.c          | 26 ++++++++++++--------------
>  2 files changed, 13 insertions(+), 15 deletions(-)

What changed from v1?

Always put that below the --- line.

Please fix up and send a v3.

thanks,

greg k-h

