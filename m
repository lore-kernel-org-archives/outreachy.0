X-GM-THRID: 6751912583325810688
X-Received: by 2002:adf:da42:: with SMTP id r2mr9671030wrl.383.1572162005973;
        Sun, 27 Oct 2019 00:40:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a517:: with SMTP id i23ls9566826wrb.9.gmail; Sun, 27 Oct
 2019 00:40:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzLJuCLdcYKXSr4UlgSvScFe4ZaE3dDf9wtJ2CqpQ5bsnK6gMLiodwdVhbhwmrQV//+me+
X-Received: by 2002:a05:6000:1c9:: with SMTP id t9mr10760347wrx.171.1572162005036;
        Sun, 27 Oct 2019 00:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572162005; cv=none;
        d=google.com; s=arc-20160816;
        b=M+LH+3Ztgr9BZArxC1DQCp5k224IRkeODSKV7QBk+H6mod/GtnGUvIsuugbJd4LmtX
         czEFLWcj8KJDFh/PZVReVfCEapBGqH4MARCpVw72YBle2qL7epjMPWAytMmwdj8omm0N
         2A7H3tODZsB/HRENKe/bzezxx+aNQJZ5l8h331zcpFSCDsv8eDkGNjNLKhIWr2t2y+EZ
         dfKykeNpgKvm8+uyqQnqO0xqhwDhjyDyVP+JiZ7coGua5aj2hIGq8WdTQB1bYgXdrFNY
         aedd8C6xYWGh2Yb2KwI4Czg+2snAxaF3oxcQ6OnTnUVhvAmEw6ysvDUccavS/6vDH94W
         Nnvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+UNN0v7XzUO3+NORnqTpNXrR/p0j0UkU01qlG6yup+I=;
        b=KwBbONl5npXLY/bSw3CrzqWw3JQuM/+R+KEehDSH5iXQmkSbhleGVYKCbaUDtg3FA3
         52s/B2EGWfpVc3fZKVj5supsTQNI8p2GHRX0d3Ae1YSVWGtOHwP3kFsxfMRlu4SoLW0R
         nFTZXZAmMR/2J/H2GmfbehHprDnyTn+Vfd6+sFgseeAWVRsdz8+ldmMj+i7wj2FYCdXH
         DHY4+am2ui3Hsbedb+dMWSKYrJ4XBbdkOye3/hPq9djWm0UPYmx2+nOCGamToJQ1ESTo
         L4yJgVtZUvXRC7OxLA9a1O22EyRgzkyOXFLpE+/BqjciC0mgkflkQ3ucOtUylgKAnGBP
         9Bpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y188si406699wmc.0.2019.10.27.00.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:40:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,235,1569276000"; 
   d="scan'208";a="408564868"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2019 08:40:04 +0100
Date: Sun, 27 Oct 2019 08:40:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: rtl8712: Fix Alignment
 of open parenthesis
In-Reply-To: <20191026214740.GA13611@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910270836090.3186@hadrien>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com> <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com> <alpine.DEB.2.21.1910262231270.5545@hadrien> <20191026214740.GA13611@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 26 Oct 2019, Cristiane Naves wrote:

