X-GM-THRID: 6466169958600540160
X-Received: by 10.84.217.89 with SMTP id e25mr17646701plj.50.1505578253231;
        Sat, 16 Sep 2017 09:10:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.67 with SMTP id g64ls531062ioa.26.gmail; Sat, 16 Sep
 2017 09:10:52 -0700 (PDT)
X-Received: by 10.129.177.134 with SMTP id p128mr15420843ywh.189.1505578252163;
        Sat, 16 Sep 2017 09:10:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505578252; cv=none;
        d=google.com; s=arc-20160816;
        b=SGUMBP9Bh/6PMQAU2zclwyKVjqyzUnnUl2W3943R5/NH7komCyqCvO/89c3O50AcJZ
         Wv4l89OZ7Bc6FgvayuoP2kmxhp+LqJxj4uwgdHR51rjN4op76khshT7F4VeC4cs3kYqe
         6qwtupVZXIpzwNFttZjxATaLnsKHKlsRrmshMF0v1SjfxoAH7mTGYXm/7PiXTd88BJT/
         CcPR79KJgY6iZ1XjCJroifINY1zWWJvQ0NSaGwyL1N3MWnw8WwkllxDwC/uk25yBtysk
         ikiqJbStHnvGKlKqlOIHDalpE8VVOrdxKixJhqoTaVzUFlcl58pGTSwvozPEdHoXj2j0
         v/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=6gYI+bK7DewOEV23X1O5Ui0Ii9GGh18Z4DqtLoy65ME=;
        b=F6FEPDyVCHDMlEGqeK5aEyRD2JAeKNi+9OthmL2MzURwOuZyBbrG16eguaRhPEkhTD
         Cu/7wJmK1GFViatlqv+cqbN01H8ZKqAJg7ctV+OvizUaA/TrfxKoG7oXCr1YHCVHXWG0
         NLjNPb4/dYqTsTHnhHKae3J4hTYSy3OTAkGLkOk/PmP+QKADyIeC1GthXqpKpZs1O0/P
         d+Scy9ApbMImYh748HD6G2zPZtW4N4+wFWDgrzoYsnI++OtwY3F589lvtqPR6JMR0xmh
         PTDYFO7oWLYkZaY/fEXDAgZ/+yVVGDyqs1UAtrXBejF5KRB7k9DgHKMmp7Yw/N2r5JSJ
         KfXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7PrE4Zz;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y18si358251pfj.18.2017.09.16.09.10.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7PrE4Zz;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so2888721pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 09:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6gYI+bK7DewOEV23X1O5Ui0Ii9GGh18Z4DqtLoy65ME=;
        b=Q7PrE4ZzwbK8ipjwGUzWM4007Naxwm7Yc8+3YkgdcNFfsxUyo4UThJ4zJYUua5JMuX
         djYc2qMfAQcSLzCSWTt42G2xq96kXDcM+EUYK4gYB+MhggJor+3bXZkR1F8hLvvKXQkv
         iDCz/LVwia2iDKSFewlivNzsAa32IvJcYaPqMQzifdoppSfW5T1OtPEw/0khGmoNCy8l
         ENLNS4wc8ypyPFBt59K2EDpxJstVLuImPlmNwB5wjFdFht/Pz3OQRxlSyWSk1ysQ9EBt
         4IRtN175LbocF/WB3TerkCKoel5a3Chae/00rxKRerqgI0S2XdnNfy7cXJUu9Nkuw98y
         N0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6gYI+bK7DewOEV23X1O5Ui0Ii9GGh18Z4DqtLoy65ME=;
        b=PKG8hosseC9pg8iUkDaBmMB/wd0xT3xmnO2QCpcx201qDTcCIiO1rwx7Pge1cgEsXH
         INdm1N4GdjvqUV8F50gbk2sMOCLZEAzy5qkkgHvRA24pDonIe4ROzQthIf65sA1Qg71d
         49nIqrqDxP8FpLbV5iJXoWlY6bNbSTSLg8TUBlsciaTOQWeC1pen1PyA8N5wrTk/B3XN
         VC2oVa0adTE/MMHegFSHfIANLJoTUIXEtUCsMk+xst3xqCJiXgz9eW0KSAcgorj2bpjS
         HIolzRTnGuVFcBuq7ptvIZr/4R9Y67IgJ/ccysxBTEL5XGmm8aq6o+jVt/6LX8TuuZf+
         W55w==
