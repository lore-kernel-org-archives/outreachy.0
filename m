X-GM-THRID: 6755642568101330944
X-Received: by 2002:a05:6830:10e:: with SMTP id i14mr362442otp.122.1572920612695;
        Mon, 04 Nov 2019 18:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a890:: with SMTP id r138ls403706oie.11.gmail; Mon, 04
 Nov 2019 18:23:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqzLpL0xwQhhp24eHeBteIcpyQddkJ1nmiu1IqdsguHR94qV55yRdrRbtALSe/nXd/Hsjr2n
X-Received: by 2002:aca:de88:: with SMTP id v130mr1912563oig.108.1572920611854;
        Mon, 04 Nov 2019 18:23:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572920611; cv=none;
        d=google.com; s=arc-20160816;
        b=n7ZOWasF4H436MxinCwVMqqsdlYZaaRAdNYS7eET0dxg82CeflRSWOmHvKJraqUoz7
         k1b6miHEI4cc8/C5bfSvzBs+EdsKn4ON4iwABV4FiWMYhVu3/rN6qIjbIuSTHItYMDn9
         E/6a3+vhi4O7IzWnFvpb3ALxg3togJXdYNjRkA1UacIKjOlDW3i8/o6faJZGNslckPV0
         PmN1lGVJGkaPRAfadGCFttIbmiFwEE1vBTVe2QZCBT1+KgOBtMUfYNZq+0vI9rPgK4zR
         dy/X4ObafIPz4O+BZ/XCl6T4B6nbBtodYl+JJZqArT2d3by1BWogMU9HMGQvVwUFGrzH
         lELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ixK+g9NmIOquF2TSES+OOVha+NupWLDUPvXjeKzULro=;
        b=zmKaS3FXG+/B4I/pNn8AYwYahFBYJ2pHyZU7UWIVaxWOhgy/kDBwLIKLDs2nB130XT
         gH6vW7D4tuayBQFaOFC94v9stblx2ivv/NA4a67L75D/xypzvRYC+tO5aoC2U7wYubmI
         8sXwG+fyWD/8Gz68Au70H/RQnqJJB2HLu8uZi6tz+CirEy6KamQlb0HxB16JyOsVF6lY
         T/FI4rO2vmYDMApmkFRZ+fzjfpp1eXgnEQ6FQz1mueaOuLIa6DASabpdQXX4kmZbeygT
         cqibKEwicfnFFUqt+zLnkjmV1899Twl/nNfhb/HDSnAXLX9shnZALDwr/0NEuEbb5pw8
         ICmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJchIpDz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v3si1064574oth.4.2019.11.04.18.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 18:23:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KJchIpDz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id p24so7485997pfn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 18:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ixK+g9NmIOquF2TSES+OOVha+NupWLDUPvXjeKzULro=;
        b=KJchIpDzwJIv6cT8V6IGzcPACS4Um2nfF+Do9VNfp0w5HWysfhs9LDRLIi2M1wzzxv
         HZLe5ykkJyKy/c2wsAvqLHkCExm993kWjrPAXc9QjEzxFjZyJ1Bn5rhbdtVc4bfVmzA0
         iCxiB+i4wYZypInvAjRSexnAG8995DpsIdjwAl2IBqdex6vhULdRroEbEy0UQY86oe8G
         xz+GeotU73j8g9ZBfocMPlz1sg/ia7DQeuv2ogBkLXNarxRapu/VZvs+0V1jwowmTUqL
         TfoeBfgp7D3PYZl/8mQ+ctxfBqPXJhmwxCXLc4nsZZO8nJiH07tOPKcAvmkeS6R5snCq
         r/Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ixK+g9NmIOquF2TSES+OOVha+NupWLDUPvXjeKzULro=;
        b=kS2UFvz2f76jmePc7PB7/yn/BqjKGloAx8nh+Q/fxt1Fr06bg4kCju7chW8nLntbUC
         wQG2WAKNq8xGh4L/rSdZNKi6mW3vJrqjQktnlQ4CTNrXoRoF+iIHdcqCrtz14v3QVFcd
         mTwZrE9LnGnfwLqMzJgpu/TR1SPnBtD1pYOcxkkPktb7Xe0J3tuuu0vacd3PURycZcBN
         jUANG0Y0GLOyLpUQJL4/ygpmsxX9ExlHssn7kNwmbyP2bI2UjnYqCBULFkG/UFlXtOJ0
         Hz2jYwm2xXh+bY8CbufOHhgRYtSKJK8JnVHssWJVWBYno0oHYQpVIFPZnD1o7I/GK7Ya
         t13w==
