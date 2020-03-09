X-GM-THRID: 6802195878840893440
X-Received: by 2002:adf:fc81:: with SMTP id g1mr22036854wrr.410.1583760294378;
        Mon, 09 Mar 2020 06:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls2500765wmf.2.gmail; Mon, 09
 Mar 2020 06:24:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDb3SM4AJBrAPpnGWGhOTbaU0Q78Fj2fnN1PRJszfQ5KtUf9mZ7+d9HX67vhbv4SKObJ2p
X-Received: by 2002:a7b:c20c:: with SMTP id x12mr575795wmi.80.1583760293000;
        Mon, 09 Mar 2020 06:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583760292; cv=none;
        d=google.com; s=arc-20160816;
        b=NnuE2X29A/Xng8VfWIPFKche+Ak6TGnZq29qzngPQh6GFPLheXY2FE5miGUYURlpEU
         HIZDvUIJbTaBZpYXnwW3vVuOTyI23KkUfgdCxVxlcPf5R/Wz7BSvNAHBHEYeLUgdA1+A
         q82TpynJxCE4dGl9ROa1xPIBtHOyYXWZeDm8nu50jNzklPgiXMmADCQklqjLvp+OBJ3Z
         OPSYierw0mvF3cu/nkUWmeIW3+bjGqQu68wxTOgDl2AAm84adWQS1RoMmXHSJHAfDeKH
         MqOnMSKmFK4vOiaqQPywuP8MemIAaRxC6wXRaenEqtj3wlf48giqN0KNH2MCofkApM6P
         cFkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=A7Qb6L8I/FMEIk19J87tc91hm07S+lYh66TrRMWqcWg=;
        b=TNY8pkh59q07x5l4AShVeRkyBTO2Esic42jAH5Ydz9qy8kQut7/70ddiobX+6wiE3z
         xWWF1OnEm+QRnu9amwDPfboMJcERypsN8bnn+V+fMW0OtJt3ic3MHf0J0Px+1OEsA0di
         hTwshRyWXNbRXbeMwMKtg1bRosJVWnLAAG6es+WEamjIvoCq17DSFmYomNjQp+VFJ01B
         oojmhBGKXrOUmLDCZg8c8NKdfKlSCZl56tZPF+V994Ljr0ccpC1bX/MXJRmwdumRsNpT
         r6o6WihEOW0W01IFZFfPgB4tgh5L9H7PFUfp0iV4aPLpVw38Wy1pnvQpz9P5jbj9cY51
         cW3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d14si380277wru.1.2020.03.09.06.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,533,1574118000"; 
   d="scan'208";a="439491679"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 14:24:52 +0100
Date: Mon, 9 Mar 2020 14:24:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/3] [Outreachy kernel] staging: qlge: qlge.h: add spaces
 around operators
In-Reply-To: <3a471ee901679659280d420549610b12e9efcdf6.1583759118.git.payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003091424150.4721@hadrien>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com> <3a471ee901679659280d420549610b12e9efcdf6.1583759118.git.payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> Add spaces around operators cleanup reported by checkpatch.

This is too much for one sentence.

Add spaces around operators.  Cleanup suggested by checkpatch.

julia

>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/qlge/qlge.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index 66641edff6b5..4ef8dae3d7a0 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -59,7 +59,7 @@
>  #define MAX_CQ 128
>  #define DFLT_COALESCE_WAIT 100	/* 100 usec wait for coalescing */
>  #define MAX_INTER_FRAME_WAIT 10	/* 10 usec max interframe-wait for coalescing */
> -#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT/2)
> +#define DFLT_INTER_FRAME_WAIT (MAX_INTER_FRAME_WAIT / 2)
>  #define UDELAY_COUNT 3
>  #define UDELAY_DELAY 100
>
> @@ -1367,7 +1367,7 @@ struct tx_ring_desc {
>  	struct tx_ring_desc *next;
>  };
>
> -#define QL_TXQ_IDX(qdev, skb) (smp_processor_id()%(qdev->tx_ring_count))
> +#define QL_TXQ_IDX(qdev, skb) (smp_processor_id() % (qdev->tx_ring_count))
>
>  struct tx_ring {
>  	/*
> @@ -1792,7 +1792,7 @@ struct ql_reg_dump {
>
>  	/* segment 34 */
>  	struct mpi_coredump_segment_header ets_seg_hdr;
> -	u32 ets[8+2];
> +	u32 ets[8 + 2];
>  };
>
>  struct ql_mpi_coredump {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3a471ee901679659280d420549610b12e9efcdf6.1583759118.git.payalskshirsagar1234%40gmail.com.
>

