X-GM-THRID: 6885903856141598720
X-Received: by 2002:a9d:71dc:: with SMTP id z28mr1114400otj.249.1603255328310;
        Tue, 20 Oct 2020 21:42:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:310b:: with SMTP id b11ls1029170ots.10.gmail; Tue,
 20 Oct 2020 21:42:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2hOZ034gzPGHaS2QVFX2x0D+VrR0AHlhQVyZHHQpq7yT9HnhlmKKRxKbk9Nj/71jPbihA
X-Received: by 2002:a05:6830:1347:: with SMTP id r7mr1249904otq.172.1603255326790;
        Tue, 20 Oct 2020 21:42:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603255326; cv=none;
        d=google.com; s=arc-20160816;
        b=ASWsZ7WGaOoVFrnC53BbvelTf2km14CiPJ+N+kZIYTXDf61rbMf6Pkth4rzlQsSPXE
         wZv+LrPWXFXxkk+u17N6fC0NkPLtY4lbc4v3fOKaTjHFtOD/U6d93HVdqnEJofXaUy++
         4W3fo2noWEFgKceFbO7TQnf2sQRMqSK+xf/PsFVzSREwmASQbaJVHATP8wpNRWmDUIfZ
         lXnLt4sRWiMxCkJbEbdmD1mkZTDq6pWjPp7uTzK+vZGXnf7CkiUK4LS+esqGSYCgf5yv
         tg12CUulvjGARZKDSiEyMuJlCQOuyUL5Cfy9YQ63s/Le7YknvInUHGGuROQzC8ZC52pO
         SogQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=WMp9VZJW/e1yaw6GWWnh35fLFiRKTfKiDtAJAgnVSTM=;
        b=G8nuo71JtmqqiQIL+KCoA0TJtGFcTDNr5z4/6v5FSA7/mjbuv+2mBxIhZhOSImA4Xy
         QvKIzeGOqPpi28aXsVCjMoCb06GIrPhcWR8Ne5D1Lmb9to+NVtXdUdf+/5yXppWsNugR
         IzGFX8cPsWiQ2MVcU181Xi/r7/rzudKussZJjlL7y2IWPR4OXbX+bnkYNlUUtgXkEBzg
         bCwQaDq9wamiFmJAj00NXq3J/tZtuJ7Fxfk9ltc2nsoZtii1tN1xvRtwl7s9mT7ztkqC
         zVcsUWT0+rH9acqqTYEPSoI0kfo3QzY153Q8o8iaeb1UQhixvUShcp6wiX7nawVi6/1e
         XCjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-07.prod.phx3.secureserver.net (p3plsmtpa06-07.prod.phx3.secureserver.net. [173.201.192.108])
        by gmr-mx.google.com with ESMTPS id w26si58097oih.1.2020.10.20.21.42.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 21:42:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) client-ip=173.201.192.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by :SMTPAUTH: with ESMTPSA
	id V5wrk9KReaTqpV5wrk0ZGF; Tue, 20 Oct 2020 21:42:06 -0700
X-CMAE-Analysis: v=2.3 cv=Z82S40ZA c=1 sm=1 tr=0
 a=Y+b99WSDUBXwRGtcog24Ag==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=fgv_Jtzw-SBM2wXiTwEA:9
 a=A8KqP780adTq3mWs:21 a=BF038GIJDjC65wxo:21 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f172.google.com with SMTP id m128so766816oig.7
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 21:42:05 -0700 (PDT)
X-Gm-Message-State: AOAM5323tDvErNye8ns8wDl1lVVrXSk2nJvYm1vf09VRxH5kY96CFzOH
	bGBFvBC1nWZdmzqP8dGqyHJDeynxxhLHa5UhTN4=
X-Received: by 2002:aca:750c:: with SMTP id q12mr972959oic.174.1603255325333;
 Tue, 20 Oct 2020 21:42:05 -0700 (PDT)