X-Gm-Message-State: APjAAAVF0bRTgqwcM7F+HBh09Z4A4SGSJN1WseTe8CNJ1hVL8MOd+K32
	iVgFbQJb80M31PtcBJbpkzM=
X-Received: by 2002:a62:7c91:: with SMTP id x139mr33389357pfc.119.1572920611096;
        Mon, 04 Nov 2019 18:23:31 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v17sm21482274pfc.41.2019.11.04.18.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 18:23:30 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thierry.reding@gmail.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	jonathanh@nvidia.com,
	dri-devel@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 3/3] drm/tegra: gr3d: Remove space after parenthesis
Date: Mon,  4 Nov 2019 18:23:22 -0800
Message-Id: <54df25088b18fb99e44cfa3fb28d65ef8a0d3e40.1572920482.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>

Removes spaces after open parenthesis. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/gpu/drm/tegra/gr3d.c | 120 +++++++++++++++++------------------
 1 file changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gr3d.c b/drivers/gpu/drm/tegra/gr3d.c
index 8b9a35b1cbb3..35d1dff067b7 100644
--- a/drivers/gpu/drm/tegra/gr3d.c
+++ b/drivers/gpu/drm/tegra/gr3d.c
@@ -176,16 +176,16 @@ static const struct of_device_id tegra_gr3d_match[] = {
 MODULE_DEVICE_TABLE(of, tegra_gr3d_match);
 
 static const u32 gr3d_addr_regs[] = {
-	GR3D_IDX_ATTRIBUTE( 0),
-	GR3D_IDX_ATTRIBUTE( 1),
-	GR3D_IDX_ATTRIBUTE( 2),
-	GR3D_IDX_ATTRIBUTE( 3),
-	GR3D_IDX_ATTRIBUTE( 4),
-	GR3D_IDX_ATTRIBUTE( 5),
-	GR3D_IDX_ATTRIBUTE( 6),
-	GR3D_IDX_ATTRIBUTE( 7),
-	GR3D_IDX_ATTRIBUTE( 8),
-	GR3D_IDX_ATTRIBUTE( 9),
+	GR3D_IDX_ATTRIBUTE(0),
+	GR3D_IDX_ATTRIBUTE(1),
+	GR3D_IDX_ATTRIBUTE(2),
+	GR3D_IDX_ATTRIBUTE(3),
+	GR3D_IDX_ATTRIBUTE(4),
+	GR3D_IDX_ATTRIBUTE(5),
+	GR3D_IDX_ATTRIBUTE(6),
+	GR3D_IDX_ATTRIBUTE(7),
+	GR3D_IDX_ATTRIBUTE(8),
+	GR3D_IDX_ATTRIBUTE(9),
 	GR3D_IDX_ATTRIBUTE(10),
 	GR3D_IDX_ATTRIBUTE(11),
 	GR3D_IDX_ATTRIBUTE(12),
@@ -196,16 +196,16 @@ static const u32 gr3d_addr_regs[] = {
 	GR3D_QR_ZTAG_ADDR,
 	GR3D_QR_CTAG_ADDR,
 	GR3D_QR_CZ_ADDR,
-	GR3D_TEX_TEX_ADDR( 0),
-	GR3D_TEX_TEX_ADDR( 1),
-	GR3D_TEX_TEX_ADDR( 2),
-	GR3D_TEX_TEX_ADDR( 3),
-	GR3D_TEX_TEX_ADDR( 4),
-	GR3D_TEX_TEX_ADDR( 5),
-	GR3D_TEX_TEX_ADDR( 6),
-	GR3D_TEX_TEX_ADDR( 7),
-	GR3D_TEX_TEX_ADDR( 8),
-	GR3D_TEX_TEX_ADDR( 9),
+	GR3D_TEX_TEX_ADDR(0),
+	GR3D_TEX_TEX_ADDR(1),
+	GR3D_TEX_TEX_ADDR(2),
+	GR3D_TEX_TEX_ADDR(3),
+	GR3D_TEX_TEX_ADDR(4),
+	GR3D_TEX_TEX_ADDR(5),
+	GR3D_TEX_TEX_ADDR(6),
+	GR3D_TEX_TEX_ADDR(7),
+	GR3D_TEX_TEX_ADDR(8),
+	GR3D_TEX_TEX_ADDR(9),
 	GR3D_TEX_TEX_ADDR(10),
 	GR3D_TEX_TEX_ADDR(11),
 	GR3D_TEX_TEX_ADDR(12),
@@ -213,16 +213,16 @@ static const u32 gr3d_addr_regs[] = {
 	GR3D_TEX_TEX_ADDR(14),
 	GR3D_TEX_TEX_ADDR(15),
 	GR3D_DW_MEMORY_OUTPUT_ADDRESS,
-	GR3D_GLOBAL_SURFADDR( 0),
-	GR3D_GLOBAL_SURFADDR( 1),
-	GR3D_GLOBAL_SURFADDR( 2),
-	GR3D_GLOBAL_SURFADDR( 3),
-	GR3D_GLOBAL_SURFADDR( 4),
-	GR3D_GLOBAL_SURFADDR( 5),
-	GR3D_GLOBAL_SURFADDR( 6),
-	GR3D_GLOBAL_SURFADDR( 7),
-	GR3D_GLOBAL_SURFADDR( 8),
-	GR3D_GLOBAL_SURFADDR( 9),
+	GR3D_GLOBAL_SURFADDR(0),
+	GR3D_GLOBAL_SURFADDR(1),
+	GR3D_GLOBAL_SURFADDR(2),
+	GR3D_GLOBAL_SURFADDR(3),
+	GR3D_GLOBAL_SURFADDR(4),
+	GR3D_GLOBAL_SURFADDR(5),
+	GR3D_GLOBAL_SURFADDR(6),
+	GR3D_GLOBAL_SURFADDR(7),
+	GR3D_GLOBAL_SURFADDR(8),
+	GR3D_GLOBAL_SURFADDR(9),
 	GR3D_GLOBAL_SURFADDR(10),
 	GR3D_GLOBAL_SURFADDR(11),
 	GR3D_GLOBAL_SURFADDR(12),
@@ -230,48 +230,48 @@ static const u32 gr3d_addr_regs[] = {
 	GR3D_GLOBAL_SURFADDR(14),
 	GR3D_GLOBAL_SURFADDR(15),
 	GR3D_GLOBAL_SPILLSURFADDR,
-	GR3D_GLOBAL_SURFOVERADDR( 0),
-	GR3D_GLOBAL_SURFOVERADDR( 1),
-	GR3D_GLOBAL_SURFOVERADDR( 2),
-	GR3D_GLOBAL_SURFOVERADDR( 3),
-	GR3D_GLOBAL_SURFOVERADDR( 4),
-	GR3D_GLOBAL_SURFOVERADDR( 5),
-	GR3D_GLOBAL_SURFOVERADDR( 6),
-	GR3D_GLOBAL_SURFOVERADDR( 7),
-	GR3D_GLOBAL_SURFOVERADDR( 8),
-	GR3D_GLOBAL_SURFOVERADDR( 9),
+	GR3D_GLOBAL_SURFOVERADDR(0),
+	GR3D_GLOBAL_SURFOVERADDR(1),
+	GR3D_GLOBAL_SURFOVERADDR(2),
+	GR3D_GLOBAL_SURFOVERADDR(3),
+	GR3D_GLOBAL_SURFOVERADDR(4),
+	GR3D_GLOBAL_SURFOVERADDR(5),
+	GR3D_GLOBAL_SURFOVERADDR(6),
+	GR3D_GLOBAL_SURFOVERADDR(7),
+	GR3D_GLOBAL_SURFOVERADDR(8),
+	GR3D_GLOBAL_SURFOVERADDR(9),
 	GR3D_GLOBAL_SURFOVERADDR(10),
 	GR3D_GLOBAL_SURFOVERADDR(11),
 	GR3D_GLOBAL_SURFOVERADDR(12),
 	GR3D_GLOBAL_SURFOVERADDR(13),
 	GR3D_GLOBAL_SURFOVERADDR(14),
 	GR3D_GLOBAL_SURFOVERADDR(15),
-	GR3D_GLOBAL_SAMP01SURFADDR( 0),
-	GR3D_GLOBAL_SAMP01SURFADDR( 1),
-	GR3D_GLOBAL_SAMP01SURFADDR( 2),
-	GR3D_GLOBAL_SAMP01SURFADDR( 3),
-	GR3D_GLOBAL_SAMP01SURFADDR( 4),
-	GR3D_GLOBAL_SAMP01SURFADDR( 5),
-	GR3D_GLOBAL_SAMP01SURFADDR( 6),
-	GR3D_GLOBAL_SAMP01SURFADDR( 7),
-	GR3D_GLOBAL_SAMP01SURFADDR( 8),
-	GR3D_GLOBAL_SAMP01SURFADDR( 9),
+	GR3D_GLOBAL_SAMP01SURFADDR(0),
+	GR3D_GLOBAL_SAMP01SURFADDR(1),
+	GR3D_GLOBAL_SAMP01SURFADDR(2),
+	GR3D_GLOBAL_SAMP01SURFADDR(3),
+	GR3D_GLOBAL_SAMP01SURFADDR(4),
+	GR3D_GLOBAL_SAMP01SURFADDR(5),
+	GR3D_GLOBAL_SAMP01SURFADDR(6),
+	GR3D_GLOBAL_SAMP01SURFADDR(7),
+	GR3D_GLOBAL_SAMP01SURFADDR(8),
+	GR3D_GLOBAL_SAMP01SURFADDR(9),
 	GR3D_GLOBAL_SAMP01SURFADDR(10),
 	GR3D_GLOBAL_SAMP01SURFADDR(11),
 	GR3D_GLOBAL_SAMP01SURFADDR(12),
 	GR3D_GLOBAL_SAMP01SURFADDR(13),
 	GR3D_GLOBAL_SAMP01SURFADDR(14),
 	GR3D_GLOBAL_SAMP01SURFADDR(15),
-	GR3D_GLOBAL_SAMP23SURFADDR( 0),
-	GR3D_GLOBAL_SAMP23SURFADDR( 1),
-	GR3D_GLOBAL_SAMP23SURFADDR( 2),
-	GR3D_GLOBAL_SAMP23SURFADDR( 3),
-	GR3D_GLOBAL_SAMP23SURFADDR( 4),
-	GR3D_GLOBAL_SAMP23SURFADDR( 5),
-	GR3D_GLOBAL_SAMP23SURFADDR( 6),
-	GR3D_GLOBAL_SAMP23SURFADDR( 7),
-	GR3D_GLOBAL_SAMP23SURFADDR( 8),
-	GR3D_GLOBAL_SAMP23SURFADDR( 9),
+	GR3D_GLOBAL_SAMP23SURFADDR(0),
+	GR3D_GLOBAL_SAMP23SURFADDR(1),
+	GR3D_GLOBAL_SAMP23SURFADDR(2),
+	GR3D_GLOBAL_SAMP23SURFADDR(3),
+	GR3D_GLOBAL_SAMP23SURFADDR(4),
+	GR3D_GLOBAL_SAMP23SURFADDR(5),
+	GR3D_GLOBAL_SAMP23SURFADDR(6),
+	GR3D_GLOBAL_SAMP23SURFADDR(7),
+	GR3D_GLOBAL_SAMP23SURFADDR(8),
+	GR3D_GLOBAL_SAMP23SURFADDR(9),
 	GR3D_GLOBAL_SAMP23SURFADDR(10),
 	GR3D_GLOBAL_SAMP23SURFADDR(11),
 	GR3D_GLOBAL_SAMP23SURFADDR(12),
-- 
2.17.1


