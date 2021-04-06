X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6402:254c:: with SMTP id l12mr14753241edb.119.1617709427435;
        Tue, 06 Apr 2021 04:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:22c9:: with SMTP id q9ls4320951eja.11.gmail; Tue, 06
 Apr 2021 04:43:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJypHbBdKC18tDp0Gfu/dFvOARHaH5jxcUsS9DOk8AAoDBZ8x0wBlGRrrE8yHvS9V1QeTkYw
X-Received: by 2002:a17:906:360c:: with SMTP id q12mr12103532ejb.519.1617709426099;
        Tue, 06 Apr 2021 04:43:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617709426; cv=none;
        d=google.com; s=arc-20160816;
        b=P6X27636+9h5sqOWtEKi5SnyjjhDK13ZUTkutf8955bVlWxzDI20+lkLYPUFvJALuU
         gSkzZfyotHR2RO+5BAYE20MiP0VBQ+Rcy0hv1R2JV6plK9CD35A1CvMDES0xiXyO8ApN
         PBnvRjH7Ti5orcbiCw4Vl8DfRzBKhRQvQPHb8Czdnnon/YO111IWdDtZ8CgOOJrEkKyZ
         pnehnuGHOopI1QFCaeBjk/dLDeopoUL4qfaZ9rAGgHgPYV99yO6gwCrppQt4f18l8+/6
         fh2LzJaRtdgLGNkatZbSdalJouWi0qHvKW5bFhJTe7dX89tBkKoEMWKj2Hap02cwAN+3
         8R+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=PgZBNVg74hqtfspovz3aR13lCJ8WOlZNV1ehhsY8/4t6++V0ezi53WKKrdd6KrfhsE
         EMHYGXhTsbVs+267lIt8Z2tj+IrqMHZfJlI2vAh6qWWV0tzqHS+2+hnCgiI9iR44bJec
         VI/PkVODfBSfG2PavRCNFFknz2w5ep/pyPh1cW6kVlJgCK7sgbPuMTW/xxaFKLOtFTr/
         VdgAJ1oRNzxIka3reK1XJAs5L2ytA5zCxR458vE5/fWQBoWBDJOQd8R2bhqAfwHnu/0L
         63mRSqvIOjhhgPqJQuUgeunvmd2tRcq2T6jXxnRR2vP++sC/6hM2Cp5Nx2arR6agMmYC
         r7SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FGNFAZPq;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id ck26si2882913edb.1.2021.04.06.04.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 04:43:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FGNFAZPq;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x129.google.com with SMTP id b14so22171608lfv.8
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 04:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=FGNFAZPqCEv3zJHnNSHZC66i9V/OZMZFSbChHMkmTFpg5xHD3JV14L7arnZXaRbOFl
         0xszyZD4NXj5rU0elJif8lA5NMQOIm4BrEEN1UqFo54CAC4CbLvkfvUU78n4/zN3xJbJ
         tMEtNUN4s2AVNWJx71ZTBR5tAEKO3+n+Hf48QFZPAh9ZgMWH50Ntz6rHRHQewePMiorp
         b2q3+/3hluoekjEmv8THygae5Vt2ka6RAoXD2oYWI3A66UhB1CMemAlBtbB77m3mt/CY
         ucO3T4oulrFvrU2G+m+OVeOHy8hH7acQ+9+KHVRZte1XD2+5huAXNbaUmKvx6Spr/umu
         qwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q9WBuK6OhOs9OaGEgKhL5YcwsAzLgbzYaT8/doodq88=;
        b=OLfIRxdvtBT5nMaDrC4mHd2e+Rg0JaLSaDGfmplFAtYxeZWr6f3592nPpy52s3PRGV
         kH1vU4B+iOaGH3s8J4dHVKrMWc3+byMK51JtxGOzuhnsDIwPGS21c+aXeUy14SM7rwEQ
         euGi3zn5jiWjtKdugEj/EYpoksqqdUHUVbgKggICyzHn1AvpG2JOLZmXP4X3nTsJyGpE
         4GxiaTOALK0fw3q6mioYEl5dpdK1IAwkhnVXMMacNHK7dZzMAPz3IJS15IyK1T5nryNP
         +OZDRQKlEdAbWzTjFAWzA1M18aSJv2TWD3pVLZ1rm4X42QJDKJZ57ov+JF4x0hohpN2o
         ZIZA==
X-Gm-Message-State: AOAM530Ad30gnI8ZIrVOcldEdMeLE6vyqSefgp3fpMXQ4MxsUbEogcxq
	ZBQuu3txe6L2+QPv9MmPz227RP8Xk0G+UA==
X-Received: by 2002:a19:cd1:: with SMTP id 200mr21004350lfm.480.1617709425433;
        Tue, 06 Apr 2021 04:43:45 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id h9sm2206860ljh.58.2021.04.06.04.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:43:45 -0700 (PDT)
Date: Tue, 6 Apr 2021 17:43:44 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: rtl8712: Rewrite NULL comparisons
Message-ID: <74471865b399584d73a18696d2008006301dfd71.1617708653.git.zhansayabagdaulet@gmail.com>
References: <cover.1617708653.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617708653.git.zhansayabagdaulet@gmail.com>

Replace NULL comparisons with boolean negation to be more consistent with
the rest of the Linux kernel code base.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 7c9995060a6f..4aa39f4f3b84 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -135,7 +135,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -143,7 +143,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -153,7 +153,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -170,7 +170,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -188,7 +188,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1


