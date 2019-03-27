X-GM-THRID: 6672747924702625792
X-Received: by 2002:a25:2f44:: with SMTP id v65mr1182549ybv.2.1553711149730;
        Wed, 27 Mar 2019 11:25:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:83cd:: with SMTP id v13ls1866068ybm.4.gmail; Wed, 27 Mar
 2019 11:25:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwx0FI0JLKYwnwf6j8L9kOnVmRrPA7JRoYDwO+G77fyK5C1anM1UD+Lgx3sZgaSR/lV0sIP
X-Received: by 2002:a25:e07:: with SMTP id 7mr1608100ybo.54.1553711148945;
        Wed, 27 Mar 2019 11:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553711148; cv=none;
        d=google.com; s=arc-20160816;
        b=PQWJbcpmfnStoWuV/B0PAfJoHzlug3MNr8D6LQMPSiaWkQgSX38PS5NKzPURxfF72w
         guGgeC9I8EClUksYc98jpYCEPcoVADTtLsNvJXxBqQl2vkUltx0EzR5xE10KrfmR5u0f
         cQKOkTRt0OP5fzycaVBO7Juk7+mEWF6jtDGQ857QvGmH3hqbXlZNN4flg9lsgmFkdbqd
         jQx5zC6VdnQz8DxpfXsyRHFb6KSg7DUaYBSawv223dN4nM2x2slDvqAfsikEBqWSTylx
         ekVuEZIBvj71Pnfj57yYSLPUqvyzUoar+fSQ2iweJJlXN6FrlzXabi7nyyTQqq2Y5r0F
         u3pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bxpFkGlc0NKxXDfGzJXMQPGgqYi5Kt1QudGyrwzeuYU=;
        b=TXGZPeFILaUXnPggyQm7YeGOndcU58iYkWjTpX7P4bhluhcEOAXr7kvHCk0Q5Ng4bG
         RqVF6AboSuiPqMGR06/gMemPaMtQd/psyski9PnqpUavgW2xG39TKs8pcCe0JCVX5fmq
         3fV9u7DyRtX5nmNbBsQ6E7q23h8mzk6o/idHX6q0WEVgL9JTHbe23sitiCry5rFpkkSI
         gtS2Zj2tyE+QBVUqM+MTAXoxSx734uEgStKbTZ8nG8thvzqIcca0KnifmZA+UXLhKC7Z
         Gorx1UlDVdVb3RyN+vfbKGckdwVtsenH7RtjjXKLNLpCniDMcr4TJAWD6hBck+7CMQzn
         LZEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uCUhz9oN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 126si283659ybo.3.2019.03.27.11.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 11:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uCUhz9oN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C9882063F;
	Wed, 27 Mar 2019 18:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553711148;
	bh=JNMOb2IzLwpclwnidN5X2X9pNMOHvVxK3nYF+cUNcEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uCUhz9oN2ggmUljrYoksR5Aqa117VAJX94db5DghxRRtAzAnbc/5Z8eF5XOenBHTT
	 +QfwkNCPPVG3a+hIKW3A8b365FV174pJQvgL+sHtbtE+nM4+cNHB93kij8Zy8KoB7m
	 Hb6RRj/8menseFeGVckJOHyvkCAVE/3T+zhyhQyE=
Date: Wed, 27 Mar 2019 23:34:14 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Sanjana Sanikommu <sanjana99reddy99@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove typedef for
 struct.
Message-ID: <20190327143414.GA9414@kroah.com>
References: <20190326170942.19974-1-sanjana99reddy99@gmail.com>
 <alpine.DEB.2.20.1903261828030.6419@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903261828030.6419@hadrien>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 26, 2019 at 06:30:58PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 26 Mar 2019, Sanjana Sanikommu wrote:
> 
> > Challenge suggested by coccinelle.
> >
> > Linux kernel coding style guidelines suggest not using typedefs for
> > structure.
> > The following Coccinelle semantic patch detects the cases for struct
> > type:
> >
> > @tn@
> > identifier i;
> > type td;
> > @@
> >
> > -typedef
> >  struct i { ... }
> > -td
> >  ;
> >
> > @@
> > type tn.td;
> > identifier tn.i;
> > @@
> >
> > -td
> > + struct i
> 
> It is suspicious that you have a change to a typedef, but no changes to
> uses.  I see that you have a rule for taking case of the uses, which is a
> good idea, but Coccinelle may not be looking at the .c file that uses the
> type and the .h file at the same time.  Did you check that ieee_param
> doesn't currently appear anywhere without struct in front of it?
> Compiling the driver is a good test, but it is good to ceck with grep as
> well, in case there are some uses that are not getting compipled in your
> configuration.

It looks like the patch is correct, nothing else uses the typedef, so
I've queued it up now.

thanks,

greg k-h

