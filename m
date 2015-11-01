X-GM-THRID: 6211547369470689280
X-Received: by 10.28.55.135 with SMTP id e129mr1173102wma.7.1446362808792;
        Sun, 01 Nov 2015 00:26:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.15 with SMTP id l15ls410821wmd.40.gmail; Sun, 01 Nov
 2015 00:26:48 -0700 (PDT)
X-Received: by 10.28.7.78 with SMTP id 75mr1177626wmh.6.1446362808403;
        Sun, 01 Nov 2015 00:26:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si331204wmb.0.2015.11.01.00.26.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 00:26:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185418987"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 08:26:47 +0100
Date: Sun, 1 Nov 2015 08:26:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Burcin Akalin <brcnakalin@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: gdm72xx: Add space around
 '+'
In-Reply-To: <1446332212-10079-3-git-send-email-brcnakalin@gmail.com>
Message-ID: <alpine.DEB.2.02.1511010826110.2070@localhost6.localdomain6>
References: <1446332212-10079-1-git-send-email-brcnakalin@gmail.com> <1446332212-10079-3-git-send-email-brcnakalin@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Burcin Akalin wrote:

> Add space around operator '+'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_qos.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/gdm72xx/gdm_qos.c b/drivers/staging/gdm72xx/gdm_qos.c
> index 9e87331..c7350db 100644
> --- a/drivers/staging/gdm72xx/gdm_qos.c
> +++ b/drivers/staging/gdm72xx/gdm_qos.c
> @@ -171,13 +171,13 @@ static int chk_ipv4_rule(struct gdm_wimax_csr_s *csr, u8 *stream, u8 *port)
>  	}
>  
>  	if (csr->classifier_rule_en & PROTOCOLSRCPORTRANGE) {
> -		i = ((port[0]<<8) & 0xff00)+port[1];
> +		i = ((port[0]<<8) & 0xff00) + port[1];

I think that the <<s should need spaces too.  Did checkpatch not complain 
about that on this patch?

julia

>  		if ((i < csr->srcport_lo) || (i > csr->srcport_hi))
>  			return 1;
>  	}
>  
>  	if (csr->classifier_rule_en & PROTOCOLDSTPORTRANGE) {
> -		i = ((port[2]<<8) & 0xff00)+port[3];
> +		i = ((port[2]<<8) & 0xff00) + port[3];
>  		if ((i < csr->dstport_lo) || (i > csr->dstport_hi))
>  			return 1;
>  	}
> @@ -342,17 +342,17 @@ void gdm_recv_qos_hci_packet(void *nic_ptr, u8 *buf, int size)
>  	if (sub_cmd_evt == QOS_REPORT) {
>  		spin_lock_irqsave(&qcb->qos_lock, flags);
>  		for (i = 0; i < qcb->qos_list_cnt; i++) {
> -			sfid = ((buf[(i*5)+6]<<24) & 0xff000000);
> -			sfid += ((buf[(i*5)+7]<<16) & 0xff0000);
> -			sfid += ((buf[(i*5)+8]<<8) & 0xff00);
> -			sfid += (buf[(i*5)+9]);
> +			sfid = ((buf[(i*5) + 6]<<24) & 0xff000000);
> +			sfid += ((buf[(i*5) + 7]<<16) & 0xff0000);
> +			sfid += ((buf[(i*5) + 8]<<8) & 0xff00);
> +			sfid += (buf[(i*5) + 9]);
>  			index = get_csr(qcb, sfid, 0);
>  			if (index == -1) {
>  				spin_unlock_irqrestore(&qcb->qos_lock, flags);
>  				netdev_err(nic->netdev, "QoS ERROR: No SF\n");
>  				return;
>  			}
> -			qcb->csr[index].qos_buf_count = buf[(i*5)+10];
> +			qcb->csr[index].qos_buf_count = buf[(i*5) + 10];
>  		}
>  
>  		extract_qos_list(nic, &send_list);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446332212-10079-3-git-send-email-brcnakalin%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

