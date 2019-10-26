X-GM-THRID: 6751912583325810688
X-Received: by 2002:aca:d508:: with SMTP id m8mr7013346oig.31.1572126467926;
        Sat, 26 Oct 2019 14:47:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2c42:: with SMTP id f60ls2677197otb.8.gmail; Sat, 26 Oct
 2019 14:47:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzAvQaAPWa6P6TwhO2bsdsgu/189knBZ71Ofcbx/mXrZe5EdxKk+MfSN+4DIe6sJQgwJYJe
X-Received: by 2002:a05:6830:1aef:: with SMTP id c15mr8200846otd.200.1572126466756;
        Sat, 26 Oct 2019 14:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572126466; cv=none;
        d=google.com; s=arc-20160816;
        b=kK7tIPTCJl+MEv9W027HrBDk+8hM++j9d12ng0+0HA+jGNioq5MToh63TMs5lTKejY
         SECXxwIXeYjioPo9QgSWtrrhSDNMHHNBf3BxKAqp/QAiMdwKnQKenrLu0ulnRIOJbZzu
         zOQ6bCI9wIJbHAakFMafLOs03iqoji7kSGZLX64A829vY6GIOoGWyeDZXLSHmPepNYRV
         oo75vMCJSVBOwL6hCbqLtzlMHCuIy3/ZJwjdk5H636O2LyOgmQ2Z1bAcCAHMP0n1TOBU
         cI1dU/sZhAuPMMa+k2puzY5FFPknZ+pA0/zyn3ez1/HmnFcvUpLDe0Hf7QmHZ2+zsKSq
         JmRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7fCEbt9/o/xR0gdc9lN4FFKDIcYI1lqdhGYoHs75aC0=;
        b=0n3FFL0SA/602ZUBCFUPwDbd9YwDH0vVrMi+KWpa5ZEXalKZE2WFPWNQkOZO3/0SbN
         N78C340CDgdWMZhnX7oSB5dY3Foqh02+CLF7eRErqLcgfvw2c9IWaJgyI8E6NNs/5vrF
         zytjMslZ+z3EBq2SmjTVqJckIy8ZRhOSfRL03d8jMR2uuQakpg+QFy2Mptvm9gSzOnDi
         XGBmP/7KmPQF0il2QCiAr1phzNGuSjSemycG74ywz+yUkVhJKEVkcwB2HD7FkTQbCeqW
         LVhKoqgPne4lj7lZAlSJd9Btf1MwCY1RhlXIXYTiisKC7xolpKlf9rsCfYaW2LOFqiTD
         sQkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCAeT56n;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id v3si269487oth.4.2019.10.26.14.47.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 14:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCAeT56n;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id m15so8871700qtq.2
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 14:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7fCEbt9/o/xR0gdc9lN4FFKDIcYI1lqdhGYoHs75aC0=;
        b=SCAeT56nMLSpIG79PTuUgJVDASGhmv8pxuzpbJAHXv0+pVUA7p5OOspx0rlTsTAbKN
         Ud9OnWUej9vUCK4SMg8n/W/SjSTR06JdmbkxB5E56rBlfLtz7pKUyZ7PC4WPurNxxq2n
         bEtCzkgASdYZS9J5f2zRQRToehQ7cxan67zKfleGIJSargY7k3aNrn+cer1DKYo56B1L
         sFNZO16fvyypR7Dzvn3b8n8qZffpFGTKlNxRWgTaJkfQdqNZXahwg6YyL7az2E1iM6tH
         bGjK+NIK3RKccVgtVKgatvxriZk2cRrL1txQdBBdBz9pIwZclFo2IQVmLnQGPrr4673g
         PKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7fCEbt9/o/xR0gdc9lN4FFKDIcYI1lqdhGYoHs75aC0=;
        b=bBW10UKjoQjqySLkLm+aXv6l5b5Vkmgn0elOshsrfng4YBZarU6GrEnZ2xBUiKilJT
         W+gB2As3o2qPNLsRAPF9oXuxkwvhrNmLbT1q7wCTtAgyZgXwhw33LhWVxlmU5E8O46A0
         OXYazqVu8MCLni82RLbeOtgGar11yFUcVWix4t9gAw7S3JTN7KN3XdZHJL8wqoYA3ptm
         aU/oiC0DDFl2PRsX0uYhPvGvK5c/lzcLoqusyw7bMwKDbiZWsM09prS2LoWKxuXppEDL
         cpx4dNJjmlColYyHEaoWcUNX/Qs6BxFir2/hkFrlmkEdlKqb0GbPM7T35uccRTayKk29
         Romg==
X-Gm-Message-State: APjAAAVcg15ppiAeJE3dSNBSgEO2Af4iOI9ZlsNrwydaNyIesPuPKuRV
	oFzXFpK44p/3Zg7zirBhF9XF0QpkVRG1EA==
