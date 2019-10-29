X-GM-THRID: 6753034664415330304
X-Received: by 2002:a9d:479a:: with SMTP id b26mr9383432otf.343.1572360942739;
        Tue, 29 Oct 2019 07:55:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b745:: with SMTP id h66ls1135387oif.10.gmail; Tue, 29
 Oct 2019 07:55:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwBsFXezJ9DWD5Jcslpm6OgRvgz/vJ36AY/PGdJ10utJnw9QPKogVdPRG3gC1B4WMtBfGpI
X-Received: by 2002:a05:6808:20e:: with SMTP id l14mr4383379oie.59.1572360941729;
        Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572360941; cv=none;
        d=google.com; s=arc-20160816;
        b=Hs4fdMo19PmbvNV/GnybdzBlpYbKWqSEiZ7ZTugAuLmbzAPbw3zoEaSfrdj900NKCa
         iMwGSyT/HjaYsoJs66Os+nOPZrqxkqnKw3+cIHXyFtXV/jlUav2vYpehdSOd6zuHQbCq
         gtLajYfk6KqwIlvThjQouwyBmrqfwwOfk3mxu6i1A7C1XX2KXu29F9YPeZCafzXE1KwN
         53C1jo98df7QzvUhy0PKSSYdOZCbRuflY76UqecnB3qR3bCvAYVGPfUVZea/DIEde89Q
         Av5ANAVIbNx9x0m/Ed+a/61rFlpUXn0PdxSuy4tBMblvJy+4+tTZ3hPVKm6f1fsz3vF+
         HqfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OXHkKi/QhwruZ8D2A/Di0N1vIvUmUT5HCPHPe9Q0o9g=;
        b=kTVGyhJHREltqHUFAEN0SKZIhIPBfAP2hSmjcIlVEy+5plGNgepqg9NdRai1PMmPpe
         IIvELp0p6+3eFS5+f+cnbBaLyZ4QOblZYy2XPvdvMX+Y9jfSlNUCSCrD6t0iepBR9jC+
         8tdYNRPIDgVE+YTRaD/hUFwXkv35wEDoK3uUEH8w/9HLC2J8maBNdY4R3G0/TB8Nmdme
         /PcuxYhT/+KfLg+wwrGxhkYg6e+iTUQM0wxawsb4rhLVxupVdS1o5qlwCC6MIslp8Big
         JhVbyEAC+crt5XuTPbZFnXwENlsryuonyTe/3mS6BtdMZZNNmMNr3qtvFkgCWZKCv/Gz
         ubFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8phSevz;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id l1si683791otk.5.2019.10.29.07.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8phSevz;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id x21so3385509qto.12
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OXHkKi/QhwruZ8D2A/Di0N1vIvUmUT5HCPHPe9Q0o9g=;
        b=V8phSevzPXZporM9ZBf66iJVi31774Tl/mJFyAPYX+/rfffVkhsVaP7EktFU1QX1/8
         fiY8GDogWNK1PWTSsE6TNQep+FBprGmbwkO1a1daQ1Wy0xVgSSFFV4x23rleaXZfFwas
         5U03td2CVB91kORy2l0Y5bSXXbrhg8oOJ0ZYYCVOmU++0irDudF7/wEwt0rvwTKDWHLi
         u+bW+w5y4aH6AFLjcrfTmZz6lALxTUFUP+HWnPZGRo6ZRyyEYp1QTpiOWAEcdMs4R3ev
         JQt/bHRAaOMNE3RmQhoeNaK6d7fk34J6zaBXIM8DAGAA24zlFTOVn5UBHfHzdQN0znE8
         QYOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OXHkKi/QhwruZ8D2A/Di0N1vIvUmUT5HCPHPe9Q0o9g=;
        b=BOvcx/dNiMe6IPhIFvFVnitAyDRAjtJOj23vL8KS/ft7P5ItdNnT51yqU2fDUVCQXd
         7Y94hQ8fTxccB+ZeSndmzip/wNeoBMbUCirhDgGXtMEa6NRy65QaIMdHeb4ci+BuJ1St
         5P8fwVXw+pbjhJmdHEjeQ67VAKZeHjQKpzAcPXEOueQHSIrt+kViC45MeH1Iu464RlhX
         t2v0S0kS4eE3OrZULVcei2cnKpckaH7Ys/XsyzkaEtMWqei1zAhyBKn7fqm5Xyfkme4v
         ruGNhFVoXQNv8iPARrgFSi+tppHux/t8etoGtuF6y56e3FqXXgNfXUNG9doDewvuDLvn
         1qfQ==
X-Gm-Message-State: APjAAAVGO+hLT//Nn84+t65XdYcCd/oHERL5eRWb683s7Mpg2rGSUE44
	zbj+QGrKirgE59qvqKITceHBKcpIfIM=
X-Received: by 2002:a0c:e646:: with SMTP id c6mr17753583qvn.162.1572360941068;
        Tue, 29 Oct 2019 07:55:41 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id g17sm5978069qte.89.2019.10.29.07.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 07:55:40 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 2/3] staging: rts5208: Eliminate the use of Camel Case in files xd
Date: Tue, 29 Oct 2019 11:55:16 -0300
Message-Id: <20191029145517.630-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file xd.h and xd.c

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


