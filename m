X-GM-THRID: 7023011661987446784
X-Received: by 2002:ac2:533a:: with SMTP id f26mr92847lfh.452.1635172336636;
        Mon, 25 Oct 2021 07:32:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1314:: with SMTP id x20ls378005lfu.1.gmail; Mon, 25
 Oct 2021 07:32:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLiqFwEh4vRmPKzpjRVRFtP5AxlSBIfWevZgCcud3nKrlhb6uulB43R1qhqwc0DmQ9Fnh2
X-Received: by 2002:a05:6512:20d4:: with SMTP id u20mr3906270lfr.254.1635172335118;
        Mon, 25 Oct 2021 07:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172335; cv=none;
        d=google.com; s=arc-20160816;
        b=vfMw0KBFw40S80PC/zrVGQT9tuKPz48PeWM0hMRWUnmrvUYS1m3717p3+lLA2HaksK
         /YUdKxwRwWyDzxREBgdY0HGzhEWkjR0itHAaA3kpbNQLdes7oScMSeBURZog3E+w0/AG
         bbGG+AaMAkEu6StpllTPg50+jZqC/KFW2YeGnMfqDP4dpltdEzZpzAEH+XSrH1XWQH+C
         7W2IekdCtQP1Y2ewrj8Win6jmDOqzuGu1yw5teT5MvjOEyVro8pEP6bWN1knBg3nRMaq
         +kxGPmUuQsOMkfX0VRFWOVBu+3SiB6wxHwTCXLOWfaOG9LOyWvB1rsRXwKSChNrADykY
         3L3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FoRrI/ixSraN3mS0iMWX+7EoDluMijUSgMuujW8zXZ4=;
        b=vTrBxFwRr9O1lvL4yGRybXA0FhD+aYzQbldzyS4aAvrb9mjhxjY6xKj33PWaZ641oa
         DVNq9dWlnav27UMvg8LA/Y+PgUBKS65qgDr+ILrzjEmxurZyd4swELy7Tb6qS7bHKAVv
         bP3D8sbwop1i/OPBIBngS9P08ZLnsG3lMMpoSLou/nxLLrLVyQv5XAmRORvl127go0zj
         c8qklG/bVwSS/Xmv//dSWPRnWv4R6aF0NVwpSABe+fytZzmxHeHdeq+GbCZ3x7jBCepg
         TPruome/8HpHwxqmhTuqIGTft44s7pZhQHO9aB5UOcp9bER8Y4X6CHyOLVneqOtB7Em5
         M5lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="PN/or73n";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id m18si959760ljg.7.2021.10.25.07.32.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="PN/or73n";
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id m42so10911857wms.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 07:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FoRrI/ixSraN3mS0iMWX+7EoDluMijUSgMuujW8zXZ4=;
        b=PN/or73n3nh1F/9Pw6w9aWByTFLQTjikp+yPEd7f1yb/zsVtGMfkOwui8zVJf3Ngl5
         /37yVh2f2AsKX5cTVXIIU6s08JP/5Iz7etrT05h5eHNm4FTd4qwMn+8ELiaeP2YY6ZJ2
         euP0c+3V3FOpEXJUghbCWWzHX0fX5NMqVxQ/T6xvL8wVtqgZNFY4Zdcnh+L1iam4bQJD
         fbumAf99RCRfSXos0bhVtw0y8becFmJDrO2+C0FKUZbT6vYqRGQKqbk7BG1/ODkjz4pt
         x6HyA9bReXaDWjxvqIFwvHQrSIHrW8l0sDbha4QGn9VXMEECCDG4irvfnP7YbzO19Jlw
         +GBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FoRrI/ixSraN3mS0iMWX+7EoDluMijUSgMuujW8zXZ4=;
        b=LBhetUXUjS1chA6GtCoAN5+JG1eoNKnDrubOPjLwQnzKGclRSo8SIM32Oa679uSRo/
         P04ozlGB30O2vXxKC/Mh94pszSJi5V7/qgKmGLcIMFIitAjszZk0PzrKtqUlHU0Xga51
         x2cL82hE+TpkzQnp3mz3OZGwYgwraZRwpLYCZkNXbVpNPHq5kKtyCp+YB8qeWnDLpD6H
         Y72kPZ/B8hciz1daOxJeCp7mqu4ts+GqEbVIBZ6tPgpbvroV+WcohR6BsRuwXSlewXYg
         mu+dpwpd4qsUGxIVrdO0UVy+bAeJXAZ6kpifBgKTIDkPelgqZV4CuRTE80VbU4jAK3jN
         K1Og==
X-Gm-Message-State: AOAM532JFEN9BZ5JNMgxln7V3ZUJGK5dSZ/bWmNd4DaMshS/Xzm+ShoF
	SA8FZ+iv8EMe4iHMuWj83MrFwkmRE/m4Hg==
X-Received: by 2002:a05:600c:22d3:: with SMTP id 19mr15179803wmg.85.1635172334641;
        Mon, 25 Oct 2021 07:32:14 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id x8sm13011500wrr.53.2021.10.25.07.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 07:32:14 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 2/8] staging: vt6655: Rename `dwAL2230ChannelTable1` array
Date: Mon, 25 Oct 2021 15:31:28 +0100
Message-Id: <18e1857c02edd1dbc81ef7e5b00e42e7cbce4710.1635171518.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635171518.git.karolinadrobnik@gmail.com>
References: <cover.1635171518.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To align with the kernel coding style, remove the type from
the variable name and do not use CamelCase.

Fix issue detected by checkpatch.pl:
  CHECK: Avoid CamelCase: <dwAL2230ChannelTable1>

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index bd6927151120..866734ce6195 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -68,7 +68,7 @@ static const unsigned long al2230_channel_table0[CB_MAX_CHANNEL] = {
 	0x03E7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
 };
 
-static const unsigned long dwAL2230ChannelTable1[CB_MAX_CHANNEL] = {
+static const unsigned long al2230_channel_table1[CB_MAX_CHANNEL] = {
 	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
 	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
 	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
@@ -578,7 +578,7 @@ static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byCha
 	ret = true;
 
 	ret &= IFRFbWriteEmbedded(priv, al2230_channel_table0[byChannel - 1]);
-	ret &= IFRFbWriteEmbedded(priv, dwAL2230ChannelTable1[byChannel - 1]);
+	ret &= IFRFbWriteEmbedded(priv, al2230_channel_table1[byChannel - 1]);
 
 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
 	VNSvOutPortB(iobase + MAC_REG_CHANNEL, (byChannel & 0x7F));
@@ -703,7 +703,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), dwAL2230ChannelTable1[channel - 1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + i), al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
-- 
2.30.2


