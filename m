X-GM-THRID: 6670734463616417792
X-Received: by 2002:aed:21b4:: with SMTP id l49mr739504qtc.41.1553152765957;
        Thu, 21 Mar 2019 00:19:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6b82:: with SMTP id g124ls2096185qkc.3.gmail; Thu, 21
 Mar 2019 00:19:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/PglB+YG3YvI4iefaemFK9wfEreK8aurA4NGnkq0+paOZAqfVRubjdezGIoDw7V5QBcjl
X-Received: by 2002:a37:a07:: with SMTP id 7mr659470qkk.50.1553152765415;
        Thu, 21 Mar 2019 00:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152765; cv=none;
        d=google.com; s=arc-20160816;
        b=lb6j3oW8TMCKrHg5cHca1g0Rzs684UQ8gAKS64NgcvWKxC/IRrDzvig9dI7bQVMMN/
         FXxynbjCs/M7UU21Fvrss8rXBVGFNpZMRJdE9pJiSur4foiVZFg/r2rYO6bqtdVovMh5
         cfUZTQssTnfSBEsJ4KWvInBYL/olhCFPEL89NAv3vARP3v9V3IJIdoPGAk9uXREJYarW
         bAKVLZgwDgX6Spq1STfx9Zq0rxEWufFaegNJB4k9QpjaCqp17OHe0MKh3Lk4wIU2MuiP
         meaZ/joWTbuI4wI8MQz+4V9ZAZ4TllAXwws5jgNeYa3Hb1v5kqdL6c7G1w/eyO5lUku8
         xnmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oV9/t3pegHxzdk0UYP54T5jLjE6dAVrwenjzvsZQYQU=;
        b=nDsw1syshBUtzpFCgz9jmak53GwB8zmNjl7FCxnJlwg2xlDap0VC1Sf4dybUfpOjI1
         dARMS1/xuM3cCf7frClwiKeoXgjMALCzOJ29Jz7JvI7jpXA82ZvKM/MUJ3ucgxPWErQl
         rFy9G382skyfd4Zl7pKCXYu/PEgpvu2iY6Tyl0vFXz3gWgYNP/eDa5FYVQ06snwyIcuL
         bYiPKLqcoEh0Xkg6RoGzIdKPp64HYTs9jfRZ/DMLRXc/cNTbQyZYzc5ChUP5LBuqMVrT
         hRJ5B4wpisXatLu4QBKoqUA1stXgJl692JspkN+057eYBd56smdKPrvEsKcPeJz8mtjm
         mMdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ACutRQR5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y202si254047qka.2.2019.03.21.00.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ACutRQR5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E901F2077B;
	Thu, 21 Mar 2019 07:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553152764;
	bh=yp8ppPthjAhs4LX+jaTOf0QE5UPjEIc6oJCFMu5/Nto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ACutRQR5Vh5sZK33lhfiuUrVqkO8xDHB3LM+Azb14CCo7ZzNFH4tQrpdVf4mdn0Mz
	 EWwur1+G+Ddw56RUKimXejcbw8+WX+WIfM4hrQBt+bUXLXWdBcYaRLoTodfImpCqQA
	 JKBJB6r2zyhV8KgTgyBWPumtGUoAbMc4Xx6RXCNc=
Date: Thu, 21 Mar 2019 08:17:13 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: fix various style
 issues
Message-ID: <20190321071713.GB28171@kroah.com>
References: <1553151378-8172-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553151378-8172-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 12:26:18PM +0530, Payal Kshirsagar wrote:
> Fix spaces around operator issue,
> fix line over 80 characters issue
> and fix lines should not end with parenthesis issue.

Only do one type of thing per patch.  This needs to be a patch series,
not just one single patch.

thanks,

greg k-h

