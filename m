X-GM-THRID: 6665747871131762688
X-Received: by 2002:a25:3291:: with SMTP id y139mr209028yby.4.1552028421434;
        Thu, 07 Mar 2019 23:00:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls15147yba.2.gmail; Thu, 07 Mar
 2019 23:00:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqyLtFOl5c7Q5/SW275cCUlNinFdwhADk8aSJC1W8hMHh4ULq6uxA44kHe0ddeC8zB6LPyVX
X-Received: by 2002:a25:be47:: with SMTP id d7mr8052034ybm.15.1552028420613;
        Thu, 07 Mar 2019 23:00:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028420; cv=none;
        d=google.com; s=arc-20160816;
        b=qxPiR2SriN6dUy7tFHpYeX0murHMh63xbkp/J6Y3j64vOXU7g0ePthwb/K70xP0JXw
         vQqRnAMaG0WvvYCWgltzPcYR4oUBQyURDcJ0GggmDGlaradzaaL/Y3BQ+32LuWx2RtlW
         hVbsegL81P9CXH8uXMskbgAff+mnvbryd7S7SyHN6EQvND5pOu8rrAHzNPDmUxuwHKud
         vRCTedneGtyk5C+QVsuFBLL2ZbVY0/pGGnzuWk0frkEuM96FVc+2Lw80LN4cM3aYALDE
         IDatxlkN48SKyXG3BdkxjPyvpnBdn45TzbJ5dQg4foJ32AxbVobXPAIzt7CLG78A/RUb
         Nnnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wj+k4UevHRk0MEZYo7X3G1w9YebCtjMdXc+HlAAYM5Y=;
        b=rpiiQklLOZQVwhl5BaaoN9GT0p3/RGrWnpXl7+Urc1LPVjJ7B3yyqjuVEzSyW4yUOv
         tvVcM0SaSClmPRJQsIOrpniGnZPtGw9TZ0u9hGMhArI0pU3NkzUnUfcJTe0DHGn3ssv1
         S035tPDIQg8tbFwoqAApcqy/qae7/2ZgeFSBXNcS7S8tsKsxbGckyu6efVX9cwgW8T/D
         +ER9PyadbR8OFRsp5cwa5OE4gkGpOST7pwUrhHyfzqYj+yUEA8TDlWQ1VP4Iv8lF7QNt
         5k8SmDd8Bczilr+OH5g0l2ibAQceCqIBhYHgQUYafzmP2UwSwVY0P7hfrr1Vs6M58GDb
         ohSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eFInX5IC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x187si221714ybc.5.2019.03.07.23.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:00:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eFInX5IC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0407120811;
	Fri,  8 Mar 2019 07:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552028419;
	bh=Gxxpnt4qLyW8hSitcFcDxFysabvhM9on4O09c7uLj9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eFInX5ICKGqU6Guf8NQhLdyZTvb2qZ4MSbmy5Nz2yx1kCbrsJSaqbvBVUUeyYZkZA
	 VCI+DTdZwIVXS9A15S66Hmzxly8IpdCFzZPqt2kVN0QHLogy+9Y3epOEfZ8Wi59bR7
	 9q4XNeAEtlxINZrUy/wUTSNQLDisewLjNcHqQBu8=
Date: Fri, 8 Mar 2019 08:00:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Remove unused
 function prototype and definition
Message-ID: <20190308070016.GA17194@kroah.com>
References: <20190307204930.8418-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190307204930.8418-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Mar 07, 2019 at 02:49:30PM -0600, Madhumitha Prabakaran wrote:
> Remove an unused function, as it is never called in kernel tree.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

Tiny nit, and I'll fix this up on my own, but usually it is nice to put
the name of the function that you are removing in the changelog, so it
is easier to search for in the future when you are wondering why did a
specific function disappear.

thanks,

greg k-h

