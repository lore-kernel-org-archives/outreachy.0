X-GM-THRID: 6663618170330284032
X-Received: by 2002:ab0:1a5:: with SMTP id 34mr4391536ual.15.1551864017330;
        Wed, 06 Mar 2019 01:20:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls371930vsm.0.gmail; Wed, 06 Mar
 2019 01:20:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqxXl7oqdTEX0ZSBV9IqK/6fh2RqfcCWWAu+TQbvqjTI8LCe0Anu7Bb8Ko9kKvmdY+q4R3B8
X-Received: by 2002:a67:874d:: with SMTP id j74mr4379044vsd.31.1551864016737;
        Wed, 06 Mar 2019 01:20:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551864016; cv=none;
        d=google.com; s=arc-20160816;
        b=W/yJi8584N9tfOVF68m4ofPtmgTMRYXgfDQf4C3lyguxRyVsX+4a1QH6oj1HfMX9ir
         3Ss1FXffz/+34rzShRrrP3LcWLp9HUKWlxBBeXTVJ1wBo6tOinYPjKzGueM/p9k1K/6v
         OhO/2D1pdF2MAc8w2Xr7MlXU8MZcq8jZnnVf4i8zgqfcmXBIVwTkGHDcYQFo0pLIKwh7
         X6wJWWhDaMGFlQ6MmZmDjhjfDX8SppMcaF0NclE3FKM6KmtIGcIonWa2A9YkF1WKwmt1
         jgKj8yk+CrmODyO368INHb1X6/eF8SQWZEmD5RQDXb5Kw/CItU53TMKsf9wVz6vAxjgO
         qVHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aw0mb6rHihIOE2YYR4IGPZoNLQOvOpssPukbiVrMXEA=;
        b=qVatb5ta9Rzr1f8UVzfgCopOrUKQ4fOeUsbXs8GiL3YX/JJteDzp1GQSJP7kBUBar5
         N1s3huaDv6LdW7gZCIuC/MpVCA9fiWb5CF9nnkcsHE9hlf8hXW+Sweu0xE/iBr6/GgOQ
         dqN/hXrvHMKCQf9X8EcfARADwqSv0MvAWYmFSvXNqVFmAciP5n19r5UNxbOzlhUTs7nb
         3nq2p/q9jTV8bGg9ATgStGvXKEAmu0L5Q1XHs8d/bNbXpnKWsObbeIJ8xF25XER959cJ
         2XAqW+d3IhHegoRKM/vNhiHYVo2I10zSt/yKtpY/3phuuMlyEyONB0IWYWaXIJNMbGk2
         4GaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FWRI+XZB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s73si50351vkd.1.2019.03.06.01.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:20:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FWRI+XZB;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2AF44206DD;
	Wed,  6 Mar 2019 09:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551864015;
	bh=KBndW0INjvQcShLWu35iIGAJzOjTDzFu9Lvm6Cpr/dY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FWRI+XZBBT+I4UshwOCI01cqDR0Q+GYSI7fMUgT2n+oSEkP9bnRKQ3j+mWDdq3iFz
	 k1Uvc//Og/W/GaOLaRj47NGFVVeI2Noe4kxQgosSSYV3eRqpdmInzeB46/NIPNPoaS
	 NfdoW1bHXvwyPYUGBmvPZPXkXWllOOBpJe4uvAW4=
Date: Wed, 6 Mar 2019 10:20:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/4] Staging: vt6655: Fix line over 80 characters
Message-ID: <20190306092008.GA4175@kroah.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>
 <1b43b055b975227b98e2d711b7e39e258e6eea84.1551803156.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b43b055b975227b98e2d711b7e39e258e6eea84.1551803156.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 10:31:56AM -0600, Madhumitha Prabakaran wrote:
> Fix the warning by checkpatch.pl
> WARNING: line over 80 characters
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/card.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

This should be merged with patch 1/4 of this series.  Don't do the same
thing to the same file one line at a time.  You can do the same single
"type" of change to a whole file at once.

thanks,

greg k-h

