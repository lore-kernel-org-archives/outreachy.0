X-GM-THRID: 6212095586717401088
X-Received: by 10.112.55.2 with SMTP id n2mr3353684lbp.9.1446367486141;
        Sun, 01 Nov 2015 01:44:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.13 with SMTP id 13ls405425wmr.23.canary; Sun, 01 Nov
 2015 01:44:45 -0700 (PDT)
X-Received: by 10.28.133.3 with SMTP id h3mr1224246wmd.0.1446367485731;
        Sun, 01 Nov 2015 01:44:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si324026wmb.1.2015.11.01.01.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:44:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,228,1444687200"; 
   d="scan'208";a="185424207"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 09:44:45 +0100
Date: Sun, 1 Nov 2015 09:44:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: rdma: hfi1: Remove
 set_sbus_fast_mode() wrapper function
In-Reply-To: <5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1511010942530.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com> <5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:

> Drop set_sbus_fast_mode() wrapper function that can be replaced by
> a single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rdma/hfi1/chip.h     |  1 -
>  drivers/staging/rdma/hfi1/firmware.c | 15 ++++++---------
>  drivers/staging/rdma/hfi1/pcie.c     |  3 ++-
>  3 files changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rdma/hfi1/chip.h b/drivers/staging/rdma/hfi1/chip.h
> index f89a432..092fc9d 100644
> --- a/drivers/staging/rdma/hfi1/chip.h
> +++ b/drivers/staging/rdma/hfi1/chip.h
> @@ -619,7 +619,6 @@ void sbus_request(struct hfi1_devdata *dd,
>  		  u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
>  int sbus_request_slow(struct hfi1_devdata *dd,
>  		      u8 receiver_addr, u8 data_addr, u8 command, u32 data_in);
> -void set_sbus_fast_mode(struct hfi1_devdata *dd);
>  void clear_sbus_fast_mode(struct hfi1_devdata *dd);
>  int hfi1_firmware_init(struct hfi1_devdata *dd);
>  int load_pcie_firmware(struct hfi1_devdata *dd);
> diff --git a/drivers/staging/rdma/hfi1/firmware.c b/drivers/staging/rdma/hfi1/firmware.c
> index 5c2f2ed..0ce9a16 100644
> --- a/drivers/staging/rdma/hfi1/firmware.c
> +++ b/drivers/staging/rdma/hfi1/firmware.c
> @@ -987,7 +987,8 @@ void fabric_serdes_reset(struct hfi1_devdata *dd)
>  	ra = fabric_serdes_broadcast[dd->hfi1_id];
>  
>  	acquire_hw_mutex(dd);
> -	set_sbus_fast_mode(dd);
> +	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> +				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>  	/* place SerDes in reset and disable SPICO */
>  	sbus_request(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
>  	/* wait 100 refclk cycles @ 156.25MHz => 640ns */
> @@ -1214,12 +1215,6 @@ void release_hw_mutex(struct hfi1_devdata *dd)
>  	write_csr(dd, ASIC_CFG_MUTEX, 0);
>  }
>  
> -void set_sbus_fast_mode(struct hfi1_devdata *dd)
> -{
> -	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> -				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
> -}
> -
>  void clear_sbus_fast_mode(struct hfi1_devdata *dd)

set_sbus_fast_mode seems to be the pair of clear_sbus_fast_mode just below 
it, so it's not clear that it is a good idea to remove one and leave the 
other.

Also, when you put the body of a function in the place of the call site, 
you need to clean up the indentation.  In the call site at the top of the 
patch, there is one more tab than needed.

julia

>  {
>  	u64 reg, count = 0;
> @@ -1244,7 +1239,8 @@ int load_firmware(struct hfi1_devdata *dd)
>  		if (ret)
>  			return ret;
>  
> -		set_sbus_fast_mode(dd);
> +		write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> +				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>  
>  		/*
>  		 * The SBus contains part of the fabric firmware and so must
> @@ -1583,7 +1579,8 @@ int load_pcie_firmware(struct hfi1_devdata *dd)
>  	int ret = 0;
>  
>  	/* both firmware loads below use the SBus */
> -	set_sbus_fast_mode(dd);
> +	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> +				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>  
>  	if (fw_sbus_load) {
>  		turn_off_spicos(dd, SPICO_SBUS);
> diff --git a/drivers/staging/rdma/hfi1/pcie.c b/drivers/staging/rdma/hfi1/pcie.c
> index e6773b3..10596b1 100644
> --- a/drivers/staging/rdma/hfi1/pcie.c
> +++ b/drivers/staging/rdma/hfi1/pcie.c
> @@ -770,7 +770,8 @@ static void pcie_post_steps(struct hfi1_devdata *dd)
>  {
>  	int i;
>  
> -	set_sbus_fast_mode(dd);
> +	write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
> +				ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
>  	/*
>  	 * Write to the PCIe PCSes to set the G3_LOCKED_NEXT bits to 1.
>  	 * This avoids a spurious framing error that can otherwise be
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5cd4f403201b3e1c6b0f44429a5203b3447e2d27.1446366036.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

