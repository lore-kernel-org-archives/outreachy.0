X-GM-THRID: 9691594752000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,79a5adea40e67c48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.90.175 with SMTP id bx15mr5724130wib.3.1427384217596;
        Thu, 26 Mar 2015 08:36:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.163.36 with SMTP id yf4ls260921lab.43.gmail; Thu, 26 Mar
 2015 08:36:57 -0700 (PDT)
X-Received: by 10.112.118.203 with SMTP id ko11mr3461872lbb.15.1427384217130;
        Thu, 26 Mar 2015 08:36:57 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com. [209.85.217.172])
        by gmr-mx.google.com with ESMTPS id b6si371809lbc.1.2015.03.26.08.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 08:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.217.172 as permitted sender) client-ip=209.85.217.172;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.217.172 as permitted sender) smtp.mail=marianne@masu.dk
Received: by lbcmq2 with SMTP id mq2so43849998lbc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 08:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=yQOhDPbS9pa0otB8LccAEdy0l/4Tt20Wp/7jxTwGOFY=;
        b=L9Z4NrqlVDyNgn8KghApjTIm+8p9ATLBpu32k0Td21GcI1R4mAZCPutY+zMPEvvTIA
         lMCtYyBz9DYfDoPiU4e7lzr5uvAGeyEnl6uX2FgTE+o8Y244H3H65vwg5R1IxRcLXY+R
         fCN7rvhJPjqMnfFfPNh34+9rqxTrBEXfBQcSjHxZ4A0vtTaISF3cOOnnoqSrIgsyn0VL
         xC8HT0XjREpPSQtgjEhsdrQRnSJ+Q9SQaMeihNlM0gjy9AypmGRpMZF2Sfc638QkCA6h
         m7sOhaedg7PCKh3TEMZJNM1i9xv8A7E6hyhO7X7NZCI7N5BbAjmBYxaK7t8MlXoRbbtG
         80lQ==
X-Gm-Message-State: ALoCoQkvUSQtDO7itjFaCt/NohuQqjY5teLnHx2sIxVpjrlcHmN5aMEKkIUHYjV8lAObUBG5uSDR
X-Received: by 10.112.50.38 with SMTP id z6mr14086853lbn.122.1427384216961;
        Thu, 26 Mar 2015 08:36:56 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id o2sm1009544lbs.4.2015.03.26.08.36.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 08:36:56 -0700 (PDT)
Date: Thu, 26 Mar 2015 04:55:58 +0100
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace printk
 with netdev_info
Message-ID: <20150326035558.GA3558@debianvm>
References: <20150323180424.GA2636@debianvm>
 <20150323214302.GA24016@kroah.com>
 <20150326013322.GA3360@debianvm>
 <alpine.DEB.2.10.1503261426550.2661@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1503261426550.2661@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Mar 26, 2015 at 02:27:38PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 26 Mar 2015, Marianne Moeller Knudsen wrote:
> 
> > On Mon, Mar 23, 2015 at 10:43:02PM +0100, Greg KH wrote:
> > > On Mon, Mar 23, 2015 at 07:04:24PM +0100, Marianne Moeller Knudsen wrote:
> > > > Replace printk(KERN_INFO...) by netdev_info for more uniform error
> > > > reporting. Issue found by checkpatch.
> > > >
> > > > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > > > ---
> > > >  drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > > index c51f7e0..949cba4 100644
> > > > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > > @@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
> > > >
> > > >  	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
> > > >  		if (memcmp(pTS->Addr, Addr, 6) == 0) {
> > > > -			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
> > > > +			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
> > > >  			RemoveTsEntry(ieee, pTS, TX_DIR);
> > > >  			list_del_init(&pTS->List);
> > > >  			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);
> > >
> > > Someone already sent this patch before you did :(
> >
> > Out of curiosity: All the other prints in this file uses RTLLIB_DEBUG. Could it be assumed
> > that they could be used here as well? Something like RTLLIB_DEBUG(RLTLIB_DL_TS,
> > ....)?
> 
> Your goal should be to get rid of RTLLIB_DEBUG, and replace them with
> standard kernel functions (dev_err, etc).
> 
> julia

Aha yes duly noted.

