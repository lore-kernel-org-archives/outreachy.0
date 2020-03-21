X-GM-THRID: 6802515514721566720
X-Received: by 2002:a25:a4c5:: with SMTP id g63mr3915548ybi.318.1584774305594;
        Sat, 21 Mar 2020 00:05:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cf0a:: with SMTP id f10ls3184253ybg.2.gmail; Sat, 21 Mar
 2020 00:05:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vstZJzb1s2Gple7+WuA6m04rS1zyILtYOkSysiSBgZoGOOxXucA0w6DbOD5huihs3QWPAcy
X-Received: by 2002:a25:c382:: with SMTP id t124mr18159062ybf.39.1584774304285;
        Sat, 21 Mar 2020 00:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584774304; cv=none;
        d=google.com; s=arc-20160816;
        b=tB9BUL7n1t6+7vFd7O+Tqt8bF0V76QQwu3grcFq88QYaUYAej1JkCThEtqgEpUuZ5/
         P7BirKPkAiPcjZ8QV6/ltrOTCe2LKf7OiU8l1PBC/Cv6Er4HCTPH2l2ObQh3rTEVCEFB
         /QD+vdyi8HF2N/J53vEr3kYkoXRfw+ZCgz9GFPQHDEYuIMA+qNBlFwo1ERFdc1zDuDv1
         0wUNywr0w9wglsntno4xcvae9ChS9O3EShShVbvVK2gUivSbCfUuYuZXeLCY5lqeCawO
         K3lqUO3bUwuYqHFucw0zeKccMtj8eQLPaDdbOCwMlcyd2GwDxnUu2SgVCTjhmkiRncKM
         eFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JQ11vJIyCRfkBkdvcZMb13knyaHYcqaa4RPYoJF1MPY=;
        b=h0b19nwl+BljWzOAIiLGPUKL7q8wRXIQGm4OgT8GGCh2fWYKxz9XwaZef0CEuLG4U9
         B6P2/xWOl/ZkrJ0YDBvkbV6k8c0ZDzxZ76PvsxvK2H6M1QsehXxH/83dBNqv0sqjGAUa
         wpJwXEdRGftEzk9w8GfkkDO3tNpLAerLHKSTSSikm2Q1bbhcn12f9b5Y7JpTHIhpXSJC
         sGSS45FKYLePc+5hXNLMkd7W84pqR7lVQOp60qrfLpX1iEfoLSAvqQzM8MULUkKCqpR+
         ksZBKKXYHZXTNRRNvuc7Kj8Zxlhuz5cRML68llXAAx0BLC7nhkOWLr0S6wuiV6meos7p
         pGeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="SeVLnE/7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si396486ybt.2.2020.03.21.00.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="SeVLnE/7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE9F720739;
	Sat, 21 Mar 2020 07:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584774303;
	bh=bKlLzRsL7ikrQeV1o5QmlYS5f8eZXDpaU2vrlhi09zE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SeVLnE/7GtmPgxVysym22re01MEwjgU7GPHZPqClxHqq5mollNwfM02kLvnsJxC24
	 tYxbxnxtSa8TOkn+i26GFASM1x4rvhajbclUWWnFFPLeOlAFISfmTUWLpddUsrYV8t
	 AtqayRaYqgMJakvbg9qQkkW5R7n6RtQ5GBjUhuqc=
Date: Sat, 21 Mar 2020 08:05:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200321070501.GA850438@kroah.com>
References: <20200320141418.GA707555@kroah.com>
 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
 <20200321065134.GA849159@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321065134.GA849159@kroah.com>

On Sat, Mar 21, 2020 at 07:51:34AM +0100, Greg KH wrote:
> On Fri, Mar 20, 2020 at 11:33:41AM -0700, John Wyatt wrote:
> > On Fri, 2020-03-20 at 15:14 +0100, Greg KH wrote:
> > > Hi all,
> > > 
> > > I'm now caught up on all submitted outreachy patches that I can
> > > apply.
> > > 
> > > If you have not gotten an email from my patch system saying that your
> > > patch was applied, consider it lost, and please rebase and resend it.
> > 
> > Hi Greg,
> > 
> > I just sent my patch in ~10 hours ago.
> > 
> > Do I need to rebase/resend it?
> > 
> > If I do, should I make it a v2?
> > 
> > Apologies if you already answered this earlier in the mailing list.
> 
> Julia provided comments on what you need to do to fix up your patch,
> please follow them and resend a v2.

And you did just that, nevermind :)

