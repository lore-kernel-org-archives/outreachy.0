X-GM-THRID: 6883539581978804224
X-Received: by 2002:a05:6602:2dc2:: with SMTP id l2mr2440775iow.179.1602751468987;
        Thu, 15 Oct 2020 01:44:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:899b:: with SMTP id w27ls414562ilk.4.gmail; Thu, 15 Oct
 2020 01:44:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGPhkJHU21eLgIKnuRgawVHb5rjmZeMgkExj0C3JdLt8sSsNqWtBs+1meLQN3xttAPxcmT
X-Received: by 2002:a05:6e02:c85:: with SMTP id b5mr2316482ile.187.1602751467727;
        Thu, 15 Oct 2020 01:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602751467; cv=none;
        d=google.com; s=arc-20160816;
        b=NuQkAPdjxaBKxziyQoLtJO1Dx1NTA7YjWSYyDpBln5HKb+u0oTWZvMmc3rEX6DFyeE
         f3G7WpZymaz+nl+Bg75JkYtSKpkFdmh1uv5K51LxwbuUVPGv1pJKcN5xJDQJrFwJqjy3
         KpBdZiqtOwSiI8zcgzRyXZ4/XGqhmSXTleOemhXSsj1HXKeStnpQ5Cd6WeOKevkG1mLu
         SR9NMpLmIlxrp4jsb7syaTse+cfCGsCrycJs6FcWmyK2aUhVDNvqAVhLrDjfrZH13vck
         59yhgBivctu9z7w0E4AxxI16IWrcFlShdxHva+fxvpJLyU+sGAZ6qh69MN/iwJMy2Kw+
         LP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=kxBtBA00P3GTpKZPTF5MRYb1Q2Fq7Yf+8mlzLoxz41g=;
        b=PG2pZ1C4O6E1Gzbm9GEtIdEnU4VzN8cncYgrqswqmDMFL2HZ/3EK7vJ4tnFf3IWsqK
         1ki2A0ocjPNHgMgrY7R5YwPRDed23l9cGDj/aW/dCnxhgtCpGTpvEb8zGWlrm65zYWm5
         x9X8Icv95AVeaLr+DAA8727auHjk34DNeMbiYgA8qMfmin97qjNX+ckaInW0I8uSjf8T
         nN5SHWLaXD0ekJSLocJWGwtKV3wOMh1E/dZ/35hwnZUZJNMzp92QJDbsg/VmnnElQPa1
         dUq9eIKmI2zVsVxoUvCZwFnCnDxUEc7q4Tnu6TQg1tNsuXsFmH9ejBiJcWSi8Ovq6Was
         WW/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-07.prod.phx3.secureserver.net (p3plsmtpa11-07.prod.phx3.secureserver.net. [68.178.252.108])
        by gmr-mx.google.com with ESMTPS id b21si93635iow.3.2020.10.15.01.44.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 01:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) client-ip=68.178.252.108;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.108 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ot1-f53.google.com ([209.85.210.53])
	by :SMTPAUTH: with ESMTPSA
	id Sys6k35qP2052Sys6khc4N; Thu, 15 Oct 2020 01:44:26 -0700
X-CMAE-Analysis: v=2.3 cv=EaO2v8uC c=1 sm=1 tr=0
 a=YKy5iuLXnxoOKB4xgfqhSw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=ah4tFYJVAAAA:8 a=taGcuxmDeBkMNW9S_fQA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=-FEs8UIgK8oA:10 a=NWVoK91CQyQA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=Upar0pg2CrKrM9rf4Tky:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ot1-f53.google.com with SMTP id i12so2213403ota.5
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2020 01:44:26 -0700 (PDT)
X-Gm-Message-State: AOAM530AWCRrHtlfdjeF8RVUoRnl0U72L8I9i37/HefiTUpjZ1GarGMi
	BTsTUU7LPOZM7nk3wCjDe9rLfm0pKNJioOjj49c=
X-Received: by 2002:a9d:2923:: with SMTP id d32mr1986401otb.364.1602751466399;
 Thu, 15 Oct 2020 01:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <20201015031946.GA16455@ubuntu204>
