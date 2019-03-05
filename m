X-GM-THRID: 6664861839759769600
X-Received: by 2002:ac2:515d:: with SMTP id q29mr96745lfd.10.1551790408236;
        Tue, 05 Mar 2019 04:53:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4d0:: with SMTP id a77ls2391725ljf.1.gmail; Tue, 05 Mar
 2019 04:53:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwMlJ4PYCUNOuJvTnQuXqQsQXtUfRYjtNV9AUxCHBz4COJP2XhbOyEkL98VPFtv51RsXIhz
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr1406379lji.9.1551790407305;
        Tue, 05 Mar 2019 04:53:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551790407; cv=none;
        d=google.com; s=arc-20160816;
        b=U6nn610moI90PSdU0iPBy2z7KFFHP09cfioO6otmUXxxyXmplG5g7azzTQ5PN49k8H
         waCo1GnvjN6e6/fMOODQj6O7531cOcKIEwHUlxweJCQwz/9w0HTgI0+ccjS4ubd2Tbyn
         u4DTJczJwMgrgKYTuXB9lwSrb0ZRjM7JELgxlntrn2eU3rN3p53EiyOzVzOUTt+5lcka
         KTG2yw8snFvbNtcBi0w3JeFqwjvfZNBJWSjzVNXI3bbyMHfknbTvLMZ8H8ElAavA8Af7
         klozCha4J66h6ygyZ0EYK4jRMDjZ2b8mt+GW4n+AV8d1ky1bsXzehDNuhFrSYqj/Td36
         pAWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2MXryr6dLMiBmzepD6M7EmKACEXjWDqJL1hhlqR/9mU=;
        b=RF3u/6u8RVIsaq+Q7fgt+131hi8D+/peatjRCpS6r8sspPPldVxeY9+p6YA7rHbqVE
         iyMTX69DG1mcFZFiC7kuenWkghHawBeFsZTeTK9cos6cR9UuRwMjFVZM1u3DdtxqKmMd
         Ll1zWjDNOEVvEuwTVyvOFE27q9c/FZsqhxb5srOmF2P7VtROxXGHjoeQ+cManyPqxBP+
         3wTNFzIrhQRckuZsKjXTu5EdahLLTrk8juTGi33M1QtO1VHNSDtFxbnAKafxiU3rlp9j
         ZRfVQYSV/XqthSj6xbGeuDXhjEJWrkm2XFOrMXs7dJrqMRkZXuE6tjUw33EWrPf9H4di
         1Spg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ic0bAHdg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id n21si279263lfl.2.2019.03.05.04.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 04:53:27 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ic0bAHdg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id n2so9328138wrw.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 04:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2MXryr6dLMiBmzepD6M7EmKACEXjWDqJL1hhlqR/9mU=;
        b=ic0bAHdgQ71fxBn9S937/QqycxZfwRx1vH6ktw7Z/P5E4c9ZBvLckc7BWeiV6XNs9w
         Q5FmM4iwRER2Hs2R6UgdvtlDyOMwRweEeAHyzwSyYcGaAzvh6P86CNL24Xws1a3jQqBF
         Sn5ItkkQOBe9QsMb2zGpkP7JBW0YLSwdaz4Mls2lZjU+kOf4tPwaUiMLpW/PmMDzsR5J
         f2bLuvGBB8RwWqi9m0o5aisAPMQg0KzIuMlnMEG/WhTI6qHpCgbXQcK00pSC6739IZeY
         04kABr0WRVixCaOHUsvWRfcOM/diymb8CVrqg77WdhUeLHpv1XqwDSxgdeh1ol1Mfilj
         dg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2MXryr6dLMiBmzepD6M7EmKACEXjWDqJL1hhlqR/9mU=;
        b=DoaxxGUeQQ27825aFAkoFpxBZzL560AuEtLWNLUx8CoAkroVCOLoIzrud8htVt/ffF
         Bpe0Y7XA6QxPgAARBP/0/XMxttcTZtJeiTt8zzDLBAiJywzWujYxyJap2G5KinbDDt4z
         yNm2k6tJjbPnjpKCLXlbpKm8bUYqUHpFmAdziCzanp4dXz3LM5Ng0OtecIWhVhV2Cy1p
         A6amdsWGzXI/OPfIyWGaHtMGOgPuAohmfVdWkIHW4GkTHWRC/o+sW4qcBMK0cM/PgF0g
         w4EqORmplE8Bw7wG5iljwEgnQ1V5JlYzwwENsW+VBI6HmckGvPy+L7dCBbLJPbnDW5zr
         Lr5g==
X-Gm-Message-State: APjAAAVJhdAWcMGlONRSQyZb+KIO1gN1iJIMcmCqmACD0fu/eC7F4yv3
	vHUA9b20RQxF+eyXOSZRzZM=
X-Received: by 2002:a5d:5681:: with SMTP id f1mr16363676wrv.95.1551790406967;
        Tue, 05 Mar 2019 04:53:26 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id a24sm11294203wmm.1.2019.03.05.04.53.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 04:53:26 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v2 2/4] staging: ralink-gdma: Replace from uint32_t to u32
Date: Tue,  5 Mar 2019 14:53:20 +0200
Message-Id: <1551790400-19453-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551790140-19291-1-git-send-email-daniela.mormocea@gmail.com>

Replace all uintr32_t with u32 to avoid getting
checkpatch warning

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---

Changes in v2:
-make these a patch series

 drivers/staging/ralink-gdma/ralink-gdma.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index a43d9b8..ccf9ccc 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -360,7 +360,7 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -752,7 +752,7 @@ static void gdma_dma_tasklet(unsigned long arg)
 
 static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);
@@ -766,7 +766,7 @@ static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 
 static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);
-- 
2.7.4


