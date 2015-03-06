X-GM-THRID: 6919445020672
X-Received: by 10.112.142.1 with SMTP id rs1mr484413lbb.19.1425655466167;
        Fri, 06 Mar 2015 07:24:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.3 with SMTP id f3ls87716laa.31.gmail; Fri, 06 Mar 2015
 07:24:25 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr2469061lbw.4.1425655465541;
        Fri, 06 Mar 2015 07:24:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si165506wib.3.2015.03.06.07.24.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 06 Mar 2015 07:24:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,353,1422918000"; 
   d="scan'208";a="102383754"
Received: from unknown (HELO [132.207.219.65]) ([132.207.219.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 06 Mar 2015 16:24:24 +0100
Date: Fri, 6 Mar 2015 10:24:23 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Add blank line
 after declarations
In-Reply-To: <1425652870-3874-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1503061024070.2715@hadrien>
References: <1425652870-3874-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 6 Mar 2015, Dilek Uzulmez wrote:

> The following patch fixes the checkpatch.pl warning:
> drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c WARNING: Missing a blank line after declarations
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 175bbb6..0d8d06a 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -393,6 +393,7 @@ ieee80211_rx_frame_decrypt_msdu(struct ieee80211_device *ieee, struct sk_buff *s
>  	if (ieee->hwsec_active)
>  	{
>  		cb_desc *tcb_desc = (cb_desc *)(skb->cb+ MAX_DEV_ADDR_SIZE);
> +
>  		tcb_desc->bHwSec = 1;
>  	}
>
> @@ -518,7 +519,9 @@ drop:
>  static bool AddReorderEntry(PRX_TS_RECORD pTS, PRX_REORDER_ENTRY pReorderEntry)
>  {
>  	struct list_head *pList = &pTS->RxPendingPktList;
> +
>  	while(pList->next != &pTS->RxPendingPktList)
> +

There is no declaration here.

julia

>  	{
>  		if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
>  		{
> @@ -551,6 +554,7 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>  	{
>  //added by amy for reorder
>  		struct ieee80211_rxb *prxb = prxbIndicateArray[j];
> +
>  		for(i = 0; i<prxb->nr_subframes; i++) {
>  			struct sk_buff *sub_skb = prxb->subframes[i];
>
> @@ -606,6 +610,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	u16			WinEnd = (pTS->RxIndicateSeq + WinSize -1)%4096;
>  	u8			index = 0;
>  	bool			bMatchWinStart = false, bPktInBuf = false;
> +
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>  	/* Rx Reorder initialize condition.*/
>  	if(pTS->RxIndicateSeq == 0xffff) {
> @@ -619,6 +624,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  		pHTInfo->RxReorderDropCounter++;
>  		{
>  			int i;
> +
>  			for(i =0; i < prxb->nr_subframes; i++) {
>  				dev_kfree_skb(prxb->subframes[i]);
>  			}
> @@ -1164,6 +1170,7 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	if ((frag != 0 || (fc & IEEE80211_FCTL_MOREFRAGS))) {
>  		int flen;
>  		struct sk_buff *frag_skb = ieee80211_frag_cache_get(ieee, hdr);
> +
>  		IEEE80211_DEBUG_FRAG("Rx Fragment received (%u)\n", frag);
>
>  		if (!frag_skb) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425652870-3874-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

