X-GM-THRID: 6744795615076548608
X-Received: by 2002:a67:ef5d:: with SMTP id k29mr13943650vsr.11.1570444158150;
        Mon, 07 Oct 2019 03:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:8689:: with SMTP id i131ls613276vkd.13.gmail; Mon, 07
 Oct 2019 03:29:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLbgGRIz7FVqJDBpp1/mG+4bEGDKfNIcjSUTI0Ca6OqhG8POOz3rPgn/ZzqRVeCVFldqpU
X-Received: by 2002:a1f:5c0d:: with SMTP id q13mr14181308vkb.38.1570444157124;
        Mon, 07 Oct 2019 03:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570444157; cv=none;
        d=google.com; s=arc-20160816;
        b=OsTD6hIbydBg6VvpR03eoMiPTVji5sa/Tmesgl2qN43CrdcxlkY7MbBiyGJQBvDljP
         yUPPwMtghpetjuEtbEAQ1jXnVQDaa2eY6BkYqRq2fi/4WqJRagFfE4iGPC8S/iKD9BG3
         cCYL5Jsw5WoEQxj0gV/Yxy6E1bPiZ8wqqpIOlx6nRyP56UjCTYoZBbs+1JYA3z3XdA7c
         6q0jkOwUz5h1ui1TXPGHTWRUo54l52zVJrg77W9qtL1VFS1wL+gB/fwZSn7T38NG+0wf
         0nLS6ydFsGYFcT2mGYsaCi1H8y1Wx2NgsmbiMlW/i/7ege8DyyEWfXxkB9Dh187XzXlZ
         y2VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IRJrDku909YJo9eGxrSDKl66miicygfpBxcAk0znhkA=;
        b=SEf5r34mw3L8XJYGUkUOm0Sy+Zcut6Y3AneSLSsXmayC8w9Gerze8CjOjEfctZEWmu
         28YUt5Mb8HKUb0cC+pdU1Lh9NXzzHMnxVGy8YwqyOOSsuPcPYyRZSIQ4iCrwWn5nnPp3
         TTVqy3yNC0RtHdIUUf+7Yx8cfUPAtgvsqPVgTHt38fIUUdpFSiI6zBrLHcOlT0zyHnw1
         8FavMRGct8pBvXKwoOOMdYAfE3I7y7Z2j7raDE5zSxgb+LX/sFHRK87qtqXWkYaelLA9
         CNnrYDqKa/SbJFWyiUXOp7JATlQ+xbPJXLBJ/qiZ1VmeYZFwIJJBFM3fiK3lFDUCMdB2
         JMDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ezrfGqfx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u65si452574vsb.0.2019.10.07.03.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 03:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ezrfGqfx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7ED0D2084D;
	Mon,  7 Oct 2019 10:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570444156;
	bh=vYCw1L6EsClQX3kWOyy3rJzfrw9jqEvK3iRpnr+usV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ezrfGqfxHWrZR6uCHtFebNS+0ysEFD5JXQBbZknoBa02FwHkRzFDbcCwcqHb8V3Ba
	 v+22i716+OXDgN0W19mYxBLli07I9rf9QT5LVCveLbVAwwzGdHHF1sOwUYduBauq86
	 /nKAYK8/JTF0MuaINFK4wme0DoUT5N4uBC5O09zU=
Date: Mon, 7 Oct 2019 12:29:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Subject: Re: [PATCH] staging: rtl8712: align arguments with open parenthesis
Message-ID: <20191007102913.GA369086@kroah.com>
References: <20191006222015.15937-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191006222015.15937-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 06, 2019 at 07:20:15PM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of: "Alignment should match open parenthesis"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rtl8712/osdep_service.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You sent 2 different patches that do different things, yet have the same
exact subject line :(

Please fix this up and send a patch series, so I know what order in
which to apply your patches.

thanks,

greg k-h

