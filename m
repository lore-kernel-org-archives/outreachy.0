X-GM-THRID: 9691594752000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,79a5adea40e67c48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.18.67 with SMTP id u3mr16950613obd.38.1427376475495;
        Thu, 26 Mar 2015 06:27:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls765650qgi.34.gmail; Thu, 26 Mar 2015
 06:27:55 -0700 (PDT)
X-Received: by 10.236.24.228 with SMTP id x64mr16200968yhx.26.1427376475240;
        Thu, 26 Mar 2015 06:27:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s16si1445730ign.0.2015.03.26.06.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 06:27:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,471,1422918000"; 
   d="scan'208";a="107246983"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Mar 2015 14:27:50 +0100
Date: Thu, 26 Mar 2015 14:27:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Marianne Moeller Knudsen <marianne@masu.dk>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace printk
 with netdev_info
In-Reply-To: <20150326013322.GA3360@debianvm>
Message-ID: <alpine.DEB.2.10.1503261426550.2661@hadrien>
References: <20150323180424.GA2636@debianvm> <20150323214302.GA24016@kroah.com> <20150326013322.GA3360@debianvm>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 26 Mar 2015, Marianne Moeller Knudsen wrote:

> On Mon, Mar 23, 2015 at 10:43:02PM +0100, Greg KH wrote:
> > On Mon, Mar 23, 2015 at 07:04:24PM +0100, Marianne Moeller Knudsen wrote:
> > > Replace printk(KERN_INFO...) by netdev_info for more uniform error
> > > reporting. Issue found by checkpatch.
> > >
> > > Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> > > ---
> > >  drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > index c51f7e0..949cba4 100644
> > > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > @@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
> > >
> > >  	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
> > >  		if (memcmp(pTS->Addr, Addr, 6) == 0) {
> > > -			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
> > > +			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
> > >  			RemoveTsEntry(ieee, pTS, TX_DIR);
> > >  			list_del_init(&pTS->List);
> > >  			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);
> >
> > Someone already sent this patch before you did :(
>
> Out of curiosity: All the other prints in this file uses RTLLIB_DEBUG. Could it be assumed
> that they could be used here as well? Something like RTLLIB_DEBUG(RLTLIB_DL_TS,
> ....)?

Your goal should be to get rid of RTLLIB_DEBUG, and replace them with
standard kernel functions (dev_err, etc).

julia

