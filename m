X-GM-THRID: 6802515514721566720
X-Received: by 2002:a25:abef:: with SMTP id v102mr23533728ybi.269.1583834065132;
        Tue, 10 Mar 2020 02:54:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e691:: with SMTP id d139ls3486795ybh.4.gmail; Tue, 10
 Mar 2020 02:54:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtF8cUBR/ZTjEHWgM54AKdAbBALrDA0xOf4cuEdJ6dswHl9ffJifhncl2V477nzrLfQpKXc
X-Received: by 2002:a5b:901:: with SMTP id a1mr23166870ybq.9.1583834063520;
        Tue, 10 Mar 2020 02:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583834063; cv=none;
        d=google.com; s=arc-20160816;
        b=qITsYaMvQf8DHA2YaBP9kLiZmtvlaRTA3BNR0fbTBB6cJl7o3wMDVPhp5uUkcZDfuU
         eeQ2W9ZWmtWR+b8TFBbyefnMIArD/hn7ktEOgbywpMoXe87EHzPla7IeGktz8gzD4dEN
         qadTQ96yjhJPI6LQ8e/tUlOVUWwt4FZ+btcFB+BYbXBagiKzs+iQfati4o8w/cvvCH1K
         kBNee0K+pyLGU78meXM+cagYhLIwXbQVZlDgSWH0g8eXEfAu2N1a6cttavvVo8n4CBYI
         LnONxNflAt2pRQrWeUe0T3ZuWuzFmR7ZclGQYCPxmI8ouAY1zvX3rDGYubVkFOtWcjT8
         wtJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=h5vgG4LJUvFkcXuWY7aZSFJFSP4PhTOUmD0IsHZ93jkJV8un9fzd8I7aWaggCx8d8C
         u72osr1wnFcUdjyS7s9YILpoXX2tRuOjSVeuxwst75hRFdjrgBxwym7hhKdGPqTSNslu
         Mw8tykzsq1csa2vDU+ayvZZ8zfJg/P64iuXIvoT8+PfWwlw79//FCTO5P7Y1N5O9Yahm
         RIuu+QJamY+gFridmnKBEIpiLVjLad1YdcFL2S8/vHpe7ZHLIxy840dPqqvqLrYknVPQ
         ijRC/e4nPnht2nv0Q6RIx4F4rhtOAQ2T1JQ1tzpReETYfLu77gK99X1nDhIkjAt+SX3q
         MopA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n73FO1IL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si338972ywa.3.2020.03.10.02.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 02:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n73FO1IL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0D64F208E4;
	Tue, 10 Mar 2020 09:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583834062;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=n73FO1ILAPaDsnGGktZBz6NlQ3lqs8jaita1Wk3zXhCGiiksljhsYxqnKtkNA1KPv
	 qmVDwXxixeMQbmoEN/gNBseTs5R2sktx8ktGLLcOQqZWbFDViCNo+SB2JBLp+qNnh+
	 feospxAzSsddwseICwmezV6RU/WUe0l162nfwc1c=
Date: Tue, 10 Mar 2020 10:54:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20200310095420.GA2539549@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

