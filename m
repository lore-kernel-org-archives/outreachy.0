X-GM-THRID: 6802515514721566720
X-Received: by 2002:a63:2989:: with SMTP id p131mr12451535pgp.281.1584776473110;
        Sat, 21 Mar 2020 00:41:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls4692901plj.0.gmail; Sat, 21
 Mar 2020 00:41:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvvyiRxz2lGlKMk9WpFknHsTUvmh0sZtwgtts192vKBp58gpKsK9TN8HNe/BI8baIcPHpiP
X-Received: by 2002:a17:90a:357:: with SMTP id 23mr14089053pjf.192.1584776471582;
        Sat, 21 Mar 2020 00:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584776471; cv=none;
        d=google.com; s=arc-20160816;
        b=s4kncLT9LoEPFz+lPVWuPM/tsI+sEa2pLoUIn6jr4JNCjN23XjISP1PNSZNUjvA4mk
         Y98VFlIw0hCSW+zQ7NwwI1rojn6VOlMnpH10WUHqqVkbMyEOrGQOFGNrLhtiATbPa5Oa
         DfOvKAR5yEo7blqk7bi9NZNglQgJFcwqcpWaRTHMUmnY7Mny3I6DlZmVzGYcsUQXVgCW
         wySCUplGyaIirXc7k23C3CcJp/5dnAS6fDgcj6cHjVUDO90dz3ts31rzb9BZg87loFhL
         w6j6wyqt/GD/AuG/xfZ/rdHrW31JnwGeNoQYc92FYpBh/nq9oS0xnJPT5M7UmznUy/Xv
         NNGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RkPH+/qAGTJjCUl2MR7Rzy6+u84O0sM2lbYfAY+VJco=;
        b=Fol+5Q0p25tcp/mJ4wMILffK2FhkA4QkivS6JtoPRkAAZWobJbHQFf+RLdcsW3LqKY
         tE5B6cF8i6O5JKJrstjNgQOPyi8+FHQb3qLYmaedvgY4NXU/HK9qDWC1S1EmF0xLYLM9
         0nA9F3Q5aeIejR4fhuGoG/rZBYz8c3OmsqDX/y1525VqbnREBze4nn60PmsBapATgzug
         AKHGfsp/5PGVeEAkl+x20TfumU8zY8ccYGjpzJU+0ZUL2TPxM2NxTbXCG3DkxmYb3MXp
         CndJUQdH/d9tptICaa7U7O6pKrNAjHUM8/uraaIvWDY7INtsMYpoDPDhn5SVMdoaMx3j
         QRdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YTwfzqVN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si312204pfc.3.2020.03.21.00.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YTwfzqVN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C3B1120658;
	Sat, 21 Mar 2020 07:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584776471;
	bh=cXblz686qRhw4SUepLNfAR0niJMEG08tMf4XjF5A/0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YTwfzqVN9gTghjcYwU3OUZN/hiAAIIiV++3wdIrXWYDIfcWj6ls+7zp+QlEW/ltbI
	 VpdlCF709FhVx8s3vJkZpBhmEw0d2rW59jZhrNPYCQKgoTA18bR9Da/g+9bCwtAyTW
	 OCf6slrifWgn9hc9fo4oKrQzfCFkQGtkGtTyyU5s=
Date: Sat, 21 Mar 2020 08:41:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200321074106.GA856920@kroah.com>
References: <20200320141418.GA707555@kroah.com>
 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
 <20200321065134.GA849159@kroah.com>
 <20200321070501.GA850438@kroah.com>
 <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com>

On Sat, Mar 21, 2020 at 12:26:34AM -0700, John Wyatt wrote:
> 
> > > > I just sent my patch in ~10 hours ago.
> > > > 
> > > > Do I need to rebase/resend it?
> > > > 
> > > > If I do, should I make it a v2?
> > > > 
> > > > Apologies if you already answered this earlier in the mailing
> > > > list.
> > > 
> > > Julia provided comments on what you need to do to fix up your
> > > patch,
> > > please follow them and resend a v2.
> > 
> > And you did just that, nevermind :)
> 
> :)
> 
> For future reference, if I send in a patch around 10 hours before you
> ask to rebase-should I rebase?

Once I send out this "I have caught up with all patches" email, consider
my queue empty, so you need to fix up anything I have not applied by
then.

> If I do rebase, should I mark it as a v2?

If you change something, yes.  If you change nothing, it is a "resend",
but say why you are resending it.  It could be as simple as "Greg missed
my previous patch", but the odds of that are kind of low :)

thanks,

greg k-h

