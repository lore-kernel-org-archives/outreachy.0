X-GM-THRID: 6608897994052861952
X-Received: by 2002:a6b:4919:: with SMTP id u25-v6mr11531098iob.0.1538848258094;
        Sat, 06 Oct 2018 10:50:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac59:: with SMTP id m25-v6ls1386244iti.7.canary-gmail;
 Sat, 06 Oct 2018 10:50:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61eHw1/Y4kgKRcjEjqMcmKe702yOtDNGFeBhhmLZtRAW0gs4Wks+RCEfEOZPFFxrvxyiPMP
X-Received: by 2002:a24:2414:: with SMTP id f20-v6mr12169948ita.0.1538848257232;
        Sat, 06 Oct 2018 10:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848257; cv=none;
        d=google.com; s=arc-20160816;
        b=W9JplvBL1SZVHP+fjB6l8Nkpj+c2NtYS/SHxQj0bmefKrWTZdyQeLeivUVFbh2B+B7
         OgzAXysGdLV5zwh+fs33E95oKPk4RUGwvyxR2e7GCg7gfq5Yr8FX56yQqQkbiR9jylch
         rvdUQIuiXndES07Qx03YoxxLneCQ3rzCdEqZ8LW3eDWOuYGc5yDW2XiQGfEB6UpirgbT
         O0ks/3Za0OjvjetELYOXgBvWMmc3K1k9wiUAitmfVdVH1+v60VAKKAE8NmJZmNd0uoh5
         nl3dZjmBBkMNUcg6BgwS+hJwjIkWkloVPcl1KuDr80NnnNmqZ0lDXKiQ+/nhig0cPUwi
         FJzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YEOCIti9cwldvepIft5PUeJt7cAj65f0i+AKle7ts0k=;
        b=Ok8zAYFRsJHcLWJcRVzvTxCVrdYs6+25zIK9Hhk4h01mTjV94HFB0pUYXvXkfxHVsp
         CewmZEU5eI42pAVHORLiyI3gmlU7rkGtgZFh9JQWJR3jfuDta43FJ2sMwFlCFyDTwtFC
         dCPYH2YMpNFzs/94UoJL3PyLKFzhi0hMXVwEJv1QU+4OPFEfILX6BhCIyl6f5MU+4/dY
         HnxrKwVh7mlcdHsUTvyW4NgxbR29FNCL5r5xaUFW+Tvw9qiBT8KFVrZ8deswsPiKi3Tr
         lEawy9B6UdxueccTiNt6aVF/2OF6v5gRteN9xCq0x6uOiFiftdb3m5dScNl2MMOPemIh
         rTxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="q8daUI/A";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id s7-v6si477796ioo.5.2018.10.06.10.50.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 10:50:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="q8daUI/A";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id 30-v6so8252798plb.10
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 10:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YEOCIti9cwldvepIft5PUeJt7cAj65f0i+AKle7ts0k=;
        b=q8daUI/AuETre/cIejbVzkX8/8ZiTBvGhUadIzkg2CXNcYfAHB++kboRvjxKgEK8fC
         /kUVFk7uNTESuV14A0U3JQ7P+9N8MZYHEWr1S76Kws22QyBoXukXxuu+JRnZBghMDMvM
         AICROQknWbLWCuYk9Fs0jlwmapZDmCYinlDqZ6qrqO2KcVtAnzNTZEKmzvnISOd4+r2h
         C28mqXTfdub3uXmfxD8PvMjP8enByTusb/SZ4vOQ1kbyENSZtS5yFpv2Dbf+ftg1Jjof
         2bU8DPdbACcCKqFzFbH3AwFTQq3wLbwQ84L9KqiRnZwpX8osSPmqXzYs0IK7EOKeaoph
         dlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YEOCIti9cwldvepIft5PUeJt7cAj65f0i+AKle7ts0k=;
        b=JTEjsmfpSQh80WZ/7Iw8qQbvuSxz+HJp3qT/e9liRDe4aZNwSQdN4mgpWriXzKnqWX
         c3Y6z9A8XhuiZLzIkss8UkxTI0HO+nqz0M8kQdo/06+W9e40yy2ig9lsB8Rg1/0yJGdT
         qlSOCgnO3mYoluBiwBebxxvvZ8QKgNTTsvR/pURjnDRCQkJPcUGKNU3abjxQmu6WWPCZ
         YjAk23OyhPjUx7PjwltmgjxkiyOo2xMT2UoCh41gPd3v5vvwUUg8PUr70e5UyV2xyI8L
         2Mb+te0Jnrek086zv+cL9MbPe2T+eBoesbOoVQGFJbnppvVb7S4xIJYGQWptbBWxOwo/
         JbBw==
