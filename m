X-GM-THRID: 6674814656588021760
X-Received: by 2002:a05:6102:151:: with SMTP id a17mr8144480vsr.37.1554140471010;
        Mon, 01 Apr 2019 10:41:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c51:: with SMTP id j78ls1698019vka.1.gmail; Mon, 01 Apr
 2019 10:41:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2xk/EOGsugpyWVT2kgsC3pUEa1mhe0dT6t7dE9fuYVw95wN3mC0lw+DdSgEs6YV/ztgY+
X-Received: by 2002:a1f:970f:: with SMTP id z15mr3033018vkd.25.1554140470265;
        Mon, 01 Apr 2019 10:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140470; cv=none;
        d=google.com; s=arc-20160816;
        b=czfN7GUvISQ2eWXKkvNWeVEgF2Ps0zTkxvOD0fg4EV1Y8idnRuTmIHYS7MHkEZ7lQf
         q3HUzAF19aVxdY3U8+OhmBbVjfCPk0sGXCnS9T2GHvams0J8gIWPTOVVNggPlDYHWHeN
         mhkf+vThTrXrugC1ei4sW//olOGWA9VLiuaMSyLH5OI8UAtBL9x0Fs3dXHLT6AMo99bB
         obEDao8GSabIfLfWlbrAZdZRRWMIxdNmEYvSSuqxDep1tfU6YLFI/sH+eWsb6BwJSsaN
         UNIvdvhJIdWjQAnGpOqaFYAySr9GLaF93dWeYu1BYtVvcwVcyKP4OQMw0pRAb4VO5sZL
         94xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Yf2x6rG70Cbijt7yhDx4dp12cciybtM0JPOLMcCwgHg=;
        b=PPQLMha3vfKr/ZCsM4njk1zdhni5jZd+ohz91UYiBxNKQCbWaPcIGIRz5eSXvO36zY
         hDyJsGnIv2eY3TpHzt5RLQndmEKoQ8gbbRQFOBbMDyb/EXw5hyMg97MpQJG+zyZJcb4m
         WHH0WCsTc7oa9Dxw0rbHTrfzPH4Ip88pioCQL2WdElGGHk+Lly35NxM4aDO2qNAKUUcM
         scxVF3dr/JstTCyQTN3zJUMhzSOtD+YH6keOOpCjIQg+W2Rg+wL1cDJJxzf+Z/A60Oc3
         KWrgCYtwwDMZVJkNaaKfOA+n2p392XQSyNxCdsJsbRQ1XBdvJLawaO/MGCjTa3M3DSE1
         eFXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mm8pGKzn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k77si612070vke.3.2019.04.01.10.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:41:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mm8pGKzn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C140220880;
	Mon,  1 Apr 2019 17:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554140469;
	bh=jyBB/WaJlpBmXyw+1qjJGdmnhy6d99kCAfN3AKvFVo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mm8pGKznVSe7pQ9uCDRLuL9ho8SR4kd8RWMN9IK9Kj67ZKmH3ycod02ioL+eVopyl
	 FxVxM6eVDJIdDpv43rWE4zBu7UGgsYNaydorJhlAOe/cOVvwEkkOMZQMy+J2wyypfe
	 k1uQGjizbLJuI9khf0pLiBMyfeIavI+szt4Jv3zI=
Date: Mon, 1 Apr 2019 19:32:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove print
 statements for error messages.
Message-ID: <20190401173203.GB4212@kroah.com>
References: <1554118561-3261-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1554118561-3261-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 05:06:01PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Remove prints of error message, it is not needed to print error
> messages and remove unnecessary curly-braces.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-Remove unnecessary curly-braces.
> 
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

This patch does not apply to my tree at all :(

