X-GM-THRID: 6885903856141598720
X-Received: by 2002:a17:902:ee8b:b029:d3:f156:eefc with SMTP id a11-20020a170902ee8bb02900d3f156eefcmr1792832pld.19.1603259236163;
        Tue, 20 Oct 2020 22:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:648a:: with SMTP id h10ls103782pjj.1.experimental-gmail;
 Tue, 20 Oct 2020 22:47:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvgzF3MPVpkf6VwNpksEHXPhCQxWZvaCSEBL0Yfsz5fS7d87QRf2BHT7jPjdMYW9cBjIyt
X-Received: by 2002:a17:90a:8a04:: with SMTP id w4mr1677493pjn.201.1603259233598;
        Tue, 20 Oct 2020 22:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603259233; cv=none;
        d=google.com; s=arc-20160816;
        b=YGkcwGFdK592wm4r9ZvemsDC+iJ6Gh/EnORME7B+VKY/v/R6lbxMtQT0h4VyzYUQ2h
         PTT7cwXjMwoLFc8uH4U9wGpp6LKrRdEX3nvldu2ftG1o7uEjUcB2+bQ+uFFYO4pzvE57
         XoMDiQRtIRqjNvc4ARNH46H/o9B/8bORp2KjsD+RCwYOW0zBvSZBPpe0C4U5D8svMCoK
         B8Wh/BvFuOt7ZsJ5+sWs6nSJJrHFbPFa4xBP0Ue73+KXIre4CR+aa4qDTRhS75dv6jpC
         I7LMXHB+g0OiB9Dn3vFDfMT2s2xGpsNfXEeUNLoOhG6Y/xw78ys3oAC83eJguxZI2AOE
         uIFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=G7JxtzX23zDEMuFtOmHqQIJbWHZnj8QOgC2EWtVDl6c=;
        b=XdG1DEYhZfLjS/o4jVQacYy8OS46eYie294kTTTlMKSfL4NOGSUR6bMehhnqMeNox3
         BdYUNG/38cXEajFKmd+VT0UC0h9jhei2hveln6bAWAZ1uqmfSW0LAn43wio0A4L8fuHj
         9Y/eMnqUsq2Qych9/ruhReHPZWHvOYrPJENNtO6JyWcXwrS8Gneus1Tt4pQDMovE91xH
         5x6R1JuF+pGxYOG0OFTP6tTZQSzxZXk+1yYiStA0Ua/m+D4I6fUgc8RQS7s9ex63NciA
         6FVCbN67mkdldsWeTPoqSt48STJ0vOt48kXy7A+EC8nYwX0/Om6nsYkWrXJGAtNUoQcA
         ONYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piNBxIpW;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id ce17si66599pjb.3.2020.10.20.22.47.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 22:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piNBxIpW;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id kk5so574329pjb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 22:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=G7JxtzX23zDEMuFtOmHqQIJbWHZnj8QOgC2EWtVDl6c=;
        b=piNBxIpWkwoQgJ+sBNjCvapRvnX5WkFhPGT8/vgbMoLNqaDACux3DlNcoKI1ATjjFn
         I40A4/qJQbLXDVERZGX5V/4Z4TOUkxVm9ErRIdBw1vwtoVf2QNSrjLH6xLwPAWa/WMEE
         OsZYOZWw9avDRaxRHyrT8bAqt3zuBBb/hoTj3j1UK7dMQghVieD5MLlWXmQLQDG+GHP1
         Mc/H6jqXN9UtMUKnIyOH7Ew+QY6okZfeuVZBz+k/J77cv5iRtErIvPW9+31X0rIbLHcl
         7LUXgKEOsD1mDkIhey8UixDQw8Jww+yFgNW1PFI948tWByCLf6QKWn/ArSNocNTXkzvX
         O6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=G7JxtzX23zDEMuFtOmHqQIJbWHZnj8QOgC2EWtVDl6c=;
        b=XEDVXeTxk+MnMdBUU/DRPYrQr4nguyKusCasi4ueLeSWepdhaY9RaZ19fbQhFBak78
         GKMxtTgQGignMW2q9k+JoWWVNHvmEMIZBGa2cqBu5OrdnOBL2MgkM3i5+378yaqfEYp5
         SlZ+zQUpuTyapvWJTSJJEKKDufTTNKoftgrjFB4zICZg/Ac1D8p1stfYZElmmuMpis4c
         a80Xh/DhgA+ST/si5P/wR9GAvEV26tBk/y46bAms7Hy3WtUdy9+GyWZrsrELW10h1d/N
         cAdTZ7Jv3ndZWFe7xKL0ec/VjJqc5PqoEYqV01A9DU3XpIItLaucT2yZckTXEJbw0Tbc
         tRRQ==
