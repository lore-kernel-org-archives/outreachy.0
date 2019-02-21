X-GM-THRID: 6660410187282644992
X-Received: by 2002:a62:3286:: with SMTP id y128mr14149718pfy.82.1550748195352;
        Thu, 21 Feb 2019 03:23:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:d241:: with SMTP id t1ls962955pgi.11.gmail; Thu, 21 Feb
 2019 03:23:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IarWipYfc7NhVimFY7QyLQr2P6s0XqknPdade9T1AFC9mTFETpAcyriBxas7/eu9OUNDWHP
X-Received: by 2002:a62:57d9:: with SMTP id i86mr2591620pfj.94.1550748194646;
        Thu, 21 Feb 2019 03:23:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748194; cv=none;
        d=google.com; s=arc-20160816;
        b=tf2R7ygWJrzE34AcHNr+luw9ytb3pNSm2IhlH0SP034pMqN6seid42oVr0IN6o0yaJ
         jnptz4gPtSw1hU26x09erfz5scnSbkYw2NHjwUbzBltya/hLJe8fvmKYKLQJqQO7pExQ
         LinhAJDCpNIYH14KtTM9Ubp8Dx6g0OUx5L6Gd9yW57Ez5IqJr+rAo1oSfyJLGrTG3jII
         nIjnbPSx36kqzDi2lhVdiDK9ib/23VQyAmq7b86O3SubaD3WosZ2hfIHVD0+mpy74dB5
         0dhyTQmRNpa82QUbzTSmWr0TKecxxZyi9+ccTKagJxEWbzMpeUmnLb9YuoKSmw+yFpk2
         PAUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8zqs6UMN+d3eg8GCbv8p69UsuWWf4ic0gdMUCwn3CIU=;
        b=PHXHGo4tpmOFvwaIGu5png05JSaQuao9YZLsEGeFxOJ7fQ7toYCHF6j3le05wriH7n
         s37qpxDlp2X3GiUtUDQ4pVQZoOdSQLhz88k7xOg0CrLyDOIW9lJVYTb/m5TX+X3zcyot
         fVaDOKeDdTEtl7410Xzg+7u8LjICv4r5Q2J8v2aoUw+2Lf+sM5FCH+xQy8XhOiSc14qN
         jrlq29CyewC6K3c6k7Od1rx8XD5euaRn35VLn7tmXxhaaTJWTbWhENOkVUOzHtiz6Myg
         Rbk99zYJY/znI3tYETN9VWTI9Tkff9LE8eMimeKJKxD3CBW++rocDwGd7zEVqOBSMLRh
         KGGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=flAdEs7O;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j3si1299369pll.0.2019.02.21.03.23.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:23:14 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=flAdEs7O;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D3B5F2084F;
	Thu, 21 Feb 2019 11:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550748194;
	bh=/xHDDqA4O/irT2CzvBBtOR0RuIZE7YTzOGbmpOJvq0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=flAdEs7O9heQoKYqzA9x1tcpI+YaNlFcpwjak/bbDOxuDpFg8YxFnZW8cqUTY595Y
	 Yz6PFM3GSEbjj4YEAFVsIMO0vrS8WJWkGKxLPdkq5IYp0ACZ9A8ukytIFzoDkysFH/
	 ziL77M+4Rj8j8UdH0DimgO5nqoRqgTjZ8wgH9lDE=
Date: Thu, 21 Feb 2019 12:23:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/4] Add SPDX License Identifiers
Message-ID: <20190221112310.GA17199@kroah.com>
References: <20190221111304.GA29010@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221111304.GA29010@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 04:43:04PM +0530, Bhanusree Pola wrote:
> This series cleans the following checkpatch.pl issues in various files:
> 
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Bhanusree Pola (4):
>   staging: netlogic: Add SPDX license Identifier
>   Staging: netlogic: Add SPDX License Identifier
>   Staging: netlogic: Add SPDX License Identifier
>   Staging: netlogic: Add SPDX License Identifier

4 different patches with the same subject line, yet they do different
things?  That's not ok, sorry, they have to be unique.

Also, please properly "thread" your emails, using git send-email or some
other kind of tool, so they show up together, and not as individual
stand-alone emails.

thanks,

greg k-h

