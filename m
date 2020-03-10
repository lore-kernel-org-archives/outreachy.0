X-GM-THRID: 6802570683700215808
X-Received: by 2002:a17:90a:c38e:: with SMTP id h14mr1749963pjt.98.1583847325026;
        Tue, 10 Mar 2020 06:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:b114:: with SMTP id z20ls61615pjq.0.canary-gmail;
 Tue, 10 Mar 2020 06:35:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsPF74W+duC4+ItvIkC+ZhyGp283jBIqrY57Ce+O5/QLnuUDSniL5QhIuZHZdF5zmZ5qHul
X-Received: by 2002:a17:902:a603:: with SMTP id u3mr21337926plq.105.1583847323431;
        Tue, 10 Mar 2020 06:35:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847323; cv=none;
        d=google.com; s=arc-20160816;
        b=ty9+r7mPmaVBiP+5DONX2zQzCb26853FV+UphwKr5UqaGaLWKM75j5/d6/A4/tJnFH
         hBM+mzZQl2tM5nMFdYeJTwKyHKyQVlaXQizyPHEFxOxoq8rYRtapUdlAhSDwCocYDe4e
         CYlYs7atEzpb9H/b+IPMHfnbIlRfFE9yjehwCgArF5Ob73cRzuP5RwsjKrMnDOByNDnK
         7Eta+ySGcE8VMnPPwWiKrYrnJyzIVn3740aLTTve2V9db5WyUesUpXbFt0vanH0O4XiQ
         16PzTCE3Y28RWXzv6NLzOyoTFWWJ7RZg6N7iSAszQSTulIw/R6VaL2Zd04tkRjvxfX9S
         tzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IghQ3KiKveSTPgHgaYmpaJ293YlZc5+otCTwmK8k/ro=;
        b=qaVDuSbNoVLeCyZlm5zrSmmJepqlDx6LiMbGlfbhBbBIxtwT6zc84utBpyL5V9M4C0
         2fCcql/uBrdwhlGIhyh5IB4+6Ba642R53c3kGIR+UCvQDA/R6g/P5G7dwB5H8AR4JyBh
         GlsbON6YGbBhyXfB/rZJTxwtgSdx13OSoLg8B8DV6k9WzRCghbXENWPIc7Mo9xVr1LQ0
         lLAzVA+fJULYFUmvXCt7aoxUXSAYo1r+GrojKd3wjU0EqRJBSR82ndOS++PY8jIHCOuz
         qS6Q6Z/Szj3p4GwG5IZRf9y9I+QzGzfXV26yaxzIVLZc7Dx3nKDQyxe5+UGNCvTG45Jw
         x/BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vvOZGLC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q197si928536pfc.5.2020.03.10.06.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:35:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1vvOZGLC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9A4C620675;
	Tue, 10 Mar 2020 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583847323;
	bh=S3VE9BIGMOBvlnzLHkrvxI64Ctl+iyX66YGqUZvontc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1vvOZGLCY5DrBhq0fOkcclR0ZlC0ikAUVAAMdccHjC7d59Jh0L+exaVg+u7N2DYCl
	 A7Q0g06dbTNkmqLswWcYP0mL42XQYm/QM4j451LGeymzR+0yEbpCOFqIvJnJQjtEaH
	 KUclcL0cG12KL8r58DsMA6Hjz0XYYF5oZ3m6pPMw=
Date: Tue, 10 Mar 2020 14:35:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: remove unused code and improve readability
Message-ID: <20200310133520.GA3366746@kroah.com>
References: <20200310132814.8269-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310132814.8269-1-lu@pplo.net>

On Tue, Mar 10, 2020 at 02:28:12PM +0100, Lourdes Pedrajas wrote:
> 
> Here's a set of patches that performs code cleanup in the file
> drivers/staging/vt6655/power.c
> 

I don't think you created this with 'git format-patch --cover-letter' :(