X-Received: by 2002:a05:6214:c9:: with SMTP id f9mr10364100qvs.216.1572126466276;
        Sat, 26 Oct 2019 14:47:46 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id e16sm2962942qtq.51.2019.10.26.14.47.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 14:47:45 -0700 (PDT)
Date: Sat, 26 Oct 2019 18:47:40 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191026214740.GA13611@cristiane-Inspiron-5420>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
 <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com>
 <alpine.DEB.2.21.1910262231270.5545@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910262231270.5545@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 26, 2019 at 10:32:55PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 26 Oct 2019, Cristiane Naves wrote:
> 
> > Fix alignment should match open parenthesis. Issue found by checkpatch.
> >
> > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_recv.c | 30 +++++++++++++++---------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > index af12c16..12a3c64 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> >  		precvbuf->ref_cnt = 0;
> >  		precvbuf->adapter = padapter;
> >  		list_add_tail(&precvbuf->list,
> > -				 &(precvpriv->free_recv_buf_queue.queue));
> > +			      &(precvpriv->free_recv_buf_queue.queue));
> >  		precvbuf++;
> >  	}
> >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> >  	tasklet_init(&precvpriv->recv_tasklet,
> > -	     (void(*)(unsigned long))recv_tasklet,
> > -	     (unsigned long)padapter);
> > +		     (void(*)(unsigned long))recv_tasklet,
> > +		     (unsigned long)padapter);
> >  	skb_queue_head_init(&precvpriv->rx_skb_queue);
> >
> >  	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
> > @@ -140,7 +140,7 @@ void r8712_free_recvframe(union recv_frame *precvframe,
> >  }
> >
> >  static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
> > -					   struct recv_stat *prxstat)
> > +						  struct recv_stat *prxstat)
> >  {
> >  	u16 drvinfo_sz;
> >
> > @@ -177,7 +177,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
> >
> >  /*perform defrag*/
> >  static union recv_frame *recvframe_defrag(struct _adapter *adapter,
> > -				   struct  __queue *defrag_q)
> > +					  struct  __queue *defrag_q)
> >  {
> >  	struct list_head *plist, *phead;
> >  	u8 wlanhdr_offset;
> > @@ -379,7 +379,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
> >  		/* convert hdr + possible LLC headers into Ethernet header */
> >  		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
> >  		if (sub_skb->len >= 8 &&
> > -		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
> > +		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
> >  		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
> >  		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
> 
> I have the impression that the alignment is not really optimal for reading
> here.  It is hard to see what is the argument of which operator. It looks
> like at least there are some parentheses that eth_type should be aligned
> with the right side of as well.
> 
> julia
>
I agree! It's better not to change the alignment then. Do you think it's
worth sending a version 3 without the Fix Alignment of open parenthesis?

> >  			/* remove RFC1042 or Bridge-Tunnel encapsulation and
> > @@ -387,18 +387,18 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
> >  			 */
> >  			skb_pull(sub_skb, SNAP_SIZE);
> >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> > -				ETH_ALEN);
> > +			       ETH_ALEN);
> >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> > -				ETH_ALEN);
> > +			       ETH_ALEN);
> >  		} else {
> >  			__be16 len;
> >  			/* Leave Ethernet header part of hdr and full payload */
> >  			len = htons(sub_skb->len);
> >  			memcpy(skb_push(sub_skb, 2), &len, 2);
> >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> > -				ETH_ALEN);
> > +			       ETH_ALEN);
> >  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> > -				ETH_ALEN);
> > +			       ETH_ALEN);
> >  		}
> >  		/* Indicate the packets to upper layer */
> >  		if (sub_skb) {
> > @@ -472,7 +472,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
> >  }
> >
> >  static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> > -			      union recv_frame *prframe)
> > +				     union recv_frame *prframe)
> >  {
> >  	struct list_head *phead, *plist;
> >  	union recv_frame *pnextrframe;
> > @@ -499,8 +499,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> >  }
> >
> >  int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
> > -			       struct recv_reorder_ctrl *preorder_ctrl,
> > -			       int bforced)
> > +				     struct recv_reorder_ctrl *preorder_ctrl,
> > +				     int bforced)
> >  {
> >  	struct list_head *phead, *plist;
> >  	union recv_frame *prframe;
> > @@ -555,7 +555,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
> >  }
> >
> >  static int recv_indicatepkt_reorder(struct _adapter *padapter,
> > -			     union recv_frame *prframe)
> > +				    union recv_frame *prframe)
> >  {
> >  	unsigned long irql;
> >  	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
> > @@ -624,7 +624,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
> >  }
> >
> >  static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
> > -			      union recv_frame *prframe)
> > +					   union recv_frame *prframe)
> >  {
> >  	int retval = _SUCCESS;
> >  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09%40gmail.com.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910262231270.5545%40hadrien.

