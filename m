X-GM-THRID: 6664782574497300480
X-Received: by 2002:a25:c74f:: with SMTP id w76mr684764ybe.16.1551779301085;
        Tue, 05 Mar 2019 01:48:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls2058305yba.13.gmail; Tue, 05
 Mar 2019 01:48:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqwREDE7ztcyJTHdKUtIIoBiU5aD9yXm57YznGIYYtZQPOnPiMyFsoOdyp2xcpRbLa4IsKY/
X-Received: by 2002:a25:6405:: with SMTP id y5mr895344ybb.52.1551779300435;
        Tue, 05 Mar 2019 01:48:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551779300; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7zDxmGvOjyxPm9v1X3vSjCXsvAAy3baINeuN2NPy3zKyTIhdMR/ii+VpNTUUQMPEh
         D0XQMfQ7zfRMFtBSSn2YREEyLi9ZxNql90VuOxcUFy817brnr7VmpTnM3HCf/Emhx1WV
         tKnXm97hRyGu3isgZbKjAph10zdd6FHVtYzKyJl2WA+uwcQ4DtXsOOcNDTIYqRF9QNoN
         dpFWvrU7U/90YTM2LKFhLi0g80Viyy9sWhImOIYsMvzVt2+CKrJjO6WIJVxihMnAx6UO
         V4TdMgjE0z75soMBvC46MIupcKtLlaoSG8P/i7eoZVDYQb435rviC480mNB/EGhh8ZNW
         cUBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vUNp57n0V1Zfo/L1ZReUlFXR6K7e2ixxDJ8rf21Dcss=;
        b=mRzWWVkzHfExysdjbrCo/RbQBriHbwJ7UWoBjGebfV8LzT/EfOIqDEPZB2DBZ9UPyw
         +NATRs/QFqZPplOusOYB/Un2panOd0O0NaeLnT1QjjlbSxRW4yZqrtpv0sxuFcfngUoD
         zSTSGYPO8a058Da7YXtVlo+QUYyXZQETTVtSOWEJLDji6bvJaACNLWShUtHr43Up6u84
         Co9t4mOz41kP2cgUgobQCWf83dtD0P7d3Lv13gndNGAMOzTazqwdsPfHnr3CfTepPDM4
         7aB3kujavnIHZtqXr4JTIzrccL3NArKu6xP3BHdBR5gtC/sWX1aBBS1Je+6JpEQzOuu4
         ApKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fD1G1ecy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si667678ywd.0.2019.03.05.01.48.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 01:48:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fD1G1ecy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D99212082C;
	Tue,  5 Mar 2019 09:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551779299;
	bh=ud+hzGENoouKMUOeXIB8eQdH0NCtyEvGkan0Vo9F4cA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fD1G1ecyKaEsXXKTdDyp1SgT6CzM/eH0LRvzpebTVN4XHaBiHKcrMVQbyr4//amyy
	 S2xpTnx4srgenb7Y66QxrnL4C0Dth893tGlNSpigAtQbUvvVD365BZJBb7HRfA0Fxj
	 GKpTpptfCq3yBsUBPcuYPHilDQer4mj1bIb3C9Zk=
Date: Tue, 5 Mar 2019 10:48:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: fbtft: Avoid CamelCase.
Message-ID: <20190305094816.GA30250@kroah.com>
References: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
 <20190305074815.GD6158@kroah.com>
 <CAOMPgjhUj9jUqmL33eqLaMKfPsO50csyOdr0xMMsnuKewtMiQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjhUj9jUqmL33eqLaMKfPsO50csyOdr0xMMsnuKewtMiQg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)


A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top


On Tue, Mar 05, 2019 at 03:12:40PM +0530, Bhagyashri Dighole wrote:
> Greg, I will create two different patches for above change.

Nothing is "above" this line :)

> 
> I did not understand the context of `inline function` usage here , can you
> more elaborate?

I have no context for this comment, sorry, I do not know what you mean
:(

greg k-h

