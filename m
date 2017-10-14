X-GM-THRID: 6474128496939499520
X-Received: by 10.46.42.66 with SMTP id q63mr143432ljq.39.1507973484185;
        Sat, 14 Oct 2017 02:31:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls1223626lja.16.gmail; Sat, 14 Oct
 2017 02:31:22 -0700 (PDT)
X-Received: by 10.25.181.198 with SMTP id g67mr119227lfk.8.1507973482803;
        Sat, 14 Oct 2017 02:31:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507973482; cv=none;
        d=google.com; s=arc-20160816;
        b=dZCXG/WfIS6RyFodc7cqIrZxcfhdhvmZZMqUlfOToukDKUXHnKdYk9qVl8GV1ypFIE
         DQssq94SfZQJus3VVglOND6TKfuy5cZsbvxazMBWMk3A2i2rNnmHxLvM8voypp7WpMAu
         F5JKrZBS9Rj/OaX0IxJxIXM2/k56jtUDgPWp3xWneO6GhioJmpwMwgaYfr/SaLma1TmS
         w5zCjEUeqRWMNAW9li5kmP9i+C7WQeQpoNsCdgdFX2Sl/MZVBThY9PCPEMsT96ryy31w
         totdzAqxkzkoTrg8DRGRExM/nzKqKgCk3+YZoBlZ/WqJHkcIfcLU04I3j4dwVwlcjdis
         Nvxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=eEWYRQ4Lra4Zr+d6rLotdzPdw9m0uVhZwu04kqZsGRg=;
        b=eT4lgTV0uIuHDVKWGA4/oRUCMXjWj2q8SflU1n1J2HZJdMyHsprTVJ7tISns9J+1Xu
         g0piILbkB4104GM9GnRl7hOM5T+nAJmzIsakM0P4K4AUo/qYSuAD80/+ebK9q/pNpaKE
         1yX56bERxrxW3e/xu8sF4Tfgpjx+DULhEI4YpKhsCjD0SA+dBs4eHSpwUMM83zXSOo2X
         g98iI1rLGtb7qm2YaNuWqhLaPC9Q3kphWjS/yPR7tzZYtxgIj5JrnxMH5QzRzzBu3hng
         1VsJ/Ut0jyhqIVGkrlYrM9+FiMZDs6au5f+NilvVGuI5t9BPB3PEegzZZO67pPK4okE1
         uVPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XY2VBnBE;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id r17si148069ljb.2.2017.10.14.02.31.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 02:31:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XY2VBnBE;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id z96so2064175wrb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 02:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eEWYRQ4Lra4Zr+d6rLotdzPdw9m0uVhZwu04kqZsGRg=;
        b=XY2VBnBESPdNqBzVFffxwLHaRvP/NMh0GxvkgRliaiiBZNyo3XML22OHVhFJmXH//N
         HUWKXqNoMvThAXB0JCiIWNR7LNyScBzxd76Yb4Susz9JxFIRznlCUyXYxV0LZfy7Fl2b
         tOhLhAb1LyRLA/HnUNJtR020YUjHrpHWPnNFncnKp3zK1RByl1EqK25aVgrcXhwi456v
         bD6lpBPWkov4wjSfYfwcv+s0jDTtwAIeuV14GyebkqI1Lwa39eVZqm/9Y978xGEwVvWg
         ZeBpJRDG9s2OekbYHAqss/CXK8D1AOXuNBh3mlTENfbeZuMCNy+7Fvp8Z7GhD9rGmKFh
         uveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eEWYRQ4Lra4Zr+d6rLotdzPdw9m0uVhZwu04kqZsGRg=;
        b=lxH/pTPRaesETVKFunqxy5YE8mIe2pDtNaUEHbqaedda2t9ftgSUP5Iexc6gr23cYt
         MdoN88JeCAV7vVOOCy6O7TL4qtA9svh7U6TEX2Tn6sKgtLIIIrC7nVl7lGrbnfsXCMLV
         7TLrbJn3tobnXFRHTeC4MxV5YewAENGpt4bCxIJyBvVphOg9H8hgdKVYC3NqEDUKyIKr
         LTCctOcfuY86YoEc8abCnBilG2JerxXyxGWYK8TY+l8gyn0lJNPzPdRUCDc5X47WzvQm
         zzSFsdMS5FksW/VHi1KdDv6vBlwEZ3H34Yjhm59wWPmanSyeUGP92TxB4nwdzo2JK4ND
         niSA==
