Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6207E7EC
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=UNCoRnpwTaSVlrJcTE1V0ekNef7+BU7eV0fDVUwRHYo=;
  b=k8r8pmS1qEiC4JSOp05AbJh3Loef8NiUIr41pJTY5928ef/fUA5Oq3gt
   yYcAdEidJIwY45zWYmllHRjXyCwY3sGdixa/I0etxA0/ac7krPSLkiag7
   7hfN514EJ2SvAorhpYeDchKHc0epCu+tz/zR5yGvFHPxZMtEl8uls54IB
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,271,1673910000"; 
   d="scan'208";a="97855129"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2023 07:05:26 +0100
Date: Sat, 18 Mar 2023 07:05:27 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Ira Weiny <ira.weiny@intel.com>
cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Warn on macros with flow control statements
In-Reply-To: <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
Message-ID: <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
References: <20230316080834.GA43491@sumitra.com> <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Based on the flow control I would do something like this.  It is a bit more
> verbose but is very clear what is happening.
>

Ira, what do you think of my suggestion of

err = err || qlge_fill_seg_(...);

It would avoid 40 lines of ifs, and would still avoid calling
qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
recall this being done elsewhere, so maybe all the ifs would be
preferable.

julia


> Ira
>
> 22:31:10 > git di
> diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
> index 0ab02d6d3817..043ed989f9a0 100644
> --- a/drivers/staging/qlge/qlge_devlink.c
> +++ b/drivers/staging/qlge/qlge_devlink.c
> @@ -39,15 +39,6 @@ static int qlge_fill_seg_(struct devlink_fmsg *fmsg,
>         return err;
>  }
>
> -#define FILL_SEG(seg_hdr, seg_regs)                                        \
> -       do {                                                                \
> -               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> -               if (err) {                                                  \
> -                       kvfree(dump);                                       \
> -                       return err;                                         \
> -               }                                                           \
> -       } while (0)
> -
>  static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>                                   struct devlink_fmsg *fmsg, void *priv_ctx,
>                                   struct netlink_ext_ack *extack)
> @@ -85,7 +76,12 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>
>         qlge_soft_reset_mpi_risc(qdev);
>
> -       FILL_SEG(core_regs_seg_hdr, mpi_core_regs);
> +       err = qlge_fill_seg_(fmsg, &dump->core_regs_seg_hdr,
> +                            dump->mpi_core_regs);
> +       if (err)
> +               goto out;
> +
> +...  and all these others too...
>         FILL_SEG(test_logic_regs_seg_hdr, test_logic_regs);
>         FILL_SEG(rmii_regs_seg_hdr, rmii_regs);
>         FILL_SEG(fcmac1_regs_seg_hdr, fcmac1_regs);
> @@ -117,10 +113,8 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>
>         err = qlge_fill_seg_(fmsg, &dump->misc_nic_seg_hdr,
>                              (u32 *)&dump->misc_nic_info);
> -       if (err) {
> -               kvfree(dump);
> -               return err;
> -       }
> +       if (err)
> +               goto out;
>
>         FILL_SEG(intr_states_seg_hdr, intr_states);
>         FILL_SEG(cam_entries_seg_hdr, cam_entries);
> @@ -139,6 +133,7 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>         FILL_SEG(xfi2_hss_pll_hdr, serdes2_xfi_hss_pll);
>         FILL_SEG(sem_regs_seg_hdr, sem_regs);
>
> +out:
>         kvfree(dump);
>         return err;
>  }
>
>
