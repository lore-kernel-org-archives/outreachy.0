X-GM-THRID: 6207450266150633472
X-Received: by 10.182.89.129 with SMTP id bo1mr27489441obb.4.1445828866360;
        Sun, 25 Oct 2015 20:07:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.21.7 with SMTP id r7ls734484ige.4.canary; Sun, 25 Oct 2015
 20:07:46 -0700 (PDT)
X-Received: by 10.66.248.9 with SMTP id yi9mr5334964pac.43.1445828866032;
        Sun, 25 Oct 2015 20:07:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si3364686pbb.2.2015.10.25.20.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 20:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so173257496pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 20:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=evip1YmF6je7rFl/pjMjWvhoPAwL70z4gKwbr5UhhnU=;
        b=x/ywCLP2onyPDWKPgNPXeYpoPvs8l8rXV9IVDOTJC5e5PQnxa41Svfkza03yeyF9GV
         nBEmazK6QzzAjldn7uxAjQQSr0ZxQ8IG4oMv8i+WHp5O1qfwMm0tnYJki4jFuCdCtfaW
         IVJVfV7jZjhAdISzzxvFzG9iZPomws12NvAV/ibHZn8ooVukcmYlF9BfYrmk9ETi5AVj
         yc9pC29mEDOV1jMMX12Flxegll7ucoaDD+HgTCDVsYGLqP0q+LahMOfpj4C8R+d0C4UB
         9RtXc9uARD5mZlRUyF3ZNF0JIN2jpLT1bwv4C7Yr/0pvAqb4/7A/OxHvJxLkRlLlhw/C
         +RAA==
X-Received: by 10.68.179.101 with SMTP id df5mr19704793pbc.73.1445828865891;
        Sun, 25 Oct 2015 20:07:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id gv1sm30806355pbc.38.2015.10.25.20.07.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 20:07:45 -0700 (PDT)
Date: Sun, 25 Oct 2015 20:07:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: r8723au: break
 parameter list at separators and align to open braces
Message-ID: <20151026030743.GA2104@Ubuntu-D830>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <d49b2db25364b18631d33f0a0e27d5396ae20f79.1445402009.git.amsfield22@gmail.com>
 <20151025024029.GA16589@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151025024029.GA16589@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 24, 2015 at 07:40:29PM -0700, Greg KH wrote:
> On Tue, Oct 20, 2015 at 11:01:58PM -0700, Alison Schofield wrote:
> > Improve readability by aligning the struct cmd_hdl wlancmds[] to fit
> > within 80 chars and cleaning up the adjacent index comments.
> > 
> > Addresses checkpatch.pl WARNING: line over 80 characters
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8723au/core/rtw_cmd.c | 64 +++++++++++++++++++-------------
> >  1 file changed, 38 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > index 46aea16..c3579ac 100644
> > --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> > @@ -22,7 +22,7 @@
> >  #include <rtw_sreset.h>
> >  
> >  static struct cmd_hdl wlancmds[] = {
> > -	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
> > +	GEN_DRV_CMD_HANDLER(0, NULL)					/*0*/
> >  	GEN_DRV_CMD_HANDLER(0, NULL)
> >  	GEN_DRV_CMD_HANDLER(0, NULL)
> >  	GEN_DRV_CMD_HANDLER(0, NULL)
> > @@ -32,18 +32,26 @@ static struct cmd_hdl wlancmds[] = {
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > -	GEN_MLME_EXT_HANDLER(0, NULL) /*10*/
> > +	GEN_MLME_EXT_HANDLER(0, NULL)					/*10*/
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> >  	GEN_MLME_EXT_HANDLER(0, NULL)
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), join_cmd_hdl23a) /*14*/
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm), disconnect_hdl23a)
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex), createbss_hdl23a)
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm), setopmode_hdl23a)
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm), sitesurvey_cmd_hdl23a) /*18*/
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm), setauth_hdl23a)
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm), setkey_hdl23a) /*20*/
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm), set_stakey_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
> > +			     join_cmd_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct disconnect_parm),
> > +			     disconnect_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct wlan_bssid_ex),
> > +			     createbss_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct setopmode_parm),
> > +			     setopmode_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct sitesurvey_parm),
> > +			     sitesurvey_cmd_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct setauth_parm),
> > +			     setauth_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct setkey_parm),		/*20*/
> > +			     setkey_hdl23a)
> > +	GEN_MLME_EXT_HANDLER(sizeof(struct set_stakey_parm),
> > +			     set_stakey_hdl23a)
> 
> 
> This seems harder to read to me than before, how about you?
>
It does look worse in the diff, but when I'm scanning the entire 62 item
list, keeping the items to the left and the index comments to the right
seemed to make it easier to scan and find the item I want. (A maintainer
probably wouldn't be reading this list top to bottom.)

Is it appropriate for me to ask reviewers (you) to apply the patch to
review it?  It seems there is not always enough context in the diff.

alison


