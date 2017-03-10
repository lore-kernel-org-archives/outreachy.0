X-GM-THRID: 6395175324693299200
X-Received: by 10.129.39.142 with SMTP id n136mr6838792ywn.160.1489118369785;
        Thu, 09 Mar 2017 19:59:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls7496872otx.21.gmail; Thu, 09 Mar
 2017 19:59:29 -0800 (PST)
X-Received: by 10.129.29.2 with SMTP id d2mr6503664ywd.85.1489118369346;
        Thu, 09 Mar 2017 19:59:29 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si1579856pfa.4.2017.03.09.19.59.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 19:59:29 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so9345869pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 19:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wq0qWnXlEnhH6pYL+WY8kUlry97DrKLaRsdiVjVAUHI=;
        b=a4k5e5Nz4MLNtsvRPLhyetxCypJPAtBMfaImlcSqdV29CkpQMPfGZwGzH8L7eo5hNh
         IJ8d+1pE2OvNhM53pmM0o6+h3TMUl21Dd3XI5rBfDqdkHj0Ix9E8Lv10USLkPbK4WAzl
         1+3AY5ndrTTxzPSDK/+sr8z4oZelGfU1Y51woO43h1fT1+On55Jnhsz+b43S70lV5mBR
         Urr94u8QQnZj5gtCb7WMrPO8BSrKDa2/rBp4N1pL2iC751RnEa3tIVYeZkZykIKrHAd4
         ZcrygvD0BxpUZEujZ9gT/RcD36ObHREqbWGIii8FJKAtEleNvwjrHm3+vgeqzNIMPiof
         xoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wq0qWnXlEnhH6pYL+WY8kUlry97DrKLaRsdiVjVAUHI=;
        b=CqRbTj+KJ0imN0u30NMVOYQehyFtae6UqgLHJs+uuwF8EIl9vgsA4GEhLb43Fn1HDE
         2PtK5Uo98TKd8s+PYaIt/vskaBekEFggnnNiLiZ4DLZR8K6qgXQytCwKts/N99Q7ORKH
         /CQ3LzpFv/tjwaFH8BtaqTbaDGlY1POWq6HANdho8a85dNDJclrGm6s/7IzkB4DuTRAp
         3VRo/a8AdXnt4sz43BxJJ5um30Z8PgMteorm8CQDgYRy20dIooIcRixgGel/9xx7tZBS
         t89SdEjyxsl2FOVCOOiTQN8zWhV66D7Y3AgNRjOpRB44pfNjEgMdqP3sgcnuk9P77ouE
         qfqA==
X-Gm-Message-State: AMke39lZrVGLEVN5VuU80vvNXFP+Pl6WcnRd3AJO/9V+YQA7/cuhkJSDdWTkEAH6KAkaug==
X-Received: by 10.84.217.2 with SMTP id o2mr22174373pli.51.1489118369051;
        Thu, 09 Mar 2017 19:59:29 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id a78sm15141374pfc.25.2017.03.09.19.59.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 19:59:28 -0800 (PST)
Date: Thu, 9 Mar 2017 19:59:26 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Tamara Diaconita <diaconitatamara@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_spi:
 Rearrange the code
Message-ID: <20170310035925.GA17657@d830.WORKGROUP>
References: <20170308170620.3898-1-diaconita.tamara@gmail.com>
 <20170308195109.GA3284@d830.WORKGROUP>
 <20170308211928.GA13352@d830.WORKGROUP>
 <CALks+gDqojhZqvbO3-5CGNwTKdu-JtGygvnUJoXSmtkqMLTeiw@mail.gmail.com>
 <20170308213853.GA20175@d830.WORKGROUP>
 <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com>
 <20170309170408.GB1621@d830.WORKGROUP>
 <alpine.DEB.2.20.1703092124460.2306@hadrien>
 <20170309210619.GA9289@d830.WORKGROUP>
 <alpine.DEB.2.20.1703092211302.2306@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703092211302.2306@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 10:13:58PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 9 Mar 2017, Alison Schofield wrote:
> 
> > On Thu, Mar 09, 2017 at 09:27:30PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 9 Mar 2017, Alison Schofield wrote:
> > >
> > > > On Thu, Mar 09, 2017 at 08:24:28AM +0000, Tamara Diaconita wrote:
> > > > > Hi,
> > > > > The problem with the code was when I tried to split the lines with
> > > > > dev_err(...). If I split them, I get errors like "missing terminating "
> > > > >  character" even though this character is on the next line.
> > > > > But if I don't split the line, I get warnings from checkpatch.pl.
> > > > > Is it ok if I ignore these warnings?
> > > >
> > > > Tamara,
> > > >
> > > > I looked at func wilc_spi_read_int() with the intent of changing the line
> > > > over 80 warning on dev_err to see your issue, but..the function is quite
> > > > messy.  There is excessive bracketing {} and indentation going on.
> > > >
> > > > I'm thinking we need to clean up the excessive bracketing and indentation
> > > > first, and then see which lines remain over 80 and deal with them.
> > > >
> > > > Julia - Can you take a look at this func and tell us if you agree that the
> > > > extra brackets are not a desired style?
> > >
> > > Definitely agree.  It's OK to declare variable at eg the top of an if
> > > branch if that seems really necessary from a conceptual point of view.
> > > But they shouldn't be declared at all random places, as is done in this
> > > function.  It's fine to just move the variables to the top of the
> > > function.
> > >
> > > Kernel goto labels also don't have _ around them.
> > >
> > > julia
> > >
> >
> > Tamara,
> >
> > How about a patchset that only focuses on this function:
> >
> >  Subject: [PATCH 0/N] staging: wilc1000: clean up wilc_spi_int.c

Agreed w Julia about focusing, but then wrote the file name instead
of the function name. Should be: clean up function wilc_spi_read_int()
alisons

> >
> > 	where N is yet to be defined.
> >
> >   Let's assume patches 1 through N will each depend on the previous.
> >   I'm thinking this might be a smooth way to do it.
> >   See what you think and adjust as works best for you.
> >
> >   patch-1: declare variables at top of function
> >   patch-2: remove useless brackets
> >   patch-3: use kernel preferred indentation style
> >
> >   *** see what you are left with, maybe you'll have:
> >
> >   patch-4: ...something you fit with a line
> >   patch-5: ...spelling
> >
> >   Wow  - it get's big and we're only focused on one function ;)
> >
> >   Mail the patchset to yourself.  Get a clean branch and
> >   apply/compile each patch in sequence.  It should compile
> >   after each addition.
> >
> >   So, we're basically abandoning the previous patchset.
> >   That's ok.  You can get back to those other pieces in the
> >   file after this patchset gets ack'd.
> 
> As a general rule, I think it could be a good idea to try to make smaller
> patchsets.  Focus on one thing and try to do a good job of it (proper
> subject line, helpful and comprehensive commit message, correct changes)
> rather than trying to do everything to clean up a file at once.  It's
> always possible to do the rest later.
> 
> julia
> 
> >
> > alisons
> >
> > >>>>>>>>>>>>>>>>>>> snipped a whole lot of stuff <<<<<<<<<<<<<<<<<
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309210619.GA9289%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.
> >

