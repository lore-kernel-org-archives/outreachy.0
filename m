X-GM-THRID: 6203527091850313728
X-Received: by 10.182.215.226 with SMTP id ol2mr18867314obc.11.1444545430460;
        Sat, 10 Oct 2015 23:37:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.169 with SMTP id e41ls1255414ioi.8.gmail; Sat, 10 Oct
 2015 23:37:10 -0700 (PDT)
X-Received: by 10.68.184.35 with SMTP id er3mr18627277pbc.2.1444545430068;
        Sat, 10 Oct 2015 23:37:10 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si1057906pbb.0.2015.10.10.23.37.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 23:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so124678994pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 23:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=s/GmHFh2+2Sv5OYBlGPMi4l4UmNi5JHSnDBMQ+sZSb4=;
        b=EAe0CqZnjr+vmAU75SPNbuu4DuRT6PftP2oaQG7OwMYrT97ZjkBEFQm7M/tYZ6+jSU
         +2i6uJ0MjrlvlZsYfDw8iKFHxQBLWyuL8qRzh6hmNwtzIrAWCbGU0fKoJOoQkmVyBOnC
         7L13V1RM4kErAHAFg0LK/y4X9vda3lEpy0tYu4KyHVuiKrQioRNvLmqSfWtDRV8NRXqW
         8mLzrdVNos8GOzLPrD4TIXJUdq1njN6MIkHWfFJ40UQFoC9Ixj+sQN91zTWphFsUbOyr
         yjsUIHp8x5ZB3Ywk+1NjSlwS/pYPysMuE0bIi6yNhYdywbJ8aQwlxWO/p8/jBaP7G8q6
         XwGQ==
X-Received: by 10.68.168.97 with SMTP id zv1mr26744800pbb.86.1444545429923;
        Sat, 10 Oct 2015 23:37:09 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id rz7sm11372173pbc.7.2015.10.10.23.37.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 23:37:09 -0700 (PDT)
Date: Sat, 10 Oct 2015 23:37:08 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdmwm: move constant to
 right side of comparison test
Message-ID: <20151011063707.GA6423@Ubuntu-D830>
References: <20151009061314.GA31693@Ubuntu-D830>
 <20151010070034.GA4795@sudip-pc>
 <alpine.DEB.2.02.1510100921000.2062@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510100921000.2062@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 10, 2015 at 09:22:27AM +0200, Julia Lawall wrote:
> On Sat, 10 Oct 2015, Sudip Mukherjee wrote:
> 
> > On Thu, Oct 08, 2015 at 11:13:23PM -0700, Alison Schofield wrote:
> > > Move constant to right side of comparison test per checkpatch.pl:
> > > WARNING: Comparisons should place the constant on the right side of the
> > > test
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
> > >  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
> > > index 6e8dbaf..69f00cc 100644
> > > --- a/drivers/staging/gdm72xx/gdm_wimax.c
> > > +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> > > @@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
> > >  		}
> > >  
> > >  		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
> > > -		if (T == TLV_T(T_MAC_ADDRESS)) {
> > > -			if (L != dev->addr_len) {
> > > +		if (TLV_T(T_MAC_ADDRESS) == T) {
> > 
> > Is it correct? T and L are variables which are getting its values from
> > gdm_wimax_hci_get_tlv(). TLV_T is a macro which is ((x) & 0xff).
> > 
> > Do we use it like:
> > 
> > if ((T_MAC_ADDRESS & 0xff) == T)
> > 
> > or do we use like:
> > 
> > if (T == (T_MAC_ADDRESS & 0xff))
> 
> I'm not sure there is such a semantic intent to the rule.  Do something 
> complex and then see if it is like T, looks better to me than see if T is 
> like doing something complex.  The checkpatch/commit message is indeed 
> misleading, but the layout of characters looks better.
> 
> julia

Let me see if I have the correct understanding.

T and L are variables, not constants, therefore the checkpatch error and
my subsequent commit msg are misleading.  Regardless of whether this
case should have been flagged by checkpatch the edit improves
readability.

So, I'd lean towards keeping the edit and changing the commit msg & description like this:

	staging: gdmwm: move variable to right side of comparison test
    
	Move variables to right side of comparison test to improve readability.
		
Your thoughts?

alison


