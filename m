X-GM-THRID: 6755718813793124352
X-Received: by 2002:ac2:4d10:: with SMTP id r16mr20349715lfi.70.1572941188655;
        Tue, 05 Nov 2019 00:06:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:c4:: with SMTP id 4ls1119552ljr.6.gmail; Tue, 05
 Nov 2019 00:06:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwzlz9kDZR73jcCqpDr+K5+2B6Ep9PTwSyj5v962HxQbO7AC8mtQCXX1BLd27i42HgZc2VS
X-Received: by 2002:a2e:975a:: with SMTP id f26mr22586144ljj.74.1572941187732;
        Tue, 05 Nov 2019 00:06:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572941187; cv=none;
        d=google.com; s=arc-20160816;
        b=bfnAw5Up7G3Cxq/oJlZylljmHcKGg8lr5+02NYhtHf4ymow/y/m+gz6WBhHNdK3qcY
         kyYu6B5yDCjc6wIgJqtdrAcUYRmy1lPcVFPXIjBQs/jDvf/tDcl9563gDOHCxKlTUfky
         Z4rhn4qRCulMvUr7+Gy0J23M6KKsN10uJdPmf54aAh1tpRuVdnOfDyJUljVrZah4FiRp
         2Md2WdnJvjkpYF3pnM5XIw/LdaUBxD+L0gX1tS2IvlkSq+TwUpoK/5GhcBNehmLsABo2
         AGW7/5Rq6WRXqMaEQvGmshX2FGXkSSzkdfdZ+xs4UyJxpg8ai0uW5wLbbd8Xz3Wf5Uxh
         U5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=QGY8wJFMGXG+Gxq7bahse/KS5jh7gwVzGp71KIWAcoc=;
        b=mnRJhn7eJ+1fVtzVyEy67jNNPusE1G6TQbVOCyNjFRxH586l0oQXsQFBraDwt4ge3P
         36iEnWh6Uob+bG/jtJOquG3uWlGDH2zqRiqqaXRBgnQHTWmAThCZrM8DmVneQw9nxewu
         KK7I6+qok7lXr6jaWhCJiIELkUmg8oldW9GODhbQfCTUQnognZ04W5BDeo37RXgEHiK5
         uGZqq1twjnnc5Duzm+CIkF6KyxGK8E6VropBJvFU3mbG2HVpQBFi09sDJXePhf1LKzVE
         1GVMqw+aq8MydU8VhKLmjAgHvWHqOV833mfmR/ILWFVd6dRV/ZnfP7RvSe2TwG+6BWOo
         jcbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x23si563852lfq.0.2019.11.05.00.06.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 00:06:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,270,1569276000"; 
   d="scan'208";a="410349394"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2019 09:06:11 +0100
Date: Tue, 5 Nov 2019 09:06:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: qlge: Avoid NULL
 comparison
In-Reply-To: <1572940458-109252-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1911050905350.2548@hadrien>
References: <1572940458-109252-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Nachammai Karuppiah wrote:

> Replace NULL comparison with boolean negation. Issue found using checkpatch.pl
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