In-Reply-To: <20201015031946.GA16455@ubuntu204>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 15 Oct 2020 14:14:14 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJpBYPDfpnww=QVSqTvAzzp4gju7udbJsHarQ8eAiWotQ@mail.gmail.com>
Message-ID: <CAK-LDbJpBYPDfpnww=QVSqTvAzzp4gju7udbJsHarQ8eAiWotQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: qlge: remove extra blank lines
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>, Manish Chopra <manishc@marvell.com>, 
	GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfN4GtTuZGhBZE0HmJFAHiWZMP/TfrNd5HJYgG7S3Ey1/XsYu9eDRZzhQGClXzV5QCA+mXcg6OED2bDwqTs8v+ClL4IE9TBvTarzAPb/7fLcep5Vk1Tqa
 dxowZu/Ycvylse3rT4kUiq+GY47tKMAK7CtOLzL+EVLY7lxwrGveHZTdPAtDuJyK8lg+QYR1gAZc5/VG9dmqnmaBjvW3Ehtonc0=

On Thu, Oct 15, 2020 at 8:49 AM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Remove unnecessary blank lines as per the coding style guidelines.
> Issue reported by checkpatch script.

It seems like your mail client [or maybe you] is adding an
extra blank line after signed-off-by. You should fix that in
your setting. Other than that, the change looks fine to me.

> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
> Changes since v1:
>    - Correct typo in the patch description.
>
>  drivers/staging/qlge/qlge_main.c | 9 ---------
>  1 file changed, 9 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index cb19cd35d0da..406374a5a431 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -756,7 +756,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
>                                   "Error reading flash.\n");
>                         goto exit;
>                 }
> -
>         }
>
>         status = ql_validate_flash(qdev,
> @@ -1225,7 +1224,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
>                                                      maplen), DMA_TO_DEVICE);
>                 }
>         }
> -
>  }
>
>  /* Map the buffers for this transmit.  This will return
> @@ -1339,7 +1337,6 @@ static int ql_map_send(struct ql_adapter *qdev,
>                 dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
>                 dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
>                                   skb_frag_size(frag));
> -
>         }
>         /* Save the number of segments we've mapped. */
>         tx_ring_desc->map_cnt = map_idx;
> @@ -2103,7 +2100,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
>         struct tx_ring *tx_ring;
>         /* While there are entries in the completion queue. */
>         while (prod != rx_ring->cnsmr_idx) {
> -
>                 netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
>                              "cq_id = %d, prod = %d, cnsmr = %d\n",
>                              rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
> @@ -2111,7 +2107,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
>                 net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
>                 rmb();
>                 switch (net_rsp->opcode) {
> -
>                 case OPCODE_OB_MAC_TSO_IOCB:
>                 case OPCODE_OB_MAC_IOCB:
>                         ql_process_mac_tx_intr(qdev, net_rsp);
> @@ -2150,7 +2145,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
>
>         /* While there are entries in the completion queue. */
>         while (prod != rx_ring->cnsmr_idx) {
> -
>                 netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
>                              "cq_id = %d, prod = %d, cnsmr = %d\n",
>                              rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
> @@ -2462,7 +2456,6 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
>
>  static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
>  {
> -
>         if (skb_is_gso(skb)) {
>                 int err;
>                 __be16 l3_proto = vlan_get_protocol(skb);
> @@ -2869,7 +2862,6 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
>  static int ql_alloc_rx_resources(struct ql_adapter *qdev,
>                                  struct rx_ring *rx_ring)
>  {
> -
>         /*
>          * Allocate the completion queue for this rx_ring.
>          */
> @@ -3798,7 +3790,6 @@ static int ql_wol(struct ql_adapter *qdev)
>
>  static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
>  {
> -
>         /* Don't kill the reset worker thread if we
>          * are in the process of recovery.
>          */
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201015031946.GA16455%40ubuntu204.



-- 
Vaishali
http://vaishalithakkar.in/

