X-GM-THRID: 6668229306176503808
X-Received: by 2002:adf:ee89:: with SMTP id b9mr2598181wro.23.1552568503957;
        Thu, 14 Mar 2019 06:01:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d04e:: with SMTP id h75ls686245wmg.0.gmail; Thu, 14 Mar
 2019 06:01:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjPl1sFeviBtSx3557nP8GXv1DvuiGhFHaVcYVbPXWKf+KnfOVVRY5yzOO984f0n8yutJz
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr241321wmj.24.1552568503035;
        Thu, 14 Mar 2019 06:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552568503; cv=none;
        d=google.com; s=arc-20160816;
        b=c8SoHW3Ai49MkdYUDsk8HtaWKyyP3ytQSFqOjdEO3BQ4hrJw0C+i2DksDJUMxX69IZ
         Sb6HIwTV1kh1kme/lW3F/L8G3gKf8QaT4HYMZ89ahpN1Fqf+eHxN2vTGj+1UHmDHGRCC
         Jux+21bBlFD+rAoOMmh7zSN8e3we11C8Vt7cqUgKTYcFgSrlH/U81nkpgltekntogHQH
         wPJN8IT4kyypT2P5bZ6V50w7wYYqy+jrZifg2eElNmA5ujHhw5xHc+s3Ijfk7ceSKQTm
         8H8R6Y/crf8AwogmaSJxAyVmm0kLgon5SsGnhdrUhhdfbyAh/GDNniCgc2eFuTvslwHJ
         PuMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7tcbgnWx3nbJCi7Hzlti+ucQOWjusf/DdG1X8oVDH0o=;
        b=HMHGSe1dqd6Edm+ndE4YVs6mI/npJEdmyJaMzYTwKdNAnkNvKH4hfKIKYAIpf/P5HT
         DfCqBZaB6bI6m350Kg2NdemPhJWpc2xoSN6xwaA4lv7CyNcvPkSVweI2H6daLdnk08Jg
         HVqhZmq0plsZ1mb+JNC8UjE//e7bzBmxnO2rjHZjsmiThKQIG6MdI7af9RNTPRpMxvbz
         adDl++qWLIcPp2lc+oorG8nC3rV62BIecu8SgzJNBmOzWdqp0OInxcxClFueRxVm6zki
         M1rK399QBtJb99QqnqFngsw6s0KMDjd0nxc4U3mbSoWZsKpj2lwyc6Rl5+6g9gzboBtW
         f0mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si80058wmj.2.2019.03.14.06.01.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 06:01:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,478,1544482800"; 
   d="scan'208";a="373402449"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2019 14:01:42 +0100
Date: Thu, 14 Mar 2019 14:01:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/5] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis
 issue
In-Reply-To: <20190314125517.GA3667@sanjana-Inspiron-5570>
Message-ID: <alpine.DEB.2.20.1903141401060.19170@hadrien>
References: <20190314125517.GA3667@sanjana-Inspiron-5570>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Why is this 2/5?  Are more coming?

You don't need to put me in CC.  I read the mailing list.

julia

On Thu, 14 Mar 2019, Sanjana wrote:

> This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:
>
> CHECK: Unnecessary paranthesis around prframe->list
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 24 +++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index cc6f1a23da01..443a62d6ee24 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -64,10 +64,10 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
>  	precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);
>
>  	for (i = 0; i < NR_RECVFRAME; i++) {
> -		INIT_LIST_HEAD(&(precvframe->list));
> +		INIT_LIST_HEAD(&precvframe->list);
>
> -		list_add_tail(&(precvframe->list),
> -				     &(precvpriv->free_recv_queue.queue));
> +		list_add_tail(&precvframe->list,
> +				     &precvpriv->free_recv_queue.queue);
>
>  		precvframe->pkt = NULL;
>
> @@ -134,9 +134,9 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
>
>  	spin_lock_bh(&pfree_recv_queue->lock);
>
> -	list_del_init(&(precvframe->list));
> +	list_del_init(&precvframe->list);
>
> -	list_add_tail(&(precvframe->list), get_list_head(pfree_recv_queue));
> +	list_add_tail(&precvframe->list, get_list_head(pfree_recv_queue));
>
>  	spin_unlock_bh(&pfree_recv_queue->lock);
>
> @@ -145,8 +145,8 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
>
>  int _rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
>  {
> -	list_del_init(&(precvframe->list));
> -	list_add_tail(&(precvframe->list), get_list_head(queue));
> +	list_del_init(&precvframe->list);
> +	list_add_tail(&precvframe->list, get_list_head(queue));
>
>  	return _SUCCESS;
>  }
> @@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>  	plist = phead->next;
>  	pfhdr = list_entry(plist, struct recv_frame, list);
>  	prframe = pfhdr;
> -	list_del_init(&(prframe->list));
> +	list_del_init(&prframe->list);
>
>  	if (curfragnum != pfhdr->attrib.frag_num) {
>  		/* the first fragment number must be 0 */
> @@ -1506,7 +1506,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
>  	struct rx_pkt_attrib *pattrib;
>  	struct sk_buff *sub_skb, *subframes[MAX_SUBFRAME_COUNT];
>  	struct recv_priv *precvpriv = &padapter->recvpriv;
> -	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
> +	struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
>
>  	nr_subframes = 0;
>  	pattrib = &prframe->attrib;
> @@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
>  			break;
>  	}
>
> -	list_del_init(&(prframe->list));
> +	list_del_init(&prframe->list);
>
> -	list_add_tail(&(prframe->list), plist);
> +	list_add_tail(&prframe->list, plist);
>  	return true;
>  }
>
> @@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
>  				 ("%s: indicate=%d seq=%d amsdu=%d\n",
>  				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
>  			plist = plist->next;
> -			list_del_init(&(prframe->list));
> +			list_del_init(&prframe->list);
>
>  			if (SN_EQUAL(preorder_ctrl->indicate_seq, pattrib->seq_num))
>  				preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) & 0xFFF;
> --
> 2.17.1
>
>