X-Gm-Message-State: ABuFfoi2d9A8x1Kmxlai5+Hy/dJvR4YcDX4HZNquhA/sghhFPmXS9rPg
	9oogdu3jfkXzKZmNUEIRMWU=
X-Received: by 2002:a17:902:b598:: with SMTP id a24-v6mr16734462pls.40.1538848256505;
        Sat, 06 Oct 2018 10:50:56 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id a1-v6sm21106316pfj.38.2018.10.06.10.50.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 10:50:56 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:20:49 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: vt6655: Remove space
 after cast
Message-ID: <20181006175049.GC6283@himanshu-Vostro-3559>
References: <cover.1538823377.git.mamtashukla555@gmail.com>
 <dbcd26b975bccc860d61ee4dfdf0cf58f3c77929.1538823377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dbcd26b975bccc860d61ee4dfdf0cf58f3c77929.1538823377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 05:01:35PM +0530, Mamta Shukla wrote:
> Remove space after cast to fix checkpatch issue.
> CHECK: No space is necessary after a cast
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Himanshu Jha <himanshujha199640@gmail.com>

> ---
> No change in v2.
> 
>  drivers/staging/vt6655/rxtx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 1eb8cea..a7c1e46 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -1094,7 +1094,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  							sizeof(struct vnt_tx_datahead_g);
>  			} else { /* RTS_needless */
>  				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
> -				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
> +				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
>  				pvRTS = NULL;
>  				pvCTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) + cbMICHDR);
>  				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
> @@ -1106,7 +1106,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  			/* Auto Fall Back */
>  			if (bRTS) {/* RTS_need */
>  				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
> -				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
> +				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts));
>  				pvRTS = (void *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) + cbMICHDR);
>  				pvCTS = NULL;
>  				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_rts) +
> @@ -1115,7 +1115,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  					cbMICHDR + sizeof(struct vnt_rts_g_fb) + sizeof(struct vnt_tx_datahead_g_fb);
>  			} else { /* RTS_needless */
>  				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
> -				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
> +				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts));
>  				pvRTS = NULL;
>  				pvCTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) + cbMICHDR);
>  				pvTxDataHd = (void  *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_cts) +
> @@ -1129,7 +1129,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  		if (byFBOption == AUTO_FB_NONE) {
>  			if (bRTS) {
>  				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
> -				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
> +				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
>  				pvRTS = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
>  				pvCTS = NULL;
>  				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize +
> @@ -1138,7 +1138,7 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
>  					cbMICHDR + sizeof(struct vnt_rts_ab) + sizeof(struct vnt_tx_datahead_ab);
>  			} else { /* RTS_needless, need MICHDR */
>  				pvRrvTime = (void *)(pbyTxBufferAddr + wTxBufSize);
> -				pMICHDR = (struct vnt_mic_hdr *) (pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
> +				pMICHDR = (struct vnt_mic_hdr *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab));
>  				pvRTS = NULL;
>  				pvCTS = NULL;
>  				pvTxDataHd = (void *)(pbyTxBufferAddr + wTxBufSize + sizeof(struct vnt_rrv_time_ab) + cbMICHDR);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/dbcd26b975bccc860d61ee4dfdf0cf58f3c77929.1538823377.git.mamtashukla555%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

