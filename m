X-GM-THRID: 6395629856318554112
X-Received: by 10.107.183.4 with SMTP id h4mr6003691iof.16.1489175371735;
        Fri, 10 Mar 2017 11:49:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.39 with SMTP id 36ls9781308otg.33.gmail; Fri, 10 Mar
 2017 11:49:31 -0800 (PST)
X-Received: by 10.157.46.59 with SMTP id q56mr8509551otb.106.1489175371402;
        Fri, 10 Mar 2017 11:49:31 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id r66si1914029pfb.7.2017.03.10.11.49.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:49:31 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id v190so45430927pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vN8EMna70Y0JugC17hclgh93YCTXg4S0IOLb/eLg9Ns=;
        b=eaNXUIsLLVtS16BWWQBrhEwaQCfA7ZyyOsuVcMvlRr6whKrtNUp9OxOKJQby79Zedc
         TLeYuBXWH0V/gvNmn04fpqGfiLNZm2xWqPvELdx5iLK7mbZcp3h9RZXWjo+lCEfbIEce
         b/KDCAGhUNs4GKxOaUaHH6n/kZJ7IXltymitC4V0WZgZ7zyMjmI7nStknK4gpFdZDcOA
         OT8oJ88yjbw+tdk8eCEQbJFaOPYvdTK5y75tcZMD01BkG0WgJjmLtKx+rM3NGstRuYAA
         j1kpYTVJ7kXQ7ACmf6vJPMUtT/k7+LtPnf5He2o8q+GZbEg/8cSUC9VD+O4xWJq9QIp1
         xyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vN8EMna70Y0JugC17hclgh93YCTXg4S0IOLb/eLg9Ns=;
        b=f0bvH1TZuefQ7YAN8RtpUlelThCjND0i9u+dlp49OFEZbFJTlLWYtP8mrRt97NW1vW
         LzCUCY9oZKFP3I30g2TlR2dhiHp0O6G/YwXqBlHj679z8HQU0zJUyWaKAr/jmmw7fhxu
         aRyMKg6sZ0ljeY6bu/W6CZRNMsnfRQ0m+2eN1b/FZ3ppDU6U+y/OmCIG6ZDw+JgJ1d7l
         8bMWbUy3jgXnlpkUdi1g0DslwdDnl0S/Nk7tWO8x9iGnBjXSbDzGK+lVBm6a02RsdmBR
         CltguUlWMDvwfb14+1x7RPrMOz2yRdKGCZS9gxVGosqAFEqcEnrEBvp4jDUJmNrdlzae
         Xeng==
X-Gm-Message-State: AMke39lIzhsbAVEmZbDg7bXPeZZt8Uo0SsnbxnAQUhW6AJ9nghmAwHEgVYIQg1Y2E9cmiw==
X-Received: by 10.84.233.193 with SMTP id m1mr28265781pln.118.1489175371147;
        Fri, 10 Mar 2017 11:49:31 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id r134sm20142170pfr.83.2017.03.10.11.49.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:49:30 -0800 (PST)
Date: Fri, 10 Mar 2017 11:49:29 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/7] staging: wilc1000: Improve code
 readability
Message-ID: <20170310194928.GD23892@d830.WORKGROUP>
References: <20170310190606.19766-1-diaconita.tamara@gmail.com>
 <20170310192056.GB23892@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310192056.GB23892@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 11:20:57AM -0800, Alison Schofield wrote:
> On Fri, Mar 10, 2017 at 09:06:06PM +0200, Tamara Diaconita wrote:
> > Improve code readability in wilc_spi.c file in wilc1000 driver.
> 
> Hi Tamara,
> 
> Just realized why my inbox is getting disorganized.  These patchsets
> need to be sent 'threaded' so they stick together.  See how to do
> that in the first patch tutorial.  
> 
> I'm already in the middle of your last patchset, so I will keep
> going with that, but I think I'd like you to do a [PATCH RESEND]
> on this one and send it threaded.  Basically the PATCH RESEND
> says nothing has changed inside it.

Tamara,

OK...i peeked at it.  Please don't RESEND as is.  
The first 3 patches make a great set.  Improving the 
single func wilc_spi_read_int().

Can you resend just those top 3 as a single patch set,
and reflect that in your cover letter that you are

Note - I'm not disregarding patches 4-7, just don't think
they belong in the set. Hold onto them.

alisons




> 
> Thanks,
> alisons
> 
> > 
> > Tamara Diaconita (7):
> >   staging: wilc1000: Remove unnecessary brackets
> >   staging: wilc1000: Declare variables at top of function
> >   staging: wilc1000: Correct name of variables
> >   staging: wilc1000: Add blank line
> >   staging: wilc1000: Removing extra tabs
> >   staging: wilc1000: Use kernel preferred commenting style
> >   staging: wilc1000: Rearrange code
> > 
> >  drivers/staging/wilc1000/wilc_spi.c | 101 +++++++++++++++++++-----------------
> >  1 file changed, 54 insertions(+), 47 deletions(-)
> > 
> > -- 
> > 2.9.3
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310190606.19766-1-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