MIME-Version: 1.0
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
In-Reply-To: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 21 Oct 2020 10:11:52 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+pcG2djU67XVkd=M9O8eDOmr2qRkLpSs5+aQbKjTf46w@mail.gmail.com>
Message-ID: <CAK-LDb+pcG2djU67XVkd=M9O8eDOmr2qRkLpSs5+aQbKjTf46w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: kpc2000: resolve various
 code style issues
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfPvwwE4eQeC2EnAzixc2MHttFdmcFwlAlq2NLWMsxeBleU5Ge2cchetetW3oUZ8jI2OmfF65SkEd97abcBOdmbm5DaPoHhGlAHZ3SCuma4wRGVzM0dE1
 yk0t33M2BZyYTzNCu49DdiKi7JMpm1N51lK95KGpUEoAy9f2fxFV/ErqI/aQnVRYVIuHupZ6FzDH3toqIw0yZzf79lgy/p0ed2I=

On Wed, Oct 21, 2020 at 8:33 AM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Multiple issues reported by checkpatch script around lines exceeding 100
> columns, indentation of function parameters, extra blank lines. These
> code formatting changes improves the code readability.

Please send separate patches while fixing different checkpatch
warnings. It's a good idea to fix different warnings together if
it's for the same block of code but otherwise your patch should
handle one similar change at a time.

> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000/cell_probe.c  | 71 ++++++++++++++-----
>  drivers/staging/kpc2000/kpc2000/core.c        |  3 +-
>  .../staging/kpc2000/kpc2000/dma_common_defs.h |  3 +-
>  3 files changed, 58 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> index 738122afc2ae..e7e963d62699 100644
> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> @@ -30,9 +30,12 @@
>   *
>   */
>
> -#define KPC_OLD_DMA_CH_NUM(present, channel)   ((present) ? (0x8 | ((channel) & 0x7)) : 0)
> -#define KPC_OLD_S2C_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
> -#define KPC_OLD_C2S_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
> +#define KPC_OLD_DMA_CH_NUM(present, channel)   \
> +               ((present) ? (0x8 | ((channel) & 0x7)) : 0)
> +#define KPC_OLD_S2C_DMA_CH_NUM(cte)   \
> +               KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
> +#define KPC_OLD_C2S_DMA_CH_NUM(cte)   \
> +               KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
>
>  #define KP_CORE_ID_INVALID      0
>  #define KP_CORE_ID_I2C          3
> @@ -67,7 +70,8 @@ void  parse_core_table_entry_v0(struct core_table_entry *cte, const u64 read_val
>  static
>  void dbg_cte(struct kp2000_device *pcard, struct core_table_entry *cte)
>  {
> -       dev_dbg(&pcard->pdev->dev, "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
> +       dev_dbg(&pcard->pdev->dev,
> +               "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
>                 cte->type,
>                 cte->offset,
>                 cte->offset / 4096,
> @@ -107,7 +111,14 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
>                 .ddna              = pcard->ddna,
>         };
>
> -       dev_dbg(&pcard->pdev->dev, "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
> +       dev_dbg(&pcard->pdev->dev,
> +               "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
> +               cte.type,
> +               KPC_OLD_S2C_DMA_CH_NUM(cte),
> +               KPC_OLD_C2S_DMA_CH_NUM(cte),
> +               cte.offset,
> +               cte.length,
> +               cte.length / 8);
>
>         cell.platform_data = &core_pdata;
>         cell.pdata_size = sizeof(struct kpc_core_device_platdata);
> @@ -290,7 +301,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
>         struct kpc_uio_device *kudev;
>         int rv;
>
> -       dev_dbg(&pcard->pdev->dev, "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
> +       dev_dbg(&pcard->pdev->dev,
> +               "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
> +               cte.type,
> +               KPC_OLD_S2C_DMA_CH_NUM(cte),
> +               KPC_OLD_C2S_DMA_CH_NUM(cte),
> +               cte.offset,
> +               cte.length,
> +               cte.length / 8);
>
>         kudev = kzalloc(sizeof(*kudev), GFP_KERNEL);
>         if (!kudev)
> @@ -315,10 +333,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
>
>         kudev->uioinfo.mem[0].name = "uiomap";
>         kudev->uioinfo.mem[0].addr = pci_resource_start(pcard->pdev, REG_BAR) + cte.offset;
> -       kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1); // Round up to nearest PAGE_SIZE boundary
> +
> +       // Round up to nearest PAGE_SIZE boundary
> +       kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
>         kudev->uioinfo.mem[0].memtype = UIO_MEM_PHYS;
>
> -       kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
> +       kudev->dev = device_create(kpc_uio_class,
> +                                  &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d",
> +                                  kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
>         if (IS_ERR(kudev->dev)) {
>                 dev_err(&pcard->pdev->dev, "%s: device_create failed!\n",
>                         __func__);
> @@ -341,7 +363,9 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
>         return 0;
>  }
>
> -static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
> +static int  create_dma_engine_core(struct kp2000_device *pcard,
> +                                  size_t engine_regs_offset,
> +                                  int engine_num, int irq_num)
>  {
>         struct mfd_cell  cell = { .id = engine_num };
>         struct resource  resources[2];
> @@ -380,18 +404,28 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
>
>         // S2C Engines
>         for (i = 0 ; i < 32 ; i++) {
> -               capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
> +               capabilities_reg = readq(pcard->dma_bar_base +
> +                                        KPC_DMA_S2C_BASE_OFFSET +
> +                                        (KPC_DMA_ENGINE_SIZE * i));
> +
>                 if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
> -                       err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), i,  pcard->pdev->irq);
> +                       err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET +
> +                                                           (KPC_DMA_ENGINE_SIZE * i)),
> +                                                    i, pcard->pdev->irq);
>                         if (err)
>                                 goto err_out;
>                 }
>         }
>         // C2S Engines
>         for (i = 0 ; i < 32 ; i++) {
> -               capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
> +               capabilities_reg = readq(pcard->dma_bar_base +
> +                                        KPC_DMA_C2S_BASE_OFFSET +
> +                                        (KPC_DMA_ENGINE_SIZE * i));
> +
>                 if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
> -                       err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), 32 + i,  pcard->pdev->irq);
> +                       err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET +
> +                                                           (KPC_DMA_ENGINE_SIZE * i)),
> +                                                    32 + i,  pcard->pdev->irq);
>                         if (err)
>                                 goto err_out;
>                 }
> @@ -433,10 +467,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
>         // Then, iterate over the possible core types.
>         for (current_type_id = 1 ; current_type_id <= highest_core_id ; current_type_id++) {
>                 unsigned int core_num = 0;
> -               // Foreach core type, iterate the whole table and instantiate subdevices for each core.
> -               // Yes, this is O(n*m) but the actual runtime is small enough that it's an acceptable tradeoff.
> +               /*
> +                * Foreach core type, iterate the whole table and instantiate
> +                * subdevices for each core.
> +                * Yes, this is O(n*m) but the actual runtime is small enough
> +                * that it's an acceptable tradeoff.
> +                */
>                 for (i = 0 ; i < pcard->core_table_length ; i++) {
> -                       read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
> +                       read_val = readq(pcard->sysinfo_regs_base +
> +                                        ((pcard->core_table_offset + i) * 8));
>                         parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
>
>                         if (cte.type != current_type_id)
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index 358d7b2f4ad1..6462a3059fb0 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -124,6 +124,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
>         writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
>         return count;
>  }
> +
>  static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
>
>  static ssize_t irq_mask_reg_show(struct device *dev,
> @@ -367,7 +368,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>         dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
>
>         pcard->dma_bar_base = ioremap(dma_bar_phys_addr,
> -                                             dma_bar_phys_len);
> +                                     dma_bar_phys_len);
>         if (!pcard->dma_bar_base) {
>                 dev_err(&pcard->pdev->dev,
>                         "probe: DMA_BAR could not remap memory to virtual space\n");
> diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> index 21450e3d408f..8bc78be3c259 100644
> --- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> +++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> @@ -6,8 +6,7 @@
>  #define KPC_DMA_S2C_BASE_OFFSET     0x0000
>  #define KPC_DMA_C2S_BASE_OFFSET     0x2000
>  #define KPC_DMA_ENGINE_SIZE         0x0100
> -#define  ENGINE_CAP_PRESENT_MASK            0x1
> -
> +#define ENGINE_CAP_PRESENT_MASK     0x1
>
>  #define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
>  #define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825%40gmail.com.



-- 
Vaishali


-- 
Vaishali

