X-GM-THRID: 6261383436931432448
X-Received: by 10.112.145.225 with SMTP id sx1mr1282595lbb.23.1457842332374;
        Sat, 12 Mar 2016 20:12:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.130.203 with SMTP id e194ls644587lfd.43.gmail; Sat, 12 Mar
 2016 20:12:11 -0800 (PST)
X-Received: by 10.25.142.130 with SMTP id q124mr2133859lfd.9.1457842331673;
        Sat, 12 Mar 2016 20:12:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si409529wmh.1.2016.03.12.20.12.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 20:12:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="168377737"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 05:12:10 +0100
Date: Sun, 13 Mar 2016 05:12:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Juliana Rodrigues <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: fixed multiple
 blank lines
In-Reply-To: <20160313040529.GA10236@spock>
Message-ID: <alpine.DEB.2.02.1603130510570.2069@localhost6.localdomain6>
References: <20160313040529.GA10236@spock>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 13 Mar 2016, Juliana Rodrigues wrote:

> This patch removes multiple blank lines that caused 
> checkpatch issues.

Looks better, thanks.  Still you can approach 80 characters for the commit 
message. You should be using an editor to write your commit messages that 
inserts a newline in the right place, so you don't have to think about 
this issue.

julia

> 
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
> Changes in v2:
>    - Removed file name from subject line.
>  
>  drivers/staging/dgnc/dgnc_driver.h | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index 6d91abd..d76f91e 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -88,7 +88,6 @@
>  #define   _POSIX_VDISABLE '\0'
>  #endif
>  
> -
>  /*
>   * All the possible states the driver can be while being loaded.
>   */
> @@ -106,7 +105,6 @@ enum {
>  	BOARD_READY
>  };
>  
> -
>  /*************************************************************************
>   *
>   * Structures and closely related defines.
> @@ -145,7 +143,6 @@ struct board_ops {
>   ************************************************************************/
>  #define BD_IS_PCI_EXPRESS     0x0001	  /* Is a PCI Express board */
>  
> -
>  /*
>   *	Per-board information
>   */
> @@ -241,7 +238,6 @@ struct dgnc_board {
>  
>  };
>  
> -
>  /************************************************************************
>   * Unit flag definitions for un_flags.
>   ************************************************************************/
> @@ -277,7 +273,6 @@ struct un_t {
>  	struct device *un_sysfs;
>  };
>  
> -
>  /************************************************************************
>   * Device flag definitions for ch_flags.
>   ************************************************************************/
> @@ -300,7 +295,6 @@ struct un_t {
>  #define CH_FORCED_STOP  0x20000		/* Output is forcibly stopped	*/
>  #define CH_FORCED_STOPI 0x40000		/* Input is forcibly stopped	*/
>  
> -
>  /* Our Read/Error/Write queue sizes */
>  #define RQUEUEMASK	0x1FFF		/* 8 K - 1 */
>  #define EQUEUEMASK	0x1FFF		/* 8 K - 1 */
> @@ -309,7 +303,6 @@ struct un_t {
>  #define EQUEUESIZE	RQUEUESIZE
>  #define WQUEUESIZE	(WQUEUEMASK + 1)
>  
> -
>  /************************************************************************
>   * Channel information structure.
>   ************************************************************************/
> @@ -397,7 +390,6 @@ struct channel_t {
>  	ulong		ch_intr_tx;	/* Count of interrupts */
>  	ulong		ch_intr_rx;	/* Count of interrupts */
>  
> -
>  	/* /proc/<board>/<channel> entries */
>  	struct proc_dir_entry *proc_entry_pointer;
>  	struct dgnc_proc_entry *dgnc_channel_table;
> @@ -415,5 +407,4 @@ extern uint		dgnc_NumBoards;		/* Total number of boards */
>  extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board
>  							 * structs
>  							 */
> -
>  #endif
> -- 
> 2.7.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160313040529.GA10236%40spock.
> For more options, visit https://groups.google.com/d/optout.
> 

