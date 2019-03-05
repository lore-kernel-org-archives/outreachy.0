X-GM-THRID: 6664067951305424896
X-Received: by 2002:ac8:285d:: with SMTP id 29mr265889qtr.14.1551769434907;
        Mon, 04 Mar 2019 23:03:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6394:: with SMTP id x142ls3352827qkb.7.gmail; Mon, 04
 Mar 2019 23:03:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqwA8+nBLR04VXpzpThp+hT2pRMegTANfjGtRFons04/jzsR0zEuQs87CYuzCl7awvaYce7c
X-Received: by 2002:ae9:e508:: with SMTP id w8mr540411qkf.8.1551769434340;
        Mon, 04 Mar 2019 23:03:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551769434; cv=none;
        d=google.com; s=arc-20160816;
        b=DSqnCx7Odb3BebQ/KU9xKUzDhqQ6fZKWtQMgAV7jH6VdhblpaN7KkTSYiV36ENhCbu
         Hz5nvfw5z9GFjDzydY+oB1GOT0gJI3OJPuoU9iaLE1sgluuuKzUYoyvcdIUTF8pkz+jy
         blMR+yBCCrANzvNlHA0r8jFGZlrfNwQY6y13sdJ2ohbtYkITk7YNPl7eXiO5pjxwQUJ5
         u9Pz+ZuRmPvVPujxbhziQ2yX77kfq9g1UicCGS5Of/uTaXsHdiPBmjLYAgLYcDfN0/JR
         GHykAVhrHfvfe2hCK6a7T18mXGiDEErCHq4eMCmD1IaMhpeLIP05NFRTCjk9GWmVBXL8
         4cfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SfkejaDfp62rJIcvNgorsh1UikK0ruCmrhNdDeOPn8A=;
        b=G3QNnhbDY3fESdyO5ar52xbi/JAsgqcAn8Mqhe6nRpC2fqEoyEZfB0RjBlJ8oUU+FM
         9r/ku4x+33uxyW4SppTzANg3ZxKN0xL6+bZ3s4bXyyKvXL4FcXHkUvp12AP8iYmt+/Wo
         1VnkctB/4G3yiJ9z+vGFmvHZKlNpDSZeYK5QiJ5REuUVTkvs11XFylQsHtksdLC41lPb
         6MrZdOEWuos/Lrdd79yIcDCH91LqXKlcUAJKb6SPFpCfG2sV60tj/4BXOTZlJt9CXXLk
         flrOu2b6rKRmKfbn/MbwMHmW4YnXgndXnb3hjbFgsFCJNR/MZZ7abnAyQ9tRGcpCQFlI
         SU5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z2sFX07G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u65si439031qkc.5.2019.03.04.23.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:03:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z2sFX07G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C163B2082C;
	Tue,  5 Mar 2019 07:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551769433;
	bh=0s/wyoHC/4KQUie+1PwSJoZuuD6/RxSHgraR6oyJJ94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z2sFX07GKNPwIqTHP8jVVaX9QdioB+CI2NI4fDnzTmj80c+pAyvI/Ha/fbUCWqtHc
	 RORTYrS5LSxQ4Zl+8KDQwOGcnSLrnyRpDyIWMM1dyfiVPDXIqGWUTLmdR6cP7Ctt+Y
	 GWfhDc+Kin3owZ6CRbelb1A6uP8+B3cqaFnF1WV8=
Date: Tue, 5 Mar 2019 08:03:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v3] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190305070350.GB1538@kroah.com>
References: <1551720850-101768-1-git-send-email-idebleenasen@gmail.com>
 <20190304190130.GC13830@kroah.com>
 <CACw+u4GJOEuSj4fGQ0bmD3BMcRn1M=X16QKEGtp0psi8=MHiLQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACw+u4GJOEuSj4fGQ0bmD3BMcRn1M=X16QKEGtp0psi8=MHiLQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 01:00:37AM +0530, Debleena Sen wrote:
> On Tue, Mar 5, 2019 at 12:31 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Mon, Mar 04, 2019 at 09:34:10AM -0800, Debleena Sen wrote:
> > > Delete extra whitespace and tab space and use one tab space to
> > > remove the checkpatch.pl warning:
> > > WARNING: line over 80 characters
> > >
> > > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > >
> > > Changes in v3:
> > >       - Add version change log
> > > Changes in v2:
> > >       - Add "and use one tab space" to the log message
> > > ---
> > >  drivers/staging/pi433/pi433_if.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > The "changes in" lines go below the --- line, not above it :(
> >
> > (note, one kernel subsystem does want it above the line, the graphics
> > developers.  But they are crazy anyway and like doing things
> > differently, so don't worry about them just yet...)
> >
> > thanks,
> >
> > greg k-h
> >
> 
> How do I put them below "---"?
> I tried to but couldn't understand how :'((

You have to edit the patch itself, after you run 'git format-patch'.

thanks,

greg k-h