X-Gm-Message-State: AOAM532ZKNFJyfcoYhJ3oqPVCG7TZB4rgwb0mQbg77amzG1cZVAHEwV/
	Y60AahN7+fLG/gIr9edY+v8=
X-Received: by 2002:a17:90a:49c2:: with SMTP id l2mr1657450pjm.156.1603259233256;
        Tue, 20 Oct 2020 22:47:13 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id x29sm835748pfp.152.2020.10.20.22.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 22:47:12 -0700 (PDT)
Date: Wed, 21 Oct 2020 11:17:08 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: kpc2000: resolve various
 code style issues
Message-ID: <20201021054708.GA763329@ubuntu204>
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
 <CAK-LDb+pcG2djU67XVkd=M9O8eDOmr2qRkLpSs5+aQbKjTf46w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDb+pcG2djU67XVkd=M9O8eDOmr2qRkLpSs5+aQbKjTf46w@mail.gmail.com>

On Wed, Oct 21, 2020 at 10:11:52AM +0530, Vaishali Thakkar wrote:
> On Wed, Oct 21, 2020 at 8:33 AM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Multiple issues reported by checkpatch script around lines exceeding 100
> > columns, indentation of function parameters, extra blank lines. These
> > code formatting changes improves the code readability.
> 
> Please send separate patches while fixing different checkpatch
> warnings. It's a good idea to fix different warnings together if
> it's for the same block of code but otherwise your patch should
> handle one similar change at a time.
> 
Okay. Will change my old commit and resend the patch set.

Thank you,
Deepak.

> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/kpc2000/kpc2000/cell_probe.c  | 71 ++++++++++++++-----
> >  drivers/staging/kpc2000/kpc2000/core.c        |  3 +-
> >  .../staging/kpc2000/kpc2000/dma_common_defs.h |  3 +-
> >  3 files changed, 58 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > index 738122afc2ae..e7e963d62699 100644
> > --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > @@ -30,9 +30,12 @@
> >   *
> >   */
> >
> > -#define KPC_OLD_DMA_CH_NUM(present, channel)   ((present) ? (0x8 | ((channel) & 0x7)) : 0)
> > -#define KPC_OLD_S2C_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
> > -#define KPC_OLD_C2S_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
> > +#define KPC_OLD_DMA_CH_NUM(present, channel)   \
> > +               ((present) ? (0x8 | ((channel) & 0x7)) : 0)
> > +#define KPC_OLD_S2C_DMA_CH_NUM(cte)   \
> > +               KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
> > +#define KPC_OLD_C2S_DMA_CH_NUM(cte)   \
> > +               KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
> >
> >  #define KP_CORE_ID_INVALID      0
> >  #define KP_CORE_ID_I2C          3
> > @@ -67,7 +70,8 @@ void  parse_core_table_entry_v0(struct core_table_entry *cte, const u64 read_val
> >  static
> >  void dbg_cte(struct kp2000_device *pcard, struct core_table_entry *cte)
> >  {
> > -       dev_dbg(&pcard->pdev->dev, "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
> > +       dev_dbg(&pcard->pdev->dev,
> > +               "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
> >                 cte->type,
> >                 cte->offset,
> >                 cte->offset / 4096,
> > @@ -107,7 +111,14 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
> >                 .ddna              = pcard->ddna,
> >         };
> >
> > -       dev_dbg(&pcard->pdev->dev, "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
> > +       dev_dbg(&pcard->pdev->dev,
> > +               "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
> > +               cte.type,
> > +               KPC_OLD_S2C_DMA_CH_NUM(cte),
> > +               KPC_OLD_C2S_DMA_CH_NUM(cte),
> > +               cte.offset,
> > +               cte.length,
> > +               cte.length / 8);
> >
> >         cell.platform_data = &core_pdata;
> >         cell.pdata_size = sizeof(struct kpc_core_device_platdata);
> > @@ -290,7 +301,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
> >         struct kpc_uio_device *kudev;
> >         int rv;
> >
> > -       dev_dbg(&pcard->pdev->dev, "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
> > +       dev_dbg(&pcard->pdev->dev,
> > +               "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
> > +               cte.type,
> > +               KPC_OLD_S2C_DMA_CH_NUM(cte),
> > +               KPC_OLD_C2S_DMA_CH_NUM(cte),
> > +               cte.offset,
> > +               cte.length,
> > +               cte.length / 8);
> >
> >         kudev = kzalloc(sizeof(*kudev), GFP_KERNEL);
> >         if (!kudev)
> > @@ -315,10 +333,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
> >
> >         kudev->uioinfo.mem[0].name = "uiomap";
> >         kudev->uioinfo.mem[0].addr = pci_resource_start(pcard->pdev, REG_BAR) + cte.offset;
> > -       kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1); // Round up to nearest PAGE_SIZE boundary
> > +
> > +       // Round up to nearest PAGE_SIZE boundary
> > +       kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
> >         kudev->uioinfo.mem[0].memtype = UIO_MEM_PHYS;
> >
> > -       kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
> > +       kudev->dev = device_create(kpc_uio_class,
> > +                                  &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d",
> > +                                  kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
> >         if (IS_ERR(kudev->dev)) {
> >                 dev_err(&pcard->pdev->dev, "%s: device_create failed!\n",
> >                         __func__);
> > @@ -341,7 +363,9 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
> >         return 0;
> >  }
> >
> > -static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
> > +static int  create_dma_engine_core(struct kp2000_device *pcard,
> > +                                  size_t engine_regs_offset,
> > +                                  int engine_num, int irq_num)
> >  {
> >         struct mfd_cell  cell = { .id = engine_num };
> >         struct resource  resources[2];
> > @@ -380,18 +404,28 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
> >
> >         // S2C Engines
> >         for (i = 0 ; i < 32 ; i++) {
> > -               capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
> > +               capabilities_reg = readq(pcard->dma_bar_base +
> > +                                        KPC_DMA_S2C_BASE_OFFSET +
> > +                                        (KPC_DMA_ENGINE_SIZE * i));
> > +
> >                 if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
> > -                       err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), i,  pcard->pdev->irq);
> > +                       err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET +
> > +                                                           (KPC_DMA_ENGINE_SIZE * i)),
> > +                                                    i, pcard->pdev->irq);
> >                         if (err)
> >                                 goto err_out;
> >                 }
> >         }
> >         // C2S Engines
> >         for (i = 0 ; i < 32 ; i++) {
> > -               capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
> > +               capabilities_reg = readq(pcard->dma_bar_base +
> > +                                        KPC_DMA_C2S_BASE_OFFSET +
> > +                                        (KPC_DMA_ENGINE_SIZE * i));
> > +
> >                 if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
> > -                       err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), 32 + i,  pcard->pdev->irq);
> > +                       err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET +
> > +                                                           (KPC_DMA_ENGINE_SIZE * i)),
> > +                                                    32 + i,  pcard->pdev->irq);
> >                         if (err)
> >                                 goto err_out;
> >                 }
> > @@ -433,10 +467,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
> >         // Then, iterate over the possible core types.
> >         for (current_type_id = 1 ; current_type_id <= highest_core_id ; current_type_id++) {
> >                 unsigned int core_num = 0;
> > -               // Foreach core type, iterate the whole table and instantiate subdevices for each core.
> > -               // Yes, this is O(n*m) but the actual runtime is small enough that it's an acceptable tradeoff.
> > +               /*
> > +                * Foreach core type, iterate the whole table and instantiate
> > +                * subdevices for each core.
> > +                * Yes, this is O(n*m) but the actual runtime is small enough
> > +                * that it's an acceptable tradeoff.
> > +                */
> >                 for (i = 0 ; i < pcard->core_table_length ; i++) {
> > -                       read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
> > +                       read_val = readq(pcard->sysinfo_regs_base +
> > +                                        ((pcard->core_table_offset + i) * 8));
> >                         parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
> >
> >                         if (cte.type != current_type_id)
> > diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> > index 358d7b2f4ad1..6462a3059fb0 100644
> > --- a/drivers/staging/kpc2000/kpc2000/core.c
> > +++ b/drivers/staging/kpc2000/kpc2000/core.c
> > @@ -124,6 +124,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
> >         writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
> >         return count;
> >  }
> > +
> >  static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
> >
> >  static ssize_t irq_mask_reg_show(struct device *dev,
> > @@ -367,7 +368,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
> >         dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
> >
> >         pcard->dma_bar_base = ioremap(dma_bar_phys_addr,
> > -                                             dma_bar_phys_len);
> > +                                     dma_bar_phys_len);
> >         if (!pcard->dma_bar_base) {
> >                 dev_err(&pcard->pdev->dev,
> >                         "probe: DMA_BAR could not remap memory to virtual space\n");
> > diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> > index 21450e3d408f..8bc78be3c259 100644
> > --- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> > +++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> > @@ -6,8 +6,7 @@
> >  #define KPC_DMA_S2C_BASE_OFFSET     0x0000
> >  #define KPC_DMA_C2S_BASE_OFFSET     0x2000
> >  #define KPC_DMA_ENGINE_SIZE         0x0100
> > -#define  ENGINE_CAP_PRESENT_MASK            0x1
> > -
> > +#define ENGINE_CAP_PRESENT_MASK     0x1
> >
> >  #define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
> >  #define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825%40gmail.com.
> 
> 
> 
> -- 
> Vaishali
> 
> 
> -- 
> Vaishali

