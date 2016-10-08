X-GM-THRID: 6338573496941019136
X-Received: by 10.107.47.4 with SMTP id j4mr6907763ioo.21.1475950121679;
        Sat, 08 Oct 2016 11:08:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls7631391otb.4.gmail; Sat, 08 Oct 2016
 11:08:41 -0700 (PDT)
X-Received: by 10.13.206.135 with SMTP id q129mr6758843ywd.163.1475950120990;
        Sat, 08 Oct 2016 11:08:40 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si2172978vkf.1.2016.10.08.11.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:08:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so2949739vkb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ac4dcJBp30mbJCP7c7cySSp7ZBcJ0ZCHkYIckI/Y2u8=;
        b=r5Wkt3r/AKg2YN1egFOBSMNFaVPzZuPGKa17t1nEfvobnlYn2hncNX0cSMWpZ7Rxj3
         U7MrP0RomZlO1ox46vMacpIBX9jfrqjwSQvpE0BdRurVnB7aIZ+X3B9wBjt0Ibcs5sCt
         9IwHJvRQH0Jmr2BvP1xqPy0qGaxOEFFNkB7jifhkfpJ2ZdIArtTrIHjMKwWYry50/cIf
         /iquOfcG3wCk7tiwPwg/pHzgws4o7pFm+tJea4HPVJ1ek5Kq3EVYDIGJg6UfWO2dK+FQ
         WzrQU7BrPKlLsJrtZ5z9PZUJXVTLL/G0Xq97l4oJHFd7w98UG0VkiDgh5j/TWao1mv9h
         rm3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ac4dcJBp30mbJCP7c7cySSp7ZBcJ0ZCHkYIckI/Y2u8=;
        b=j6pPBwJXYKsNC1OT7u1lvlEsBDkt/cnTXdQBelTY3cRDlNcZc8thpQTzUvOsOORTWo
         qEJxusQiV0wRGC0zNgA0n90GaCAfk9HVC4uBbybwmwXvpti1fU3Woo6tgVZCoJpbuJMs
         htHzepGrAHRZZQk7a/adfV4U9Ld06ZvgzZJri1I3FSBN3LTzLC5CUuaTHf6chkQYsHHD
         ipPfJjpA1EJu808WHZzxVRTeJ0lLr65g7mGJkqaMk2bPtELTUZ7RpylMFPSmUskSqL3+
         0BWREjHB7dKSodHKSjG9H9/BGTOgWLf1IBQ2gxbHPn6TX0JCeskNB1Ak8y59w2Yx8zDV
         kdUw==
X-Gm-Message-State: AA6/9Rmllmvq2G0niBEtxWQgiJKeP5Rq2zsC3j2t+9unVFAqqghO1TF7A5SmGCcF9LqGFA==
X-Received: by 10.31.242.130 with SMTP id q124mr15815281vkh.134.1475950120814;
        Sat, 08 Oct 2016 11:08:40 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 19sm7406718vkv.13.2016.10.08.11.08.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:08:40 -0700 (PDT)
Date: Sat, 8 Oct 2016 15:08:34 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: wilc1000: Move externs
 from .c to .h files.
Message-ID: <20161008180834.GA16945@lennorien.com>
References: <20161007042221.GA23529@lennorien.com>
 <alpine.DEB.2.10.1610070739030.3074@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610070739030.3074@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 07, 2016 at 07:39:42AM +0200, Julia Lawall wrote:
> 
> 
> On Fri, 7 Oct 2016, Elise Lennion wrote:
> 
> > Fix checkpatch warning:
> >
> > WARNING: externs should be avoided in .c files
> >
> > Keep externs in .h files is better to keep the code congruent, also makes it easier to change in future patches.
> >
> > Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index fca96d3..a5e2d96 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
> >  #define IS_MGMT_STATUS_SUCCES			0x040
> >  #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
> >
> > -extern int wilc_mac_open(struct net_device *ndev);
> > -extern int wilc_mac_close(struct net_device *ndev);
> > -
> >  static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
> >  static u32 last_scanned_cnt;
> >  struct timer_list wilc_during_ip_timer;
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > index 85a3810..d1d0546 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> > @@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
> >  struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
> >  void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
> >  			      u16 frame_type, bool reg);
> > +extern int wilc_mac_open(struct net_device *ndev);
> > +extern int wilc_mac_close(struct net_device *ndev);
> 
> Doesn't it now complain that functions are extern by default?  There is no
> extern on the function declaration on the line above for example.
> 
> julia
> 
> >
> >  #endif
> > --
> > 2.7.4
> >
> > --

Yes it does complain as a CHECK and I didn't notice, I'll be more careful in future patches.

I decided to follow the sugestion of Arnd Bergmann <arnd@arndb.de> and remove the extern declarations.
There aren't files that don't include wilc_wlan.h and use them, so it seems unnecessary to move them to wilc_wfi_cfgoperations.h.

elise

