X-GM-THRID: 6810515093003960320
X-Received: by 2002:a9d:69ca:: with SMTP id v10mr7659373oto.64.1585764231128;
        Wed, 01 Apr 2020 11:03:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls237503oif.9.gmail; Wed, 01 Apr
 2020 11:03:50 -0700 (PDT)
X-Google-Smtp-Source: APiQypLjconX9nIlj9kaChDWval72AklZs/UVEFK7z1QwtXxGHGD2IJS/7VxWR4bLyXcyIqQU8Yy
X-Received: by 2002:aca:56c7:: with SMTP id k190mr3802010oib.127.1585764229996;
        Wed, 01 Apr 2020 11:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764229; cv=none;
        d=google.com; s=arc-20160816;
        b=jmKShHzPK+UpAO2NzD4gjM3tZ9F8G8sLo3QSqkxJ/C+GAHow/5vtdG55ecCi1/PvGk
         mu22ePKEwhGAzCs7ZSqRofmYeKpgu3VCaDCOxE1ToFWXcnOggTiSjLdd5Xo4MAunXv+g
         Lo5nmyGkcdtLOAETm0EBEz6WN5iJyy8KyeoaTiFRLINIbrjjSsrQKnSNaY8cOKvp8atx
         vvACI7uHvCDVL7m4jhWs1lUQRu9MFGpgmiS5DEy9MrGp4EP1OCAWvNUZsOfi8t/XQLCP
         K+SEwiCYB3kpoANZrJ0x4qEonmh1YYcmIva09qPJZcnkObIW+Z/gwNxRHrqEUMWXY9fn
         BdKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W6Hdruz7sym3+5vSHpUoLt0hCv6yeITdNvYHdX6YAKY=;
        b=z2+bAQJeM3xzves239zqRWKPpO73Qsq6DKg3NOIxAXbZFVXmPakQB6y1kQceDwR9J9
         Xr47fnIfXpgrdnTbM5vAgnGYvfB01euQrhcODQ7fnOcEflbKvIiM3UVJ/OPO6IcxJYNm
         1dsSjpVCt2NSbt2wcD36zKUiO3IsIYfifSlMfgxXOXREcwpSVydedM/EfEa+uFgMp9k5
         B4yp9ImEtB1YYQX3zPvZ9EGieqV/ErH30Yuxnsey1t621gP1pBovlGxiLUTIcK7JaMPW
         mgV07HgQgUEU6r9WpLeBhLEkF834EUawbQECYWgoAdyNet5OAM0ChU95KG/57XwfGyZ+
         BaFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fjg7/jOq";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id t81si201791oie.5.2020.04.01.11.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fjg7/jOq";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1030.google.com with SMTP id m15so370930pje.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 11:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W6Hdruz7sym3+5vSHpUoLt0hCv6yeITdNvYHdX6YAKY=;
        b=Fjg7/jOqMyLvPq8BzxAyXqtketwx1RnwHiVCZw/Ea6fIEMn5HtNQ//3MJp63iQzFQu
         TWJPxJvu+KervK9F+pU/yMgEKLOta38iS+Gkvu0EyorPZ5VKlYLzODEN4th/ZqqrFaCl
         mPDYhSLTWstW8B/W71vBztgFC8cGEHmTXYy0+eHRQMqfhyv4VbtbDB3Ibgbnhr2Pr31S
         rjnY8jd8l59RIm5XSkdwmaoF117daKa0wK6K0Kvucqj/5ktUyZvAvg3lU5pocT9A6pKe
         J78oumh5GaB0t2+vQZMvj7sjag5DFKhltRHCWwK5Lmy9ErRZZI6rmswY5o0yHWgI/T/+
         Ra+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W6Hdruz7sym3+5vSHpUoLt0hCv6yeITdNvYHdX6YAKY=;
        b=NXxLJnQ1BCl+fnjQMPhFPgp34XsmBOd1E6jQm17ViN5NXOJ5K2x6P1kPcC74lV2jk8
         AWyUS+xFIUFZoRUruAPGnVLDbLqeZLL8DsGTASr39oGO2cbGkUBZ9m2aAl62cBINHuCO
         h+zvlirbEsUinyNZTZllW/RXTOWyGYp6JCLelgEEPOAyIIfItkN0PNn+d+I+UWPUvCJK
         zAvXyM0J/soO4t+Bh8z0W2iSpHxe6gUCi5JGR66xDJhk/FvgwCWHeN6JbQLyVyJ6/lSK
         cjIaU8NO+/UfzY7lGw3IzEt1pqQYmCva2Al3QAnC/MlTnRxgg0+GnHzFkycsK1cUsWDG
         avRA==
X-Gm-Message-State: AGi0PuYSJ/FPlhOM/dDW73XixdNmezjS2SKUJaLVly9rkfD314p0AQTg
	75LfysqtFzqQ0M2/n2PYaGA=
X-Received: by 2002:a17:90a:e398:: with SMTP id b24mr6133180pjz.113.1585764229550;
        Wed, 01 Apr 2020 11:03:49 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id ci18sm2131896pjb.23.2020.04.01.11.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 11:03:47 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 1/4] Staging: vt6655: Limit return statements.
Date: Wed,  1 Apr 2020 11:03:39 -0700
Message-Id: <fe417533b66d29ef6ea19128b38b8c8de7757ae2.1585763457.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585763457.git.briana.oursler@gmail.com>
References: <cover.1585763457.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Limit return statements within context of switch case to improve
readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

---
 drivers/staging/vt6655/rxtx.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..443d04c4c62f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -259,12 +259,9 @@ s_uGetDataDuration(
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -282,12 +279,9 @@ s_uGetDataDuration(
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -323,12 +317,9 @@ s_uGetDataDuration(
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -363,12 +354,10 @@ s_uGetDataDuration(
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 			}
-			if (bNeedAck) {
+
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
-- 
2.24.1