X-Gm-Message-State: AHPjjUgUZh25F0R/0C0utxyl8fizSKa6df/Um3rtBrl+GYD9we5KyMvc
	cX81xFFA7QmHxWLee90=
X-Google-Smtp-Source: AOwi7QCfkIyo/DwNstGouHoDs56iiqPqfnzo+HHwM0tXZS5E2W1NYf5V18lgp6uuHqimQPX5vJGm8Q==
X-Received: by 10.84.239.15 with SMTP id w15mr315051plk.29.1505578251861;
        Sat, 16 Sep 2017 09:10:51 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id b63sm8446776pga.27.2017.09.16.09.10.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:10:50 -0700 (PDT)
Date: Sat, 16 Sep 2017 10:10:48 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Replace
 list_for_each with list_for_each_entry
Message-ID: <20170916161048.GA6020@Haneen>
References: <20170916004148.GA25693@Haneen>
 <alpine.DEB.2.20.1709161320250.2943@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709161320250.2943@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 16, 2017 at 01:23:28PM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 15 Sep 2017, Haneen Mohammed wrote:
> 
> > Replace use of the combination of list_for_each and list_entry
> > with list_for_each_entry to simplify the code and remove variables
> > that are used only in list_for_each.
> > Issue found and corrected using Coccinelle script:
> >
> > @r@
> > expression head, member, e;
> > type T1, T2, T3;
> > iterator name list_for_each, list_for_each_entry;
> > identifier pos, var;
> > @@
> >
> > -T1 *pos;
> > ...when!=pos=e;
> >
> > -list_for_each(pos, head)
> > +list_for_each_entry(var, head, member)
> > {
> > ...when!=pos=e;
> >    when!=T3 *var;
> > -var = list_entry(pos, T2, member);
> > ...when!=pos=e;
> > }
> > ...when!=pos=e;
> 
> Actually, one could consider that there should be when != pos, not when !=
> pos=e, because you need that there are no references at all to pos to be
> able to delete it.  But it's true that if pos is not initialized then
> there should be no other kinds of references either.  The other
> possibility for initialization would be eg
> 
> f(...,&pos,...)
> 
> You could be suspicious of &pos in general.  But anyway there is no &pos
> in this code.
> 
> julia
> 

I have tried "when != pos;" first and switched to "when !=pos=e;"
becuase I have found cases where pos was still used. I only realised I
should have used "when != pos" without the semicolon after I've
submitted the patch.

There is still case where even with "when!=pos" the script fails to match pos
within an if statement. Is there away around that?

> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> > ---
> >  drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
> >  1 file changed, 2 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> > index 3df101b..b8eba33 100644
> > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > @@ -222,15 +222,12 @@ struct lnet_remotenet *
> >  lnet_find_net_locked(__u32 net)
> >  {
> >  	struct lnet_remotenet *rnet;
> > -	struct list_head *tmp;
> >  	struct list_head *rn_list;
> >
> >  	LASSERT(!the_lnet.ln_shutdown);
> >
> >  	rn_list = lnet_net2rnethash(net);
> > -	list_for_each(tmp, rn_list) {
> > -		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
> > -
> > +	list_for_each_entry(rnet, rn_list, lrn_list) {
> >  		if (rnet->lrn_net == net)
> >  			return rnet;
> >  	}
> > @@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
> >  	__u32 lnd_type, seed[2];
> >  	struct timespec64 ts;
> >  	struct lnet_ni *ni;
> > -	struct list_head *tmp;
> >
> >  	if (seeded)
> >  		return;
> > @@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
> >  	 * Nodes with small feet have little entropy
> >  	 * the NID for this node gives the most entropy in the low bits
> >  	 */
> > -	list_for_each(tmp, &the_lnet.ln_nis) {
> > -		ni = list_entry(tmp, struct lnet_ni, ni_list);
> > +	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
> >  		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
> >
> >  		if (lnd_type != LOLND)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916004148.GA25693%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> >

