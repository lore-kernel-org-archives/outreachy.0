X-GM-THRID: 6207450266150633472
X-Received: by 10.50.61.234 with SMTP id t10mr19304615igr.4.1445924690913;
        Mon, 26 Oct 2015 22:44:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.109 with SMTP id j100ls3781395qge.57.gmail; Mon, 26 Oct
 2015 22:44:50 -0700 (PDT)
X-Received: by 10.31.170.17 with SMTP id t17mr16295621vke.2.1445924690420;
        Mon, 26 Oct 2015 22:44:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3945976pac.2.2015.10.26.22.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 38252898;
	Tue, 27 Oct 2015 05:44:49 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:44:46 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: r8723au: break
 parameter list at separators and align to open braces
Message-ID: <20151027054446.GA31187@kroah.com>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <d49b2db25364b18631d33f0a0e27d5396ae20f79.1445402009.git.amsfield22@gmail.com>
 <20151025024029.GA16589@kroah.com>
 <20151026030743.GA2104@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151026030743.GA2104@Ubuntu-D830>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 25, 2015 at 08:07:44PM -0700, Alison Schofield wrote:
> On Sat, Oct 24, 2015 at 07:40:29PM -0700, Greg KH wrote:
> > On Tue, Oct 20, 2015 at 11:01:58PM -0700, Alison Schofield wrote:
> > > Improve readability by aligning the struct cmd_hdl wlancmds[] to fit
> > > within 80 chars and cleaning up the adjacent index comments.
> > > 
> > > Addresses checkpatch.pl WARNING: line over 80 characters
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723au/core/rtw_cmd.c | 64 +++++++++++++++++++-------------
> > >  1 file changed, 38 insertions(+), 26 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > index 46aea16..c3579ac 100644
> > > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > > @@ -22,7 +22,7 @@
> > >  #include <rtw_sreset.h>
> > >  
> > >  static struct cmd_hdl wlancmds[] = {
> > > -	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
> > > +	GEN_DRV_CMD_HANDLER(0, NULL)					/*0*/
> > >  	GEN_DRV_CMD_HANDLER(0, NULL)
> > >  	GEN_DRV_CMD_HANDLER(0, NULL)
> > >  	GEN_DRV_CMD_HANDLER(0, NULL)
> > > @@ -32,18 +32,26 @@ static struct cmd_hdl wlancmds[] = {
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > > -	GEN_MLME_EXT_HANDLER(0, NULL) /*10*/
> > > +	GEN_MLME_EXT_HANDLER(0, NULL)					/*10*/
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), join_cmd_hdl23a) /*14*/
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm), disconnect_hdl23a)
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), createbss_hdl23a)
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm), setopmode_hdl23a)
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm), sitesurvey_cmd_hdl23a) /*18*/
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm), setauth_hdl23a)
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm), setkey_hdl23a) /*20*/
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm), set_stakey_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
> > > +			     join_cmd_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm),
> > > +			     disconnect_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
> > > +			     createbss_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm),
> > > +			     setopmode_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm),
> > > +			     sitesurvey_cmd_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm),
> > > +			     setauth_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm),		/*20*/
> > > +			     setkey_hdl23a)
> > > +	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm),
> > > +			     set_stakey_hdl23a)
> > 
> > 
> > This seems harder to read to me than before, how about you?
> >
> It does look worse in the diff, but when I'm scanning the entire 62 item
> list, keeping the items to the left and the index comments to the right
> seemed to make it easier to scan and find the item I want. (A maintainer
> probably wouldn't be reading this list top to bottom.)
> 
> Is it appropriate for me to ask reviewers (you) to apply the patch to
> review it?  It seems there is not always enough context in the diff.

There's enough context, we can read it :)

I think one-line-per-entry here is just fine, no need to change it at
all, sorry.

thanks,

greg k-h

