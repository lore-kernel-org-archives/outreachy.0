X-GM-THRID: 8179991707648
X-Received: by 10.180.13.195 with SMTP id j3mr10752111wic.2.1426279371697;
        Fri, 13 Mar 2015 13:42:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.100 with SMTP id l4ls232399wif.7.gmail; Fri, 13 Mar
 2015 13:42:51 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr707527wix.0.1426279371265;
        Fri, 13 Mar 2015 13:42:51 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id gj20si209731wic.1.2015.03.13.13.42.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:42:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id l61so25773355wev.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lrfjO+DVhRAndcr4Wb3Ryjg32c8B86ccNaSvh77jMGg=;
        b=kfoWzV0VuKis8Ub54E+oq293IAeMw2M2iBzJiKFFfwdNbsoh4vl9MQxeL7E1nA50x+
         eRbpbwP/jLLemKlPZT6+b8WAGBm3GXcXGVr3ST2VJOQINd9OWfamSNCYgT1RD07mkj/z
         kO0a6gkaVNhFIfTVeEwi3vPd2H2hmfJeHh308wKnXplds/LmJ+hMqsb4D3PykzUunfVy
         j8utMwtsltJRmKcTVyUsDNSPis98ctzoUfczLFKBJCQ6MZ3/jhw1bWhG0GhAqvD4DE7a
         LTiX6HlJFzMHeeZmI+ULOV3VzrMtWShpANiZ7J0OjBCldcj7s6BsUQi8G6MdRC/u+OQ7
         +vpA==
X-Received: by 10.180.96.37 with SMTP id dp5mr141627629wib.64.1426279370906;
        Fri, 13 Mar 2015 13:42:50 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id ei3sm4291725wib.4.2015.03.13.13.42.47
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 13:42:50 -0700 (PDT)
Date: Fri, 13 Mar 2015 20:30:41 +0300
From: Haneen <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/8] Staging: rtl8192e: Remove
 parentheses around right side an assignment
Message-ID: <20150313173040.GA7432@haneen-vb>
Reply-To: alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6
References: <20150313171452.GA7358@haneen-vb>
 <alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Mar 13, 2015 at 09:35:42PM +0100, Julia Lawall wrote:
> Your mail has a strange reply to address: 20150313165321.GA6657@haneen-vb
> 
I have noticed that and I am trying to resolve this issue

> > diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> > index cd3c662..e208203 100644
> > --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> > +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
> > @@ -89,8 +89,8 @@ void rtl8192_setBBreg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
> >  	if (dwBitMask != bMaskDWord) {
> >  		OriginalValue = read_nic_dword(dev, dwRegAddr);
> >  		BitShift = rtl8192_CalculateBitShift(dwBitMask);
> > -		NewValue = (((OriginalValue) & (~dwBitMask)) |
> > -			    (dwData << BitShift));
> > +		NewValue = ((OriginalValue) & (~dwBitMask)) |
> > +			    (dwData << BitShift);
> 
> There are more unneeded parentheses here, on OriginalValue and ~dwBitMask.
> You can use Coccinelle to address this problem as well.
> 
> julia

Alright. Thanks!

Haneen

