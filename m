X-GM-THRID: 6948745075073482752
X-Received: by 2002:a17:902:b210:b029:e6:5f:62e with SMTP id t16-20020a170902b210b02900e6005f062emr12916400plr.48.1617977561899;
        Fri, 09 Apr 2021 07:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:88d4:: with SMTP id l203ls500901pfd.11.gmail; Fri, 09
 Apr 2021 07:12:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2d08q50/sLc1JZTMpa+7GnwJ8tg7hth0XxnDrgNYC/+mSSc+5zlq1KGNDoNL797tDsjw6
X-Received: by 2002:a62:8485:0:b029:1fc:823d:2a70 with SMTP id k127-20020a6284850000b02901fc823d2a70mr12810989pfd.18.1617977560827;
        Fri, 09 Apr 2021 07:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617977560; cv=none;
        d=google.com; s=arc-20160816;
        b=BUpjLmxlMNEeDpGgOmI8cdqKVNu1O2NStuHrc1S9Vm4bbbQ6Y/Dy+iDAufP2Kn18Qe
         lhgzJdv253npqAvwUmhYAFdlopWdAPQiG7Hvlxh8zL952Hj2EQLE67ojHmUFA2A4CaSw
         9RS/Ykk+RRe0qXN/lG5L4f/Z93rxeqWfw5rvvADD1vn+NO0YY9gF9W6VhBrn6tHmynsM
         UxtXHx4sBEdlmiHB8QgtNlXiYT5Ytnyknv1XtaliS1SUXcb1+IPjvss79qWS0A5qw5Y2
         XMkttCxRGji0Gw1+Fwqe7iwbCk8lzjqLkX8NEwLgeUcjCaUSCPnulQ+I4d+Cd441nDzF
         I0LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g8dGIMpCqfRnzx9w2NIunAdbc6qmhCqnA2/qPawkvG4=;
        b=Wd4JEyFNXBtyomv5UoVLQzYkt8IEWdpHJdUWECIYqXUNh8TixlS4p2GqGJ+DQXdScN
         N1sV6l72NpUdrQpaNeWfHTdibx/xF161Vw9gCO+FXIb9z0wBx0FcfmPqz+Yro53pFexG
         SUmbnzcuYb8Ha6tCWO772yP3wtRqdPhbWaRz1ka0MLxwJrXa2WFmhIuHAtVGM/0cSYW5
         +YeKKSRdNvmOPoYj7WrbIcLTm6zdXcdVyQrc76qWN+7zzRCqWMzjwBzqj968eabuDYKM
         b593HDEDd6qYF3UIwfc5Cj4iBgdMxOc286LbGifPozYO5MV854QQzlO39Ct6p9QSM2kq
         WseA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=eQwpOMyi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si326127pfu.3.2021.04.09.07.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 07:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=eQwpOMyi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id E41B961007;
	Fri,  9 Apr 2021 14:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617977560;
	bh=H+p7sz3QwAUi4pf0kx+inkj6rVgLwICxUqcknon1Udg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eQwpOMyilhqv0pZzlwG6vkrbIBcneuoQGW6GHVmTPyK+InAaaOF8GX37rjd//lQf2
	 FXhWFn90m3mddKPRoWe70Zjdqv18KlRMFX7c5LX7cwo7+zuF5vCDWCpMrnb0YFeSBA
	 OXPYfKYlH6YCV9OjCDMh8eLSP0ez43bGmDn51L9A=
Date: Fri, 9 Apr 2021 16:12:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Change the type
 and use of a variable
Message-ID: <YHBg1Sy2509vBtrA@kroah.com>
References: <20210408111942.19411-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210408111942.19411-1-fmdefrancesco@gmail.com>

On Thu, Apr 08, 2021 at 01:19:42PM +0200, Fabio M. De Francesco wrote:
> Change the type of fw_current_in_ps_mode from u8 to bool, because
> it is used everywhere as a bool and, accordingly, it should be
> declared as a bool. Shorten the controlling
> expression of an 'if' statement.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

I now have 3 patches, I think, for this same driver, from you, and I
have no idea what order they should be applied in.

So I'm going to drop them all.  Can you please resend me a patch series,
with all of the outstanding patches sent to me from you that I have not
applied yet, so that I know which ones to look at and what order to
apply them in?

thanks,

greg k-h

