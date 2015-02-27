X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr1996309laj.6.1425037336513;
        Fri, 27 Feb 2015 03:42:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls156266lah.23.gmail; Fri, 27 Feb
 2015 03:42:16 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2017442lbb.11.1425037336145;
        Fri, 27 Feb 2015 03:42:16 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id r6si104151wix.0.2015.02.27.03.42.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 03:42:16 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so19691765wev.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 03:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mgHC/dwo4Zp1g4W9UJ6axkbUjF8DvF28V44cb1x1Op4=;
        b=B5Vsbb8D61YViLZNB12hNqpePCCuPQfEgVH1R0TeT/Pi1wSbL9+8V8gx0jsnFZKPCG
         yChHsAm7alBLSvDXAp7mW1WnK3+BKQvvMxVBNjCWwojuwz5N9hEoeajv+Lfc/5a1elHs
         gNtxNt/8xJxuEHPtG/qU+CPLR9EY785UUiBad9gy/NaXMgYgcI4R6EqckcjaHWQWAkPq
         yy2UhEEhMv26mDaFV55VPfF4nvigdiWtfNghUv1al11vb9coJCBqpytPJoPdjChRKa85
         LunhcrqPRFDH5Ey2xxSKTYnaaErB89h8NDeGjo0sw6u0s0BL/jtRRTHehZKkDpRlEqD3
         fv4A==
X-Received: by 10.180.8.10 with SMTP id n10mr5376387wia.79.1425037334522;
        Fri, 27 Feb 2015 03:42:14 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from localhost ([79.170.55.43])
        by mx.google.com with ESMTPSA id hm6sm5569792wjb.32.2015.02.27.03.42.09
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 03:42:13 -0800 (PST)
Date: Fri, 27 Feb 2015 14:42:05 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v8 2/5] Staging: emxx_udc: Replace
 custom printk macro ERR with pr_err
Message-ID: <20150227114205.GB28904@example.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>
 <1425033066-20762-1-git-send-email-hamohammed.sa@gmail.com>
 <alpine.DEB.2.10.1502271158410.2668@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502271158410.2668@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Feb 27, 2015 at 11:59:57AM +0100, Julia Lawall wrote:
> On Fri, 27 Feb 2015, Haneen Mohammed wrote:
> 
> > This patch removes half custom printk macros ERR and replace it with
> 
> Removing the macro would seem like remomving the definition.  Here you are
> removing the uses.  That could be more clear.
> 
> > pr_err, for no appropriate struct device *dev field where found for dev_err.
> > Issue addressed by checkpathc.pl.
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> > v6: Justify the use of pr_err instead of dev_err.
> >
> >  drivers/staging/emxx_udc/emxx_udc.c | 56 ++++++++++++++++++-------------------
> >  1 file changed, 28 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> > index f2ddad3..094e018 100644
> > --- a/drivers/staging/emxx_udc/emxx_udc.c
> > +++ b/drivers/staging/emxx_udc/emxx_udc.c
> > @@ -115,7 +115,7 @@ static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)
> >  	pr_info("=== %s()\n", __func__);
> >
> >  	if (udc == NULL) {
> > -		ERR("%s udc == NULL\n", __func__);
> > +		pr_err("udc: %s udc == NULL\n", __func__);
> >  		return;
> >  	}
> >
> > @@ -2258,7 +2258,7 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
> 
> Are you sure that there is no appropriate field in the nbu2ss_udc
> structure?
> 
> julia
> 
nbu2ss_udc structure in the following function has a dev field.
 "static void _nbu2ss_dump_register(struct nbu2ss_udc *udc)"
