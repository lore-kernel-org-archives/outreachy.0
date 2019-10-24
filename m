X-GM-THRID: 6746979289302827008
X-Received: by 2002:aca:dd07:: with SMTP id u7mr3127552oig.106.1571893869675;
        Wed, 23 Oct 2019 22:11:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4783:: with SMTP id b3ls1502537otf.5.gmail; Wed, 23 Oct
 2019 22:11:08 -0700 (PDT)
X-Received: by 2002:a9d:4e02:: with SMTP id p2mr5279331otf.21.1571893868887;
        Wed, 23 Oct 2019 22:11:08 -0700 (PDT)
Received: by 2002:aca:702:0:0:0:0:0 with SMTP id 2msoih;
        Wed, 23 Oct 2019 21:59:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzd/BxESYgYWkzNLW1EAeQcBP1Ul0o9ilafnUUiMqphBdnmz25crquThCBS2m2/Y34GJLPO
X-Received: by 2002:a6b:b2d5:: with SMTP id b204mr7656986iof.137.1571893197660;
        Wed, 23 Oct 2019 21:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571893197; cv=none;
        d=google.com; s=arc-20160816;
        b=vuxYkC0ZCkSTGEe+HTugBLqVc2NrvYKB8ycrpqu2jt9Ynw8qpXMqjCSg8rKeLIF7dt
         MQ+iREtmKUIrK08RWarvhsRztaNWCS28DaicxgWjYoWuZ1KP8uEL6bUd2GeGA5iSsdLE
         CNiQPJAW/nOyE/H6IbTYsIP3PVvC0YxSXYVONHC1aSSZJKtc2ttTp/3LZrN4oEk8Um2N
         7KWn9u1BpqsIxUutTD6wm+EgZPtYzG0WVdy3JnBDQdRG/PbnxMLuvrKTfkWqceaCw/zd
         KyYPUBKf05UQik9lxWzwRdokinvJ/tS1K3B7Vb9INnSbEWyu6iyvnrzysOyhBZDha3P7
         Wi5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TX+eCZ+Hj86+D+zTjguBkdVgaoLDrd0ZTB0tF031IC4=;
        b=gQ8U3h/X3XNI+GTZKOeN1it5pTUG6dz87YIGuLcthpPSmDV+WCUlrXJqv37gM+qNUX
         R1iV1CnEmCvbbSFyU0zStUUb2cYF6eOR94U+tyE7Oz7YA9+idH+2csDMa7A6rrZzDjTi
         U0SG6EtFGDETXK4SZGSSn8dng37mlLEVFdBVVrLpkLhoQ+kLMrQZzxMb3MkpuGQbIlj3
         lnpuL4EFCWBSLJEd3DaOI/8L9uGjE1RPv5cML2b/f7mHPZhV7AsmtPIFfQ0HNuPGbOfD
         mzO2ae9ghB5SyA0EoG1jtmcT2Phl0rsRa7uAtmOvFHkobxs36atL8I28Xehbv+EQ1Gun
         f+BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.210.194 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <paulburton89@gmail.com>
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com. [209.85.210.194])
        by gmr-mx.google.com with ESMTPS id f66si920483ill.5.2019.10.23.21.59.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 21:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of paulburton89@gmail.com designates 209.85.210.194 as permitted sender) client-ip=209.85.210.194;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of paulburton89@gmail.com designates 209.85.210.194 as permitted sender) smtp.mailfrom=paulburton89@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-pf1-f194.google.com with SMTP id q7so14323267pfh.8
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 21:59:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TX+eCZ+Hj86+D+zTjguBkdVgaoLDrd0ZTB0tF031IC4=;
        b=EHV+LBUtzEPfctjaLUWW3qE+f7iZbdnm8PJpFVdRO948O/JHJRqtp7ZOUOsVCmmKU3
         nmmsDvqQJ06NdH86RIFJISwwTgWfsDwn6uFScTPb4Xc66rDPP8K/T97HuUouzH7KcGJP
         acQ9jVh+OzG3EvKhSRE8NEHH6/kO9D2d7NaFKFrFcC/3tQO16VuhC3z6dLyRAUynAgBk
         bYhwpiKElse1JggFPUFKPLtkEjbHnfPJ0rc1Okir7S2EuLFuyCu0JvvLVy47UW3ma1zk
         El4nAXm4LKCIrIcY64YLhcUc+Q2dJtZmCoG5/PsgY2v+nONW07VK3LCX8drlRnlB5qmq
         XoSA==
X-Gm-Message-State: APjAAAUCX6nbM2eSCoklsVfqKGY9vNsirOu6jt/SuSde0WqvMTxjyiJO
	3Y9BoKEICUsenjvLkueNGu0=
X-Received: by 2002:a17:90a:37e4:: with SMTP id v91mr4666767pjb.8.1571893196275;
        Wed, 23 Oct 2019 21:59:56 -0700 (PDT)
Return-Path: <paulburton89@gmail.com>
Received: from localhost ([2601:646:8a00:9810:5af3:56d9:f882:39d4])
        by smtp.gmail.com with ESMTPSA id h4sm21932440pgg.81.2019.10.23.21.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 21:59:55 -0700 (PDT)
Date: Wed, 23 Oct 2019 22:00:11 -0700
From: Paul Burton <paulburton@kernel.org>
To: Wambui Karuga <wambui.karugax@gmail.com>, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] staging: octeon: remove typedef declaration for
 cvmx_wqe
Message-ID: <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
User-Agent: NeoMutt/20180716

