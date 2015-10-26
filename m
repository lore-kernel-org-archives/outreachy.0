X-GM-THRID: 6209462121071116288
X-Received: by 10.182.107.162 with SMTP id hd2mr29380246obb.29.1445829524860;
        Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.220 with SMTP id f89ls1662327ioi.44.gmail; Sun, 25 Oct
 2015 20:18:44 -0700 (PDT)
X-Received: by 10.66.147.33 with SMTP id th1mr27105349pab.27.1445829524564;
        Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id fa8si3334588pab.1.2015.10.25.20.18.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id uq3so8762861pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ILzfj6V1NcRwTi2WeVxAi0yHXUQN2mKdkRAKEzz1y/A=;
        b=nVw6Yl2IhPfdJGQ46zDRY+/U3lHFMp1PlDHwEZSimJbyyhi5c0qMwt/4BY3qBFNe0x
         bp7abHegsnzFQDcmA+AzP8SmPACLZyx7QL6GBhD5CtVhziWQcc5MDwoGw4xkHOup48Fj
         cACo3x9ynJSCv+qBVhmlwX6itOumOXM6BfUeao2CLp1VIYlPx+dJob+RQ7th9PwNfVnY
         2L9KoVf/H+GgEvO2kAMZ06cNPuiQdvWULoBSQvLiqXyXBXqcz+WagsrkuVaLOslKGQ9l
         Bpdj8BoqxiCgTGYoYADMTlF/aE49mBkyAxykDtPrCHAdem3NT1ANJnu+cGJ2CPDivHUf
         WRXA==
X-Received: by 10.66.191.169 with SMTP id gz9mr19369522pac.135.1445829524451;
        Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id qv5sm30834758pbc.71.2015.10.25.20.18.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 20:18:44 -0700 (PDT)
Date: Sun, 25 Oct 2015 20:18:43 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: r8723au: remove external
 function declarations from .c file
Message-ID: <20151026031842.GC2104@Ubuntu-D830>
References: <cover.1445752141.git.amsfield22@gmail.com>
 <a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22@gmail.com>
 <alpine.DEB.2.02.1510250836210.2050@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510250836210.2050@localhost6.localdomain6>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Oct 25, 2015 at 08:36:42AM +0100, Julia Lawall wrote:
> On Sat, 24 Oct 2015, Alison Schofield wrote:
> 
> > Remove unused external function declarations.
> > 
> > Addresses checkpatch.pl:
> > WARNING: externs should be avoided in .c files
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/core/rtw_efuse.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
> > index bf27ea4..906b578 100644
> > --- a/drivers/staging/rtl8723au/core/rtw_efuse.c
> > +++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
> > @@ -274,7 +274,6 @@ u8 EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
> >  }
> >  
> >  /* Copy from WMAC fot EFUSE write 1 byte. */
> > -void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value);
> 
> Are these really external declarations?
> 
> julia
>

No, they are fwd declarations...guessing some artifact.  I'll update the 
commit msg and resend. Thanks. 

> >  void EFUSE_Write1Byte(struct rtw_adapter *Adapter, u16 Address, u8 Value)
> >  {
> >  	u8	Bytetemp = {0x00};
> > @@ -502,7 +501,6 @@ int rtw_BT_efuse_map_read23a(struct rtw_adapter *padapter,
> >  }
> >  
> >  /* Read All Efuse content */
> > -void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse);
> >  void Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
> >  {
> >  	u16	mapLen = 0;
> > -- 
> > 2.1.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a039d39e612445309cc6263707209995cb3cc071.1445752141.git.amsfield22%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

