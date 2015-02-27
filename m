X-GM-THRID: 4353845886976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2e2a85f181fedf86
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.30.41 with SMTP id j29mr11742370yha.28.1425030908313;
        Fri, 27 Feb 2015 01:55:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.209 with SMTP id p78ls499662ioi.71.gmail; Fri, 27 Feb
 2015 01:55:08 -0800 (PST)
X-Received: by 10.66.162.6 with SMTP id xw6mr12327943pab.47.1425030908069;
        Fri, 27 Feb 2015 01:55:08 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id ix5si86706qcb.2.2015.02.27.01.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 01:55:07 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-f52.google.com with SMTP id l89so1276191qgf.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 01:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=knhyo5B22EqtZhta1qJt2MN4qqC6Lqp1QvvGZG/JL4A=;
        b=L43qNsESDT40LqRmpymY7wje/XIUHzNrg8nwyT6SghrGgJxmI7cJmw0DcRKWxB14m+
         5HB62Wn0jusPNQsnDIEvgx8mcHezKe8qrnOPxX3xIs6kX2SWekdgks/qkxKX4ple2qIi
         KaAM6+AlU0aFfuM0WBvvCzELR/hLbh7xf5GbIYLj0/HxHXdST5Q3zIv/N6SA6jQy0Nnp
         Z4nzqpxGgRjm/ESqoxNpZX9IWblPcVZbiE3NNXeHTkvbG/R69eZqDOucuBI0Hdbu2u5L
         oqj4FU/cx3kpQ2CMBmwkxgDrq7/Wu5oKSQOClZYVmZz3Ahwhge+d+ZcnGJbBoFdc1e2u
         4h6Q==
MIME-Version: 1.0
X-Received: by 10.140.236.140 with SMTP id h134mr7900931qhc.87.1425030907837;
 Fri, 27 Feb 2015 01:55:07 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.96.174.74 with HTTP; Fri, 27 Feb 2015 01:55:07 -0800 (PST)
In-Reply-To: <1425030792-6216-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1425030792-6216-1-git-send-email-yeliztaneroglu@gmail.com>
Date: Fri, 27 Feb 2015 11:55:07 +0200
X-Google-Sender-Auth: Hz9kysw6qcqvwaInOxgdEU18ZYk
Message-ID: <CAEnQRZDKhRNDTOmqVdtHjYCS+hFunVOXmQRj1gNa4nT9irU6Mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix do not use C99 // comments
From: Daniel Baluta <daniel.baluta@intel.com>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 27, 2015 at 11:53 AM, Yeliz Taneroglu
<yeliztaneroglu@gmail.com> wrote:
> Fix checkpatch.pl issues with do not use C99 //
> comments in device_main.c
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/vt6655/device_main.c | 34 +++++++++++++++++-----------------
>  1 file changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 4324282..9b4f38a 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -64,9 +64,9 @@
>  #include <linux/slab.h>
>
>  /*---------------------  Static Definitions -------------------------*/
> -//
> -// Define module options
> -//
> +/* */
> +/* Define module options */
> +/* */
>  MODULE_AUTHOR("VIA Networking Technologies, Inc., <lyndonchen@vntek.com.tw>");
>  MODULE_LICENSE("GPL");
>  MODULE_DESCRIPTION("VIA Networking Solomon-A/B/G Wireless LAN Adapter Driver");
> @@ -126,9 +126,9 @@ DEVICE_PARAM(LongRetryLimit, "long frame retry limits");
>
>  DEVICE_PARAM(BasebandType, "baseband type");
>
> -//
> -// Static vars definitions
> -//
> +/* */
> +/* Static vars definitions */
> +/* */
>  static CHIP_INFO chip_info_table[] = {
>         { VT3253,       "VIA Networking Solomon-A/B/G Wireless LAN Adapter ",
>           256, 1,     DEVICE_FLAGS_IP_ALIGN|DEVICE_FLAGS_TX_ALIGN },
> @@ -231,9 +231,9 @@ device_set_options(struct vnt_private *pDevice)
>         pr_debug(" byBBType= %d\n", (int)pDevice->byBBType);
>  }
>
> -//
> -// Initialisation of MAC & BBP registers
> -//
> +/* */
> +/* Initialisation of MAC & BBP registers */
> +/* */
>
>  static void device_init_registers(struct vnt_private *pDevice)
>  {
> @@ -584,7 +584,7 @@ static bool device_init_rings(struct vnt_private *pDevice)
>         pDevice->td1_pool_dma = pDevice->td0_pool_dma +
>                 pDevice->sOpts.nTxDescs[0] * sizeof(STxDesc);
>
> -       // vir_pool: pvoid type
> +       /* vir_pool: pvoid type */
>         pDevice->apTD0Rings = vir_pool
>                 + pDevice->sOpts.nRxDescs0 * sizeof(SRxDesc)
>                 + pDevice->sOpts.nRxDescs1 * sizeof(SRxDesc);
> @@ -943,7 +943,7 @@ static int device_tx_srv(struct vnt_private *pDevice, unsigned int uIdx)
>                 byTsr0 = pTD->m_td0TD0.byTSR0;
>                 byTsr1 = pTD->m_td0TD0.byTSR1;
>
> -               //Only the status of first TD in the chain is correct
> +               /* Only the status of first TD in the chain is correct */
>                 if (pTD->m_td1TD1.byTCR & TCR_STP) {
>                         if ((pTD->pTDInfo->byFlags & TD_FLAGS_NETIF_SKB) != 0) {
>
> @@ -992,7 +992,7 @@ static void device_free_tx_buf(struct vnt_private *pDevice, PSTxDesc pDesc)
>         PDEVICE_TD_INFO  pTDInfo = pDesc->pTDInfo;
>         struct sk_buff *skb = pTDInfo->skb;
>
> -       // pre-allocated buf_dma can't be unmapped.
> +       /* pre-allocated buf_dma can't be unmapped. */
>         if (pTDInfo->skb_dma && (pTDInfo->skb_dma != pTDInfo->buf_dma)) {
>                 pci_unmap_single(pDevice->pcid, pTDInfo->skb_dma, skb->len,
>                                  PCI_DMA_TODEVICE);
> @@ -1084,7 +1084,7 @@ static  irqreturn_t  device_intr(int irq,  void *dev_instance)
>
>         spin_lock_irqsave(&pDevice->lock, flags);
>
> -       //Make sure current page is 0
> +       /* Make sure current page is 0 */
>         VNSvInPortB(pDevice->PortOffset + MAC_REG_PAGE1SEL, &byOrgPageSel);
>         if (byOrgPageSel == 1)
>                 MACvSelectPage0(pDevice->PortOffset);
> @@ -1092,10 +1092,10 @@ static  irqreturn_t  device_intr(int irq,  void *dev_instance)
>                 byOrgPageSel = 0;
>
>         MACvReadMIBCounter(pDevice->PortOffset, &dwMIBCounter);
> -       // TBD....
> -       // Must do this after doing rx/tx, cause ISR bit is slow
> -       // than RD/TD write back
> -       // update ISR counter
> +       /* TBD.... */
> +       /* Must do this after doing rx/tx, cause ISR bit is slow */
> +       /* than RD/TD write back */
> +       /* update ISR counter */


The correct multi line comment looks like this:

/*
 * this is a comment that spreads
 * over several lines
 */

