X-GM-THRID: 6394051769917243392
X-Received: by 10.46.21.11 with SMTP id s11mr1933980ljd.23.1488742124123;
        Sun, 05 Mar 2017 11:28:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.29 with SMTP id g29ls1255993ljb.37.gmail; Sun, 05 Mar
 2017 11:28:43 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr1799603ljf.6.1488742123374;
        Sun, 05 Mar 2017 11:28:43 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id h198si831249wmg.1.2017.03.05.11.28.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:28:43 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l37so19275824wrc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sc8T5dBSDYCjPS0zPsFswcKZ4j5EfA0jBrBOblgWCeU=;
        b=a2496bGOb5QtjJzKEArSVtlzwMCiydWDHqGau5fLoEeHgIaPL37utShNcb6Gh0BUi2
         vRD1Dcj/TNSX0xdv2L6s9WPd+YlRZgwLii3QDn46qvIoEgmBfT1MvMRM/VFOGgmMwP6T
         wYixZQxXV8fpZLKco16aHOJcrxREq18sHfAMAaGli92M66+UXWlb/ZvOTbeAoQzsPYWx
         uYh4c0BhVTkw4Gobd1YsVolg8+ScAsVeXpqj2BsdRASo2IKxO2YiXSvj3yc15C4FhYlB
         Ns91D39CbrrFJNv0suirwaVrNArxNNnCDCXWeDWocu9gkmCnlRVQuyLBSxeC/fZ71Fgc
         BQrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sc8T5dBSDYCjPS0zPsFswcKZ4j5EfA0jBrBOblgWCeU=;
        b=Hzd6Pxl1kBaG3XBX7j9gbjqpVXzFpCg++BpEXcoMlCg1WPf5dw+xQq1JFuSyXh+PqN
         XPv9Ewb5/r07/l5vD/GB5PEFKDpzdQr1va0MKCLKjxPTICIhfqAoR90uib9M/+iRAj6E
         TGzf+L0EVjGloTe2LO+kNuZuPLuvhm1QK2C84EFoiib2dy2Cm0RO2OCSKjUSbpaX2G6i
         tbRmYE14QxidfZt0lKaZm2lR2ULrBYQ5PUWtgBi1Ua5fJI0H5r1Bxp77+tY9CZRqMnUc
         n2S4+KjaWrQB4bXNEo9V+/RrMPkP0JH0Ky81WMjN6ECxKQ2oNjGJmdeWkKvdJMkKxDTX
         eNOg==
X-Gm-Message-State: AMke39mc2R7P5vHt6KwPqw1Ffhz0XNdahTjwGmHHFEO1wU1lzzNWRGH7i0/rI47bGF/8+w==
X-Received: by 10.223.151.45 with SMTP id r42mr10985615wrb.185.1488742123170;
        Sun, 05 Mar 2017 11:28:43 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id q4sm7857388wme.17.2017.03.05.11.28.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:28:42 -0800 (PST)
Date: Sun, 5 Mar 2017 21:28:41 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group
 similar macros into enums
Message-ID: <20170305192840.GA12508@nati-X550JK>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>
 <20170305185828.GA3380@d830.WORKGROUP>
 <20170305191459.GA20822@nati-X550JK>
 <alpine.DEB.2.20.1703052017040.3052@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703052017040.3052@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Mar 05, 2017 at 08:17:45PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > On Sun, Mar 05, 2017 at 10:58:29AM -0800, Alison Schofield wrote:
> > > On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> > > > Group related macros into enums, for clarity.
> > >
> > > Hi Narcisa,
> > >
> > > Is this enum then used in a type declaration?
> > >
> > > BTW - I can see Jonathan is following right along and sweeping these up,
> > > but for future reference, this patch depended on a previous patch sent hours
> > > earlier, that was not yet in staging-testing.  When this happens, one option
> > > is to give a note below the --- (as you would for version comments) stating the
> > > dependency.  This way someone reviewing the patch doesn't simply reject
> > > it as not applying to my tree.
> > >
> > > alisons
> > >
> >   Hi,
> >
> >   Do you mean whether there are any type declarations where I could
> >   now replace the type with the enum type ? If so, I searched for
> >   these type of situations, but didn't find any. If I missed one of
> >   these cases, please let me know and I'll send a new patch.
> 
> Typically the constant would be stored in something, compared to
> something, etc.  Are these constants not used at all?
> 
> julia
> 
>
  Yes, they are used, they are stored. I thought she was asking
  if I encountered any situations like in adc/ad7280a.h file
  where you could define an enum for conversion averaging
  macros and replace the 'unsigned int' field in the 
  ad7280_platform_data with the enum type.

  Narcisa
> >
> >   Thank you for the note about the patch dependencies. I was just about
> >   to ask about this, cause I realized there might be a problem.
> >   I'll keep in mind to make a note next time.
> >
> >   Narcisa
> >
> > > > Narcisa Ana Maria Vasile (2):
> > > >   staging: iio: adis16209: Group similar macros into enums
> > > >   staging: iio: adis16240: Group similar macros into enums
> > > >
> > > >  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
> > > >  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
> > > >  2 files changed, 18 insertions(+), 14 deletions(-)
> > > >
> > > > --
> > > > 1.9.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305191459.GA20822%40nati-X550JK.
> > For more options, visit https://groups.google.com/d/optout.
> >

