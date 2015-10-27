X-GM-THRID: 6207450266150633472
X-Received: by 10.68.216.39 with SMTP id on7mr19180274pbc.12.1445924739284;
        Mon, 26 Oct 2015 22:45:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.102 with SMTP id jf6ls854962igb.5.gmail; Mon, 26 Oct
 2015 22:45:38 -0700 (PDT)
X-Received: by 10.66.255.3 with SMTP id am3mr19265642pad.30.1445924738927;
        Mon, 26 Oct 2015 22:45:38 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3946354pac.2.2015.10.26.22.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E921A8CC;
	Tue, 27 Oct 2015 05:45:37 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:45:35 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: r8723au: use kernel
 preferred style for commenting
Message-ID: <20151027054535.GB31187@kroah.com>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <2759bb6566b8295027e88324efb338b1e471a970.1445402009.git.amsfield22@gmail.com>
 <20151025024121.GB16589@kroah.com>
 <20151026031243.GB2104@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151026031243.GB2104@Ubuntu-D830>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 25, 2015 at 08:12:44PM -0700, Alison Schofield wrote:
> On Sat, Oct 24, 2015 at 07:41:21PM -0700, Greg KH wrote:
> > On Tue, Oct 20, 2015 at 11:10:41PM -0700, Alison Schofield wrote:
> > > Reworked comments per kernel coding style to improve readability.
> > > 
> > > Addresses checkpatch.pl:
> > > 	WARNING: Block comments use * on subsequent lines
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723au/core/rtw_cmd.c | 159 ++++++++++++++++---------------
> > >  1 file changed, 80 insertions(+), 79 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > index 6330933..4db4dfe 100644
> > > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > @@ -102,83 +102,76 @@ static struct cmd_hdl wlancmds[] = {
> > >  			     tdls_hdl23a)
> > >  };
> > >  
> > > -struct _cmd_callback	rtw_cmd_callback[] = {
> > > -	{GEN_CMD_CODE(_Read_MACREG), NULL}, /*0*/
> > > +struct _cmd_callback rtw_cmd_callback[] = {
> > > +	{GEN_CMD_CODE(_Read_MACREG), NULL},				/*0*/
> > >  	{GEN_CMD_CODE(_Write_MACREG), NULL},
> > >  	{GEN_CMD_CODE(_Read_BBREG), &rtw_getbbrfreg_cmdrsp_callback23a},
> > >  	{GEN_CMD_CODE(_Write_BBREG), NULL},
> > >  	{GEN_CMD_CODE(_Read_RFREG), &rtw_getbbrfreg_cmdrsp_callback23a},
> > > -	{GEN_CMD_CODE(_Write_RFREG), NULL}, /*5*/
> > > +	{GEN_CMD_CODE(_Write_RFREG), NULL},
> > >  	{GEN_CMD_CODE(_Read_EEPROM), NULL},
> > >  	{GEN_CMD_CODE(_Write_EEPROM), NULL},
> > >  	{GEN_CMD_CODE(_Read_EFUSE), NULL},
> > >  	{GEN_CMD_CODE(_Write_EFUSE), NULL},
> > > -
> > > -	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
> > > -	{GEN_CMD_CODE(_Write_CAM),	 NULL},
> > > +	{GEN_CMD_CODE(_Read_CAM), NULL},				/*10*/
> > > +	{GEN_CMD_CODE(_Write_CAM), NULL},
> > >  	{GEN_CMD_CODE(_setBCNITV), NULL},
> > >  	{GEN_CMD_CODE(_setMBIDCFG), NULL},
> > > -	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},  /*14*/
> > > -	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback}, /*15*/
> > > +	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},
> > > +	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback},
> > 
> > Why delete the comments?
> >
> The comments note the place in the list. I didn't delete them entirely,
> but replaced them with a marker every 10 items.  This was the second of
> these two lists and I tried to give them the same look n feel.  

But maybe items 14 and 15 were "special" and wanted to be found easier,
you don't know :)

Just leave them there please.

thanks,

greg k-h

