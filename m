X-GM-THRID: 6250978636756680704
X-Received: by 10.66.159.167 with SMTP id xd7mr14483746pab.5.1455514041057;
        Sun, 14 Feb 2016 21:27:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.88.193 with SMTP id bi1ls1462715obb.35.gmail; Sun, 14 Feb
 2016 21:27:20 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr14635623obc.9.1455514040613;
        Sun, 14 Feb 2016 21:27:20 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id 12si2477287pfb.1.2016.02.14.21.27.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id c10so82789890pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=6TFl9p2wiOt5NCPD5J3y74oZMLCV8p8MKM/gAvQfMHA=;
        b=uzkbJi2XulXpmVrbpSY8qrBzblBq5MCys8ZB4NXf9UzpqKllVtwUQA6csyH6IJuLKL
         y/9Ny5HRz7VOHeqMhdU2pvKnmMLbX4nYIMFHpcb7trfuqsW2qZ9pyuaMMqwplgo9RtWu
         wR1kLBWDA7wrpyIhL4oA049HoMMH873sEbjM+R7oRRsaoyq1omtNdOEJ3m0+SLYkmGO8
         giB9/33R5OzPv7n3p5M5xkLNSFQM5BylX+DdNiznaA8TbDT9QH42tXvwcEsFLU9/SfJt
         yOIg9Mg8wtU3kEMDIhknxZCsDPIVvYzHjlgeOXxxplhm86pHF7PyjMaIdmPfVV/VCD1t
         6wLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=6TFl9p2wiOt5NCPD5J3y74oZMLCV8p8MKM/gAvQfMHA=;
        b=k5RjCxqx01MygVdpvoaSt7F37jIIfBuxqN0gmbk1lhL+O/+w+kjDt9fwEBPwAONXML
         /lNKCq+rpG4kibbpGwXYRecH0CTok3ECJlc9mRaTPYxeakCxZnPSHafF8akqZz7GO9iY
         2wFcB/XJv58qpnvyQBSmb+zgVHv7xcaNPB6I8Qn2Vg/WiopSYB02a8hWL9N8rcLcZ6ZL
         2q29+rlcU2aEXjwhnp3Bw9TFPtcX6UpLhOo9aAGL2eT6HEiBjQDG0Cr9hIDYCHZ5XnV3
         ab1nsXpe/cw9/HofKmiUCPlBGfEJ2sWGH6rvta3k/ZveXK4CGryO0v/cy0xTaD2Pg4Ad
         q0+g==
X-Gm-Message-State: AG10YOSxw3JyhLNZhVf7D9rwFNS1Mb4n9484ZlZRZfzzxAvmwr12IXChUeiA+yx459ntpQ==
X-Received: by 10.98.18.201 with SMTP id 70mr21083796pfs.104.1455514040483;
        Sun, 14 Feb 2016 21:27:20 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.36])
        by smtp.gmail.com with ESMTPSA id i13sm34995401pfi.95.2016.02.14.21.27.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:27:19 -0800 (PST)
Date: Mon, 15 Feb 2016 13:27:17 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: fix multiple
 checkpatch errors
Message-ID: <20160215052716.GA13370@Socrates-Mint>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <1455419372-6149-1-git-send-email-eraretuya@gmail.com>
 <alpine.DEB.2.02.1602140825380.2039@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602140825380.2039@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Feb 14, 2016 at 08:26:51AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 14 Feb 2016, Eva Rachel Retuya wrote:
> 
> > Address the following checkpatch errors:
> > * ERROR: "(foo*)" should be "(foo *)"
> > * ERROR: space required after that ',' (ctx:VxV)
> > * ERROR: spaces prohibited around that '->' (ctx:WxV)
> > * ERROR: do not initialise statics to false
> > * ERROR: do not initialise statics to 0x00
> 
> This should be a patch series.  Each patch should only do one thing.  
> Perhaps you could put all the whitespace ones together, and all the 
> initialization ones together.  But they should not all be in one patch.
> 
> julia
>

Will be sending a v2 shortly.

Thank you for the input,
Eva

> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/wilc1000/host_interface.c         | 2 +-
> >  drivers/staging/wilc1000/wilc_spi.c               | 9 ++++++---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 4 ++--
> >  drivers/staging/wilc1000/wilc_wlan.c              | 2 +-
> >  4 files changed, 10 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> > index 5570707..7b2c926 100644
> > --- a/drivers/staging/wilc1000/host_interface.c
> > +++ b/drivers/staging/wilc1000/host_interface.c
> > @@ -2679,7 +2679,7 @@ static int hostIFthread(void *pvArg)
> >  {
> >  	u32 u32Ret;
> >  	struct host_if_msg msg;
> > -	struct wilc *wilc = (struct wilc*)pvArg;
> > +	struct wilc *wilc = (struct wilc *)pvArg;
> >  	struct wilc_vif *vif;
> >  
> >  	memset(&msg, 0, sizeof(struct host_if_msg));
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
> >  					goto _fail_;
> >  				}
> >  			}
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 97d1b80..4f1fb2e 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -157,7 +157,7 @@ static u8 wlan_channel = INVALID_CHANNEL;
> >  static u8 curr_channel;
> >  static u8 p2p_oui[] = {0x50, 0x6f, 0x9A, 0x09};
> >  static u8 p2p_local_random = 0x01;
> > -static u8 p2p_recv_random = 0x00;
> > +static u8 p2p_recv_random;
> >  static u8 p2p_vendor_spec[] = {0xdd, 0x05, 0x00, 0x08, 0x40, 0x03};
> >  static bool wilc_ie;
> >  
> > @@ -2126,7 +2126,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
> >  
> >  	priv = wiphy_priv(wiphy);
> >  	vif = netdev_priv(dev);
> > -	wl = vif ->wilc;
> > +	wl = vif->wilc;
> >  	PRINT_D(HOSTAPD_DBG, "Starting ap\n");
> >  
> >  	PRINT_D(HOSTAPD_DBG, "Interval = %d\n DTIM period = %d\n Head length = %zu Tail length = %zu\n",
> > diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> > index a396ac9..ef65e8e 100644
> > --- a/drivers/staging/wilc1000/wilc_wlan.c
> > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> > @@ -325,7 +325,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
> >  	return 1;
> >  }
> >  
> > -static bool enabled = false;
> > +static bool enabled;
> >  
> >  void wilc_enable_tcp_ack_filter(bool value)
> >  {
> > -- 
> > 1.9.1
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455419372-6149-1-git-send-email-eraretuya%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> > 

