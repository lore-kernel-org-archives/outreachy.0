X-GM-THRID: 6335655497747660800
X-Received: by 10.28.59.198 with SMTP id i189mr4017wma.15.1475557602085;
        Mon, 03 Oct 2016 22:06:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.41.135 with SMTP id p129ls1817065wmp.9.canary; Mon, 03 Oct
 2016 22:06:41 -0700 (PDT)
X-Received: by 10.194.87.67 with SMTP id v3mr84216wjz.23.1475557601478;
        Mon, 03 Oct 2016 22:06:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u64si1050993wmf.0.2016.10.03.22.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 22:06:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,441,1473112800"; 
   d="scan'208";a="239271971"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2016 07:06:40 +0200
Date: Tue, 4 Oct 2016 07:06:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Megha Agarwal <agarwal10megha@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] [PATCH] staging: media: bcm2048:
 Replace 'unsigned' with 'unsigned int'
In-Reply-To: <20161004045631.GA4456@megha-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1610040705390.3649@hadrien>
References: <20160929073859.GA21701@megha-HP-15-Notebook-PC> <20161002145401.GA21187@kroah.com> <20161004045631.GA4456@megha-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 4 Oct 2016, Megha Agarwal wrote:

> On Sun, Oct 02, 2016 at 04:54:01PM +0200, Greg KH wrote:
> > On Thu, Sep 29, 2016 at 01:08:59PM +0530, Megha Agarwal wrote:
> > > This is a patch to the radio-bcm2048.c file that fixes up a
> > > WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> > > found by the checkpatch.pl tool
> > >
> > > Signed-off-by: Megha Agarwal <agarwal10megha@gmail.com>
> > > ---
> > >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > index ea15cc6..f6f847b 100644
> > > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > > @@ -2022,7 +2022,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
> > >  	return count;							\
> > >  }
> > >
> > > -DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
> > > +DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
> > >  DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
> > >  DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
> > >  DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
> >
> > Why only 1?  And are you sure this is correct?  Did you build it?
> >
> > greg k-h
>
> I was not sure if I could send the changes in all the lines in one
> patch, hence sent the single change.
>
> I am revising the patch as this change is giving an error on build : two or more data types in declaration specifiers.

Exactly.  I don't think there is anything to revise.  The change is just
not appropriate in this case, based on how the macro is designed.

julia


>
> megha
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161004045631.GA4456%40megha-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

