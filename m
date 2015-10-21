X-GM-THRID: 6207450266150633472
X-Received: by 10.182.213.73 with SMTP id nq9mr6512529obc.33.1445406705626;
        Tue, 20 Oct 2015 22:51:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.135 with SMTP id fg7ls312484obb.54.gmail; Tue, 20 Oct
 2015 22:51:45 -0700 (PDT)
X-Received: by 10.182.107.130 with SMTP id hc2mr5942603obb.39.1445406705204;
        Tue, 20 Oct 2015 22:51:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id zg1si858232pbb.2.2015.10.20.22.51.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 22:51:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so44304231pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 22:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PZR2dNZbwfUqbaoKp0WfYF8jWqn4YhhVLrxfxLsvOTM=;
        b=t7ZSRS5zxyUm69IZDS+OMcePyYB4JODEYQj2nNgqDBZThU8jM8zKJiVBYsJgeRTWNv
         pkIO2PTZngD1Oh0xFpWumGVK9aD6e3Mbw6BjIvnC77iePvQHjLlsU9S80PHnW3sBSoBo
         OTEBj5pUUzUMxSWZ2cuhgdfUVXjkauQppqQ7JUKqPRsfmkdTanCpB3uiLBew1sy1Iouv
         BE1RuCAsAEKo+caoXk8TWjZiMQLjGJ9eu5sjHjGSpcoUWzjkF+P11SkYqOP/lSjEULhQ
         DbnSgmRMA4O7rQn/nTyOa6tYysyNeVdi+JoUvnX0jSRBjM/sqV2e92UcnZUKV/7AqHc1
         gB9g==
X-Received: by 10.67.3.167 with SMTP id bx7mr8581039pad.47.1445406705054;
        Tue, 20 Oct 2015 22:51:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id bh4sm6935304pbb.62.2015.10.20.22.51.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 22:51:44 -0700 (PDT)
Date: Tue, 20 Oct 2015 22:51:43 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: r8723au: replace
 printk() with pr_err()
Message-ID: <20151021055142.GA15857@Ubuntu-D830>
References: <cover.1445282918.git.amsfield22@gmail.com>
 <beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22@gmail.com>
 <alpine.DEB.2.02.1510192209190.2034@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510192209190.2034@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 19, 2015 at 10:09:46PM +0200, Julia Lawall wrote:
> On Mon, 19 Oct 2015, Alison Schofield wrote:
> 
> > Replace printk() with pr_err() for uniform error reporting.
> > Issue found by checkpatch.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > index c3579ac..7bf0f30 100644
> > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > @@ -248,7 +248,7 @@ int rtw_enqueue_cmd23a(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
> >  	res = queue_work(pcmdpriv->wq, &cmd_obj->work);
> >  
> >  	if (!res) {
> > -		printk(KERN_ERR "%s: Call to queue_work() failed\n", __func__);
> > +		pr_err("%s: Call to queue_work() failed\n", __func__);
> 
> There is no device tructure or network device structure available?
> 
> julia
>
Yes there is a netdev. Used in v2.  Thanks!

> >  		res = _FAIL;
> >  	} else
> >  		res = _SUCCESS;
> > -- 
> > 2.1.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/beee0bc7850917329b2b0ad3d3e0584f5cbbcdba.1445282918.git.amsfield22%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

