X-GM-THRID: 6620380698493583360
X-Received: by 2002:a81:9ed4:: with SMTP id v203-v6mr12796637ywg.13.1541428070421;
        Mon, 05 Nov 2018 06:27:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1d05:: with SMTP id d5-v6ls15164547ywd.5.gmail; Mon, 05
 Nov 2018 06:27:49 -0800 (PST)
X-Google-Smtp-Source: AJdET5er2XLv8gZCAWb2+OY5hNlWWVKZ9/q5qYAtxl7SuwLPJ8t4ldT4c2jviYtm9hwIslAqwDgf
X-Received: by 2002:a81:5287:: with SMTP id g129-v6mr1324186ywb.5.1541428069900;
        Mon, 05 Nov 2018 06:27:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541428069; cv=none;
        d=google.com; s=arc-20160816;
        b=s5blw9I6+TO3LWIBoO+xqOHCN4IOkNU7qOY8QYKnSdpQcoxc0TDBKD5VGedns0C0Fy
         cZtG4uE40X8cjityrDf003SPZWWSWPX4BK6uaowQt7YM8ByjaMj5PFToCVwa8wLJyR64
         5MdK6VBEiwooM9YXugDdvaY/hPBaaXAnujK+0wFs0cE/JsqT9oBS/lWZj9AiCWTZ/Zrk
         UTL9Ni8b3U9teou/7lLYy59QJryw+l1WDKoMFHhZvkJaVOjCd8X01WlZllZubbHBxJEU
         zyc6g4rQBCgtxs3HuUPXO4gkoPqQFT2Ts8gC2s0wwUtccN2M6d+Sn7A9GdGiRyriwlA4
         LrRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QR2qSCxh1k4xssQyl9ze+53sUf0mjsjSno0Si+sd1uw=;
        b=gkSDktvMIeIsZ1nQzWmaD8l4TAWA4pQZoJRJSK7pbcm7JIbllJLRHnA2yXTquzwTq1
         vWMQ5xtNJU3AOm1ymSm/HnXJJc9jyO2uLegDOrP2QrcvNA4PBrlufsQcnZgD7oRSYpS0
         vWkJ0WMWJZ3Qe4TT4NQ5l/1ORDw+pVtrTsGhEEfTTNS47zeEtv5P1wKSbd1GP8VyF4n2
         N6KUY3MGF+mkDt4MKHmYPNKxjMzwdHc+Lp6AsgpVloL0kKXT5yCOMB9Nr4oeMWJxcU1I
         qNGBxOXcS6w87WPCtUMwL9ZbLCESa1gUaN0Lmq12xS7dkp6WHcW+uPuxN7v0FGBRPFvI
         T3YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kYc9sCz7;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l125-v6si1560278ybc.1.2018.11.05.06.27.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:27:49 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kYc9sCz7;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 781F220819;
	Mon,  5 Nov 2018 14:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541428069;
	bh=4DqRuiK6ehGxRVnT08mXGeJl+8ce2zpT0rMOohLeSNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kYc9sCz7k+9lu1qys1MbIW5IazOIIV+wtKXekLpX4gMiO4cvzr79R3o9elzuzqEs2
	 KJKCR1yggvJKkUqTaRXEfpNcepcGTYdPcTHESBmL0tVVyLAR+8+bKEhVwWLr1fna0K
	 tNgKvqjuEfdSoc2S8KI5E+Lm9dIs0IMBC1Xq9urQ=
Date: Mon, 5 Nov 2018 15:27:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 01/14] staging: greybus Align parameters to parentheses
Message-ID: <20181105142746.GA11131@kroah.com>
References: <cover.1541427415.git.code@wizofe.uk>
 <d4b51344a2d9ebd03506991d2ad2482a02ef0262.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d4b51344a2d9ebd03506991d2ad2482a02ef0262.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Nov 05, 2018 at 02:18:28PM +0000, Ioannis Valasakis wrote:
> Align parameters to the right side of the left parentheses
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

You forgot a ":" after "greybus" on most of the subject lines in this
patch series :(

Please fix up and resend the whole thing.

thanks,

greg k-h

