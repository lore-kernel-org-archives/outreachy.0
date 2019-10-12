X-GM-THRID: 6746727664104505344
X-Received: by 2002:aa7:d687:: with SMTP id d7mr17413499edr.143.1570859143363;
        Fri, 11 Oct 2019 22:45:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a5c2:: with SMTP id b2ls2196926edc.3.gmail; Fri, 11 Oct
 2019 22:45:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydt6lFhX8DGrwU3kTDsrvyCZAcDI6w08pr/kyeK8zhcsQHjXrQFNSTflG34uCmvCIQwOoK
X-Received: by 2002:a50:8b45:: with SMTP id l63mr17428224edl.31.1570859142552;
        Fri, 11 Oct 2019 22:45:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570859142; cv=none;
        d=google.com; s=arc-20160816;
        b=HoTEx/aB9eEgSn0LHWOzQxK1pkZ35W4PG5RwWAD/IeXwZayBFNTMFuzP5hjWWGQtmX
         1UGW21ETfLM37mhX1Q99k1gzSN/sSzPF/9KMN89EIrT4YaX35Od/dtai/g/fjIdlcSIX
         os/tL0WTkctAfL6CM4rG+7ZkOQnbDDMoHFJ0PEauT09IagRPJkwLo9rN0xNiu91TFPuz
         vMJ5zrYL0F3zN4kYfuw5SFJte5dIpbE04JF7LtRaSmDXrFR/XqQWg3biHoFOC1nTWE1p
         ZWozt8H0QhjmJVKCGmRurYH6qrZ2/KeyhMSNof9CCH4GrrcNUS2TmcVIrjoCKAEN0WdW
         qZww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=M3tRD1u49bw8uczhBbYBMgppWqnrZR03GmXeAw/CXk0=;
        b=DM+gfpbfyAoiMPKxDlgwWUyLCXQmBYuu7940BLuVk7B1HavBEoCfNuup0SFqzqH6pL
         u8JM5W5w8xqg4gnZXOn20HLNxxoVSjvZHwiM110Vg49QLdSTe80Ccebf7avyxFq5u+/1
         wNsiSpDNk6Mv0zWcZX8seqiNA6SGvqV5/JC68pmwrr8X98FOMctZNLsSuK/ITmY2Gqkl
         I+5ldvpQ9/hXYBWYc9GkVvK9C/FsHvaiizFB2wLI4bTlZ6YaQK1xutx3tEwGKwYyehac
         xd7ln0AmapWP4UjjE1m8TK3G03gPca2Cw3cLH9yQ3t1+sv/0tN7lLytE6HexUVbeOf+z
         eI3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y11si133831edq.1.2019.10.11.22.45.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 22:45:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,286,1566856800"; 
   d="scan'208";a="405849240"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 07:45:42 +0200
Date: Sat, 12 Oct 2019 07:45:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: boqun.feng@microsoft.com, andrea.parri@microsoft.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Fix lines
 ending with open parenthesis
In-Reply-To: <20191012014637.2655-1-jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910120744320.2637@hadrien>
References: <20191012014637.2655-1-jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 11 Oct 2019, Jamal Shareef wrote:

> Fix lines ending with open parenthesis. Issue
> found by checkpatch.

This has the same subject line as the other patch you sent on a different
file.  Each patch has to have a unique subject line.  If you can't find
one, it would seem that the patches should be merged into one.

The comments I made on the other patch apply to this one as well.

julia

>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss_csi2.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
> index a6dc2d2b1228..738eb8b07430 100644
> --- a/drivers/staging/media/omap4iss/iss_csi2.c
> +++ b/drivers/staging/media/omap4iss/iss_csi2.c
> @@ -495,9 +495,11 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
>  		    CSI2_SYSCONFIG_SOFT_RESET);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
> -		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
> +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> +							  csi2->regs1,
> +							  CSI2_SYSSTATUS) &
> +					     CSI2_SYSSTATUS_RESET_DONE,
> +					     500, 100, 200);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
>  		return -EBUSY;
> @@ -506,9 +508,11 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
>  	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
>  		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
>
> -	timeout = iss_poll_condition_timeout(
> -		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
> -		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
> +	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
> +							  csi2->phy->phy_regs,
> +							  REGISTER1) &
> +					     REGISTER1_RESET_DONE_CTRLCLK,
> +					     10000, 100, 500);
>  	if (timeout) {
>  		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
>  		return -EBUSY;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191012014637.2655-1-jamal.k.shareef%40gmail.com.
>