I saw this just after my ack.  I assume you didn't change anything in the
code...

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v2:
>   - Make the commit message more clearer.
>
>  drivers/staging/qlge/qlge_dbg.c  |  4 ++--
>  drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
>  2 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 019b7e6..83f34ca 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1649,7 +1649,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
>
>  void ql_dump_tx_ring(struct tx_ring *tx_ring)
>  {
> -	if (tx_ring == NULL)
> +	if (!tx_ring)
>  		return;
>  	pr_err("===================== Dumping tx_ring %d ===============\n",
>  	       tx_ring->wq_id);
> @@ -1741,7 +1741,7 @@ static const char *qlge_rx_ring_type_name(struct rx_ring *rx_ring)
>
>  void ql_dump_rx_ring(struct rx_ring *rx_ring)
>  {
> -	if (rx_ring == NULL)
> +	if (!rx_ring)
>  		return;
>  	pr_err("===================== Dumping rx_ring %d ===============\n",
>  	       rx_ring->cq_id);
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 6f6b4c0..6ad4515 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -1588,7 +1588,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
>  	skb = sbq_desc->p.skb;
>  	/* Allocate new_skb and copy */
>  	new_skb = netdev_alloc_skb(qdev->ndev, length + NET_IP_ALIGN);
> -	if (new_skb == NULL) {
> +	if (!new_skb) {
>  		rx_ring->rx_dropped++;
>  		return;
>  	}
> @@ -1792,7 +1792,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
>  			 */
>  			lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
>  			skb = netdev_alloc_skb(qdev->ndev, length);
> -			if (skb == NULL) {
> +			if (!skb) {
>  				netif_printk(qdev, probe, KERN_DEBUG, qdev->ndev,
>  					     "No skb available, drop the packet.\n");
>  				return NULL;
> @@ -2663,7 +2663,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
>  	qdev->rx_ring_shadow_reg_area =
>  		pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
>  				      &qdev->rx_ring_shadow_reg_dma);
> -	if (qdev->rx_ring_shadow_reg_area == NULL) {
> +	if (!qdev->rx_ring_shadow_reg_area) {
>  		netif_err(qdev, ifup, qdev->ndev,
>  			  "Allocation of RX shadow space failed.\n");
>  		return -ENOMEM;
> @@ -2672,7 +2672,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
>  	qdev->tx_ring_shadow_reg_area =
>  		pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
>  				      &qdev->tx_ring_shadow_reg_dma);
> -	if (qdev->tx_ring_shadow_reg_area == NULL) {
> +	if (!qdev->tx_ring_shadow_reg_area) {
>  		netif_err(qdev, ifup, qdev->ndev,
>  			  "Allocation of TX shadow space failed.\n");
>  		goto err_wqp_sh_area;
> @@ -2724,14 +2724,14 @@ static int ql_alloc_tx_resources(struct ql_adapter *qdev,
>  	    pci_alloc_consistent(qdev->pdev, tx_ring->wq_size,
>  				 &tx_ring->wq_base_dma);
>
> -	if ((tx_ring->wq_base == NULL) ||
> +	if (!tx_ring->wq_base ||
>  	    tx_ring->wq_base_dma & WQ_ADDR_ALIGN)
>  		goto pci_alloc_err;
>
>  	tx_ring->q =
>  	    kmalloc_array(tx_ring->wq_len, sizeof(struct tx_ring_desc),
>  			  GFP_KERNEL);
> -	if (tx_ring->q == NULL)
> +	if (!tx_ring->q)
>  		goto err;
>
>  	return 0;
> @@ -2778,7 +2778,7 @@ static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
>  	for (i = 0; i < QLGE_BQ_LEN; i++) {
>  		struct qlge_bq_desc *sbq_desc = &rx_ring->sbq.queue[i];
>
> -		if (sbq_desc == NULL) {
> +		if (!sbq_desc) {
>  			netif_err(qdev, ifup, qdev->ndev,
>  				  "sbq_desc %d is NULL.\n", i);
>  			return;
> @@ -2899,7 +2899,7 @@ static int ql_alloc_rx_resources(struct ql_adapter *qdev,
>  	    pci_alloc_consistent(qdev->pdev, rx_ring->cq_size,
>  				 &rx_ring->cq_base_dma);
>
> -	if (rx_ring->cq_base == NULL) {
> +	if (!rx_ring->cq_base) {
>  		netif_err(qdev, ifup, qdev->ndev, "rx_ring alloc failed.\n");
>  		return -ENOMEM;
>  	}
> @@ -4485,7 +4485,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
>  	if (qlge_mpi_coredump) {
>  		qdev->mpi_coredump =
>  			vmalloc(sizeof(struct ql_mpi_coredump));
> -		if (qdev->mpi_coredump == NULL) {
> +		if (!qdev->mpi_coredump) {
>  			err = -ENOMEM;
>  			goto err_out2;
>  		}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1572940458-109252-1-git-send-email-nachukannan%40gmail.com.
>

