X-GM-THRID: 6534657346534113280
X-Received: by 10.13.205.199 with SMTP id p190mr4970501ywd.37.1521474428312;
        Mon, 19 Mar 2018 08:47:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.132.66 with SMTP id u63ls825262ywf.14.gmail; Mon, 19 Mar
 2018 08:47:07 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuNKoyfIIAELT2CEZuq4vZMOX6xHhfo4zYwcuhBdaHgNYUV+aWuWEkssyLmocbYRP9YDZ5J
X-Received: by 10.129.114.198 with SMTP id n189mr5210770ywc.31.1521474427276;
        Mon, 19 Mar 2018 08:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521474427; cv=none;
        d=google.com; s=arc-20160816;
        b=TNbnLHUyXl4Lq6u00hdRveuxVkjRJI4Q91atrZ1qOSC/QHd0Sia87qP7RtrfooZJZP
         GqGA18QbCx8nJNIObsF9iH1F5PeFobP8JlMv1CFbCpCuE5/AQb9m5FPyT7cvhbuO+Jkm
         Ietw6vxcJdvXCh8YrbO3C8Z+e0vAxCAvzTGTnR2+eSE05z4l7CmnS9BpiclGUaOXom9+
         UajtDX2eUTR+ssyKCAJh9L62WBIXmlZHgWu2Q1sjbIvNkPE/nk/L1HCMD3SYlrvdygpD
         XHSTr6VPFR3kxZXzJ3TIm3R7+QyTPa4vdUQ3gZq0fU73dqC4qkUJX+igh148NPCo9CXU
         D5FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=ij2W8OppTKJyZQtDje1Mpsl3M7C5AgMqz2NePE/LXDo=;
        b=wzIrqj+wGwtp4hpfxcqTGaCQUGJ+qCun0rWOcYZFK8/CGuBGxyrlfSsVxvb0mlBOPc
         w/Vw/2X3ubGOOijt78yV59rH4pRI9C3Blt4CH/MdBQlhs1K3d7cnKN6KiH9zfD70cHAp
         6N06crpTraWBxcAh2xLmjRaoSD5M5fBUevwmcmNzgLVNJSj4eymnYFCIpw9ir4eFFE7v
         jopP1ZCtK+sjmug+4TXXVDMxlF0z/eHu38PAr8s7JdldnOpyEwBpu02sRW81TjsvQ8hM
         qp4kF2a0PW2SnMas6xSpr74rnatek5cN8dV2+yKbSPAdnbjtaD/khRaTD2vH/xu3HBGG
         cqsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t3si23781ywl.3.2018.03.19.08.47.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 08:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12247-202.w90-92.abo.wanadoo.fr [90.92.61.202])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E2831FB4;
	Mon, 19 Mar 2018 15:47:05 +0000 (UTC)
Date: Mon, 19 Mar 2018 16:47:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging:vc04_services:bcm2835-camera:controls.c: Fix
 multiple line dereference
Message-ID: <20180319154706.GA29719@kroah.com>
References: <1521468462-28073-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180319141241.GA17366@kroah.com>
 <CAC4++KDrEYS7CS-mVaN6j9wrSJRkD-ycAV2CBJ8MPDh5wOL6-Q@mail.gmail.com>
 <20180319153015.GA6022@kroah.com>
 <CAC4++KDB7K4Lfn0Edp+g9gF3TzARZUuuagaMaJquEeTLmo_Q8A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KDB7K4Lfn0Edp+g9gF3TzARZUuuagaMaJquEeTLmo_Q8A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 19, 2018 at 09:04:59PM +0530, Nishka Dasgupta wrote:
> On Mon, Mar 19, 2018 at 9:00 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > A: Because it messes up the order in which people normally read text.
> > Q: Why is top-posting such a bad thing?
> > A: Top-posting.
> > Q: What is the most annoying thing in e-mail?
> 
> Will remember not to top post in future emails.
> 
> > A: No.
> > Q: Should I include quotations after my reply?
> >
> > http://daringfireball.net/2007/07/on_top
> >
> > On Mon, Mar 19, 2018 at 08:54:11PM +0530, Nishka Dasgupta wrote:
> >> The reference (in this and other patches of the same type) is of the
> >> form dev->component[something]->output[something else]. Because of the
> >> line limit, this tended to be split over multiple lines even though
> >> it's technically (as far as I can tell) a single argument. Such
> >> splitting may have the effect of making the code harder to follow
> >> (since we now have to mentally assemble the same value from multiple
> >> lines of code).
> >> By condensing the parts within the square brackets to 3 or 4
> >> characters, I could fit the entire variable in a single line without
> >> violating the 80 character limit.
> >
> > Yeah, but you "waste" two new variables for this, and force the reader
> > to have to go backwards to try to understand what exactly the array
> > values are, and be confused as to why they never change.
> >
> > If you don't like the statement, it can be all put on one line, and
> > ignore the 80 column rule here.  Or better yet, just indent things a bit
> > to keep it all on one line, or use a temp variable for the pointer
> > value.
> 
> Is it advisable to ignore the 80-column rule for a change like this?
> Because this is something that comes up in at least 10 more places in
> another file in the same driver, so I was wondering whether to ignore
> all of them, or break the 80-column limit for every such line. Which
> should I do?

That is up to you, use your best judgement here.

good luck!

greg k-h

