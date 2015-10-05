X-GM-THRID: 6202235040430030848
X-Received: by 10.107.25.201 with SMTP id 192mr29791022ioz.21.1444081131375;
        Mon, 05 Oct 2015 14:38:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.34 with SMTP id c2ls654888igt.32.gmail; Mon, 05 Oct 2015
 14:38:50 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr27531934ioa.6.1444081130853;
        Mon, 05 Oct 2015 14:38:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si3952925pbb.0.2015.10.05.14.38.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 14:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so47514960pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 14:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=v7hXb23d4OYOPX1wk1CiP7KS+6EnIKTHODvsusaNtcU=;
        b=XfrzjgRTyMDfEn+c5rzBhLiiz1u9XZDlj0oCvyo4lQy/3BoyQ+hsfh6NRWcEqwGHXB
         dgWoN1gzpgZuLMy0wRzGZUjyBnLxq49RVZt5iyNHl5pqX2O8nW9Asa9jPDL9SCRq+OEp
         cssilcszt5mV4w8xy9CXEjA+Yxa8rfmN4vnDiTa6rd7dYG0mTjqNcGYlDRSJFs30ZCpR
         xxLU/3pDjkRLv8Sd+LKgP2bajMD7ytj1G5YAySEmpd4e2ONMUMWYsdyyo5SK5820Po4F
         VEipKZ0PyTs6Ac9EiTrsTIIZDkr5kLdrtsNO4yLtH2NVlWz8yWFwajrikFjZXSgDr3Yi
         Dfxw==
X-Received: by 10.68.197.196 with SMTP id iw4mr42336042pbc.153.1444081130738;
        Mon, 05 Oct 2015 14:38:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id d2sm29589956pat.24.2015.10.05.14.38.50
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 14:38:50 -0700 (PDT)
Date: Mon, 5 Oct 2015 14:38:49 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test
 warnings
Message-ID: <20151005213849.GA3566@Ubuntu-D830>
References: <20151005183935.GA3350@Ubuntu-D830>
 <alpine.DEB.2.10.1510052136480.2608@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510052136480.2608@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 05, 2015 at 09:38:28PM +0100, Julia Lawall wrote:
> On Mon, 5 Oct 2015, Alison Schofield wrote:
> 
> > This patch fixes multiple instances of the checkpatch.pl warning:
> >
> > WARNING: Comparisons should place the constant on the right side of the
> > test
> 
> Thanks for the patch, but try to avoid using "fix" in your commit message.
> Say instead what you have done to do the fix.  Here, you could say
> something like "Move constant to the right side of a comparison operator,
> as suggested by checkpatch".
> 
> julia

Thanks for the quick review and I will check that on future patches.
Do I need to amend and resend this one?

alison
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index 143be0f..528e9f5 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -140,7 +140,7 @@ static inline void handle_pairwise_key(struct sta_info *psta,
> >  static inline void handle_group_key(struct ieee_param *param,
> >  				    struct _adapter *padapter)
> >  {
> > -	if (0 < param->u.crypt.idx &&
> > +	if (param->u.crypt.idx > 0 &&
> >  	    param->u.crypt.idx < 3) {
> >  		/* group key idx is 1 or 2 */
> >  		memcpy(padapter->securitypriv.XGrpKey[param->u.crypt.
> > @@ -957,7 +957,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
> >  	if (IS_ERR(ext))
> >  		return PTR_ERR(ext);
> >
> > -	if (0 == strcasecmp(ext, "RSSI")) {
> > +	if (strcasecmp(ext, "RSSI") == 0) {
> >  		/*Return received signal strength indicator in -db for */
> >  		/* current AP */
> >  		/*<ssid> Rssi xx */
> > @@ -974,7 +974,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
> >  		} else {
> >  			sprintf(ext, "OK");
> >  		}
> > -	} else if (0 == strcasecmp(ext, "LINKSPEED")) {
> > +	} else if (strcasecmp(ext, "LINKSPEED") == 0) {
> >  		/*Return link speed in MBPS */
> >  		/*LinkSpeed xx */
> >  		union iwreq_data wrqd;
> > @@ -982,30 +982,30 @@ static int r871x_wx_set_priv(struct net_device *dev,
> >  		int mbps;
> >
> >  		ret_inner = r8711_wx_get_rate(dev, info, &wrqd, extra);
> > -		if (0 != ret_inner)
> > +		if (ret_inner != 0)
> >  			mbps = 0;
> >  		else
> >  			mbps = wrqd.bitrate.value / 1000000;
> >  		sprintf(ext, "LINKSPEED %d", mbps);
> > -	} else if (0 == strcasecmp(ext, "MACADDR")) {
> > +	} else if (strcasecmp(ext, "MACADDR") == 0) {
> >  		/*Return mac address of the station */
> >  		/* Macaddr = xx:xx:xx:xx:xx:xx */
> >  		sprintf(ext, "MACADDR = %pM", dev->dev_addr);
> > -	} else if (0 == strcasecmp(ext, "SCAN-ACTIVE")) {
> > +	} else if (strcasecmp(ext, "SCAN-ACTIVE") == 0) {
> >  		/*Set scan type to active */
> >  		/*OK if successful */
> >  		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> >
> >  		pmlmepriv->passive_mode = 1;
> >  		sprintf(ext, "OK");
> > -	} else if (0 == strcasecmp(ext, "SCAN-PASSIVE")) {
> > +	} else if (strcasecmp(ext, "SCAN-PASSIVE") == 0) {
> >  		/*Set scan type to passive */
> >  		/*OK if successful */
> >  		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> >
> >  		pmlmepriv->passive_mode = 0;
> >  		sprintf(ext, "OK");
> > -	} else if (0 == strncmp(ext, "DCE-E", 5)) {
> > +	} else if (strncmp(ext, "DCE-E", 5) == 0) {
> >  		/*Set scan type to passive */
> >  		/*OK if successful */
> >  		r8712_disconnectCtrlEx_cmd(padapter
> > @@ -1015,7 +1015,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
> >  			, 5000 /*u32 firstStageTO */
> >  		);
> >  		sprintf(ext, "OK");
> > -	} else if (0 == strncmp(ext, "DCE-D", 5)) {
> > +	} else if (strncmp(ext, "DCE-D", 5) == 0) {
> >  		/*Set scan type to passive */
> >  		/*OK if successfu */
> >  		r8712_disconnectCtrlEx_cmd(padapter
> > @@ -1454,7 +1454,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
> >  		if (ht_cap == true) {
> >  			if (mcs_rate & 0x8000 /* MCS15 */
> >  				&&
> > -				RTL8712_RF_2T2R == rf_type)
> > +				rf_type == RTL8712_RF_2T2R)
> >  				max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
> >  					    270) : ((short_GI) ? 144 : 130);
> >  			else /* default MCS7 */
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151005183935.GA3350%40Ubuntu-D830.
> > For more options, visit https://groups.google.com/d/optout.
> >

