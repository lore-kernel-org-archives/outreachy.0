X-GM-THRID: 9691594752000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,79a5adea40e67c48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr3291762lbj.23.1427375662017;
        Thu, 26 Mar 2015 06:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.168 with SMTP id 8ls265753lan.59.gmail; Thu, 26 Mar 2015
 06:14:21 -0700 (PDT)
X-Received: by 10.152.19.67 with SMTP id c3mr3338799lae.7.1427375661496;
        Thu, 26 Mar 2015 06:14:21 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com. [209.85.217.169])
        by gmr-mx.google.com with ESMTPS id b6si339114lbc.1.2015.03.26.06.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 06:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.217.169 as permitted sender) client-ip=209.85.217.169;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.217.169 as permitted sender) smtp.mail=marianne@masu.dk
Received: by lbbsy1 with SMTP id sy1so40464828lbb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 06:14:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=brwTJpQ6Y/DJ7bHBPYEgyMu21XclrIL3iTG6MYbH5Uo=;
        b=NDyYVJBHpiOA2Hor5+1TfH/U0MA+Bp3zSkEbP2IJw09ybZVtrheI1B0Fx3bJLUVd+Y
         s7HILY+dWtV3ppfukZmbdgSsAGp6MWOgFjmdu5TWvgYylsiw7PTgKW1tvAZWcqLpcdsC
         KW7ER5kduQxNX7qsqNDEW5JG8i2rbELSUadyflc/3VRzS/PoJp3nxY2eS8AUveHpQ6Yw
         2Yg+PmNZG++qbkAfr9R03/GqzbolxWklM7coOd9+DnXkzamBfWtl1zXUjXvMHdUa9cDY
         jRZAMJ0mZVI4OUg1VJJVk0YacjSw0esEKB5m0zSVe5SF5AqV2tDoOGMO05IFd1TwD03d
         e6nA==
X-Gm-Message-State: ALoCoQlg3TNF3Vq+jAAdr8XtKx4SHXs/Yzp4/fpGWxU2wFdg/Y8wmQRF3a0Es6d4p8UUh9ADPdb2
X-Received: by 10.112.40.33 with SMTP id u1mr12980347lbk.96.1427375661252;
        Thu, 26 Mar 2015 06:14:21 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id j7sm1246753lae.9.2015.03.26.06.14.19
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 06:14:20 -0700 (PDT)
Date: Thu, 26 Mar 2015 02:33:22 +0100
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace printk
 with netdev_info
Message-ID: <20150326013322.GA3360@debianvm>
References: <20150323180424.GA2636@debianvm>
 <20150323214302.GA24016@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150323214302.GA24016@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Mar 23, 2015 at 10:43:02PM +0100, Greg KH wrote:
> On Mon, Mar 23, 2015 at 07:04:24PM +0100, Marianne Moeller Knudsen wrote:
> > Replace printk(KERN_INFO...) by netdev_info for more uniform error
> > reporting. Issue found by checkpatch.
> > 
> > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > ---
> >  drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > index c51f7e0..949cba4 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > @@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
> >  
> >  	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
> >  		if (memcmp(pTS->Addr, Addr, 6) == 0) {
> > -			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
> > +			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
> >  			RemoveTsEntry(ieee, pTS, TX_DIR);
> >  			list_del_init(&pTS->List);
> >  			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);
> 
> Someone already sent this patch before you did :(

Out of curiosity: All the other prints in this file uses RTLLIB_DEBUG. Could it be assumed
that they could be used here as well? Something like RTLLIB_DEBUG(RLTLIB_DL_TS,
....)?

