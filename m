X-GM-THRID: 6200529091432546304
X-Received: by 10.66.246.198 with SMTP id xy6mr6639211pac.36.1443680050187;
        Wed, 30 Sep 2015 23:14:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.102 with SMTP id g93ls930647qgd.19.gmail; Wed, 30 Sep
 2015 23:14:09 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr6510334ywc.8.1443680049627;
        Wed, 30 Sep 2015 23:14:09 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si706009pbt.1.2015.09.30.23.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 23:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id lk4so63675397pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 23:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wUcxIWMSpUhjay4v3VrsKL2w8fxgDhCx1XAg7nYxQ1I=;
        b=acKCbTEsm764RC16n1EM6MIRtcH1rqkCeGv7kAEFECl/0JESVKYG3yAViYDWxdU4DN
         nv2Ne07izhWjpHMSA7u0OHZMVaLgsdumQY4ZljnGgcCHIcx2DLPP5jlQsfcLLC0dbuIi
         56gsgKCdkiCL5XLje0FFHRNa4MM3e2jE5+1n1wwsLKHo2+q+osocuhJ+3aogHsvZcFIy
         cN2iauD9WI/CMqMt37kA5s0fB/IN3RywRf0jkBbW556YJLcIiI7wPBj45+akvls9fCX/
         /yKJyMww3qNsZD3pFI6xuUsL5cTsMsLhMUhiITsaI2NJFVFCTYWv6buc0jxJEABkEci0
         iqBg==
X-Received: by 10.66.117.200 with SMTP id kg8mr9821139pab.37.1443680049424;
        Wed, 30 Sep 2015 23:14:09 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id pm8sm4276090pbc.9.2015.09.30.23.14.07
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 30 Sep 2015 23:14:08 -0700 (PDT)
Date: Thu, 1 Oct 2015 11:44:00 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
Message-ID: <20151001061400.GA21892@sudip-pc>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com>
 <20151001055624.GA25101@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151001055624.GA25101@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 01, 2015 at 07:56:24AM +0200, Greg KH wrote:
> On Thu, Oct 01, 2015 at 09:49:26AM +0530, Shraddha Barke wrote:
> > These struct are globally defined in source file but they have been
> > defined as static in .h file. Remove definition in header file as
> > it is not needed. Also fix the compiler warning.
> > 
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > ---
> >  drivers/staging/android/sw_sync.h | 15 ---------------
> >  1 file changed, 15 deletions(-)
> > 
> > diff --git a/drivers/staging/android/sw_sync.h b/drivers/staging/android/sw_sync.h
> > index c87ae9e..a671595 100644
> > --- a/drivers/staging/android/sw_sync.h
> > +++ b/drivers/staging/android/sw_sync.h
> > @@ -39,21 +39,6 @@ struct sw_sync_timeline *sw_sync_timeline_create(const char *name);
> >  void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc);
> >  
> >  struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj, u32 value);
> > -#else
> > -static inline struct sw_sync_timeline *sw_sync_timeline_create(const char *name)
> > -{
> > -	return NULL;
> > -}
> > -
> > -static inline void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc)
> > -{
> > -}
> > -
> > -static inline struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj,
> > -						u32 value)
> > -{
> > -	return NULL;
> > -}
> >  #endif /* IS_ENABLED(CONFIG_SW_SYNC) */
> >  
> >  #endif /* _LINUX_SW_SYNC_H */
> 
> You just broke the build for systems that don't define CONFIG_SW_SYNC
> yet still call these functions :(

I had the same doubt so i tested it with CONFIG_SW_SYNC disabled in my
.config, but the build didn't break.
Is it because the only use of sw_sync_timeline_inc is from sw_sync.c
which will build only if CONFIG_SW_SYNC is defined?

regards
sudip

