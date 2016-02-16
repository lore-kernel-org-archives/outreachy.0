X-GM-THRID: 6251387013409275904
X-Received: by 10.50.61.132 with SMTP id p4mr16320667igr.0.1455607804651;
        Mon, 15 Feb 2016 23:30:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.10 with SMTP id l10ls3413599qge.93.gmail; Mon, 15 Feb
 2016 23:30:04 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr20035925qhi.10.1455607804069;
        Mon, 15 Feb 2016 23:30:04 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id 12si2979183pfb.1.2016.02.15.23.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 23:30:04 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fl4so86830385pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 23:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=wcWDpuymmZPkDzK+izqeCfzJjrZzTgGBE6McI6yPLXg=;
        b=MoyIvgXvcu4NlJOVbbj0YFTKKjslu+2tgpwPqMaVUBKweFEUiK2A11ga69UaoiNU2c
         alP9BJmq88lTOc3bnybemVrFEZItUJfVIfEh8X7Lu028YAb5w8LI+VX0KxWYMrINAihQ
         TYv7etwbgSqxTeZKHh04drKhizLjCQ7pFhDGMUyBaKDYQdZ7TQF/Bce8pPHiOnL/36LL
         pqntiOkl+hU69sWz/VXtRJRfip5LD2OZjpB4UI5MDLbh4hIay8UroEwEDP84iyEZgq7n
         C8YL6BYQDueAUlCCg3gwcn7eqw644dV6v6Q/SuBEYqR+7hCXT+BIrHBwJOglXSwckVDx
         AXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=wcWDpuymmZPkDzK+izqeCfzJjrZzTgGBE6McI6yPLXg=;
        b=IfJiWn7sVorm6Klg1Rymk/vEH0/riZFJYy8hh3U3znWUOfmGfFzG8PLsvXlsAsnjSC
         7b12bANIvtM9ny2WDFz2pl9B7vtbMzp9EU1cG5LM6FrUOCCjDe2h0+Yjc3iRCk+dDcTW
         2rdZNEPpveUyAPeXkkSfnoMZuI7rsyxpPD0gWgyedlaA7MGBFcJUrQG16E5oBhKKU/T4
         14eZmaXz8yikMnf0XpWRavSPYXpIDBTnlJONXK2VG0r92nBrptfM+yVewnVZQZ7U1QrK
         NAri1Xx17ruLdyL6RcOnzZ+yRyV73duedlH5Rf8NOIiYPOYunhwuEHRa5QmRPbogp+b9
         AQeQ==
X-Gm-Message-State: AG10YOTV/MiiJpkMPZQ1KRr56VRElrjusKHdQ1aNTZlqDZ3BrPTlWPso3K+161cMHzcngg==
X-Received: by 10.66.120.200 with SMTP id le8mr29202516pab.61.1455607803877;
        Mon, 15 Feb 2016 23:30:03 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.200])
        by smtp.gmail.com with ESMTPSA id ss5sm43311168pab.15.2016.02.15.23.30.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 23:30:03 -0800 (PST)
Date: Tue, 16 Feb 2016 15:30:00 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: wilc1000: Remove
 whitespace checkpatch errors
Message-ID: <20160216072957.GA4367@Socrates-Mint>
Mail-Followup-To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
References: <cover.1455513866.git.eraretuya@gmail.com>
 <bf2ba268e14b1a664ffecb075bc4b6bdb8f520c9.1455513866.git.eraretuya@gmail.com>
 <20160216021948.GB31337@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160216021948.GB31337@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Feb 15, 2016 at 06:19:48PM -0800, Greg KH wrote:
> On Mon, Feb 15, 2016 at 01:34:16PM +0800, Eva Rachel Retuya wrote:
> > Address the following checkpatch errors concerning whitespace:
> > * ERROR: trailing whitespace
> > * ERROR: space required after that ',' (ctx:VxV)
> > * ERROR: spaces prohibited around that '->' (ctx:WxV)
> 
> That's different things, please break this up, because:
> 
> > 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c         | 2 +-
> >  drivers/staging/wilc1000/linux_mon.c              | 2 +-
> >  drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
> >  4 files changed, 9 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> > index d1eedfb..04337c7 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
> >  		PRINT_ER("Failed to send association response config packet\n");
> >  		return -EINVAL;
> >  	}
> > -	
> > +
> >  	*pu32RcvdAssocRespInfoLen = wid.size;
> >  	return result;
> >  }
> > diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> > index 21f35d7..9fcb497 100644
> > --- a/drivers/staging/wilc1000/linux_mon.c
> > +++ b/drivers/staging/wilc1000/linux_mon.c
> > @@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
> >  	struct WILC_WFI_mon_priv *priv;
> >  
> >  	/*If monitor interface is already initialized, return it*/
> > -	if (wilc_wfi_mon) 
> > +	if (wilc_wfi_mon)
> >  		return wilc_wfi_mon;
> >  
> >  	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
> > diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> > index 2928712..339956e 100644
> > --- a/drivers/staging/wilc1000/wilc_spi.c
> > +++ b/drivers/staging/wilc1000/wilc_spi.c
> > @@ -514,7 +514,8 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
> >  					crc[0] = rb[rix++];
> >  					crc[1] = rb[rix++];
> >  				} else {
> > -					dev_err(&spi->dev,"buffer overrun when reading crc.\n");
> > +					dev_err(&spi->dev,
> > +					  "buffer overrun when reading crc.\n");
> 
> That change is not ok, leave it as-is.
> 
> >  					result = N_FAIL;
> >  					return result;
> >  				}
> > @@ -680,7 +681,8 @@ static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
> >  		 **/
> >  		if (!g_spi.crc_off) {
> >  			if (wilc_spi_tx(wilc, crc, 2)) {
> > -				dev_err(&spi->dev,"Failed data block crc write, bus error...\n");
> > +				dev_err(&spi->dev,
> > +				 "Failed data block crc write, bus error...\n");
> 
> Same here.
> 
> >  				result = N_FAIL;
> >  				break;
> >  			}
> > @@ -1074,7 +1076,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
> >  				ret = wilc_spi_write_reg(wilc,
> >  							 WILC_VMM_CORE_CTL, 1);
> >  				if (!ret) {
> > -					dev_err(&spi->dev,"fail write reg vmm_core_ctl...\n");
> > +					dev_err(&spi->dev,
> > +					    "fail write reg vmm_core_ctl...\n");
> 
> Same here.
> 
> 
> 
> >  					goto _fail_;
> >  				}
> >  			}
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 81a2ee9..46c6e32 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
> >  
> >  	priv = wiphy_priv(wiphy);
> >  	vif = netdev_priv(dev);
> > -	wl = vif ->wilc;
> > +	wl = vif->wilc;
> 
> That's just odd.  The original code compiles?
> 
> thanks,
> 
> greg k-h

Yes the original code compiles. I used 'make -j2' and also 'make
drivers/staging/wilc1000'. The latter produced the .o files fine.

I will break down the patch as you suggested.

Thanks,
Eva

