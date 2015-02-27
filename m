X-GM-THRID: 2067485687808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e2f8e6cdb7b38af
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr1662766lbj.23.1424996851445;
        Thu, 26 Feb 2015 16:27:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.34 with SMTP id jt2ls15967wid.17.canary; Thu, 26 Feb
 2015 16:27:31 -0800 (PST)
X-Received: by 10.194.239.41 with SMTP id vp9mr1665563wjc.5.1424996851107;
        Thu, 26 Feb 2015 16:27:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ew5si23314wid.1.2015.02.26.16.27.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 16:27:31 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id b13so16056865wgh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 16:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RxfVAzmsMy6a6xftX/aVpILA34wAxEl3IabJn7w85Cs=;
        b=iKIm0GRi3CLjw/boDGd3FYQ3kZlf5WLsU7FlUCRGe+DOWZJHdTQSnTZJP+L1gW5uzd
         HKBymLVewWd9hp0JPu2zjkKIEibCKOiyHMNnpgpy1Zb69EQc1+acWbR7/9nFW/fpDyL2
         vipgpmHXGjL7itQ0HrbElTs8u/1RKBjbXxtb9Q5j4jweaeYL8d6BgDRjiCtyZ8Sj4d5X
         IvWX/oOJrE3FQkdAtQDbNbguv1YErDJ0PARAqEa56C1h8KlFUHvChUTUNvIynk1TGamt
         7UmvgG6kQYevitnWVfwQgvwj+jAGG97rPACZNa/19RBnSzQLjbgOp1Dxn7mo8QkmqmYC
         EVug==
X-Received: by 10.194.204.131 with SMTP id ky3mr6466944wjc.95.1424996851024;
        Thu, 26 Feb 2015 16:27:31 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id b4sm503737wic.2.2015.02.26.16.27.29
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 16:27:30 -0800 (PST)
Date: Fri, 27 Feb 2015 03:27:26 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5 3/6] Staging: emxx_udc: Replace
 custom printk macro ERR with pr_err
Message-ID: <20150227002726.GA12491@example.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>
 <d2e65fddab2025261f56081beab5b0bac1e53bda.1424786861.git.hamohammed.sa@gmail.com>
 <20150226232212.GB21368@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150226232212.GB21368@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Feb 26, 2015 at 03:22:12PM -0800, Greg KH wrote:
> On Tue, Feb 24, 2015 at 05:33:49PM +0300, Haneen Mohammed wrote:
> > This patch removes half custom printk macros ERR and replace it with
> > pr_err. Issue addressed by checkpathc.pl.
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> > v5: Fix spelling mistakes
> > 
> >  drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
> >  1 file changed, 28 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > index c9f5e5d..f33980c 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > @@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
> >  	pr_info("=== %s()\n", __func__);
> >  
> >  	if (udc == NULL) {
> > -		ERR("%s udc == NULL\n", __func__);
> > +		pr_err("udc: %s udc == NULL\n", __func__);
> 
> As this is a driver, you should be able to use dev_err() for all of
> these statements.  Please do that instead.
> 
> thanks,
> 
> greg k-h

I did my best to look for a struct device *dev to use it in dev_err()
but in these cases I couldn't. It was either not present or uninitialized yet, so I used pr_err instead. Would that be correct or is there another way of doing it?

And thank you for reviewing the patches!
Haneen