But I thought I can't use dev_err in the following because if udc is
null then udc->dev would be null, so I used pr_err instead.
        if (udc == NULL) {
		pr_err("udc: %s udc == NULL\n", __func__);

Or that is fine and using dev_err(udc->dev, even if udc is null  wouldn't affect the program?

Thanks,
Haneen
> >  	u32	reg_dt;
> >
> >  	if (!udc) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2612,13 +2612,13 @@ static int nbu2ss_ep_enable(
> >  	struct nbu2ss_udc	*udc;
> >
> >  	if ((_ep == NULL) || (desc == NULL)) {
> > -		ERR(" *** %s, bad param\n", __func__);
> > +		pr_err("udc: *** %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if ((ep == NULL) || (ep->udc == NULL)) {
> > -		ERR(" *** %s, ep == NULL !!\n", __func__);
> > +		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2626,7 +2626,7 @@ static int nbu2ss_ep_enable(
> >  	if ((ep_type == USB_ENDPOINT_XFER_CONTROL)
> >  		|| (ep_type == USB_ENDPOINT_XFER_ISOC)) {
> >
> > -		ERR(" *** %s, bat bmAttributes\n", __func__);
> > +		pr_err("udc:  *** %s, bat bmAttributes\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2672,13 +2672,13 @@ static int nbu2ss_ep_disable(struct usb_ep *_ep)
> >  	unsigned long		flags;
> >
> >  	if (_ep == NULL) {
> > -		ERR(" *** %s, bad param\n", __func__);
> > +		pr_err("udc:  *** %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if ((ep == NULL) || (ep->udc == NULL)) {
> > -		ERR(" *** %s, ep == NULL !!\n", __func__);
> > +		pr_err("udc:  *** %s, ep == NULL !!\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2742,10 +2742,10 @@ static int nbu2ss_ep_queue(
> >  	/* catch various bogus parameters */
> >  	if ((_ep == NULL) || (_req == NULL)) {
> >  		if (_ep == NULL)
> > -			ERR("*** %s --- _ep == NULL\n", __func__);
> > +			pr_err("udc: *** %s --- _ep == NULL\n", __func__);
> >
> >  		if (_req == NULL)
> > -			ERR("*** %s --- _req == NULL\n", __func__);
> > +			pr_err("udc: *** %s --- _req == NULL\n", __func__);
> >
> >  		return -EINVAL;
> >  	}
> > @@ -2756,13 +2756,13 @@ static int nbu2ss_ep_queue(
> >  	     || !list_empty(&req->queue))) {
> >
> >  		if (!_req->complete)
> > -			ERR("*** %s --- !_req->complete\n", __func__);
> > +			pr_err("udc: *** %s --- !_req->complete\n", __func__);
> >
> >  		if (!_req->buf)
> > -			ERR("*** %s --- !_req->buf\n", __func__);
> > +			pr_err("udc: *** %s --- !_req->buf\n", __func__);
> >
> >  		if (!list_empty(&req->queue))
> > -			ERR("*** %s --- !list_empty(&req->queue)\n", __func__);
> > +			pr_err("udc: *** %s --- !list_empty(&req->queue)\n", __func__);
> >
> >  		return -EINVAL;
> >  	}
> > @@ -2849,13 +2849,13 @@ static int nbu2ss_ep_dequeue(
> >
> >  	/* catch various bogus parameters */
> >  	if ((_ep == NULL) || (_req == NULL)) {
> > -		/* ERR("%s, bad param(1)\n", __func__); */
> > +		/* pr_err("udc: %s, bad param(1)\n", __func__); */
> >  		return -EINVAL;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if (!ep) {
> > -		ERR("%s, ep == NULL !!\n", __func__);
> > +		pr_err("udc: %s, ep == NULL !!\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2895,19 +2895,19 @@ static int nbu2ss_ep_set_halt(struct usb_ep *_ep, int value)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (!_ep) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if (!ep) {
> > -		ERR("%s, bad ep\n", __func__);
> > +		pr_err("udc: %s, bad ep\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		ERR(" *** %s, bad udc\n", __func__);
> > +		pr_err("udc: *** %s, bad udc\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2949,19 +2949,19 @@ static int nbu2ss_ep_fifo_status(struct usb_ep *_ep)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (!_ep) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if (!ep) {
> > -		ERR("%s, bad ep\n", __func__);
> > +		pr_err("udc: %s, bad ep\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		ERR("%s, bad udc\n", __func__);
> > +		pr_err("udc: %s, bad udc\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -2997,19 +2997,19 @@ static void  nbu2ss_ep_fifo_flush(struct usb_ep *_ep)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (!_ep) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return;
> >  	}
> >
> >  	ep = container_of(_ep, struct nbu2ss_ep, ep);
> >  	if (!_ep) {
> > -		ERR("%s, bad ep\n", __func__);
> > +		pr_err("udc: %s, bad ep\n", __func__);
> >  		return;
> >  	}
> >
> >  	udc = ep->udc;
> >  	if (!udc) {
> > -		ERR("%s, bad udc\n", __func__);
> > +		pr_err("udc: %s, bad udc\n", __func__);
> >  		return;
> >  	}
> >
> > @@ -3053,7 +3053,7 @@ static int nbu2ss_gad_get_frame(struct usb_gadget *pgadget)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (pgadget == NULL) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3083,7 +3083,7 @@ static int nbu2ss_gad_wakeup(struct usb_gadget *pgadget)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (pgadget == NULL) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("%s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3123,7 +3123,7 @@ static int nbu2ss_gad_set_selfpowered(struct usb_gadget *pgadget,
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (pgadget == NULL) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3152,7 +3152,7 @@ static int nbu2ss_gad_vbus_draw(struct usb_gadget *pgadget, unsigned mA)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (pgadget == NULL) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > @@ -3174,7 +3174,7 @@ static int nbu2ss_gad_pullup(struct usb_gadget *pgadget, int is_on)
> >  /*	INFO("=== %s()\n", __func__); */
> >
> >  	if (pgadget == NULL) {
> > -		ERR("%s, bad param\n", __func__);
> > +		pr_err("udc: %s, bad param\n", __func__);
> >  		return -EINVAL;
> >  	}
> >
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425033066-20762-1-git-send-email-hamohammed.sa%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

