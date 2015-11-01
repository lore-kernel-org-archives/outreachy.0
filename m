X-GM-THRID: 6212095586717401088
X-Received: by 10.112.138.66 with SMTP id qo2mr3348602lbb.2.1446366912487;
        Sun, 01 Nov 2015 01:35:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.129 with SMTP id n123ls404204wmg.36.gmail; Sun, 01 Nov
 2015 01:35:11 -0700 (PDT)
X-Received: by 10.28.87.15 with SMTP id l15mr1214922wmb.1.1446366911863;
        Sun, 01 Nov 2015 01:35:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m135si337826wmb.0.2015.11.01.01.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:35:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185423629"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 09:35:11 +0100
Date: Sun, 1 Nov 2015 09:35:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rdma: hfi1: chip: Remove
 wrapper functions
In-Reply-To: <d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1511010931350.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> Drop wrapper functions add_rcvctrl() and clear_rcvctrl() that can be replaced by a single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
>  1 file changed, 10 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
> index a9c6abf..23cacbf 100644
> --- a/drivers/staging/rdma/hfi1/chip.c
> +++ b/drivers/staging/rdma/hfi1/chip.c
> @@ -3176,16 +3176,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
>  	spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
>  }
>  
> -static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
> -{
> -	adjust_rcvctrl(dd, add, 0);
> -}
> -
> -static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
> -{
> -	adjust_rcvctrl(dd, 0, clear);
> -}

Is it really an improvement?  adjust_rcvctrl is not a standard kernel 
function.  In the original code, one can undestand what add_rcvctrl and 
clear_rcvctrl do based on their names.  In the modified code, you have to 
know what is the significance of the different argument positions of 
adjust_rcvctrl, so you have to go look at the definition.  So this makes 
more work for someone who wants to understand the code.

Wrapping standard kernel functions is not good.  And wrapping when the 
arguments don't change and the name is almost the same is probably not 
good either.  But here the wrapping would seem to add some value.

julia

>  /*
>   * Called from all interrupt handlers to start handling an SPC freeze.
>   */
> @@ -3268,7 +3258,7 @@ static void rxe_freeze(struct hfi1_devdata *dd)
>  	int i;
>  
>  	/* disable port */
> -	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
>  
>  	/* disable all receive contexts */
>  	for (i = 0; i < dd->num_rcv_contexts; i++)
> @@ -3290,7 +3280,7 @@ static void rxe_kernel_unfreeze(struct hfi1_devdata *dd)
>  		hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_ENB, i);
>  
>  	/* enable port */
> -	add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
>  }
>  
>  /*
> @@ -3441,7 +3431,7 @@ void handle_link_down(struct work_struct *work)
>  	reset_neighbor_info(ppd);
>  
>  	/* disable the port */
> -	clear_rcvctrl(ppd->dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
> +	adjust_rcvctrl(ppd->dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
>  
>  	/* If there is no cable attached, turn the DC off. Otherwise,
>  	 * start the link bring up. */
> @@ -5771,7 +5761,7 @@ int bringup_serdes(struct hfi1_pportdata *ppd)
>  	int ret;
>  
>  	if (HFI1_CAP_IS_KSET(EXTENDED_PSN))
> -		add_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK);
> +		adjust_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK, 0);
>  
>  	guid = ppd->guid;
>  	if (!guid) {
> @@ -5813,7 +5803,7 @@ void hfi1_quiet_serdes(struct hfi1_pportdata *ppd)
>  	set_link_state(ppd, HLS_DN_OFFLINE);
>  
>  	/* disable the port */
> -	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
>  }
>  
>  static inline int init_cpu_counters(struct hfi1_devdata *dd)
> @@ -6461,7 +6451,7 @@ int set_link_state(struct hfi1_pportdata *ppd, u32 state)
>  					OPA_LINKINIT_REASON_LINKUP;
>  
>  			/* enable the port */
> -			add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
> +			adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
>  
>  			handle_linkup_change(dd, 1);
>  		}
> @@ -9193,7 +9183,7 @@ static void set_partition_keys(struct hfi1_pportdata *ppd)
>  	}
>  
>  	/* Always enable HW pkeys check when pkeys table is set */
> -	add_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK, 0);
>  }
>  
>  /*
> @@ -9945,8 +9935,8 @@ static void init_qpmap_table(struct hfi1_devdata *dd,
>  	if (i % 8)
>  		write_csr(dd, regno, reg);
>  
> -	add_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
> -			| RCV_CTRL_RCV_BYPASS_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
> +			| RCV_CTRL_RCV_BYPASS_ENABLE_SMASK, 0);
>  }
>  
>  /**
> @@ -10041,7 +10031,7 @@ static void init_qos(struct hfi1_devdata *dd, u32 first_ctxt)
>  		LRH_SC_MASK << RCV_RSM_MATCH_MASK2_SHIFT |
>  		LRH_SC_VALUE << RCV_RSM_MATCH_VALUE2_SHIFT);
>  	/* Enable RSM */
> -	add_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK);
> +	adjust_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK, 0);
>  	kfree(rsmmap);
>  	/* map everything else (non-VL15) to context 0 */
>  	init_qpmap_table(
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

