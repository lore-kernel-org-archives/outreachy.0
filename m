X-GM-THRID: 6754202983704035328
X-Received: by 2002:a05:6214:70f:: with SMTP id b15mr10560053qvz.97.1572624218260;
        Fri, 01 Nov 2019 09:03:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3e65:: with SMTP id m34ls1908782qtf.6.gmail; Fri, 01 Nov
 2019 09:03:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyuPudMZdp6jxETKkw8I0KwiJHXIbHaUZJ1LOcicvqM8sP2aClgdhDAYSHCKqXN3x6QF9s2
X-Received: by 2002:ac8:458c:: with SMTP id l12mr3699qtn.300.1572624217370;
        Fri, 01 Nov 2019 09:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572624217; cv=none;
        d=google.com; s=arc-20160816;
        b=ddWcf3CeO4SnSNKbPZhCNBivJxMxut8jsMtxdOkvSQZQZn951PqrDBl+wVTzDMJiyP
         ZKaQynAK5k4YSdDjp8O6+reqaK2D3vWC+/FJVzxZD66MQSIqsEbEPvU1JGRFN8Bfg4R2
         2m1Azh3JnLR173g76lsGeG80ReUS3U89b1trbgJeLbUVgUzhIKi4RH88gLWMxzhNWfmG
         D9OqEn3VraPjjURv2sLk7C4NBMoDozmvaoXpb8KnRNc+5HwzJc4zkCM1G2n14c4NCg9v
         0pREfeUsutH3AvAL3cbZFmzUXERDlHhPV1mwta1E+sKq79ecB6YZ+UYN5P3lBSawNLKh
         Of5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Z4yzq41OcuUMrJhCloHEsoOen2P/tiGty288vkJBQmA=;
        b=guZkjarc55T+GV5XjNrRJW3DtSUj1JvWUMzS/nHE6K/7N6JVqRrjj0UQAtQioPLxHD
         krh1q4unqpoUZ4tMANm7kBgQO9DGDAacAyJ2Zxpud2oaOWHDxhUeKnzwuo3xyDrEHb9T
         zaSWaoB0DpvAJyukHaI0EXcy6oLM6SHUICwiTpBYTnv35YBklSjfMIlGw3MCfqDBPKci
         hT++CP4GEeZ5dqLqJKd7EMTb3IlJdvrzURMz7CzukN40Fj6mrN+wgsPCuKyWBT5qJPoA
         S2ePX2cG3005XRP5hl9Kb8tThsD0OL650kNxXuec+Qf/Mu17KBY5EmBZghV/cySzqmxF
         f6dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GQGvxcDR;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u200si466403qka.2.2019.11.01.09.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 09:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GQGvxcDR;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id x28so4151880pfo.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 09:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=Z4yzq41OcuUMrJhCloHEsoOen2P/tiGty288vkJBQmA=;
        b=GQGvxcDRywkTF+j9I89FQZceQ8LJz5e4R5+c1SbVzXml/p8EEDDSoTdqniudt/yS62
         3GvrBKzcmZG5CSgSDjtlFbFEuhdL29UX4IvJMvEBUqoVrcIPyCvBXHFeKadGaJHIscye
         jcBKcKAgndy5jsQstjRfKeUVbZ200IlvjotDDavBXpgR6xshv5AM+U6BzmOOQkBJT3tl
         ynfz4RNh1nAun5vXJii6hczeAobgNlKUfLHy1ZnpLXLP/1QkQhYCJnVnTS8AeSSqkhJS
         OGDA4fheHNFad3i6rEufJQyKYd9pUCbYS1nQjyQGtgmMwbZX//Z0xG6S7ag0IulNyxzi
         KCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=Z4yzq41OcuUMrJhCloHEsoOen2P/tiGty288vkJBQmA=;
        b=RuVNyzlTcDyb1K/lTo6Bu2ht4I2iuHnS3sXWG2yPAzyr1riJhNrR2Bj2oZdXf5FEMA
         DSDOwjDWAWaWQ+pTMsHHuW30z3KDLTlo4wqDbPUeIxdbPNm74DVuM/NT2OGzMplpkLc4
         8x5shvzz6E7m00c4wQPaaprua0cX0fFNmsKIf51e2/9CKgqfO1uXQUmI4Dea/uS1FXU6
         3PsqjGlansW38AotlGafxGxBxutFbLBoeCzNDButyz1MBzwzYWxx7CSIHqwXKUQT/NI6
         ryPg0pU+gJQ81PPuj40qmhVvGnmNgcxga+1oT+aAY/1b+oLWRLlxaX+E5NNOFszBQ285
         Ervw==
X-Gm-Message-State: APjAAAXGotY8bY7hOE7HsAJ6s30gQBRXDgJyxdruSZogpSyCyQMO0TxW
	IZiArkmNETKop4ba13zDSSEFghfMaAr4ew==
X-Received: by 2002:a63:9208:: with SMTP id o8mr14069656pgd.256.1572624216520;
        Fri, 01 Nov 2019 09:03:36 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id y138sm7679337pfb.174.2019.11.01.09.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 09:03:36 -0700 (PDT)
Date: Fri, 1 Nov 2019 11:03:32 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Fix preceding lock
 warning
Message-ID: <20191101160332.bdw35zkpqxsrjqgl@gmail.com>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <20191101051701.c3wly47ld6jg6hgn@gmail.com>
 <alpine.DEB.2.21.1911010827190.2883@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911010827190.2883@hadrien>

On Fri, Nov 01, 2019 at 08:28:59AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 1 Nov 2019, Javier F. Arias wrote:
> 
> > This patch fixes a "preceding lock" warning by removing a return
> > before the unlock operation. Also removes an unnecessary goto and
> > adds a else if condition that archives the same behavior.
> > Issue found by Coccinelle.
> >
> > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtllib_softmac_wx.c | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> > index f89799d43b1b..42f599b20168 100644
> > --- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> > +++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> > @@ -422,16 +422,11 @@ int rtllib_wx_set_scan(struct rtllib_device *ieee, struct iw_request_info *a,
> >
> >  	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
> >  		ret = -1;
> > -		goto out;
> > -	}
> > -
> > -	if (ieee->state == RTLLIB_LINKED) {
> > +	} else if (ieee->state == RTLLIB_LINKED) {
> >  		schedule_work(&ieee->wx_sync_scan_wq);
> >  		/* intentionally forget to up sem */
> > -		return 0;
> 
> The change does not seem likely to be correct, given the comment in the
> code.  Coccinelle only knows about the structure of the code in the given
> file.  Here the developer clearly believes that there are some other
> issues that have to be taken into account.
> 
> julia
> 
> >  	}
> >
> > -out:
> >  	mutex_unlock(&ieee->wx_mutex);
> >  	return ret;
> >  }
> > --
> > 2.20.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191101051701.c3wly47ld6jg6hgn%40gmail.com.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911010827190.2883%40hadrien.

Hello Julia,

Thanks for your feedback. You are right, in this case only the
developing team knows. I'll find another issue.

