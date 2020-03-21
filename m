X-GM-THRID: 6802515514721566720
X-Received: by 2002:a25:d4c3:: with SMTP id m186mr19886317ybf.415.1584773501437;
        Fri, 20 Mar 2020 23:51:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e691:: with SMTP id d139ls3145564ybh.4.gmail; Fri, 20
 Mar 2020 23:51:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vspJ0YA939jV/doFPZ5vKBfmtJr+19jVjncLnU2heen7GtQk1Cykw6RNxyVYMl32DuYErmT
X-Received: by 2002:a25:d887:: with SMTP id p129mr13997061ybg.18.1584773499871;
        Fri, 20 Mar 2020 23:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584773499; cv=none;
        d=google.com; s=arc-20160816;
        b=crMlL6PLszasfYlpRt+vjp0pEKgN0N30Ib9cvnwomzHeZcImi+u8GUwMfkflHStcu2
         Bz7z1lMpFIA5GZ5Azzxwlf6nxw82GeTqrT69uMJtNNaZXVKL1AE9woHSpjKh5xrIRvlX
         fWXWr9xSRAl1fOqa4nCRaivXn/mfkjFPKtgN/P9bZz8ImPhJ8EAXXxV1dLg9tkZzBA/y
         JjsNheVidUY6ckoMsdS1+yZsf+0YYRrbNACqp0AOpAQZI9DjJ1cZQzHlBFLbErxR4YUx
         hyqbGSyLvhDYeomA350Pv7ZFqKIm6rEObfppTkseAwAz/AQ7kw+J5yqX1o7CBbTBboSl
         fugg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G9kKq+hADir0QecisqjvmgOjrXhHEzeED3816ctsgMk=;
        b=gEOmR3N86XDNyeiqNSQEMAVx4/SC4wFoaoglHaXne4q9HXtuLWoJPih5+LvBCkT4ui
         yl1JSi6PpibO86K6YXDJRgFR/K3kkJiXsiy50ljwNmSINQOr5skbz5piF9YIKy97VxRS
         iTS8QUYTQvK1ZkB9YEiHupu3R3LI+pBLAvFPDocg2p/Y4h1h3DXvK0Xq334DyVLP4bDz
         P9/OnLX9b5lfWs7kKq99f7CacFJVrwsBX20idCpSHZGl2A8O3jhj9Ra1TM8wlNQGR1ab
         iP99rGoD7oPVYgcZ/5sjkB2S0QG3MIX3qivfkOBBBKR6wkP+tha7cUs3qHxeVDb9TEK2
         HN2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKlTdsH6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si395055ybt.2.2020.03.20.23.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 23:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKlTdsH6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C27E206F9;
	Sat, 21 Mar 2020 06:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584773498;
	bh=MpGnSZIgUVz8LJoLjLegSZH62JSbXFXAySdfzi0cHeA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oKlTdsH6mvU3bkbSd+WpY8oh5JgfQga/R7hLc7xuR/FX70rTKn0YDZQoOHa0RVwaT
	 8DRU49N01nDrT4VxXMmE91LK1LrdSzRjWAxmBI3OFy1hRMepyCrc/VK00VauIwiJ5b
	 3rHqVHuNdIkpJ615SmMeaJNLXnklNKHMwb4rjlmI=
Date: Sat, 21 Mar 2020 07:51:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200321065134.GA849159@kroah.com>
References: <20200320141418.GA707555@kroah.com>
 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>

On Fri, Mar 20, 2020 at 11:33:41AM -0700, John Wyatt wrote:
> On Fri, 2020-03-20 at 15:14 +0100, Greg KH wrote:
> > Hi all,
> > 
> > I'm now caught up on all submitted outreachy patches that I can
> > apply.
> > 
> > If you have not gotten an email from my patch system saying that your
> > patch was applied, consider it lost, and please rebase and resend it.
> 
> Hi Greg,
> 
> I just sent my patch in ~10 hours ago.
> 
> Do I need to rebase/resend it?
> 
> If I do, should I make it a v2?
> 
> Apologies if you already answered this earlier in the mailing list.

Julia provided comments on what you need to do to fix up your patch,
please follow them and resend a v2.

thanks,

greg k-h

