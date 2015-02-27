X-GM-THRID: 4475579269120
X-Received: by 10.112.159.227 with SMTP id xf3mr2325456lbb.11.1425064179604;
        Fri, 27 Feb 2015 11:09:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.225.132 with SMTP id rk4ls225455lac.79.gmail; Fri, 27 Feb
 2015 11:09:39 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr1245297lbc.10.1425064179174;
        Fri, 27 Feb 2015 11:09:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id l8si211628wia.0.2015.02.27.11.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:09:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so2411324wiw.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9eznXMEZASiNFFnXfesOm897uNhDkRZXKJDyUbK5W5Q=;
        b=Z3OhRzMCIlI/niOyEiS5Amg2qEivGwSytrdHtroES/Aw96ZpE+kGnOEeq9Ww+3BuV+
         CuNbnQq3h+hAB+NtlB7cAhHAVs2DP+hPUvHDDyrUiVOKPJdGU3Azm6HHFB1U3H7aZS4/
         J94csZKLrCA+rAB0p3eoOxqnmiCLElZVz1mgMSkmySooaUM89TFRbQF6zdbO9eHWBGo2
         RHKrx6+6dTCcqNWDhU61RRDwJbHxOX1ts0MB3rbwECLL7Xitk1SW3SGGnQD9CX3YauLl
         DYZR2acqDp+GI6KEdgJiVh7pl3MjTdZweL5IIzH7A1clPGUyDkgvY8n4sdLY/RWAvpVK
         hQMQ==
X-Received: by 10.195.12.71 with SMTP id eo7mr31462821wjd.3.1425064179093;
        Fri, 27 Feb 2015 11:09:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id l6sm7171090wjx.33.2015.02.27.11.09.37
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:09:38 -0800 (PST)
Date: Fri, 27 Feb 2015 21:09:34 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 18/24] staging: lustre: llite: remove
 unused variable
Message-ID: <20150227190934.GC31834@waves>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
 <0ae8fe1e6a7e12be20f2d16ad8d0a966564d8654.1425035012.git.mahfouz.saif.elyazal@gmail.com>
 <alpine.DEB.2.10.1502271654110.2663@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502271654110.2663@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 04:54:36PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 27 Feb 2015, Aya Mahfouz wrote:
> 
> > This patch removes a variable that was simply used to
> > store the return value of a function call before
> > returning it.
> >
> > The issue was detected and resolved using the following
> > coccinelle script:
> >
> > @@
> > identifier len,f;
> > @@
> >
> > -int len;
> >  ... when != len
> >      when strict
> > -len =
> > +return
> >         f(...);
> > -return len;
> >
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> >  drivers/staging/lustre/lustre/llite/file.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
> > index 0fd113d..3ae4d85 100644
> > --- a/drivers/staging/lustre/lustre/llite/file.c
> > +++ b/drivers/staging/lustre/lustre/llite/file.c
> > @@ -888,7 +888,6 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
> >  {
> >  	struct ldlm_lock *lock;
> >  	bool cancelled = true;
> > -	int rc;
> >
> >  	lock = ldlm_handle2lock(&och->och_lease_handle);
> >  	if (lock != NULL) {
> > @@ -906,9 +905,8 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
> >  	if (lease_broken != NULL)
> >  		*lease_broken = cancelled;
> >
> > -	rc = ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp, inode, och,
> > +	return ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp, inode, och,
> >  				       NULL);
> 
> The NULL argument was aligned with the first argument before, but now it
> is not.
> 

Will fix it. Thank you Julia.
> julia
> 
> > -	return rc;
> >  }
> >
> >  /* Fills the obdo with the attributes for the lsm */
> > --
> > 1.9.3
> >
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0ae8fe1e6a7e12be20f2d16ad8d0a966564d8654.1425035012.git.mahfouz.saif.elyazal%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

