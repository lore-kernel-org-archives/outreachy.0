X-GM-THRID: 6803023005726277632
X-Received: by 2002:a17:902:7895:: with SMTP id q21mr8581980pll.222.1584026729007;
        Thu, 12 Mar 2020 08:25:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:de4b:: with SMTP id y11ls2118012pgi.2.gmail; Thu, 12 Mar
 2020 08:25:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs4z3MkzspQWw3ZNI+omSitgMHjdc/fqtZ/X9KK+zdeX1k3cP+SEVygbCYJ0OK9qNoNumvm
X-Received: by 2002:a62:3604:: with SMTP id d4mr8693263pfa.82.1584026727378;
        Thu, 12 Mar 2020 08:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584026727; cv=none;
        d=google.com; s=arc-20160816;
        b=MdiW3sRWVw6Pu43qXkfGe+l79u/Z91WjdFB8TGCGnVMz5TmgGmDlnM97a1vJha6ocq
         KvYhdOfrISRDQGItzUYJ8DaQ6t6TeTU46xGrAOcoTMyhKfBtehMYEyIbjLJv9jYfk1ZY
         3ACUxGo6qJvu2sqVBgkMHXZsbYgEmZxr/9OCmleQomO3aGse+lUJqA3dQ+P8OKJhhmCa
         59PzVbJJa6Udmqsl6n4O/o3jGagR2uuqS/L2gzf5HSidUMEmD+0q3s5VnuUXtYNBs0rb
         7zN0/5CWOgL05BbUigSRo71pjeuaSw00NygFTanPRLn/CadhwqJqbBU20dCqBDrWlknz
         MMJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NtEK3GCNw54PfRwQhmORU7EZTYAJ94sep4khAn+1Ki8=;
        b=ej3MwcD0U4wlg/65TOWSBx9w/7L3AZuQKCuE7qRWX1UsavLBDp3MkREgjJh/mwkxZQ
         2RvnzPJFlkE8t6HYVki3yt9/ttC3XxNovkFHvVreXJY31pPVaHsIycC1i/v2ujc8mD4P
         Z9L5JpmWFVWbihNz7aegWYNVfg4WQiNZkOzBQfSBNOZ2r96yDAje1V36qpEzb18VYGUz
         BGsZodBuWz/+JD71Oxvd7XeoUoyfhfmZz9oqzYvzF7KOetTLxoGE3wrR+1X3wYgYGPFD
         nJxR3/GZBj/yqZPpZKu9lwDg1OQK/Kr46N6MF6z5aCXodo3Hc3tSLXog7MEFDCMt7ERI
         /Ajg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eqrZ4orV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b10si311046pfo.6.2020.03.12.08.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 08:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eqrZ4orV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A96F220674;
	Thu, 12 Mar 2020 15:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584026727;
	bh=giirGg/yYUa6GRaPVovb43vBhfGzU4O3yg3/BJ57+fQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eqrZ4orVE3JKyGvr7KisrENdTVP4tjNF1eiB/83kwaSJa8dRsgn1I01cKipwgQk5U
	 tavtyJq7rdEBThT4R5mtNBTtCy4IvPX1ox+MlbUuiK8dlwhBw4vbl9ESTH3mheXcFc
	 nmVDMDagQgap+spvLovkV9K8g3JIm27S61qknIAs=
Date: Thu, 12 Mar 2020 16:25:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/5] staging: comedi: ni_mio_common.c: reformat code
Message-ID: <20200312152524.GC383349@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-2-kgupta@es.iitr.ac.in>
 <20200312081645.GB11746@kroah.com>
 <20200312145603.GE30896@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312145603.GE30896@kaaira-HP-Pavilion-Notebook>

On Thu, Mar 12, 2020 at 08:26:03PM +0530, Kaaira Gupta wrote:
> On Thu, Mar 12, 2020 at 09:16:45AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 12, 2020 at 12:13:23AM +0530, Kaaira Gupta wrote:
> > > reformat the arguments given to ni_stc_writew() to increase code
> > > readability in ni_mio_common.c
> > > 
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  drivers/staging/comedi/drivers/ni_mio_common.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > index b72a40a79930..06ed4b1dd875 100644
> > > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > @@ -2445,9 +2445,9 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
> > >  #endif
> > >  
> > >  	if (cmd->start_src == TRIG_NOW) {
> > > -		ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
> > > -				   devpriv->ai_cmd2,
> > > -			      NISTC_AI_CMD2_REG);
> > > +		ni_stc_writew(dev, devpriv->ai_cmd2 |
> > > +				NISTC_AI_CMD2_START1_PULSE,
> > > +				NISTC_AI_CMD2_REG);
> > 
> > No, the original is correct.  What caused you to want to rewrite this?
> 
> It is more readable and gives the same results, hence changed it.

It is not more readable, you just lost some context information here,
making the code harder to read and understand easily :(

Whitespace matters, otherwise we wouldn't be doing all of these cleanups :)

thanks,

greg k-h

