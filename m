X-GM-THRID: 6466169958600540160
X-Received: by 10.107.2.16 with SMTP id 16mr4900577ioc.81.1505578888394;
        Sat, 16 Sep 2017 09:21:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.9 with SMTP id s9ls8429257iod.18.gmail; Sat, 16 Sep
 2017 09:21:27 -0700 (PDT)
X-Received: by 10.202.73.11 with SMTP id w11mr7325778oia.34.1505578887607;
        Sat, 16 Sep 2017 09:21:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505578887; cv=none;
        d=google.com; s=arc-20160816;
        b=H+q6knxpSMl4O1/77VkpDTXWU+chwPmzHTMUkJ/Aydf9VGd9NBSM/yYoqRq+skWGnh
         fzNu52cfyf6U9E/3FTNC8lhLtou5wLi+Q3bvSXIPq44NVlX4cre/joNOXS4qkBIrcYF+
         Q8cn0PDF9I1UYC0ojwSsXfmc8mWqW0G2/7n+pTtuIETqBStTfpIE4vG6Y4eFRVVoYUNI
         sG8MIU6hIBZQoD2bSIpY+SgDsMT7eTVhwWmr9SMx/2j4eYeUJWgZLHreQmKGy8lugMIX
         I2oUqcvRQ/o9A6vfX2sMhPiBzmmH0TnjvtFdBgIH+QJ9br9HW6f0yiZIA1dByfBDw1KE
         fvHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=5bxUQm9KhPgxFXHv/ITYZQ+1hnzqR9n+qxldhTkMyNE=;
        b=PTFsZ7YMPYn9qd5omIiicboK9TuUuH4CO6N+V5cKezen/8+IjeHUgI5Hje7iZiXLuS
         X4ghnq+uqtdwCy9nMpwKLxt4Igm6dDRceSQanmNjJDeW+8E/rcUFYhbGblwDd+zC9LyK
         zO4n4pPI/PLRIVnU975A2LYOs9g34koUP1Wbq/4PZy/h5aCitCRtYjx+NqqBwTDGompV
         47PMuzwXXyl30GyiUtCdl+wBUHD175umQpGZkglF6LtCIBcvujOrY2dLEeM1mqiIizHx
         jf8KhBQ+7qicIZcDTO9K6rvMyajePV5jgvo+5U9hM0mz9UVIJT6360GaYm99ojXzY2gd
         K2Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HAl/Djij;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 88si319704pfm.20.2017.09.16.09.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HAl/Djij;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id f84so2660556pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 09:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5bxUQm9KhPgxFXHv/ITYZQ+1hnzqR9n+qxldhTkMyNE=;
        b=HAl/DjijICY4ZllzghAAkwNs+oMldmANSPF6W9h7JRzVIAsESPmd6lT0J8aREfKrg2
         yTQ5c+BBl8oFSqnXmw9gH9/dRUF+1bnpor2lNL6jJJDd7P9/GyNczQrIiDcS7tLvLz4U
         I73KPKgJL7AcdO6bJO0sMpOCQLOMGwtpCqP4+2D64SsB1/By662ndQZvgMTiJSiVXz6C
         d0N/l05w2WOl1dBd8iK7PzNYFquvIT/ZCTtq51mfLa0A+bchGCXzLFAdAj4ZgOgRilzI
         AuwEK/skbZDxQeGqSC7Mg3kEJdfeO4JT0OjcQLE1lM/HN0ciLzz+FtqOojCFyo/JHhdT
         8euQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5bxUQm9KhPgxFXHv/ITYZQ+1hnzqR9n+qxldhTkMyNE=;
        b=p32xP8nWmIxhrllUSDJ1xuD7idlvdMwoiKe448VQn5KP5h4oIQ28POnrZHlM2CgyI8
         kbH+9aMSHKwd3y7vrflNJywmO4H7Sa5D3YxoDkDw5h0Agzs/IBSSzV6jERdeOOTCQdiU
         44Kaa5crigC9E+eJfE9vz5GwCaBP37byOcC+dRe3/E3tDLkiJHF6uZrtJtY/PNUyc7Kd
         q/oGHduOoCDP8vjqUu6nDcrL35qTiz0JGGJiTnEtFPP3XH2xr80h8s9L0mc81jtIeYL1
         Bf9vkord95roVF6ZCey0fPJJcyEx8Ox8AWpfbYv+WOkPW6XI53Sr90zBf1PsanCCv1Do
         +/YQ==
X-Gm-Message-State: AHPjjUgZF67APcPm8OKHRJWhMz/vFsMAW+F69hvmiYpwNCQI4KcCflFS
	+LgPTzYyS0lez8ksGFg=
X-Google-Smtp-Source: AOwi7QCsFdYj52GipdiqygcZsTwgvLpssosulj/I5UoZru1fUmJJx7PJcrC+YugL3auXZqQr8JCdxw==
X-Received: by 10.159.246.2 with SMTP id b2mr15004778pls.85.1505578887269;
        Sat, 16 Sep 2017 09:21:27 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 64sm7258328pge.44.2017.09.16.09.21.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:21:26 -0700 (PDT)
