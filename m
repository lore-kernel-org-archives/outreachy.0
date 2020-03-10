X-GM-THRID: 6802694026822680576
X-Received: by 2002:a17:90a:c251:: with SMTP id d17mr87752pjx.179.1583878520081;
        Tue, 10 Mar 2020 15:15:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:868f:: with SMTP id d15ls5478228pfo.5.gmail; Tue, 10 Mar
 2020 15:15:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvPuNOntOdlEzQl6HKSPfx3JFp5o/iGkn7iUQuEGUYNDIsDTc1sQnQmw8wKKQ+1iguZTbCl
X-Received: by 2002:a63:ad46:: with SMTP id y6mr23076253pgo.11.1583878518547;
        Tue, 10 Mar 2020 15:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583878518; cv=none;
        d=google.com; s=arc-20160816;
        b=k7fBneOR5l5DIcyBr+xrJnfaoQn+nLOT2JSGnM1mS7Sp/uOFOZJ0f5LEtjwRPjlMse
         ZW31KLGelUiB9xBgsyAALiGciTj+ijGygsSZ5zDijouAJNBG8G1KPtV9BNDFL7lhrdZu
         v2yai+eFy2no3OQfn3zPYB+5iOdGsMjZZFQAIg61oQUdSfhAHgPHahz8NeTjXvZrkKrD
         4msEFkb2zv+CPlrYmv+5dHNLUD1PidFUQrdI/PRPX5TnJI62zz44uEiDvqCt5XoS9oDz
         CwOBSm40cX/KiTpzxfT/NAOkh9pkOZN8MG3/gIQxHIUGdLn30iCL8E3ehl9oXp+Honjv
         TWfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=OQvMWbCceg5nqss9UatKKdCAPfOPaW349SZFGPIa4UY=;
        b=IJBc3hBzTuGCAhr4saFs6VOBuBh8BZ2eXY3K0kTLwb/KXzfuwOukkVBomLxNLBCTK+
         LZRx2XBUSFg4GzAgOJjeJ90w4A5EQ8eRhCP+1Y/E770UIBQYi8o8kgdKbOKhGCc2p5jA
         dOVQhQA4lgvztG4Hiw7WxAX9taXFPiJQTBR5E6CRJ3Fkjn+M2HFoSb3yjY+6hb/Nh3vc
         /Za4Z7IVKDlg9GBAawO+GL0kDVPb9FYKonAv341k1lMgekDFubKnvjurFnsMdqx6INwU
         s7BVUvhUCu8buqqC13jh+6HPLUvYiq/BcFCCUGqKu/Au0oDhJgHv7nr+zK+GQdlzW67m
         HaTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OcRCMguo;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id q197si17787pfc.5.2020.03.10.15.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OcRCMguo;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583878517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OQvMWbCceg5nqss9UatKKdCAPfOPaW349SZFGPIa4UY=;
	b=OcRCMguoCxMIHn/NFl/xph3BB2CXmdkf0Okgni2Hxh8ysxH1bK5JcRxx9DSbY3lP82c/56
	Qe8Dihmsnzg/HZRult0MEql1dBJxqCVDxi80w19wFEJQ6SYbc9x3hLpbDKUXlZXZM2hbAf
	xvzyz2WXrtACgOAVhExMp0mFi5f59Pk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-soyvTx2_NOO-UdVjtcBf9w-1; Tue, 10 Mar 2020 18:15:15 -0400
X-MC-Unique: soyvTx2_NOO-UdVjtcBf9w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54F31184C80F;
	Tue, 10 Mar 2020 22:15:14 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36DD060BF3;
	Tue, 10 Mar 2020 22:15:11 +0000 (UTC)
Date: Tue, 10 Mar 2020 23:15:05 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 julia.lawall@inria.fr
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: r8192U_wx: use
 netdev_warn() instead of printk()
Message-ID: <20200310231505.5dfcdbbf@elisabeth>
In-Reply-To: <20200310221018.GB2925@supernova>
References: <20200310212658.4075-1-lu@pplo.net>
	<20200310224317.0ea0a4c3@elisabeth>
	<20200310221018.GB2925@supernova>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 10 Mar 2020 23:10:18 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> On Tue, Mar 10, 2020 at 10:43:17PM +0100, Stefano Brivio wrote:
> > On Tue, 10 Mar 2020 22:26:58 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> >   
> > > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > > function for network devices, defined in include/linux/netdevice.h.
> > > Issue found by checkpatch.
> > > 
> > > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > > ---
> > > Changes since v1:
> > >  - Replace message printing function pr_warn with network devices
> > >    specific, netdev_warn()
> > > 
> > >  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> > > index 0118edb0b9ab..58c1a8da7a8d 100644
> > > --- a/drivers/staging/rtl8192u/r8192U_wx.c
> > > +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> > > @@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
> > >  				hwkey);                 /* KeyContent */
> > >  
> > >  		} else {
> > > -			printk("wrong type in WEP, not WEP40 and WEP104\n");
> > > +			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");  
> > 
> > Err, wait, did you try to compile this? :)
> > 
> > The idea of netdev_warn() is that it prefixes the error message by a
> > reference to the specific network device, so that one knows what device
> > is actually giving the problem (let's say you have two of these
> > adapters on a system, or that you have virtual interfaces, etc.).
> > 
> > But for that to happen, it needs a pointer to the appropriate struct
> > net_device.
> > 
> > -- 
> > Stefano
> >   
> Stefano, Julia: oh my bad, I did the worst error: break the compilation! :(
> It won't happen again!
> 
> Will search wich function is correct here.

The one you already found, that part was correct. :)

-- 
Stefano


