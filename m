X-GM-THRID: 6249291499959222272
X-Received: by 10.28.47.211 with SMTP id v202mr598519wmv.3.1455027526524;
        Tue, 09 Feb 2016 06:18:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.78 with SMTP id o75ls392531wmg.15.canary; Tue, 09 Feb
 2016 06:18:45 -0800 (PST)
X-Received: by 10.28.47.140 with SMTP id v134mr596562wmv.3.1455027525004;
        Tue, 09 Feb 2016 06:18:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si513492wmw.3.2016.02.09.06.18.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:18:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="164045501"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 15:18:43 +0100
Date: Tue, 9 Feb 2016 15:18:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Remove parentheses
 around right hand side of assignment
In-Reply-To: <20160209190204.GA6095@janani-Inspiron-3521>
Message-ID: <alpine.DEB.2.10.1602091518280.2578@hadrien>
References: <20160209190204.GA6095@janani-Inspiron-3521>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 9 Feb 2016, Janani Ravichandran wrote:

> Remove parentheses on the right hand side of assignment as they are not
> needed. Semantic patch used:
>
> @@
> expression a, b, c, d;
> @@
>
> (
>   a = (c == d)
> |
>   a =
> - (
>   b
> - )
> )
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/unisys/visorbus/visorchannel.c  | 4 ++--
>  drivers/staging/unisys/visorhba/visorhba_main.c | 4 ++--
>  drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/unisys/visorbus/visorchannel.c b/drivers/staging/unisys/visorbus/visorchannel.c
> index 891b8db..a80d72c 100644
> --- a/drivers/staging/unisys/visorbus/visorchannel.c
> +++ b/drivers/staging/unisys/visorbus/visorchannel.c
> @@ -461,7 +461,7 @@ signalinsert_inner(struct visorchannel *channel, u32 queue, void *msg)
>  	if (!sig_read_header(channel, queue, &sig_hdr))
>  		return false;
>
> -	sig_hdr.head = ((sig_hdr.head + 1) % sig_hdr.max_slots);
> +	sig_hdr.head = (sig_hdr.head + 1) % sig_hdr.max_slots;
>  	if (sig_hdr.head == sig_hdr.tail) {
>  		sig_hdr.num_overflows++;
>  		visorchannel_write(channel,
> @@ -521,7 +521,7 @@ visorchannel_signalqueue_slots_avail(struct visorchannel *channel, u32 queue)
>  	tail = sig_hdr.tail;
>  	if (head < tail)
>  		head = head + sig_hdr.max_slots;
> -	slots_used = (head - tail);
> +	slots_used = head - tail;
>  	slots_avail = sig_hdr.max_signals - slots_used;
>  	return (int)slots_avail;
>  }
> diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
> index 202bfab..5a78409 100644
> --- a/drivers/staging/unisys/visorhba/visorhba_main.c
> +++ b/drivers/staging/unisys/visorhba/visorhba_main.c
> @@ -323,9 +323,9 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
>  		goto err_del_scsipending_ent;
>
>  	if (tasktype == TASK_MGMT_ABORT_TASK)
> -		scsicmd->result = (DID_ABORT << 16);
> +		scsicmd->result = DID_ABORT << 16;
>  	else
> -		scsicmd->result = (DID_RESET << 16);
> +		scsicmd->result = DID_RESET << 16;
>
>  	scsicmd->scsi_done(scsicmd);
>
> diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
> index 9b3eb95..a6786ec 100644
> --- a/drivers/staging/unisys/visornic/visornic_main.c
> +++ b/drivers/staging/unisys/visornic/visornic_main.c
> @@ -1029,7 +1029,7 @@ visornic_set_multi(struct net_device *netdev)
>  			cmdrsp->net.type = NET_RCV_PROMISC;
>  			cmdrsp->net.enbdis.context = netdev;
>  			cmdrsp->net.enbdis.enable =
> -				(netdev->flags & IFF_PROMISC);
> +				netdev->flags & IFF_PROMISC;
>  			visorchannel_signalinsert(devdata->dev->visorchannel,
>  						  IOCHAN_TO_IOPART,
>  						  cmdrsp);
> @@ -1766,7 +1766,7 @@ static int visornic_probe(struct visor_device *dev)
>  	}
>
>  	netdev->netdev_ops = &visornic_dev_ops;
> -	netdev->watchdog_timeo = (5 * HZ);
> +	netdev->watchdog_timeo = 5 * HZ;
>  	SET_NETDEV_DEV(netdev, &dev->device);
>
>  	/* Get MAC adddress from channel and read it into the device. */
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160209190204.GA6095%40janani-Inspiron-3521.
> For more options, visit https://groups.google.com/d/optout.
>