Date: Sat, 16 Sep 2017 10:21:24 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Replace
 list_for_each with list_for_each_entry
Message-ID: <20170916162124.GA6808@Haneen>
References: <20170916004148.GA25693@Haneen>
 <alpine.DEB.2.20.1709161320250.2943@hadrien>
 <20170916161048.GA6020@Haneen>
 <alpine.DEB.2.20.1709161814050.1992@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709161814050.1992@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 16, 2017 at 06:14:25PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 16 Sep 2017, Haneen Mohammed wrote:
> 
> > On Sat, Sep 16, 2017 at 01:23:28PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 15 Sep 2017, Haneen Mohammed wrote:
> > >
> > > > Replace use of the combination of list_for_each and list_entry
> > > > with list_for_each_entry to simplify the code and remove variables
> > > > that are used only in list_for_each.
> > > > Issue found and corrected using Coccinelle script:
> > > >
> > > > @r@
> > > > expression head, member, e;
> > > > type T1, T2, T3;
> > > > iterator name list_for_each, list_for_each_entry;
> > > > identifier pos, var;
> > > > @@
> > > >
> > > > -T1 *pos;
> > > > ...when!=pos=e;
> > > >
> > > > -list_for_each(pos, head)
> > > > +list_for_each_entry(var, head, member)
> > > > {
> > > > ...when!=pos=e;
> > > >    when!=T3 *var;
> > > > -var = list_entry(pos, T2, member);
> > > > ...when!=pos=e;
> > > > }
> > > > ...when!=pos=e;
> > >
> > > Actually, one could consider that there should be when != pos, not when !=
> > > pos=e, because you need that there are no references at all to pos to be
> > > able to delete it.  But it's true that if pos is not initialized then
> > > there should be no other kinds of references either.  The other
> > > possibility for initialization would be eg
> > >
> > > f(...,&pos,...)
> > >
> > > You could be suspicious of &pos in general.  But anyway there is no &pos
> > > in this code.
> > >
> > > julia
> > >
> >
> > I have tried "when != pos;" first and switched to "when !=pos=e;"
> > becuase I have found cases where pos was still used. I only realised I
> > should have used "when != pos" without the semicolon after I've
> > submitted the patch.
> >
> > There is still case where even with "when!=pos" the script fails to match pos
> > within an if statement. Is there away around that?
> 
> Could you send an example?
> 
> julia
> 
> 

in staging/lustre/lustre/ldlm/ldm_lock.c, line 898:

list_for_each(tmp, queue) {
	lock = list_entry(tmp, struct ldlm_lock, l_res_link);

	mode_end = list_prev_entry(lock, l_sl_mode);

	if (lock->l_req_mode != req->l_req_mode) {
		/* jump to last lock of mode group */
		tmp = &mode_end->l_res_link;
		continue;
	}
> >
> > > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > >
> > > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> > >
> > > > ---
> > > >  drivers/staging/lustre/lnet/lnet/router.c | 9 ++-------
> > > >  1 file changed, 2 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
> > > > index 3df101b..b8eba33 100644
> > > > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > > > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > > > @@ -222,15 +222,12 @@ struct lnet_remotenet *
> > > >  lnet_find_net_locked(__u32 net)
> > > >  {
> > > >  	struct lnet_remotenet *rnet;
> > > > -	struct list_head *tmp;
> > > >  	struct list_head *rn_list;
> > > >
> > > >  	LASSERT(!the_lnet.ln_shutdown);
> > > >
> > > >  	rn_list = lnet_net2rnethash(net);
> > > > -	list_for_each(tmp, rn_list) {
> > > > -		rnet = list_entry(tmp, struct lnet_remotenet, lrn_list);
> > > > -
> > > > +	list_for_each_entry(rnet, rn_list, lrn_list) {
> > > >  		if (rnet->lrn_net == net)
> > > >  			return rnet;
> > > >  	}
> > > > @@ -243,7 +240,6 @@ static void lnet_shuffle_seed(void)
> > > >  	__u32 lnd_type, seed[2];
> > > >  	struct timespec64 ts;
> > > >  	struct lnet_ni *ni;
> > > > -	struct list_head *tmp;
> > > >
> > > >  	if (seeded)
> > > >  		return;
> > > > @@ -254,8 +250,7 @@ static void lnet_shuffle_seed(void)
> > > >  	 * Nodes with small feet have little entropy
> > > >  	 * the NID for this node gives the most entropy in the low bits
> > > >  	 */
> > > > -	list_for_each(tmp, &the_lnet.ln_nis) {
> > > > -		ni = list_entry(tmp, struct lnet_ni, ni_list);
> > > > +	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
> > > >  		lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
> > > >
> > > >  		if (lnd_type != LOLND)
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916004148.GA25693%40Haneen.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170916161048.GA6020%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> >

