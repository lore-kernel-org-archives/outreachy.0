X-GM-THRID: 6748523404915113984
X-Received: by 2002:a6b:ba56:: with SMTP id k83mr10122179iof.98.1571430522163;
        Fri, 18 Oct 2019 13:28:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9e4a:: with SMTP id i10ls938075ioi.6.gmail; Fri, 18 Oct
 2019 13:28:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweQQ3Rg3p8W1m5T2uYB2D+Txr48Phuicff2hUNrANfv2aNgAxOHYtbw1R2ws8uRxQuonYt
X-Received: by 2002:a6b:b591:: with SMTP id e139mr10563755iof.110.1571430520890;
        Fri, 18 Oct 2019 13:28:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571430520; cv=none;
        d=google.com; s=arc-20160816;
        b=AMeK6hlh28nNLvIp3WFLMMHGRqLvloIcdCKugmp8tFA1jeqPo/1WjjuALn7c1rfnlB
         hPrmZOIwPSXzB+XHbmqgyiyKgQB08DPYQY9iw8Ymmcul15axDmvFwb1AQIzEdNozG3Ib
         ucn+1383ePQgyK4aANzd7JQ8zdrtlqgkLxLdM8HMz//tcKB+dOr5ISqESCEqMNPVwQ5+
         QrCxFFIQG7sh2QMcuVWjHlX0nB+pAt5AP8+LAgeiIzKzr2UZFjSdExU8MKM3PFuKhfSB
         edt0zPDcPNFLE+0ElRXSyFVJE1866Y68WLnoo/9ntKqeIA8Z3fWKO1nj+K6Q8V4B49Vp
         nUXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HLqd2zrEU+MU9Za/XEetLXgHh8SsJ22gng7Nx211Mgw=;
        b=oVinIIJRCLvzLcIT6kY8YaTxvkIL/QZFDYb9ldnXpbS6s0auZ2zUX58VlA9niFbDYJ
         nkugrRGv+ipu+DkNyjvdGvXeItETozyl+b9MEoGWOLQfPNzCl1Rih+QhweXCxweyH39+
         ZoFdn1ApaUGBjssov4Ttj8H+1brZgnbJkimfNsMfEzREiUr+8owcLawLGnhh8kh+V0Ae
         a2vOVdv72h48ahueGGw3FlpnEUxxhsQV+kfklZGMOWM5E4xl1vflgdJe9gL2P0uDJHho
         +BXjH3cdqcpldjL9GNdpLKHgh94Ml7WZLtd3oTTC+VuqBteZhtxfFv4urCGL36TDFbri
         NVdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pad4eJY7;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b2si414577ilf.5.2019.10.18.13.28.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 13:28:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pad4eJY7;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id f14so3948153pgi.9
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 13:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HLqd2zrEU+MU9Za/XEetLXgHh8SsJ22gng7Nx211Mgw=;
        b=pad4eJY7fJrNxvTZKcDtdD3+9iGkAAvirAyGCItfYdyiMud/NIfdYfUja9IOdG67QS
         lK4LB3wK+v46tlVy0Qiy8x7qgmXZzSRReEy7hLTg5H+KX+khN6URbqBU6DlVHmOMt4f7
         qDxA8M78ywR4wYqhyDsfaidEl84vAVv6zmmm0Zr4Bq73oA/wOaYI7e1BUt1QGPmST2zf
         Qd/pWoDiDT8lpenpeIlMHm/KqrON3gwZWsrDEqShDwLG92geQ3myYkjiAJBCXS59wPSm
         cVlM7RgYEhvEToSy8Suqm8UDG6OYMk4Gzlz1VOUZ+H5tu/jdEP3v/ezqsvP8g1TTWx0y
         TPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HLqd2zrEU+MU9Za/XEetLXgHh8SsJ22gng7Nx211Mgw=;
        b=hcLeuAuQTGfGuVOFwW6SKeMAhUwkDF2Mx+J64QqkbH1Sb3XWAHiutL97LyT4Ta8Caw
         rDzIHoyVwmioCus8zU4/A/b+MG+KHV7U9RH1OiD+gVSjGLvBCiiNbbrJqJf9zmrrz3MB
         6udXZeKQcCxtSTVzTsvrO5tL/eYYmUR7ymgy7uO2KW6N/q7EjQLmvokd0FcSqFLpmFFc
         sAmVA+5vBF9EKqOCWv4PlA4jlOzmPu0v0fcbOG9HJYQ70OG7BZL7ELUXpfJ7Clb7GPGj
         ib78Y7vLxQ5XBwIHsiRu5JKqj2wJlGc3uB3OlrRm51g2qEzMueNS7gr45QhX+FqdHqRX
         HkNg==
