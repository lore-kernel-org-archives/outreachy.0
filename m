X-GM-THRID: 6212138041611386880
X-Received: by 10.112.164.1 with SMTP id ym1mr3324300lbb.6.1446376394847;
        Sun, 01 Nov 2015 03:13:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.137 with SMTP id l131ls368602lfb.80.gmail; Sun, 01 Nov
 2015 03:13:14 -0800 (PST)
X-Received: by 10.112.166.40 with SMTP id zd8mr2696218lbb.21.1446376394229;
        Sun, 01 Nov 2015 03:13:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 13si339585wml.2.2015.11.01.03.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 03:13:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185435878"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 12:12:56 +0100
Date: Sun, 1 Nov 2015 12:12:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Burcin Akalin <brcnakalin@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm72xx:Add space around
 '<<'
In-Reply-To: <1446376088-9909-1-git-send-email-brcnakalin@gmail.com>
Message-ID: <alpine.DEB.2.02.1511011212140.2070@localhost6.localdomain6>
References: <1446376088-9909-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Burcin Akalin wrote:

> Add space around operator '<<'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '<<' (ctx:VxV)

I think that this patch would be on top of your previous patch.  You can't 
do that until your previous patch is accepted.  If you want to add a new 
change to the same code, you have to send the whole series again.

julia

> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_qos.c | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
> index 6c5fae5..2b4ff58 100644
> --- a/drivers/staging/gdm72xx/gdm_qos.c
> +++ b/drivers/staging/gdm72xx/gdm_qos.c
> @@ -171,13 +171,13 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
>  	}
>  
>  	if (csr->classifier_rule_en & PROTOCOLSRCPORTRANGE) {
> -		i = ((port[0]<<8) & 0xff00) + port[1];
> +		i = ((port[0] << 8) & 0xff00) + port[1];
>  		if ((i < csr->srcport_lo) || (i > csr->srcport_hi))
>  			return 1;
>  	}
>  
>  	if (csr->classifier_rule_en & PROTOCOLDSTPORTRANGE) {
> -		i = ((port[2]<<8) & 0xff00) + port[3];
> +		i = ((port[2] << 8) & 0xff00) + port[3];
>  		if ((i < csr->dstport_lo) || (i > csr->dstport_hi))
>  			return 1;
>  	}
> @@ -342,9 +342,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
>  	if (sub_cmd_evt == QOS_REPORT) {
>  		spin_lock_irqsave(&qcb->qos_lock, flags);
>  		for (i = 0; i < qcb->qos_list_cnt; i++) {
> -			sfid = ((buf[(i*5) + 6]<<24) & 0xff000000);
> -			sfid += ((buf[(i*5) + 7]<<16) & 0xff0000);
> -			sfid += ((buf[(i*5) + 8]<<8) & 0xff00);
> +			sfid = ((buf[(i*5) + 6] << 24) & 0xff000000);
> +			sfid += ((buf[(i*5) + 7] << 16) & 0xff0000);
> +			sfid += ((buf[(i*5) + 8] << 8) & 0xff00);
>  			sfid += (buf[(i*5) + 9]);
>  			index = get_csr(qcb, sfid, 0);
>  			if (index == -1) {
> @@ -363,9 +363,9 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
>  
>  	/* sub_cmd_evt == QOS_ADD || sub_cmd_evt == QOS_CHANG_DEL */
>  	pos = 6;
> -	sfid = ((buf[pos++]<<24) & 0xff000000);
> -	sfid += ((buf[pos++]<<16) & 0xff0000);
> -	sfid += ((buf[pos++]<<8) & 0xff00);
> +	sfid = ((buf[pos++] << 24) & 0xff000000);
> +	sfid += ((buf[pos++] << 16) & 0xff0000);
> +	sfid += ((buf[pos++] << 8) & 0xff00);
>  	sfid += (buf[pos++]);
>  
>  	index = get_csr(qcb, sfid, 1);
> @@ -382,7 +382,7 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
>  
>  		spin_lock_irqsave(&qcb->qos_lock, flags);
>  		qcb->csr[index].sfid = sfid;
> -		qcb->csr[index].classifier_rule_en = ((buf[pos++]<<8) & 0xff00);
> +		qcb->csr[index].classifier_rule_en = ((buf[pos++] << 8) & 0xff00);
>  		qcb->csr[index].classifier_rule_en += buf[pos++];
>  		if (qcb->csr[index].classifier_rule_en == 0)
>  			qcb->qos_null_idx = index;
> @@ -406,13 +406,13 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
>  		qcb->csr[index].ipdst_addr[1] = buf[pos++];
>  		qcb->csr[index].ipdst_addr[2] = buf[pos++];
>  		qcb->csr[index].ipdst_addr[3] = buf[pos++];
> -		qcb->csr[index].srcport_lo = ((buf[pos++]<<8) & 0xff00);
> +		qcb->csr[index].srcport_lo = ((buf[pos++] << 8) & 0xff00);
>  		qcb->csr[index].srcport_lo += buf[pos++];
> -		qcb->csr[index].srcport_hi = ((buf[pos++]<<8) & 0xff00);
> +		qcb->csr[index].srcport_hi = ((buf[pos++] << 8) & 0xff00);
>  		qcb->csr[index].srcport_hi += buf[pos++];
> -		qcb->csr[index].dstport_lo = ((buf[pos++]<<8) & 0xff00);
> +		qcb->csr[index].dstport_lo = ((buf[pos++] << 8) & 0xff00);
>  		qcb->csr[index].dstport_lo += buf[pos++];
> -		qcb->csr[index].dstport_hi = ((buf[pos++]<<8) & 0xff00);
> +		qcb->csr[index].dstport_hi = ((buf[pos++] << 8) & 0xff00);
>  		qcb->csr[index].dstport_hi += buf[pos++];
>  
>  		qcb->qos_limit_size = 254 / qcb->qos_list_cnt;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446376088-9909-1-git-send-email-brcnakalin%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

