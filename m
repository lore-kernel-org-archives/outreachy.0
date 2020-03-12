X-GM-THRID: 6803231056018276352
X-Received: by 2002:a17:906:af6d:: with SMTP id os13mr6557824ejb.23.1584014907072;
        Thu, 12 Mar 2020 05:08:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1a2c:: with SMTP id be12ls3692791edb.6.gmail; Thu,
 12 Mar 2020 05:08:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vug54ni9MlSKnNYOdzPd3sOAFUiNMI8dOK2WInTJwVMeeKAjBn2Kbeg2zeEgeVr4IJw6+qO
X-Received: by 2002:a05:6402:17c9:: with SMTP id s9mr7582709edy.257.1584014905984;
        Thu, 12 Mar 2020 05:08:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584014905; cv=none;
        d=google.com; s=arc-20160816;
        b=ThBRi++hfoinGITzYeaXP4i/PTOMuST54wkarNgeRdG2KC1OhtLCC/FveWPM6id4N7
         j3DlAYQty+9SuJHI7gOZVAx1u5Z78drOTpsaYgoCOJ9xPlz0RyPR1UJfv2jA9JumFFY4
         pm04PMjrNMUzRwigG/9uxsD7Hq2Y7AygOQMXDWdVTw1tF38n4g+gnebPPaAKTSPmvByl
         nYHxWeV1APG3dKzzwZ4MLZ8BmMsxNAusOMXeiECluiELVDiqiTRQT3Qtkg03VUWhePvW
         G/s/5Eg3aT8Qj+a3It6EGbahyZeuMZfQtwFBWwxngZQTRL92g/4bZ4QJfiYffiKcJ93t
         dONg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=68bgwf98Oi9rUYGmPHbF2N+5xwG9EC/djM+1EvD8dQg=;
        b=X35Fq5XOyE6RuJaLa8rfSkWDVVaQV07IWjeFtMSsdXQ8e2+bhUoGC9FLfQT9o3B6rt
         +VLP7yK4RWg2L1CaDXL7V5cBluFUpnT8EiGkCXdOv0yq7erSsGwVYXWrKgQsLbnTeKNW
         FRrlhFgjPo+bXZml+W4VItTDp/asIP3ESEfi82PKKef/w80m2lrp1OFUkaoJiIl/0e/8
         HmH35E/pBcRckDPFxFxDOb3g2GrnXjNhcLKmV9ZgJJcwRLBO5ROu3MjmT8e3AhCdhhlI
         9K4IN2wgI6gtNie7H5PB7I0751BVifwVlUK2rH2cIbrWDznGylPpwfW25al5daDoqBJY
         9SGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e19si102208edr.3.2020.03.12.05.08.25
        for <outreachy-kernel@googlegroups.com>;
        Thu, 12 Mar 2020 05:08:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 13077 invoked from network); 12 Mar 2020 12:08:24 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.246.223.143)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 12 Mar 2020 12:08:24 -0000
Date: Thu, 12 Mar 2020 17:38:18 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: rtl8712: Fix for long lines in Kconfig help
Message-ID: <20200312120817.GB5010@tulip.local>
References: <20200312081044.GA3742@tulip.local>
 <20200312115409.GA224615@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312115409.GA224615@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 12, 2020 at 12:54:09PM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 01:40:55PM +0530, R Veera Kumar wrote:
> > Fixes two long line in Kconfig help.
> > Found using checkpatch.pl
> > 
> > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > ---
> >  drivers/staging/rtl8712/Kconfig | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
> > index b6dcda77db1f..678bbeace823 100644
> > --- a/drivers/staging/rtl8712/Kconfig
> > +++ b/drivers/staging/rtl8712/Kconfig
> > @@ -6,13 +6,16 @@ config R8712U
> >  	select WEXT_PRIV
> >  	select FW_LOADER
> >  	help
> > -	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> > +	    This option adds the Realtek RTL8712 USB device such as the
> > +	    D-Link DWA-130.
> > +
> >  	    If built as a module, it will be called r8712u.
> >  
> >  config R8712_TX_AGGR
> >  	bool "Realtek RTL8712U Transmit Aggregation code"
> >  	depends on R8712U && BROKEN
> >  	help
> > -	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
> > +	    This option provides transmit aggregation for the
> > +	    Realtek RTL8712 USB device.
> >  
> 
> Why did you pick two different line lengths to wrap at for these two
> options?
> 
> Please be consistent.
> 

So should I resend the patch.

> greg k-h

Regards,
Veera

