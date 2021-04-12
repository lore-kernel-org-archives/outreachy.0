X-GM-THRID: 6950399749246681088
X-Received: by 2002:a63:4442:: with SMTP id t2mr29785915pgk.232.1618266047271;
        Mon, 12 Apr 2021 15:20:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls450057pjb.2.canary-gmail;
 Mon, 12 Apr 2021 15:20:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvfEHSdUG4tu5mf9hrqqAfnuR2ZfZHDfyc7CLmOSft1JuhCLdgXxNY1t7ycCrrFxK4qjpG
X-Received: by 2002:a17:90a:3904:: with SMTP id y4mr1408119pjb.125.1618266045633;
        Mon, 12 Apr 2021 15:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618266045; cv=none;
        d=google.com; s=arc-20160816;
        b=VlBoNrJV327FmtXsfkh+gWrYgV6Ddrg44fAcQ4DupdWTImrLWZKKHgLN3UuC5ofIY9
         ItZNHdz+JTtd+0sKyMDqB++tCFt9w6b81MogBwEwwG5TctvobmATnNn9r8Opzqfjy5Xm
         ouuZcoAXptzLDXGWkEeQG36gOYOV4L8teJJJmpEGLw5YPM7az/05xqxnglSMmdcqrjWC
         9u6ud2803s+TBEn2tIAx64sV0Shh2tXofFcz8/DXdmL8RJRTeUDyLWi+NUwadm48IMIH
         t++jbM+eBiQOVS5bLB7oNM7A9bHcoAQrjj86JsMCoRBtEdZy7q+HWW9XmWdFeR5M/bCN
         dq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SDIMIsHgzIN3pPXc6C7qelFOQfB8Xs0e1yxPYg32Ijo=;
        b=CDJiFv3lSsj6ku2k2EnPHh19h/9NaBZl2Wiptbn7IZ1UIgdLZfAAZE9BxVDXYjMyP6
         4mjpm0cHUzSfeVd7wbnbFsvK65RQLr7RpbdfPkJznKE2LqIlal/4bd1SDE87n7mNQhUM
         7mybmqhrCJ8gv6/28RwjcXD7UywzSESE5hVWhrtp7ZxYk0Iu+DAJphrvmwsh4f+ugued
         P9RRYPJRFqwWcYNRSFL1GzHpIERjmmMqVDmBuPg+pKcH3MeJPFtA3f7MnlpcYzFtEIhx
         Za08qMNvf0DPLYvHtOPdm3t8acc4swP7gq/rRAcC1UJfgUC/+b9BJ3OAja7gujT3mSBH
         ToWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MqpMQtte;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id mz7si146629pjb.0.2021.04.12.15.20.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 15:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MqpMQtte;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x734.google.com with SMTP id c123so11163045qke.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 15:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SDIMIsHgzIN3pPXc6C7qelFOQfB8Xs0e1yxPYg32Ijo=;
        b=MqpMQtteU02K/j2eR+5kdYN/xoJuPYDBCPxbsjWuO2tg4H3elwt06EP3PebPWgr45b
         unCvpzIoB42Vef6++HPU9ihfOVo5b6soR0Xbo5AI5n/vIMu6hk0d1KSuHKyIx3OX5gt8
         HitkgKDqroE3HBAWyIYU1Hl7/0YedB7bI7mORLzVuoMIHZ/z6RhxfIRQRWmYUF4ud7dO
         Uv9gn23JyrwbRoCnqfYdRMiiLSPuQnNupgfqhlB6CLnr0uOztpbW2XIbsCwRtpBkW4PG
         i8eDNTDwiGz3AzqAaALVIOYa2FlOT2HFIVOzv5RZYrMGaubW1NWSORputKspidOD6iIq
         aT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SDIMIsHgzIN3pPXc6C7qelFOQfB8Xs0e1yxPYg32Ijo=;
        b=NkU2s5Yt5MQpTubLFaEN23+PBorBjIoj3+hCU1eIA3hJXBarLCeYE39sb/B0nUtX9R
         PSo2IKDYVdZ4/QkNTKOHNiPTD7aJ00MdijyiX1e8SIlqZ8/OPDEH7FzMADfOE9olEQYC
         d+UbVp+AKFRqYWZYLoWx+z9Aeq22Je9B79oFKwFEDMnzmjhUsBSTI2bqlqXxoEXO6Z81
         X3yWW+SgX9PYrYTPBYGsc9/eYXkTt5aU425YBAdOViWmumzlDQ3BPhu/bT4LMumr6C9/
         o6+ahNutF7hk+U92zBfvTieVq9J8GSMht/FPYOtl+BjXbITsX0CAxthZiletfzIlaSzm
         4YCA==
X-Gm-Message-State: AOAM531zWbtJ1iZ7koOkuscbXFonshawQ0P3W30NU0AWZoj2CsHwfkCP
	IE77nvtZT35H6n/HLgoIFJb3e1TskpbTAdpS
X-Received: by 2002:ae9:e518:: with SMTP id w24mr28923415qkf.78.1618266044638;
        Mon, 12 Apr 2021 15:20:44 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f016:a037:3782:dcd2:d032:5ca8])
        by smtp.gmail.com with ESMTPSA id f12sm8839781qti.63.2021.04.12.15.20.43
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 12 Apr 2021 15:20:44 -0700 (PDT)
Date: Mon, 12 Apr 2021 19:20:40 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: tegra-vde: Align line break to match with
 the open parenthesis in file trace.h
Message-ID: <20210412222040.GA13659@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Align line break to match with the open parenthesis.
Issue detected by checkpatch.pl.
It consequently solved a few end lines with a '(',
issue also detected by checkpatch.pl

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/tegra-vde/trace.h | 111 ++++++++++++++------------------
 1 file changed, 50 insertions(+), 61 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/trace.h b/drivers/staging/media/tegra-vde/trace.h
