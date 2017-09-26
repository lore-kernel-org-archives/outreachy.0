X-GM-THRID: 6469960425637150720
X-Received: by 10.25.233.92 with SMTP id g89mr760554lfh.22.1506407959394;
        Mon, 25 Sep 2017 23:39:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.16 with SMTP id o16ls396801lff.13.gmail; Mon, 25 Sep
 2017 23:39:16 -0700 (PDT)
X-Received: by 10.25.74.88 with SMTP id x85mr685646lfa.27.1506407956964;
        Mon, 25 Sep 2017 23:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506407956; cv=none;
        d=google.com; s=arc-20160816;
        b=dDstKYJ/wgRbohpagBDDuet0iZjPFVxUcFkzPxSdk8CmNzQ5s1V27xU2wxSRqIRKgo
         Q2d7l10cw4LqBBrKcwnjOW3Jb2DHv/LiR6iHGRqk6QIxQYYy3JxyINTeBS/mk4HS3iHu
         ydrfm+GjCbVXdDfjhpWah23PUgrfX3JIgp48933NeFJEiYjygc/u1r4I4tw/vL8FOUm6
         XBIGrZTKYrWXPhTFt4qlYx+jkHGJ/AM6oKzUS24oybju/VBnHk5iez70CgZzOGyLhJqi
         V644boD3dPd2QENeWb0xcWXA36OwGxWK36Y4xo00gkl/rNwx69AtYQSqmj9POg2lVQ8T
         aZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature
         :arc-authentication-results;
        bh=QBqdHEHhfbuldvq+foR6fpVpE+/xEJZuhP7yhPZeMag=;
        b=QFecE2gA41Ffj3oZTATFx6t4EHvg+NT3DY2WYnSr0C8SwpkIJ8ocvbMB+GlSpumkKl
         edncsLn5INSis9BwbgAPHCmUeB4ZDmGBUMqTJ1AyAPLOkD/al2R79JSNxS1kjHS+p5uM
         y8IWKt1VMr2pKlabM3v2/Hb3uhzPEUdPUquluEwbkSiRIcOGDM1czDCjmqPs+MhSbUXl
         4eI75JQZtMjeRdXVTMBbmuTM3dpKHF8T89AdSvjQz3S+nw/o5PrJxy3aZrpwP4zOlh4w
         A32HxuZGiwIoTT5Kw+sKC12/8scccjKJZDNpse67brnyDP17Ek57dkgxrZc5YH9hgwD5
         SQ2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhy2Hvm0;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::229 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x229.google.com (mail-wr0-x229.google.com. [2a00:1450:400c:c0c::229])
        by gmr-mx.google.com with ESMTPS id d82si92437wmd.1.2017.09.25.23.39.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Sep 2017 23:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::229 as permitted sender) client-ip=2a00:1450:400c:c0c::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhy2Hvm0;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::229 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x229.google.com with SMTP id a43so11643164wrc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Sep 2017 23:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QBqdHEHhfbuldvq+foR6fpVpE+/xEJZuhP7yhPZeMag=;
        b=vhy2Hvm0fwRc1d3pl9JAlk+HC6wVlWtN19O7xoCSVWczMK/of/VIEIGIb9+QaUso3Z
         miytvKf6zorRNrze5SsNeTLFZFBTxx/iiqdus0v+M9Jg7FnagxJTsIw4djRgElZrdAxP
         Gun/38y2TYVu0STGBRviCbKi5iC6fXMo/vmNXNAQ0al2+6wimsChGHxgYrjgddrjy4Ri
         bu3roxykzsaqgMi9K0IzlbvcyUcPxyvLJ5kfeGAc/kLegkeZqQbGCMA1ADmB1XBWYT8y
         D1zWtfMws1DFcW7NFQcB6JIOE5MIVcPfnZZMMbnni+uofrNXwpCgfcDmGEH4olk4H0Yu
         ci/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QBqdHEHhfbuldvq+foR6fpVpE+/xEJZuhP7yhPZeMag=;
        b=flJopdMqlZexk1hcJjRP8GGbaqb/zlldL/V0IJjZfhzqv+aS76YHEuuJBCuB7L+CT9
         cjxTiTkoF1izHoqOuGlIqU138CG9nT4XYuZu2hLnSua0eJufIsnHHUtA/H4eGP5GJ66j
         cPzQIFpN6cQMTdY6Re1h5J3iZaxDa3M+MASYgUPi+A3TXl+7VLwhQcM8rjKMRi4BILTm
         oQxMmksRKEcCd6XPGg6E/WRucMlxAvpwMcy5PBAUdVt11HkRTtgXQA4V3cHllnApD5Bs
         KU54L1Ynie1uiS6Whhx2w6DFisHfBIaATROL6VdLFIP7T7fyhbOM86zwly0rY7U+H4fK
         zJUg==
X-Gm-Message-State: AHPjjUhulpnh+i2AFSK4sK+ihhz429PqOLvmREWRl0y2XHQEB9PnIKax
	RvLZIL4xHYkE2ece+bRMmVU=
X-Google-Smtp-Source: AOwi7QAN0CL5vmi0OJ9L4G8QP2Tx6mpB+1FMGIDmEklLSDfawVOALOicZsGk6U4I8sL/dwbUU0jfmA==
X-Received: by 10.223.186.67 with SMTP id t3mr8258325wrg.22.1506407956506;
        Mon, 25 Sep 2017 23:39:16 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.7])
        by smtp.gmail.com with ESMTPSA id o21sm5177277wrf.31.2017.09.25.23.39.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Sep 2017 23:39:15 -0700 (PDT)
From: Julia Lawall <mihaela.muraru21@gmail.com>
X-Google-Original-From: Julia Lawall <julia.lawall@lip6.fr>
Date: Tue, 26 Sep 2017 09:39:13 +0300
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fix suspect code
 indent for conditional statements
Message-ID: <20170926063913.GA9839@domino-MS-16Y1>
References: <20170926055046.GA9014@domino-MS-16Y1>
 <alpine.DEB.2.20.1709260757170.2905@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709260757170.2905@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 26, 2017 at 07:58:36AM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 26 Sep 2017, Mihaela Muraru wrote:
> 
> > This patch fixes the checkpatch.pl warning:
> >
> > WARNING: suspect code indent for conditional statements (16, 32)
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> 
> Acked-by Julia Lawall <julia.lawall@lip6.fr>
> 
> Try to be a bit more descriptive in your commit messages about what you
> are doing and why.  Fix doesn't say what you have decided to do.
> 
> julia
>

Thank you for your suggestions. I will rewrite the commit message and I
will resend the patch 

Mihaela
> > ---
> >  drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > index 0978727..8f555e6 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
> >  	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
> >  	if (padapter != NULL) {
> >  		if (pfree_recv_queue == &precvpriv->free_recv_queue)
> > -				precvpriv->free_recvframe_cnt++;
> > +			precvpriv->free_recvframe_cnt++;
> >  	}
> >  	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
> >  	return _SUCCESS;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926055046.GA9014%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

