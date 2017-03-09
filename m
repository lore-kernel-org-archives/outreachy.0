X-GM-THRID: 6395175324693299200
X-Received: by 10.129.4.73 with SMTP id 70mr6551852ywe.153.1489093582905;
        Thu, 09 Mar 2017 13:06:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls1527202otc.43.gmail; Thu, 09 Mar
 2017 13:06:22 -0800 (PST)
X-Received: by 10.129.103.134 with SMTP id b128mr6675928ywc.14.1489093582553;
        Thu, 09 Mar 2017 13:06:22 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si1072467pfb.0.2017.03.09.13.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 13:06:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so8436910pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 13:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NFcD6M8l3diR4VcBaq7jVfi/n8blPkLHL8rM8doKvlI=;
        b=dSgimEwZuYCPvuHd6mQIrpvOTojZj4QYMr3EH1ANTqJ2n9J8qh4WvlZxlDkvDB3Mzb
         OnIgrUIi0lL6P2nawiEP8WfaCjT9Bt9MbLIplI3F8D52sgI56FiVavdTJJMJEm5PWvLV
         C8Xcdn5lhYDmgWHLKM1zQ/+OliXEDNWbsF0RojrG9HWh5vc0gRPykLHLOQagF7HjwkS7
         LyncSkmGTUkmxGDPw14KgY7E1HljG5h/gzKIMnHukdNE7bsb5MQnkbMkBaE9ytECWSTT
         lmCJALHH/hanh8wGvv/7Q/9S4YHg/pnUdoX+V5h6Yk21CbjyIHT6p+gV/W50DmlNj9HQ
         yPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NFcD6M8l3diR4VcBaq7jVfi/n8blPkLHL8rM8doKvlI=;
        b=SLKdxjIs52+f6AKbCCUWqAZYhWDKF3cOufOw/MM0N81v6SmZNR70GWyg4N9tMKb8ZO
         Bif0qZEKQ8SZkkbrJ+pgNT8OVDG5S32nkeLoN4v1OnmSRO2lGZ94IsE4N93iKhuww/gO
         tN5zPAyOSAb3/ny3C5HDXJ4suuBH9Czc32yGnTpjWmY3DxbGKMkeSuHIfMaUGexyZWx4
         4dfK5p8DbzRSLrA2NBFwbIOj8pdQtdK0IkUGhC9NniSujweyO3pMzJ6/qnM7W5l2Zog+
         aqH5rEmBMTkWRaISF1FScIJN3Wp4HbleqifNxDjt9pE27u3d//11tCxMsU0AbDX+5XCI
         IFUg==
X-Gm-Message-State: AMke39kEVPP7Nd2E6P8K0Q9Rj51Dbbo0RoKnTt2drefjAQCGvfiIdJkgMTRK0GHuyYcnAw==
X-Received: by 10.84.195.129 with SMTP id j1mr19602646pld.88.1489093582103;
        Thu, 09 Mar 2017 13:06:22 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id 194sm14157163pfx.134.2017.03.09.13.06.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 13:06:21 -0800 (PST)
Date: Thu, 9 Mar 2017 13:06:20 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Tamara Diaconita <diaconitatamara@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_spi:
 Rearrange the code
Message-ID: <20170309210619.GA9289@d830.WORKGROUP>
References: <20170308170620.3898-1-diaconita.tamara@gmail.com>
 <20170308195109.GA3284@d830.WORKGROUP>
 <20170308211928.GA13352@d830.WORKGROUP>
 <CALks+gDqojhZqvbO3-5CGNwTKdu-JtGygvnUJoXSmtkqMLTeiw@mail.gmail.com>
 <20170308213853.GA20175@d830.WORKGROUP>
 <CALks+gCnyeS=or_sySwK9f1DZjt6FJPn9H+gDP_P6TGQTuJVuw@mail.gmail.com>
 <20170309170408.GB1621@d830.WORKGROUP>
 <alpine.DEB.2.20.1703092124460.2306@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703092124460.2306@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 09:27:30PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 9 Mar 2017, Alison Schofield wrote:
> 
> > On Thu, Mar 09, 2017 at 08:24:28AM +0000, Tamara Diaconita wrote:
> > > Hi,
> > > The problem with the code was when I tried to split the lines with
> > > dev_err(...). If I split them, I get errors like "missing terminating "
> > >  character" even though this character is on the next line.
> > > But if I don't split the line, I get warnings from checkpatch.pl.
> > > Is it ok if I ignore these warnings?
> >
> > Tamara,
> >
> > I looked at func wilc_spi_read_int() with the intent of changing the line
> > over 80 warning on dev_err to see your issue, but..the function is quite
> > messy.  There is excessive bracketing {} and indentation going on.
> >
> > I'm thinking we need to clean up the excessive bracketing and indentation
> > first, and then see which lines remain over 80 and deal with them.
> >
> > Julia - Can you take a look at this func and tell us if you agree that the
> > extra brackets are not a desired style?
> 
> Definitely agree.  It's OK to declare variable at eg the top of an if
> branch if that seems really necessary from a conceptual point of view.
> But they shouldn't be declared at all random places, as is done in this
> function.  It's fine to just move the variables to the top of the
> function.
> 
> Kernel goto labels also don't have _ around them.
> 
> julia
>

Tamara,

How about a patchset that only focuses on this function:

 Subject: [PATCH 0/N] staging: wilc1000: clean up wilc_spi_int.c

	where N is yet to be defined.

  Let's assume patches 1 through N will each depend on the previous.
  I'm thinking this might be a smooth way to do it.
  See what you think and adjust as works best for you.

  patch-1: declare variables at top of function
  patch-2: remove useless brackets
  patch-3: use kernel preferred indentation style

  *** see what you are left with, maybe you'll have:

  patch-4: ...something you fit with a line
  patch-5: ...spelling

  Wow  - it get's big and we're only focused on one function ;)

  Mail the patchset to yourself.  Get a clean branch and
  apply/compile each patch in sequence.  It should compile
  after each addition.

  So, we're basically abandoning the previous patchset.
  That's ok.  You can get back to those other pieces in the
  file after this patchset gets ack'd.

alisons

>>>>>>>>>>>>>>>>>>> snipped a whole lot of stuff <<<<<<<<<<<<<<<<<


