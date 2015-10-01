X-GM-THRID: 6200529091432546304
X-Received: by 10.129.145.68 with SMTP id i65mr6519334ywg.1.1443686422185;
        Thu, 01 Oct 2015 01:00:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.198 with SMTP id 64ls894185qgb.52.gmail; Thu, 01 Oct
 2015 01:00:21 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr6802567ywb.3.1443686421807;
        Thu, 01 Oct 2015 01:00:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si544360ywe.3.2015.10.01.01.00.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E98011655;
	Thu,  1 Oct 2015 08:00:19 +0000 (UTC)
Date: Thu, 1 Oct 2015 10:00:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
Message-ID: <20151001080016.GA26145@kroah.com>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
 <20151001055624.GA25101@kroah.com>
 <20151001061400.GA21892@sudip-pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151001061400.GA21892@sudip-pc>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 01, 2015 at 11:44:00AM +0530, Sudip Mukherjee wrote:
> On Thu, Oct 01, 2015 at 07:56:24AM +0200, Greg KH wrote:
> > On Thu, Oct 01, 2015 at 09:49:26AM +0530, Shraddha Barke wrote:
> > > These struct are globally defined in source file but they have been
> > > defined as static in .h file. Remove definition in header file as
> > > it is not needed. Also fix the compiler warning.
> > > 
> > > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > > ---
> > >  drivers/staging/android/sw_sync.h | 15 ---------------
> > >  1 file changed, 15 deletions(-)
> > > 
> > > diff --git a/drivers/staging/android/sw_sync.h b/drivers/staging/android/sw_sync.h
> > > index c87ae9e..a671595 100644
> > > --- a/drivers/staging/android/sw_sync.h
> > > +++ b/drivers/staging/android/sw_sync.h
> > > @@ -39,21 +39,6 @@ struct sw_sync_timeline *sw_sync_timeline_create(const char *name);
> > >  void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc);
> > >  
> > >  struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj, u32 value);
> > > -#else
> > > -static inline struct sw_sync_timeline *sw_sync_timeline_create(const char *name)
> > > -{
> > > -	return NULL;
> > > -}
> > > -
> > > -static inline void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc)
> > > -{
> > > -}
> > > -
> > > -static inline struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj,
> > > -						u32 value)
> > > -{
> > > -	return NULL;
> > > -}
> > >  #endif /* IS_ENABLED(CONFIG_SW_SYNC) */
> > >  
> > >  #endif /* _LINUX_SW_SYNC_H */
> > 
> > You just broke the build for systems that don't define CONFIG_SW_SYNC
> > yet still call these functions :(
> 
> I had the same doubt so i tested it with CONFIG_SW_SYNC disabled in my
> .config, but the build didn't break.

That is because this code is for out-of-tree code :(

> Is it because the only use of sw_sync_timeline_inc is from sw_sync.c
> which will build only if CONFIG_SW_SYNC is defined?

Yes, but other files might use those functions and they need to still
build if the config option is not enabled.

thanks,

greg k-h

