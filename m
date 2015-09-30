X-GM-THRID: 6200080718557609984
X-Received: by 10.180.72.68 with SMTP id b4mr320354wiv.2.1443590451803;
        Tue, 29 Sep 2015 22:20:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.71 with SMTP id i7ls21490lai.11.gmail; Tue, 29 Sep 2015
 22:20:50 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr206280lbp.24.1443590450973;
        Tue, 29 Sep 2015 22:20:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k7si940976wif.1.2015.09.29.22.20.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 22:20:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,611,1437429600"; 
   d="scan'208";a="149058867"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 07:20:50 +0200
Date: Wed, 30 Sep 2015 07:20:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: fix block comment
 indentation
In-Reply-To: <1443568771-8819-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1509300720040.1984@localhost6.localdomain6>
References: <1443568771-8819-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Ioana Ciornei wrote:

> Update indentation of block comments to follow linux coding style

I think that the big ---- lines are not really in the Linux coding style 
either.  Look at some existing examples of comments before functions in 
the non-staging directories of the kernel code.

julia

> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 111 ++++++++++++++++++++++++------------
>  1 file changed, 74 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 0329c52..267faf8 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -150,7 +150,8 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_open(wlandevice_t *wlandev)
>  {
>  	/* We don't currently have to do anything else.
> @@ -184,7 +185,8 @@ static int prism2sta_open(wlandevice_t *wlandev)
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_close(wlandevice_t *wlandev)
>  {
>  	/* We don't currently have to do anything else.
> @@ -212,7 +214,8 @@ static int prism2sta_close(wlandevice_t *wlandev)
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_reset(wlandevice_t *wlandev)
>  {
>  }
> @@ -237,7 +240,8 @@ static void prism2sta_reset(wlandevice_t *wlandev)
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
>  			     union p80211_hdr *p80211_hdr,
>  			     struct p80211_metawep *p80211_wep)
> @@ -276,7 +280,8 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
>  {
>  	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
> @@ -406,7 +411,8 @@ static int prism2sta_mlmerequest(wlandevice_t *wlandev, struct p80211msg *msg)
>  * Call context:
>  *	process thread  (usually)
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
>  {
>  	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
> @@ -579,7 +585,8 @@ u32 prism2sta_ifstate(wlandevice_t *wlandev, u32 ifstate)
>  *
>  * Call context:
>  *	Either.
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  {
>  	int result = 0;
> @@ -676,8 +683,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, modem interface supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, modem interface supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
>  	hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
>  	hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
> @@ -699,8 +708,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, controller interface supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, controller interface supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
>  	hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
>  	hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
> @@ -722,8 +733,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, primary firmware supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, primary firmware supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_sup_pri.role = le16_to_cpu(hw->cap_sup_pri.role);
>  	hw->cap_sup_pri.id = le16_to_cpu(hw->cap_sup_pri.id);
>  	hw->cap_sup_pri.variant = le16_to_cpu(hw->cap_sup_pri.variant);
> @@ -745,8 +758,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, station firmware supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, station firmware supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_sup_sta.role = le16_to_cpu(hw->cap_sup_sta.role);
>  	hw->cap_sup_sta.id = le16_to_cpu(hw->cap_sup_sta.id);
>  	hw->cap_sup_sta.variant = le16_to_cpu(hw->cap_sup_sta.variant);
> @@ -776,8 +791,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, primary f/w actor, CFI supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, primary f/w actor, CFI supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_act_pri_cfi.role = le16_to_cpu(hw->cap_act_pri_cfi.role);
>  	hw->cap_act_pri_cfi.id = le16_to_cpu(hw->cap_act_pri_cfi.id);
>  	hw->cap_act_pri_cfi.variant = le16_to_cpu(hw->cap_act_pri_cfi.variant);
> @@ -799,8 +816,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, station f/w actor, CFI supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, station f/w actor, CFI supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_act_sta_cfi.role = le16_to_cpu(hw->cap_act_sta_cfi.role);
>  	hw->cap_act_sta_cfi.id = le16_to_cpu(hw->cap_act_sta_cfi.id);
>  	hw->cap_act_sta_cfi.variant = le16_to_cpu(hw->cap_act_sta_cfi.variant);
> @@ -822,8 +841,10 @@ static int prism2sta_getcardinfo(wlandevice_t *wlandev)
>  		goto failed;
>  	}
>  
> -	/* get all the Compatibility range, station f/w actor, MFI supplier
> -	   fields in byte order */
> +	/*
> +	 * get all the Compatibility range, station f/w actor, MFI supplier
> +	 * fields in byte order
> +	 */
>  	hw->cap_act_sta_mfi.role = le16_to_cpu(hw->cap_act_sta_mfi.role);
>  	hw->cap_act_sta_mfi.id = le16_to_cpu(hw->cap_act_sta_mfi.id);
>  	hw->cap_act_sta_mfi.variant = le16_to_cpu(hw->cap_act_sta_mfi.variant);
> @@ -901,7 +922,8 @@ done:
>  *
>  * Call context:
>  *	process thread
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static int prism2sta_globalsetup(wlandevice_t *wlandev)
>  {
>  	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
> @@ -951,7 +973,8 @@ exit:
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_handover(wlandevice_t *wlandev,
>  				   hfa384x_InfFrame_t *inf)
>  {
> @@ -974,7 +997,8 @@ static void prism2sta_inf_handover(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_tallies(wlandevice_t *wlandev,
>  				  hfa384x_InfFrame_t *inf)
>  {
> @@ -1020,7 +1044,8 @@ static void prism2sta_inf_tallies(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
>  				      hfa384x_InfFrame_t *inf)
>  {
> @@ -1076,7 +1101,8 @@ static void prism2sta_inf_scanresults(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
>  					  hfa384x_InfFrame_t *inf)
>  {
> @@ -1117,7 +1143,8 @@ static void prism2sta_inf_hostscanresults(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_chinforesults(wlandevice_t *wlandev,
>  					hfa384x_InfFrame_t *inf)
>  {
> @@ -1430,7 +1457,8 @@ void prism2sta_processing_defer(struct work_struct *data)
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
>  				     hfa384x_InfFrame_t *inf)
>  {
> @@ -1458,7 +1486,8 @@ static void prism2sta_inf_linkstatus(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
>  				      hfa384x_InfFrame_t *inf)
>  {
> @@ -1519,7 +1548,8 @@ static void prism2sta_inf_assocstatus(wlandevice_t *wlandev,
>  * Call context:
>  *	interrupt
>  *
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_authreq(wlandevice_t *wlandev,
>  				  hfa384x_InfFrame_t *inf)
>  {
> @@ -1708,7 +1738,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
>  				    hfa384x_InfFrame_t *inf)
>  {
> @@ -1733,7 +1764,8 @@ static void prism2sta_inf_psusercnt(wlandevice_t *wlandev,
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
>  {
>  	inf->infotype = le16_to_cpu(inf->infotype);
> @@ -1800,7 +1832,8 @@ void prism2sta_ev_info(wlandevice_t *wlandev, hfa384x_InfFrame_t *inf)
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
>  {
>  	pr_debug("TxExc status=0x%x.\n", status);
> @@ -1821,7 +1854,8 @@ void prism2sta_ev_txexc(wlandevice_t *wlandev, u16 status)
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
>  {
>  	pr_debug("Tx Complete, status=0x%04x\n", status);
> @@ -1844,7 +1878,8 @@ void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
>  {
>  	p80211netdev_rx(wlandev, skb);
> @@ -1865,7 +1900,8 @@ void prism2sta_ev_rx(wlandevice_t *wlandev, struct sk_buff *skb)
>  *
>  * Call context:
>  *	interrupt
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  void prism2sta_ev_alloc(wlandevice_t *wlandev)
>  {
>  	netif_wake_queue(wlandev->netdev);
> @@ -1889,7 +1925,8 @@ void prism2sta_ev_alloc(wlandevice_t *wlandev)
>  * Call context:
>  *	process thread
>  *
> -----------------------------------------------------------------*/
> +----------------------------------------------------------------
> +*/
>  static wlandevice_t *create_wlan(void)
>  {
>  	wlandevice_t *wlandev = NULL;
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443568771-8819-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

