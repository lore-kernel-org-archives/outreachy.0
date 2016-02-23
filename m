X-GM-THRID: 6252750007665950720
X-Received: by 10.28.225.8 with SMTP id y8mr2160095wmg.7.1456258839640;
        Tue, 23 Feb 2016 12:20:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.1 with SMTP id 1ls200831lfz.96.gmail; Tue, 23 Feb 2016
 12:20:38 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr4428461lbb.20.1456258838879;
        Tue, 23 Feb 2016 12:20:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si1186339wmd.0.2016.02.23.12.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:20:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,491,1449529200"; 
   d="scan'208";a="165749987"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 21:20:23 +0100
Date: Tue, 23 Feb 2016 21:20:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Drop useless
 initialisation
In-Reply-To: <20160218214356.GA8324@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602232116130.2040@localhost6.localdomain6>
References: <20160218214356.GA8324@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Feb 2016, Bhaktipriya Shridhar wrote:

> Removed initialisation of a varible if it is immediately reassigned.
> 
> Changes were made using Coccinelle.
> 
> @@
> type T;
> constant C;
> expression e;
> identifier i;
> @@
> T i
> - = C
> ;
> i = e;

This could be made a little safer (although less efficient) as follows:

@bad@
identifier i;
position p;
@@

i =@p <+...i...+>;

@@
type T;
constant C;
expression e;
identifier i;
position p != bad.p;
@@
T i
- = C
;
i =@p e;

The first rule (bad) detects any assignment that updates a variable in 
terms of its current value.  If it finds such an assignment, then it 
records the position of that assignment.  The next rule only transforms 
cases that do not satisfy the position recorded by bad.

You can also just check this issue by hand.

julia


> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 8 ++++----
>  drivers/staging/rtl8192e/rtl8192e/rtl_dm.c     | 2 +-
>  drivers/staging/rtl8192e/rtl819x_BAProc.c      | 6 +++---
>  drivers/staging/rtl8192e/rtllib_rx.c           | 2 +-
>  drivers/staging/rtl8192e/rtllib_softmac.c      | 2 +-
>  drivers/staging/rtl8192e/rtllib_softmac_wx.c   | 2 +-
>  6 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> index e9c4f97..ba64a4f 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
> @@ -680,7 +680,7 @@ static void _rtl92e_hwconfig(struct net_device *dev)
> 
>  	rtl92e_writeb(dev, BW_OPMODE, regBwOpMode);
>  	{
> -		u32 ratr_value = 0;
> +		u32 ratr_value;
> 
>  		ratr_value = regRATR;
>  		if (priv->rf_type == RF_1T2R)
> @@ -1000,7 +1000,7 @@ void rtl92e_link_change(struct net_device *dev)
>  	_rtl92e_update_msr(dev);
> 
>  	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
> -		u32 reg = 0;
> +		u32 reg;
> 
>  		reg = rtl92e_readl(dev, RCR);
>  		if (priv->rtllib->state == RTLLIB_LINKED) {
> @@ -1186,7 +1186,7 @@ void  rtl92e_fill_tx_desc(struct net_device *dev, struct tx_desc *pdesc,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	dma_addr_t mapping = pci_map_single(priv->pdev, skb->data, skb->len,
>  			 PCI_DMA_TODEVICE);
> -	struct tx_fwinfo_8190pci *pTxFwInfo = NULL;
> +	struct tx_fwinfo_8190pci *pTxFwInfo;
> 
>  	pTxFwInfo = (struct tx_fwinfo_8190pci *)skb->data;
>  	memset(pTxFwInfo, 0, sizeof(struct tx_fwinfo_8190pci));
> @@ -2235,7 +2235,7 @@ void rtl92e_disable_irq(struct net_device *dev)
> 
>  void rtl92e_clear_irq(struct net_device *dev)
>  {
> -	u32 tmp = 0;
> +	u32 tmp;
> 
>  	tmp = rtl92e_readl(dev, ISR);
>  	rtl92e_writel(dev, ISR, tmp);
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> index ef03242..b6b714d 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
> @@ -1875,7 +1875,7 @@ void rtl92e_dm_rf_pathcheck_wq(void *data)
>  				  struct r8192_priv,
>  				  rfpath_check_wq);
>  	struct net_device *dev = priv->rtllib->dev;
> -	u8 rfpath = 0, i;
> +	u8 rfpath, i;
> 
>  	rfpath = rtl92e_readb(dev, 0xc04);
> 
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index c04a020..c7fd1b1 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -189,7 +189,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
>  static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
>  				 struct ba_record *pBA)
>  {
> -	struct sk_buff *skb = NULL;
> +	struct sk_buff *skb;
> 
>  	skb = rtllib_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ);
> 
> @@ -204,7 +204,7 @@ static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
>  static void rtllib_send_ADDBARsp(struct rtllib_device *ieee, u8 *dst,
>  				 struct ba_record *pBA, u16 StatusCode)
>  {
> -	struct sk_buff *skb = NULL;
> +	struct sk_buff *skb;
> 
>  	skb = rtllib_ADDBA(ieee, dst, pBA, StatusCode, ACT_ADDBARSP);
>  	if (skb)
> @@ -217,7 +217,7 @@ static void rtllib_send_DELBA(struct rtllib_device *ieee, u8 *dst,
>  			      struct ba_record *pBA, enum tr_select TxRxSelect,
>  			      u16 ReasonCode)
>  {
> -	struct sk_buff *skb = NULL;
> +	struct sk_buff *skb;
> 
>  	skb = rtllib_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode);
>  	if (skb)
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index 37343ec..af64bd3 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -905,7 +905,7 @@ static size_t rtllib_rx_get_hdrlen(struct rtllib_device *ieee,
>  {
>  	struct rtllib_hdr_4addr *hdr = (struct rtllib_hdr_4addr *)skb->data;
>  	u16 fc = le16_to_cpu(hdr->frame_ctl);
> -	size_t hdrlen = 0;
> +	size_t hdrlen;
> 
>  	hdrlen = rtllib_get_hdrlen(fc);
>  	if (HTCCheck(ieee, skb->data)) {
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
> index 19c3bff..25b5b5e 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac.c
> @@ -776,7 +776,7 @@ inline struct sk_buff *rtllib_authentication_req(struct rtllib_network *beacon,
>  {
>  	struct sk_buff *skb;
>  	struct rtllib_authentication *auth;
> -	int  len = 0;
> +	int  len;
> 
>  	len = sizeof(struct rtllib_authentication) + challengelen +
>  		     ieee->tx_headroom + 4;
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac_wx.c b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> index 86f52ac..01a75bd 100644
> --- a/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_softmac_wx.c
> @@ -243,7 +243,7 @@ int rtllib_wx_get_rate(struct rtllib_device *ieee,
>  			     struct iw_request_info *info,
>  			     union iwreq_data *wrqu, char *extra)
>  {
> -	u32 tmp_rate = 0;
> +	u32 tmp_rate;
> 
>  	tmp_rate = TxCountToDataRate(ieee,
>  				     ieee->softmac_stats.CurrentShowTxate);
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160218214356.GA8324%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 