X-Gm-Message-State: APjAAAWitZe7ZeM9fCoI3zGefC2JAsG+DyXLt0vhKGtCGk1ZZUoLw4n9
	RT3mRwbffmZ4hTKsYERfc0s=
X-Received: by 2002:a17:90a:d991:: with SMTP id d17mr13782071pjv.73.1571430520016;
        Fri, 18 Oct 2019 13:28:40 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id d76sm7538057pfd.185.2019.10.18.13.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 13:28:39 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:28:38 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: sm750sb: Edit CamelCase
 in dvi/sii164 files
Message-ID: <20191018202838.GA29699@jamal-XPS-13-9343>
References: <20191017234015.27504-1-jamal.k.shareef@gmail.com>
 <alpine.DEB.2.21.1910181056560.3697@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910181056560.3697@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Oct 18, 2019 at 10:57:40AM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 17 Oct 2019, Jamal Shareef wrote:
> 
> > Edits CamelCase naming in a group of dependent
> > sm750fb files. Issue found by checkpatch.
> >
> > Remove hungarian notion prefixes throughout.
> >
> > Remove dviInt function and associated variable
> > g_dcftSupportedDviController[] because it is not used.
> 
> Removing things is good, but it should be in a separate patch.  You should
> make a series, if the same files are touched.
> 
> julia
>

I may have misworded this a bit. Hungarian notation was removed as part
of also removing CamelCase from a given word. There was no additional
work done to find other non-related instances of hungarian prefixes.

Would a separate patch still be warranted?

