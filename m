X-GM-THRID: 6396667328901152768
X-Received: by 10.99.3.78 with SMTP id 75mr12756258pgd.7.1489342915719;
        Sun, 12 Mar 2017 11:21:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.11 with SMTP id r11ls1080597itc.14.canary-gmail; Sun,
 12 Mar 2017 11:21:54 -0700 (PDT)
X-Received: by 10.107.157.6 with SMTP id g6mr8279443ioe.79.1489342914962;
        Sun, 12 Mar 2017 11:21:54 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id y90si2747460pfa.6.2017.03.12.11.21.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id w189so60589439pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6AhfL0FuvEsiBfdp+mEtWbDE8v/G0Hr5HSWL93UCxrU=;
        b=swCAD5oy2n9W6f6jR4qqdjrRP8ZnGAjgmd44LaeHWZvYqB08NYynBTmGaCN8jvvqXP
         i/V4CKJ/mCENJApsaRv4SqwgiMxDR2u7g/TNzqV3LMgxkdfY6IY6fFv+7IvwQ0vV7zY4
         Sfgo2Y3TO//eNLEaSWj+DFbIgzCuHE/3Dy/RTgtV5j8hHqyuXSdlgWsymQJhXgt25ugA
         wdciDgLRPoIdRgezRyAi0IxBstZ4ZCzkYDLHhC9j7OA/Xk/qS2jqXzZ7OIzTwVI4tZnL
         zQq/tCiXi7ZEKcu1iBySJAQkoT7uniE0oUwSMmlGBVjqFQxfG/aWMjiWSpOkyTQY1OoG
         L64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6AhfL0FuvEsiBfdp+mEtWbDE8v/G0Hr5HSWL93UCxrU=;
        b=O6aJE22Ijgcq0I5ph/Up6SRF9aqrxY47UmobEu7dPxRQYTWbAaDlfS23ivfJ1J5TnJ
         jLqmoY6JIoJ+e4nbcciwkUDJ2MdvT5hWTlGHOrk7QHptCN3jBdESaCj6g33d27dCO+iI
         ns5LxuKebrqW7zvDdCebZ016AeASSmaoawwWTrccfeC+8+VVJzJvLn2RPAEsVnLpd82g
         MT0qdv+nLdvaexcVK+QWTZIO/97mkRJI0e31gLeQ4oYLjyskkzfvu5sY032S7b5JnGhv
         wTyQGbUKgqOaa3YfMDHxXZv5nfm1xQeBI2Z+4jLEgUmk5AjRUg3ndUQlVGCatGqHsZQC
         4+BQ==
X-Gm-Message-State: AMke39mcD9wM91u/EgHOiNpEEDVm4uFPLUq55LXDgZ3KenQt9e/sBuck7RpL1QKBH1d8Xg==
X-Received: by 10.99.39.195 with SMTP id n186mr32607356pgn.178.1489342914518;
        Sun, 12 Mar 2017 11:21:54 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id q90sm29350598pfk.73.2017.03.12.11.21.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 11:21:54 -0700 (PDT)
Date: Sun, 12 Mar 2017 11:21:53 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: SIMRAN SINGHAL <singhalsimran0@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] simran singhal
Message-ID: <20170312182152.GA6641@d830.WORKGROUP>
References: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com>
 <20170312174439.GC3711@d830.WORKGROUP>
 <CALrZqyMST31oTsi0zJDoG3PZsvQGRDmc46F2hFgOe7g1vzv9Kw@mail.gmail.com>
 <alpine.DEB.2.20.1703121907340.7649@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703121907340.7649@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 07:09:13PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 12 Mar 2017, SIMRAN SINGHAL wrote:
> 
> > On Sun, Mar 12, 2017 at 11:14 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > > On Sun, Mar 12, 2017 at 10:36:10AM -0700, SIMRAN SINGHAL wrote:
> > >> Hi,
> > >>
> > >> I want edit privileges.
> > >
> > > Done. Let me know if it doesn't work.
> > >
> > >
> > >>
> > >> --
> > >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> > >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4356b92a-36b0-48b6-b4eb-f1d1df878262%40googlegroups.com.
> > >> For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > For sending the patches regarding Coding Task 2, we have to send
> > them normally on outreachy mailing list or follow the instructions given on:
> > https://kernelnewbies.org/IIO_tasks
> 
> Follow the instructions, which include the Outreachy mailing list.
> 
> You can use the get_maintainer command in the tutorial, but drop the --nol
> (no lists) argument.  Then check that all of the people mentioned on the
> IIO_tasks page are included.
> 
> julia

Julia, 

I think we're saying the same thing ;)  But, I also thought that
for the IIO tasks the inclusion of these 2 below were excessive, so I left
them off the list I put in the task:
devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
linux-kernel@vger.kernel.org (open list) 

OK?

alisons