> On Sat, Oct 26, 2019 at 10:32:55PM +0200, Julia Lawall wrote:
> >
> >
> > On Sat, 26 Oct 2019, Cristiane Naves wrote:
> >
> > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > >
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/staging/rtl8712/rtl8712_recv.c | 30 +++++++++++++++---------------
> > >  1 file changed, 15 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > index af12c16..12a3c64 100644
> > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > >  		precvbuf->ref_cnt = 0;
> > >  		precvbuf->adapter = padapter;
> > >  		list_add_tail(&precvbuf->list,
> > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > +			      &(precvpriv->free_recv_buf_queue.queue));
> > >  		precvbuf++;
> > >  	}
> > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > -	     (void(*)(unsigned long))recv_tasklet,
> > > -	     (unsigned long)padapter);
> > > +		     (void(*)(unsigned long))recv_tasklet,
> > > +		     (unsigned long)padapter);
> > >  	skb_queue_head_init(&precvpriv->rx_skb_queue);
> > >
> > >  	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
> > > @@ -140,7 +140,7 @@ void r8712_free_recvframe(union recv_frame *precvframe,
> > >  }
> > >
> > >  static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
> > > -					   struct recv_stat *prxstat)
> > > +						  struct recv_stat *prxstat)
> > >  {
> > >  	u16 drvinfo_sz;
> > >
> > > @@ -177,7 +177,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
> > >
> > >  /*perform defrag*/
> > >  static union recv_frame *recvframe_defrag(struct _adapter *adapter,
> > > -				   struct  __queue *defrag_q)
> > > +					  struct  __queue *defrag_q)
> > >  {
> > >  	struct list_head *plist, *phead;
> > >  	u8 wlanhdr_offset;
> > > @@ -379,7 +379,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
> > >  		/* convert hdr + possible LLC headers into Ethernet header */
> > >  		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
> > >  		if (sub_skb->len >= 8 &&
> > > -		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
> > > +		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
> > >  		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> > >  		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
> >
> > I have the impression that the alignment is not really optimal for reading
> > here.  It is hard to see what is the argument of which operator. It looks
> > like at least there are some parentheses that eth_type should be aligned
> > with the right side of as well.
> >
> > julia
> >
> I agree! It's better not to change the alignment then. Do you think it's
> worth sending a version 3 without the Fix Alignment of open parenthesis?

Actually, I think that the alignement could be improved, but you didn't go
far enough.  As far as I cane see (patches are sometimes misleading on
this), the original code is:

if (X &&
   ((Y &&
   Z) ||
   A))

It should be:

if (X &&
    ((Y &&
      Z) ||
     A))

That might help a little bit in showing how everything first together.  At
least a little bit more than the current code does.

julia

>
> > >  			/* remove RFC1042 or Bridge-Tunnel encapsulation and
> > > @@ -387,18 +387,18 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
> > >  			 */
> > >  			skb_pull(sub_skb, SNAP_SIZE);
> > >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> > > -				ETH_ALEN);
> > > +			       ETH_ALEN);
> > >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> > > -				ETH_ALEN);
> > > +			       ETH_ALEN);
> > >  		} else {
> > >  			__be16 len;
> > >  			/* Leave Ethernet header part of hdr and full payload */
> > >  			len = htons(sub_skb->len);
> > >  			memcpy(skb_push(sub_skb, 2), &len, 2);
> > >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> > > -				ETH_ALEN);
> > > +			       ETH_ALEN);
> > >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> > > -				ETH_ALEN);
> > > +			       ETH_ALEN);
> > >  		}
> > >  		/* Indicate the packets to upper layer */
> > >  		if (sub_skb) {
> > > @@ -472,7 +472,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
> > >  }
> > >
> > >  static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> > > -			      union recv_frame *prframe)
> > > +				     union recv_frame *prframe)
> > >  {
> > >  	struct list_head *phead, *plist;
> > >  	union recv_frame *pnextrframe;
> > > @@ -499,8 +499,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> > >  }
> > >
> > >  int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
> > > -			       struct recv_reorder_ctrl *preorder_ctrl,
> > > -			       int bforced)
> > > +				     struct recv_reorder_ctrl *preorder_ctrl,
> > > +				     int bforced)
> > >  {
> > >  	struct list_head *phead, *plist;
> > >  	union recv_frame *prframe;
> > > @@ -555,7 +555,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
> > >  }
> > >
> > >  static int recv_indicatepkt_reorder(struct _adapter *padapter,
> > > -			     union recv_frame *prframe)
> > > +				    union recv_frame *prframe)
> > >  {
> > >  	unsigned long irql;
> > >  	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
> > > @@ -624,7 +624,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
> > >  }
> > >
> > >  static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
> > > -			      union recv_frame *prframe)
> > > +					   union recv_frame *prframe)
> > >  {
> > >  	int retval = _SUCCESS;
> > >  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09%40gmail.com.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910262231270.5545%40hadrien.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191026214740.GA13611%40cristiane-Inspiron-5420.
>