Jamal
> >
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> > Changes in v3:
> >  - Fix checkpatch warning for multiple blank lines.
> > Changes in v2:
> >  - Remove dviInt function and global variable because they are
> >    not used.
> >  - Remove hungarion notation prefixes.
> > ---
> >  drivers/staging/sm750fb/ddk750_dvi.c    |  54 -------
> >  drivers/staging/sm750fb/ddk750_dvi.h    |  71 ++++-----
> >  drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
> >  drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
> >  4 files changed, 143 insertions(+), 207 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> > index cd564ea40779..dbdd27eff0f9 100644
> > --- a/drivers/staging/sm750fb/ddk750_dvi.c
> > +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> > @@ -5,58 +5,4 @@
> >  #include "ddk750_reg.h"
> >  #include "ddk750_dvi.h"
> >  #include "ddk750_sii164.h"
> > -
> > -/*
> > - * This global variable contains all the supported driver and its corresponding
> > - * function API. Please set the function pointer to NULL whenever the function
> > - * is not supported.
> > - */
> > -static struct dvi_ctrl_device g_dcftSupportedDviController[] = {
> > -#ifdef DVI_CTRL_SII164
> > -	{
> > -		.pfnInit = sii164InitChip,
> > -		.pfnGetVendorId = sii164GetVendorID,
> > -		.pfnGetDeviceId = sii164GetDeviceID,
> > -#ifdef SII164_FULL_FUNCTIONS
> > -		.pfnResetChip = sii164ResetChip,
> > -		.pfnGetChipString = sii164GetChipString,
> > -		.pfnSetPower = sii164SetPower,
> > -		.pfnEnableHotPlugDetection = sii164EnableHotPlugDetection,
> > -		.pfnIsConnected = sii164IsConnected,
> > -		.pfnCheckInterrupt = sii164CheckInterrupt,
> > -		.pfnClearInterrupt = sii164ClearInterrupt,
> > -#endif
> > -	},
> > -#endif
> > -};
> > -
> > -int dviInit(unsigned char edge_select,
> > -	    unsigned char bus_select,
> > -	    unsigned char dual_edge_clk_select,
> > -	    unsigned char hsync_enable,
> > -	    unsigned char vsync_enable,
> > -	    unsigned char deskew_enable,
> > -	    unsigned char deskew_setting,
> > -	    unsigned char continuous_sync_enable,
> > -	    unsigned char pll_filter_enable,
> > -	    unsigned char pll_filter_value)
> > -{
> > -	struct dvi_ctrl_device *pCurrentDviCtrl;
> > -
> > -	pCurrentDviCtrl = g_dcftSupportedDviController;
> > -	if (pCurrentDviCtrl->pfnInit) {
> > -		return pCurrentDviCtrl->pfnInit(edge_select,
> > -						bus_select,
> > -						dual_edge_clk_select,
> > -						hsync_enable,
> > -						vsync_enable,
> > -						deskew_enable,
> > -						deskew_setting,
> > -						continuous_sync_enable,
> > -						pll_filter_enable,
> > -						pll_filter_value);
> > -	}
> > -	return -1; /* error */
> > -}
> > -
> >  #endif
> > diff --git a/drivers/staging/sm750fb/ddk750_dvi.h b/drivers/staging/sm750fb/ddk750_dvi.h
> > index 1c7a565b617a..f42f06f90fa7 100644
> > --- a/drivers/staging/sm750fb/ddk750_dvi.h
> > +++ b/drivers/staging/sm750fb/ddk750_dvi.h
> > @@ -4,54 +4,43 @@
> >
> >  /* dvi chip stuffs structros */
> >
> > -typedef long (*PFN_DVICTRL_INIT)(unsigned char edgeSelect,
> > -				 unsigned char busSelect,
> > -				 unsigned char dualEdgeClkSelect,
> > -				 unsigned char hsyncEnable,
> > -				 unsigned char vsyncEnable,
> > -				 unsigned char deskewEnable,
> > -				 unsigned char deskewSetting,
> > -				 unsigned char continuousSyncEnable,
> > -				 unsigned char pllFilterEnable,
> > -				 unsigned char pllFilterValue);
> > -
> > -typedef void (*PFN_DVICTRL_RESETCHIP)(void);
> > -typedef char* (*PFN_DVICTRL_GETCHIPSTRING)(void);
> > -typedef unsigned short (*PFN_DVICTRL_GETVENDORID)(void);
> > -typedef unsigned short (*PFN_DVICTRL_GETDEVICEID)(void);
> > -typedef void (*PFN_DVICTRL_SETPOWER)(unsigned char powerUp);
> > -typedef void (*PFN_DVICTRL_HOTPLUGDETECTION)(unsigned char enableHotPlug);
> > -typedef unsigned char (*PFN_DVICTRL_ISCONNECTED)(void);
> > -typedef unsigned char (*PFN_DVICTRL_CHECKINTERRUPT)(void);
> > -typedef void (*PFN_DVICTRL_CLEARINTERRUPT)(void);
> > +typedef long (*DVICTRL_INIT)(unsigned char edge_select,
> > +			     unsigned char bus_select,
> > +			     unsigned char dual_edge_clk_select,
> > +			     unsigned char hsync_enable,
> > +			     unsigned char vsync_enable,
> > +			     unsigned char deskew_enable,
> > +			     unsigned char deskew_setting,
> > +			     unsigned char continuous_sync_enable,
> > +			     unsigned char pll_filter_enable,
> > +			     unsigned char pll_filter_value);
> > +
> > +typedef void (*DVICTRL_RESETCHIP)(void);
> > +typedef char* (*DVICTRL_GETCHIPSTRING)(void);
> > +typedef unsigned short (*DVICTRL_GETVENDORID)(void);
> > +typedef unsigned short (*DVICTRL_GETDEVICEID)(void);
> > +typedef void (*DVICTRL_SETPOWER)(unsigned char power_up);
> > +typedef void (*DVICTRL_HOTPLUGDETECTION)(unsigned char enable_hot_plug);
> > +typedef unsigned char (*DVICTRL_ISCONNECTED)(void);
> > +typedef unsigned char (*DVICTRL_CHECKINTERRUPT)(void);
> > +typedef void (*DVICTRL_CLEARINTERRUPT)(void);
> >
> >  /* Structure to hold all the function pointer to the DVI Controller. */
> >  struct dvi_ctrl_device {
> > -	PFN_DVICTRL_INIT		pfnInit;
> > -	PFN_DVICTRL_RESETCHIP		pfnResetChip;
> > -	PFN_DVICTRL_GETCHIPSTRING	pfnGetChipString;
> > -	PFN_DVICTRL_GETVENDORID		pfnGetVendorId;
> > -	PFN_DVICTRL_GETDEVICEID		pfnGetDeviceId;
> > -	PFN_DVICTRL_SETPOWER		pfnSetPower;
> > -	PFN_DVICTRL_HOTPLUGDETECTION	pfnEnableHotPlugDetection;
> > -	PFN_DVICTRL_ISCONNECTED		pfnIsConnected;
> > -	PFN_DVICTRL_CHECKINTERRUPT	pfnCheckInterrupt;
> > -	PFN_DVICTRL_CLEARINTERRUPT	pfnClearInterrupt;
> > +	DVICTRL_INIT			init;
> > +	DVICTRL_RESETCHIP		reset_chip;
> > +	DVICTRL_GETCHIPSTRING		get_chip_string;
> > +	DVICTRL_GETVENDORID		get_vendor_id;
> > +	DVICTRL_GETDEVICEID		get_device_id;
> > +	DVICTRL_SETPOWER		set_power;
> > +	DVICTRL_HOTPLUGDETECTION	enable_hot_plug_detection;
> > +	DVICTRL_ISCONNECTED		is_connected;
> > +	DVICTRL_CHECKINTERRUPT		check_interrupt;
> > +	DVICTRL_CLEARINTERRUPT		clear_interrupt;
> >  };
> >
> >  #define DVI_CTRL_SII164
> >
> > -/* dvi functions prototype */
> > -int dviInit(unsigned char edgeSelect,
> > -	    unsigned char busSelect,
> > -	    unsigned char dualEdgeClkSelect,
> > -	    unsigned char hsyncEnable,
> > -	    unsigned char vsyncEnable,
> > -	    unsigned char deskewEnable,
> > -	    unsigned char deskewSetting,
> > -	    unsigned char continuousSyncEnable,
> > -	    unsigned char pllFilterEnable,
> > -	    unsigned char pllFilterValue);
> >
> >  #endif
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> > index bee58edc84e7..f8fe39026528 100644
> > --- a/drivers/staging/sm750fb/ddk750_sii164.c
> > +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> > @@ -12,11 +12,11 @@
> >  #define USE_HW_I2C
> >
> >  #ifdef USE_HW_I2C
> > -    #define i2cWriteReg sm750_hw_i2c_write_reg
> > -    #define i2cReadReg  sm750_hw_i2c_read_reg
> > +    #define i2c_write_reg sm750_hw_i2c_write_reg
> > +    #define i2c_read_reg  sm750_hw_i2c_read_reg
> >  #else
> > -    #define i2cWriteReg sm750_sw_i2c_write_reg
> > -    #define i2cReadReg  sm750_sw_i2c_read_reg
> > +    #define i2c_write_reg sm750_sw_i2c_write_reg
> > +    #define i2c_read_reg  sm750_sw_i2c_read_reg
> >  #endif
> >
> >  /* SII164 Vendor and Device ID */
> > @@ -25,45 +25,45 @@
> >
> >  #ifdef SII164_FULL_FUNCTIONS
> >  /* Name of the DVI Controller chip */
> > -static char *gDviCtrlChipName = "Silicon Image SiI 164";
> > +static char *dvi_ctrl_chip_name = "Silicon Image SiI 164";
> >  #endif
> >
> >  /*
> > - *  sii164GetVendorID
> > + *  sii164_get_vendor_id
> >   *      This function gets the vendor ID of the DVI controller chip.
> >   *
> >   *  Output:
> >   *      Vendor ID
> >   */
> > -unsigned short sii164GetVendorID(void)
> > +unsigned short sii164_get_vendor_id(void)
> >  {
> > -	unsigned short vendorID;
> > +	unsigned short vendor_id;
> >
> > -	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
> > -					       SII164_VENDOR_ID_HIGH) << 8) |
> > -		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
> > -					      SII164_VENDOR_ID_LOW);
> > +	vendor_id = ((unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
> > +						 SII164_VENDOR_ID_HIGH) << 8) |
> > +		    (unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
> > +						SII164_VENDOR_ID_LOW);
> >
> > -	return vendorID;
> > +	return vendor_id;
> >  }
> >
> >  /*
> > - *  sii164GetDeviceID
> > + *  sii164_get_device_id
> >   *      This function gets the device ID of the DVI controller chip.
> >   *
> >   *  Output:
> >   *      Device ID
> >   */
> > -unsigned short sii164GetDeviceID(void)
> > +unsigned short sii164_get_device_id(void)
> >  {
> > -	unsigned short deviceID;
> > +	unsigned short device_id;
> >
> > -	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
> > -					       SII164_DEVICE_ID_HIGH) << 8) |
> > -		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
> > -					      SII164_DEVICE_ID_LOW);
> > +	device_id = ((unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
> > +						 SII164_DEVICE_ID_HIGH) << 8) |
> > +		    (unsigned short)i2c_read_reg(SII164_I2C_ADDRESS,
> > +						SII164_DEVICE_ID_LOW);
> >
> > -	return deviceID;
> > +	return device_id;
> >  }
> >
> >  /*
> > @@ -72,7 +72,7 @@ unsigned short sii164GetDeviceID(void)
> >   */
> >
> >  /*
> > - *  sii164InitChip
> > + *  sii164_init_chip
> >   *      This function initialize and detect the DVI controller chip.
> >   *
> >   *  Input:
> > @@ -118,16 +118,16 @@ unsigned short sii164GetDeviceID(void)
> >   *      0   - Success
> >   *     -1   - Fail.
> >   */
> > -long sii164InitChip(unsigned char edge_select,
> > -		    unsigned char bus_select,
> > -		    unsigned char dual_edge_clk_select,
> > -		    unsigned char hsync_enable,
> > -		    unsigned char vsync_enable,
> > -		    unsigned char deskew_enable,
> > -		    unsigned char deskew_setting,
> > -		    unsigned char continuous_sync_enable,
> > -		    unsigned char pll_filter_enable,
> > -		    unsigned char pll_filter_value)
> > +long sii164_init_chip(unsigned char edge_select,
> > +		      unsigned char bus_select,
> > +		      unsigned char dual_edge_clk_select,
> > +		      unsigned char hsync_enable,
> > +		      unsigned char vsync_enable,
> > +		      unsigned char deskew_enable,
> > +		      unsigned char deskew_setting,
> > +		      unsigned char continuous_sync_enable,
> > +		      unsigned char pll_filter_enable,
> > +		      unsigned char pll_filter_value)
> >  {
> >  	unsigned char config;
> >
> > @@ -140,8 +140,8 @@ long sii164InitChip(unsigned char edge_select,
> >  #endif
> >
> >  	/* Check if SII164 Chip exists */
> > -	if ((sii164GetVendorID() == SII164_VENDOR_ID) &&
> > -			(sii164GetDeviceID() == SII164_DEVICE_ID)) {
> > +	if ((sii164_get_vendor_id() == SII164_VENDOR_ID) &&
> > +	    (sii164_get_device_id() == SII164_DEVICE_ID)) {
> >  		/*
> >  		 *  Initialize SII164 controller chip.
> >  		 */
> > @@ -176,7 +176,7 @@ long sii164InitChip(unsigned char edge_select,
> >  		else
> >  			config |= SII164_CONFIGURATION_VSYNC_AS_IS;
> >
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> >
> >  		/*
> >  		 * De-skew enabled with default 111b value.
> > @@ -214,7 +214,7 @@ long sii164InitChip(unsigned char edge_select,
> >  			config |= SII164_DESKEW_8_STEP;
> >  			break;
> >  		}
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_DESKEW, config);
> >
> >  		/* Enable/Disable Continuous Sync. */
> >  		if (continuous_sync_enable == 0)
> > @@ -231,12 +231,12 @@ long sii164InitChip(unsigned char edge_select,
> >  		/* Set the PLL Filter value */
> >  		config |= ((pll_filter_value & 0x07) << 1);
> >
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_PLL, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_PLL, config);
> >
> >  		/* Recover from Power Down and enable output. */
> > -		config = i2cReadReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
> > +		config = i2c_read_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
> >  		config |= SII164_CONFIGURATION_POWER_NORMAL;
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> >
> >  		return 0;
> >  	}
> > @@ -250,157 +250,158 @@ long sii164InitChip(unsigned char edge_select,
> >  #ifdef SII164_FULL_FUNCTIONS
> >
> >  /*
> > - *  sii164ResetChip
> > + *  sii164_reset_chip
> >   *      This function resets the DVI Controller Chip.
> >   */
> > -void sii164ResetChip(void)
> > +void sii164_reset_chip(void)
> >  {
> >  	/* Power down */
> > -	sii164SetPower(0);
> > -	sii164SetPower(1);
> > +	sii164_set_power(0);
> > +	sii164_set_power(1);
> >  }
> >
> >  /*
> > - * sii164GetChipString
> > + * sii164_get_chip_string
> >   *      This function returns a char string name of the current DVI Controller
> >   *      chip.
> >   *
> >   *      It's convenient for application need to display the chip name.
> >   */
> > -char *sii164GetChipString(void)
> > +char *sii164_get_chip_string(void)
> >  {
> > -	return gDviCtrlChipName;
> > +	return dvi_ctrl_chip_name;
> >  }
> >
> >  /*
> > - *  sii164SetPower
> > + *  sii164_set_power
> >   *      This function sets the power configuration of the DVI Controller Chip.
> >   *
> >   *  Input:
> > - *      powerUp - Flag to set the power down or up
> > + *      power_up - Flag to set the power down or up
> >   */
> > -void sii164SetPower(unsigned char powerUp)
> > +void sii164_set_power(unsigned char power_up)
> >  {
> >  	unsigned char config;
> >
> > -	config = i2cReadReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
> > -	if (powerUp == 1) {
> > +	config = i2c_read_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION);
> > +	if (power_up == 1) {
> >  		/* Power up the chip */
> >  		config &= ~SII164_CONFIGURATION_POWER_MASK;
> >  		config |= SII164_CONFIGURATION_POWER_NORMAL;
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> >  	} else {
> >  		/* Power down the chip */
> >  		config &= ~SII164_CONFIGURATION_POWER_MASK;
> >  		config |= SII164_CONFIGURATION_POWER_DOWN;
> > -		i2cWriteReg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> > +		i2c_write_reg(SII164_I2C_ADDRESS, SII164_CONFIGURATION, config);
> >  	}
> >  }
> >
> >  /*
> > - *  sii164SelectHotPlugDetectionMode
> > + *  sii164_select_hot_plug_detection_mode
> >   *      This function selects the mode of the hot plug detection.
> >   */
> >  static
> > -void sii164SelectHotPlugDetectionMode(enum sii164_hot_plug_mode hotPlugMode)
> > +void sii164_select_hot_plug_detection_mode(enum sii164_hot_plug_mode
> > +					   hot_plug_mode)
> >  {
> > -	unsigned char detectReg;
> > +	unsigned char detect_reg;
> >
> > -	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > -		    ~SII164_DETECT_MONITOR_SENSE_OUTPUT_FLAG;
> > -	switch (hotPlugMode) {
> > +	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > +		     ~SII164_DETECT_MONITOR_SENSE_OUTPUT_FLAG;
> > +	switch (hot_plug_mode) {
> >  	case SII164_HOTPLUG_DISABLE:
> > -		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HIGH;
> > +		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HIGH;
> >  		break;
> >  	case SII164_HOTPLUG_USE_MDI:
> > -		detectReg &= ~SII164_DETECT_INTERRUPT_MASK;
> > -		detectReg |= SII164_DETECT_INTERRUPT_BY_HTPLG_PIN;
> > -		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_MDI;
> > +		detect_reg &= ~SII164_DETECT_INTERRUPT_MASK;
> > +		detect_reg |= SII164_DETECT_INTERRUPT_BY_HTPLG_PIN;
> > +		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_MDI;
> >  		break;
> >  	case SII164_HOTPLUG_USE_RSEN:
> > -		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_RSEN;
> > +		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_RSEN;
> >  		break;
> >  	case SII164_HOTPLUG_USE_HTPLG:
> > -		detectReg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HTPLG;
> > +		detect_reg |= SII164_DETECT_MONITOR_SENSE_OUTPUT_HTPLG;
> >  		break;
> >  	}
> >
> > -	i2cWriteReg(SII164_I2C_ADDRESS, SII164_DETECT, detectReg);
> > +	i2c_write_reg(SII164_I2C_ADDRESS, SII164_DETECT, detect_reg);
> >  }
> >
> >  /*
> > - *  sii164EnableHotPlugDetection
> > + *  sii164_enable_hot_plug_detection
> >   *      This function enables the Hot Plug detection.
> >   *
> > - *  enableHotPlug   - Enable (=1) / disable (=0) Hot Plug detection
> > + *  enable_hot_plug   - Enable (=1) / disable (=0) Hot Plug detection
> >   */
> > -void sii164EnableHotPlugDetection(unsigned char enableHotPlug)
> > +void sii164_enable_hot_plug_detection(unsigned char enable_hot_plug)
> >  {
> > -	unsigned char detectReg;
> > +	unsigned char detect_reg;
> >
> > -	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
> > +	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT);
> >
> >  	/* Depending on each DVI controller, need to enable the hot plug based
> >  	 * on each individual chip design.
> >  	 */
> > -	if (enableHotPlug != 0)
> > -		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_USE_MDI);
> > +	if (enable_hot_plug != 0)
> > +		sii164_select_hot_plug_detection_mode(SII164_HOTPLUG_USE_MDI);
> >  	else
> > -		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_DISABLE);
> > +		sii164_select_hot_plug_detection_mode(SII164_HOTPLUG_DISABLE);
> >  }
> >
> >  /*
> > - *  sii164IsConnected
> > + *  sii164_is_connected
> >   *      Check if the DVI Monitor is connected.
> >   *
> >   *  Output:
> >   *      0   - Not Connected
> >   *      1   - Connected
> >   */
> > -unsigned char sii164IsConnected(void)
> > +unsigned char sii164_is_connected(void)
> >  {
> > -	unsigned char hotPlugValue;
> > +	unsigned char hot_plug_value;
> >
> > -	hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > -		       SII164_DETECT_HOT_PLUG_STATUS_MASK;
> > -	if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
> > +	hot_plug_value = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > +			 SII164_DETECT_HOT_PLUG_STATUS_MASK;
> > +	if (hot_plug_value == SII164_DETECT_HOT_PLUG_STATUS_ON)
> >  		return 1;
> >  	else
> >  		return 0;
> >  }
> >
> >  /*
> > - *  sii164CheckInterrupt
> > + *  sii164_check_interrupt
> >   *      Checks if interrupt has occurred.
> >   *
> >   *  Output:
> >   *      0   - No interrupt
> >   *      1   - Interrupt occurs
> >   */
> > -unsigned char sii164CheckInterrupt(void)
> > +unsigned char sii164_check_interrupt(void)
> >  {
> > -	unsigned char detectReg;
> > +	unsigned char detect_reg;
> >
> > -	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > -		    SII164_DETECT_MONITOR_STATE_MASK;
> > -	if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
> > +	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT) &
> > +		     SII164_DETECT_MONITOR_STATE_MASK;
> > +	if (detect_reg == SII164_DETECT_MONITOR_STATE_CHANGE)
> >  		return 1;
> >  	else
> >  		return 0;
> >  }
> >
> >  /*
> > - *  sii164ClearInterrupt
> > + *  sii164_clear_interrupt
> >   *      Clear the hot plug interrupt.
> >   */
> > -void sii164ClearInterrupt(void)
> > +void sii164_clear_interrupt(void)
> >  {
> > -	unsigned char detectReg;
> > +	unsigned char detect_reg;
> >
> >  	/* Clear the MDI interrupt */
> > -	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
> > -	i2cWriteReg(SII164_I2C_ADDRESS, SII164_DETECT,
> > -		    detectReg | SII164_DETECT_MONITOR_STATE_CLEAR);
> > +	detect_reg = i2c_read_reg(SII164_I2C_ADDRESS, SII164_DETECT);
> > +	i2c_write_reg(SII164_I2C_ADDRESS, SII164_DETECT,
> > +		      detect_reg | SII164_DETECT_MONITOR_STATE_CLEAR);
> >  }
> >
> >  #endif
> > diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
> > index d940cb729066..737b0e4869ff 100644
> > --- a/drivers/staging/sm750fb/ddk750_sii164.h
> > +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> > @@ -16,28 +16,28 @@ enum sii164_hot_plug_mode {
> >  };
> >
> >  /* Silicon Image SiI164 chip prototype */
> > -long sii164InitChip(unsigned char edgeSelect,
> > -		    unsigned char busSelect,
> > -		    unsigned char dualEdgeClkSelect,
> > -		    unsigned char hsyncEnable,
> > -		    unsigned char vsyncEnable,
> > -		    unsigned char deskewEnable,
> > -		    unsigned char deskewSetting,
> > -		    unsigned char continuousSyncEnable,
> > -		    unsigned char pllFilterEnable,
> > -		    unsigned char pllFilterValue);
> > -
> > -unsigned short sii164GetVendorID(void);
> > -unsigned short sii164GetDeviceID(void);
> > +long sii164_init_chip(unsigned char edge_select,
> > +		      unsigned char bus_select,
> > +		      unsigned char dual_edge_clk_select,
> > +		      unsigned char hsync_enable,
> > +		      unsigned char vsync_enable,
> > +		      unsigned char deskew_enable,
> > +		      unsigned char deskew_setting,
> > +		      unsigned char continuous_sync_enable,
> > +		      unsigned char pll_filter_enable,
> > +		      unsigned char pll_filter_value);
> > +
> > +unsigned short sii164_get_vendor_id(void);
> > +unsigned short sii164_get_device_id(void);
> >
> >  #ifdef SII164_FULL_FUNCTIONS
> > -void sii164ResetChip(void);
> > -char *sii164GetChipString(void);
> > -void sii164SetPower(unsigned char powerUp);
> > -void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> > -unsigned char sii164IsConnected(void);
> > -unsigned char sii164CheckInterrupt(void);
> > -void sii164ClearInterrupt(void);
> > +void sii164_reset_chip(void);
> > +char *sii164_get_chip_string(void);
> > +void sii164_set_power(unsigned char power_up);
> > +void sii164_enable_hot_plug_detection(unsigned char enable_hot_plug);
> > +unsigned char sii164_is_connected(void);
> > +unsigned char sii164_check_interrupt(void);
> > +void sii164_clear_interrupt(void);
> >  #endif
> >  /*
> >   * below register definition is used for
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191017234015.27504-1-jamal.k.shareef%40gmail.com.
> >