Hi Wambui, Greg,

On Sat, Oct 12, 2019 at 09:04:31PM +0300, Wambui Karuga wrote:
> Remove typedef declaration from struct cvmx_wqe.
> Also replace its previous uses with new struct declaration.
> Issue found by checkpatch.pl

This may work for x86 builds using COMPILE_TEST that will never actually
run this driver, but it completely breaks the build for the systems that
actually do use the driver...

kernelci.org shows build failures resulting from this patch in
linux-next, and I won't be surprised if other patches in this series
result in similar build breakage too:

  https://storage.kernelci.org/next/master/next-20191023/mips/cavium_octeon_defconfig/gcc-8/build.log

If you're making significant changes to this driver, please test them
using the MIPS cavium_octeon_defconfig which is where this driver is
actually used.

This driver has broken builds a few times recently which makes me very
tempted to ask that we stop allowing it to be built with COMPILE_TEST.
The whole octeon-stubs.h thing is a horrible hack anyway...

Thanks,
    Paul

> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-rx.c  |  6 +++---
>  drivers/staging/octeon/ethernet-tx.c  |  2 +-
>  drivers/staging/octeon/ethernet.c     |  2 +-
>  drivers/staging/octeon/octeon-stubs.h | 22 +++++++++++-----------
>  4 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
> index 0e65955c746b..2c16230f993c 100644
> --- a/drivers/staging/octeon/ethernet-rx.c
> +++ b/drivers/staging/octeon/ethernet-rx.c
> @@ -60,7 +60,7 @@ static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
>   *
>   * Returns Non-zero if the packet can be dropped, zero otherwise.
>   */
> -static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
> +static inline int cvm_oct_check_rcv_error(struct cvmx_wqe *work)
>  {
>  	int port;
>  
> @@ -135,7 +135,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
>  	return 0;
>  }
>  
> -static void copy_segments_to_skb(cvmx_wqe_t *work, struct sk_buff *skb)
> +static void copy_segments_to_skb(struct cvmx_wqe *work, struct sk_buff *skb)
>  {
>  	int segments = work->word2.s.bufs;
>  	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
> @@ -215,7 +215,7 @@ static int cvm_oct_poll(struct oct_rx_group *rx_group, int budget)
>  		struct sk_buff *skb = NULL;
>  		struct sk_buff **pskb = NULL;
>  		int skb_in_hw;
> -		cvmx_wqe_t *work;
> +		struct cvmx_wqe *work;
>  		int port;
>  
>  		if (USE_ASYNC_IOBDMA && did_work_request)
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index c64728fc21f2..a039882e4f70 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -515,7 +515,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
>  	void *copy_location;
>  
>  	/* Get a work queue entry */
> -	cvmx_wqe_t *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
> +	struct cvmx_wqe *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
>  
>  	if (unlikely(!work)) {
>  		printk_ratelimited("%s: Failed to allocate a work queue entry\n",
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index cf8e9a23ebf9..f892f1ad4638 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -172,7 +172,7 @@ static void cvm_oct_configure_common_hw(void)
>   */
>  int cvm_oct_free_work(void *work_queue_entry)
>  {
> -	cvmx_wqe_t *work = work_queue_entry;
> +	struct cvmx_wqe *work = work_queue_entry;
>  
>  	int segments = work->word2.s.bufs;
>  	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index b2e3c72205dd..7c29cfbd55d1 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -183,13 +183,13 @@ union cvmx_buf_ptr {
>  	} s;
>  };
>  
> -typedef struct {
> +struct cvmx_wqe {
>  	union cvmx_wqe_word0 word0;
>  	union cvmx_wqe_word1 word1;
>  	union cvmx_pip_wqe_word2 word2;
>  	union cvmx_buf_ptr packet_ptr;
>  	uint8_t packet_data[96];
> -} cvmx_wqe_t;
> +};
>  
>  typedef union {
>  	uint64_t u64;
> @@ -1198,7 +1198,7 @@ static inline uint64_t cvmx_scratch_read64(uint64_t address)
>  static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
>  { }
>  
> -static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
> +static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
>  {
>  	return 0;
>  }
> @@ -1345,14 +1345,14 @@ static inline void cvmx_pow_work_request_async(int scr_addr,
>  						       cvmx_pow_wait_t wait)
>  { }
>  
> -static inline cvmx_wqe_t *cvmx_pow_work_response_async(int scr_addr)
> +static inline struct cvmx_wqe *cvmx_pow_work_response_async(int scr_addr)
>  {
> -	cvmx_wqe_t *wqe = (void *)(unsigned long)scr_addr;
> +	struct cvmx_wqe *wqe = (void *)(unsigned long)scr_addr;
>  
>  	return wqe;
>  }
>  
> -static inline cvmx_wqe_t *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
> +static inline struct cvmx_wqe *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
>  {
>  	return (void *)(unsigned long)wait;
>  }
> @@ -1390,21 +1390,21 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
>  	return ret;
>  }
>  
> -static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
> +static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
>  { }
>  
> -static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
> +static inline void cvmx_wqe_set_qos(struct cvmx_wqe *work, int qos)
>  { }
>  
> -static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
> +static inline int cvmx_wqe_get_qos(struct cvmx_wqe *work)
>  {
>  	return 0;
>  }
>  
> -static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
> +static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
>  { }
>  
> -static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
> +static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
>  					enum cvmx_pow_tag_type tag_type,
>  					uint64_t qos, uint64_t grp)
>  { }
> -- 
> 2.23.0
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