X-Gm-Message-State: AMCzsaXLR5T7CiKG2t+SvKqRHWfVuxwBI/x62/Znd8pFdwvMVegoLqzK
	0hjfx2M0Db+4MDcXAS/fNNLqRA==
X-Google-Smtp-Source: AOwi7QBfNRxCID3ZJvLgWmttQGjilO8uyU5AmX1X08MaebQwKAEBk876+5r2eT8/qkERz8Mjk1uR3g==
X-Received: by 10.223.199.76 with SMTP id b12mr3808944wrh.14.1507973482454;
        Sat, 14 Oct 2017 02:31:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id e77sm4897436wmi.16.2017.10.14.02.31.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Oct 2017 02:31:21 -0700 (PDT)
Date: Sat, 14 Oct 2017 12:31:20 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: Use __func__
 instead of function name
Message-ID: <20171014093120.GA6039@domino-MS-16Y1>
References: <20171014075657.GA2475@domino-MS-16Y1>
 <alpine.DEB.2.20.1710140958270.19037@hadrien>
 <20171014081504.GA2769@domino-MS-16Y1>
 <alpine.DEB.2.20.1710141047140.19037@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710141047140.19037@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 14, 2017 at 10:48:46AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 14 Oct 2017, Mihaela Muraru wrote:
> 
> > On Sat, Oct 14, 2017 at 09:59:14AM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Sat, 14 Oct 2017, Mihaela Muraru wrote:
> > >
> > > > Use identifier __func__ instead of the name of the function.
> > > >
> > > > Issue found by checkpatch.pl.
> > > >
> > > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > > ---
> > > > Changes in v3:
> > > >         -breaking the modified lines and remove five point from the
> > > > 	string to meet the condition no more than 80 characters per
> > > > 	line.
> > > >
> > > > drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
> > > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> > > > index 017fe04..55c699f 100644
> > > > --- a/drivers/staging/rtl8192e/dot11d.c
> > > > +++ b/drivers/staging/rtl8192e/dot11d.c
> > > > @@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
> > > >  	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
> > > >  	for (i = 0; i < NumTriples; i++) {
> > > >  		if (MaxChnlNum >= pTriple->FirstChnl) {
> > > > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
> > > > +			netdev_info(dev->dev,
> > > > +					"%s: Invalid country IE, skip it...1\n"
> > > > +					, __func__);
> > >
> > > You can't move these arguments back a few characters?  The comma at the
> > > beginning of the line with __func__ is not nice.
> > >
> > > julia
> > >
> > I can put the comma at the end of this line "%s: Invalid country IE,
> > skip it...1\n" and the line will have 80 characters.
> >
> > It is allowed to have exact 80 characters per line?
> >
> > Should I send patch v4 or to send patch v3, because treats the same issue?
> 
> Why not remove the spaces in front of the arguments so that they line up
> with the right side of the (.  Then you can put the comma in the right
> place and have plentyof space after.
> 
> Once you have sent v3, afterwards you have to send v4.  It doesn't matter
> about the issue.  Greg has to know which is the most recent one.
> 
> julia
> 
Thank you for the explanations I will send patch v4.

Mihaela

> > Thank you,
> >
> > Mihaela
> >
> > > >  			return;
> > > >  		}
> > > >  		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
> > > >  		    pTriple->NumChnls)) {
> > > > -			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
> > > > +			netdev_info(dev->dev,
> > > > +					"%s: Invalid country IE, skip it...2\n"
> > > > +					, __func__);
> > > >  			return;
> > > >  		}
> > > >
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014075657.GA2475%40domino-MS-16Y1.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014081504.GA2769%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