index e571410..1fcc573 100644
--- a/drivers/staging/media/tegra-vde/trace.h
+++ b/drivers/staging/media/tegra-vde/trace.h
@@ -11,79 +11,68 @@
 #include "vde.h"
 
 DECLARE_EVENT_CLASS(register_access,
-	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
-		 u32 offset, u32 value),
-	TP_ARGS(vde, base, offset, value),
-	TP_STRUCT__entry(
-		__string(hw_name, tegra_vde_reg_base_name(vde, base))
-		__field(u32, offset)
-		__field(u32, value)
-	),
-	TP_fast_assign(
-		__assign_str(hw_name, tegra_vde_reg_base_name(vde, base));
-		__entry->offset = offset;
-		__entry->value = value;
-	),
-	TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
-		  __entry->value)
+		    TP_PROTO(struct tegra_vde *vde, void __iomem *base,
+			     u32 offset, u32 value),
+		    TP_ARGS(vde, base, offset, value),
+			    TP_STRUCT__entry(__string(hw_name, tegra_vde_reg_base_name(vde, base))
+					     __field(u32, offset)
+					     __field(u32, value)
+			    ),
+			    TP_fast_assign(__assign_str(hw_name,
+							tegra_vde_reg_base_name(vde, base));
+					   __entry->offset = offset;
+					   __entry->value = value;
+			    ),
+			    TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
+				      __entry->value)
 );
 
 DEFINE_EVENT(register_access, vde_writel,
-	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
-		 u32 offset, u32 value),
-	TP_ARGS(vde, base, offset, value));
+	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
+		      u32 offset, u32 value),
+	     TP_ARGS(vde, base, offset, value));
 DEFINE_EVENT(register_access, vde_readl,
-	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
-		 u32 offset, u32 value),
-	TP_ARGS(vde, base, offset, value));
+	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
+		      u32 offset, u32 value),
+	     TP_ARGS(vde, base, offset, value));
 
 TRACE_EVENT(vde_setup_iram_entry,
-	TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_addr),
-	TP_ARGS(table, row, value, aux_addr),
-	TP_STRUCT__entry(
-		__field(unsigned int, table)
-		__field(unsigned int, row)
-		__field(u32, value)
-		__field(u32, aux_addr)
-	),
-	TP_fast_assign(
-		__entry->table = table;
-		__entry->row = row;
-		__entry->value = value;
-		__entry->aux_addr = aux_addr;
-	),
-	TP_printk("[%u][%u] = { 0x%08x (flags = \"%s\", frame_num = %u); 0x%08x }",
-		  __entry->table, __entry->row, __entry->value,
-		  __print_flags(__entry->value, " ", { (1 << 25), "B" }),
-		  __entry->value & 0x7FFFFF, __entry->aux_addr)
+	    TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_addr),
+	    TP_ARGS(table, row, value, aux_addr),
+		    TP_STRUCT__entry(__field(unsigned int, table)
+				     __field(unsigned int, row)
+				     __field(u32, value)
+				     __field(u32, aux_addr)
+		    ),
+		    TP_fast_assign(__entry->table = table;
+				   __entry->row = row;
+				   __entry->value = value;
+				   __entry->aux_addr = aux_addr;
+		    ),
+		    TP_printk("[%u][%u] = { 0x%08x (flags = \"%s\", frame_num = %u); 0x%08x }",
+			      __entry->table, __entry->row, __entry->value,
+			      __print_flags(__entry->value, " ", { (1 << 25), "B" }),
+			      __entry->value & 0x7FFFFF, __entry->aux_addr)
 );
 
 TRACE_EVENT(vde_ref_l0,
-	TP_PROTO(unsigned int frame_num),
-	TP_ARGS(frame_num),
-	TP_STRUCT__entry(
-		__field(unsigned int, frame_num)
-	),
-	TP_fast_assign(
-		__entry->frame_num = frame_num;
-	),
-	TP_printk("REF L0: DPB: Frame 0: frame_num = %u", __entry->frame_num)
+	    TP_PROTO(unsigned int frame_num),
+	    TP_ARGS(frame_num),
+	    TP_STRUCT__entry(__field(unsigned int, frame_num)),
+	    TP_fast_assign(__entry->frame_num = frame_num;),
+	    TP_printk("REF L0: DPB: Frame 0: frame_num = %u", __entry->frame_num)
 );
 
 TRACE_EVENT(vde_ref_l1,
-	TP_PROTO(unsigned int with_later_poc_nb,
-		 unsigned int with_earlier_poc_nb),
-	TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
-	TP_STRUCT__entry(
-		__field(unsigned int, with_later_poc_nb)
-		__field(unsigned int, with_earlier_poc_nb)
-	),
-	TP_fast_assign(
-		__entry->with_later_poc_nb = with_later_poc_nb;
-		__entry->with_earlier_poc_nb = with_earlier_poc_nb;
-	),
-	TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
-		  __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
+	    TP_PROTO(unsigned int with_later_poc_nb,
+		     unsigned int with_earlier_poc_nb),
+	    TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
+		    TP_STRUCT__entry(__field(unsigned int, with_later_poc_nb)
+				     __field(unsigned int, with_earlier_poc_nb)),
+		    TP_fast_assign(__entry->with_later_poc_nb = with_later_poc_nb;
+				   __entry->with_earlier_poc_nb = with_earlier_poc_nb;),
+		    TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
+			      __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
 );
 
 #endif /* TEGRA_VDE_TRACE_H */
-- 
2.7.4


