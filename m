X-GM-THRID: 6753034664415330304
X-Received: by 2002:a17:902:b08b:: with SMTP id p11mr1672968plr.57.1572462332454;
        Wed, 30 Oct 2019 12:05:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3687:: with SMTP id d129ls108009pfa.13.gmail; Wed, 30
 Oct 2019 12:05:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXyDO29ndMV/gzX+H+OTsHJjGRi+K1RETVZF7u4NNj+b+jYc3OXOQ8hdupknT5pysB1f4t
X-Received: by 2002:aa7:838f:: with SMTP id u15mr915489pfm.189.1572462331176;
        Wed, 30 Oct 2019 12:05:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572462331; cv=none;
        d=google.com; s=arc-20160816;
        b=TTJJTdHo9sWfceNc4P5hm1aIgSUdhHIkJb4euPBt62e6Fdzt4y0vUmfNkpXhO6GUcf
         34LcXovIFiKofHQyUR2GDUNiXdWtyxbgaxRGGIjAvsAnn0tfZZuockkn2kwIDFjLHZoO
         Efo7HfFRkp3pYh4X+iwX5RTM1bHMA9XCEKQ2B8u/adQF8M3geIliBva2/cYDySfO6PvM
         YF8w9CE5uSu2JvygccJECG1cMUiy43lqh7DJ4mHF8DY2sYBJWhcc4/MQyw04Nqo18hpG
         Uz8tzk8xvmkzyHjPj+5gesPf3gAolsNLHjznxGxZ9XU3QFlVAssE/8+SJZy024xGO3El
         lWeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=G/CLbA2eHut9jnlfxg8nn7rhAl1LzWfOSEW3r5Byzck=;
        b=JBu802CcBFjGZIbu0tAmG5srcbPQNR+L2qWl59DyZzhSKwod9muPSgOB4ooS3EzFJl
         qZ0nJqhJgSX4Ff9gtz6IfggCOsZ34n0ndIU7/iUI/5s/4ZK1USMduvy7Q90CQQbX1wYh
         3VDg7zbsgo50i2E6o908I7zSwilNJPncOZPujPzdTwZeGO26Tw+3809Ni1RKBncxr3Jh
         oYanWa9mzH5pqeB+tp7sb7m4KMnuPY8plBVvoMRtGPkBW3HgwreqyKNe88Bi/MIOz6Pn
         aas1OYznpeFJUBaAzCKpKzfTlXiAxyOz41TFWHlHBp9KgNCplOqa6I+5jmWHuMGGrYsm
         73hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bOK7P2lx;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id h13si194582pjb.0.2019.10.30.12.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 12:05:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bOK7P2lx;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id c26so4732143qtj.10
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Oct 2019 12:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G/CLbA2eHut9jnlfxg8nn7rhAl1LzWfOSEW3r5Byzck=;
        b=bOK7P2lxlfyGq9rodQ/zhPwa8PTwWOLk/pRJ0OBGdkrVvNV3Rxms5+TexpYxEFEgWX
         QJKhBs0hX0sz92F9UkRWCfD8EDfRFGOzYG7fYcrYXXPPnXpqrmv8mx9lFalwAbGXVX3D
         B5Qojm0kK5rYnJlQ3GaGLljpBzcegjv5bdTxfp/lPeaVvcbttfXxE0xjsws5YNAIFqSd
         lZVcnUOSKgug3+quJIJEeqkP6BlVHYNGavi88yqBUJGvUFmn9ZnZx0O2SOnFhMuqC7yq
         77ayCW3VszzHN0oW4cIAHG7pNFXwXdk42cnO41VCgelNXZDsTx37EcAdkGQUALkUvSCE
         hmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G/CLbA2eHut9jnlfxg8nn7rhAl1LzWfOSEW3r5Byzck=;
        b=Ch7Zx/bpRPhJJdQOfdSkMAnpZ8syylUpedzHbB2afIDZRPn9a39zUy55+WnfuiiT68
         tMf/NGd/zQE78mOwkNUvkn0wQOuR8ah6/ihq1BT8m55hiLeCPc056Ybnm11LEOF/6sQo
         wsx7FZjg6bezqPX6eB6aksWYMJLQdWd00VZSu0nfRxAoDf0U+NiYtxkyinV1HORq6o2z
         NyADZWwoJVBmkv6gYB3BICuzH+jkNgkfVzle7qbBUpf00Mgl9KLN91q7cWfq721h+5M1
         c+ZTmDI5frmupwolKp6QDZSk6VOaVjPK9Zmros4ObJFxwRru9F7dCrGlQGk0H3hAsIBL
         V4jg==
X-Gm-Message-State: APjAAAXaNvnSoWPh4PJFpq/1LhrrBa4r7YfnVXD2uyMZLAf6J04UB/Uk
	sW+rlgdyj6nSNNsoKyL7adqxMtBg7eI=
X-Received: by 2002:a0c:fca5:: with SMTP id h5mr630877qvq.149.1572462329964;
        Wed, 30 Oct 2019 12:05:29 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br. [177.220.85.136])
        by smtp.gmail.com with ESMTPSA id o28sm690544qtk.4.2019.10.30.12.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 12:05:29 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	nishkadg.linux@gmail.com,
	kim.jamie.bradley@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v3 2/3] staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
Date: Wed, 30 Oct 2019 16:05:13 -0300
Message-Id: <20191030190514.10011-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in files xd.{h,c}

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a4c59d..0f369935fb6c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1


