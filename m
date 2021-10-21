X-GM-THRID: 7021449038743470080
X-Received: by 2002:a17:907:a061:: with SMTP id ia1mr5762580ejc.372.1634808499605;
        Thu, 21 Oct 2021 02:28:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:7244:: with SMTP id ds4ls2536292ejc.0.gmail; Thu, 21
 Oct 2021 02:28:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDreJLQgg8o+iZd+dqkzQ5SEtuXaHhMlx80ZXbaMWa1y9h869JusQFpvJeG/Wog2GAwsOv
X-Received: by 2002:a17:906:c7c1:: with SMTP id dc1mr6115994ejb.6.1634808498037;
        Thu, 21 Oct 2021 02:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634808498; cv=none;
        d=google.com; s=arc-20160816;
        b=s50cnqdh1SOeNvIS+K36PSq7QnvcsKGJl8P4wiG5FtvjLs2Xye7xdPGtfqWuWPV6v4
         VH5RuKXE9cMuPbJYmXPyqn25UCBM4CkujFHuS+Z7gAGPS1zZuOItAzQWVNdsoZaUNEeH
         wN0wdN+Nrfq53f9MK5/KEZZwz4HN6FE9Vbx3WhO4/CIxSx3c6HmgsYs6LxaNWhPwwm/X
         m1rzet4YM+vfZy0QBQ7B3kz/GAVZRB6iJJ7qjx53RkcOAlevu6lG3BbcJXVBtG4PInqk
         cIL3gVz2W0H0QgQ6gLH7DSrds6S4U/dvX4jAcLZdHrIh1fOalBqJNttBeB0fApPhUygR
         TVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dbqiLL8aUgPksDHzHaUghNX/IFV5YGYn2GKMzSbGgXE=;
        b=zVfeYlHGohoHaulsbTiAVChZjIGBFkArqC7zvgxtF78F/IpsHBl0Am92UYmx3iZcoO
         tc00grHyeO1bwUl1kwrExkonZQKpTIjXikCp8q+CD5O4gRB8hS3wZLK+HIbb2swtib3T
         A++OQ5Lx8zexEK1Hy2pBxRa67sGfclFElljElFoT1u02Rqysb9BgWIVGWJUWFLlsjuDg
         NCjExrXhBUJ3Ttq/KrqY4PWDGwQ3OBxwYPRO0bPwlYpJo7lnIm7eSSQcoXjb7ca0X6cU
         JyBgOAqEN9KeLP4kpfI+HXj/rrTdMGoYZ4GpsgV1HT1SjrKyHgJ9hCiBd8rDIIrxniO0
         9peA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FBVF3ZPI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id dr8si208630ejc.0.2021.10.21.02.28.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FBVF3ZPI;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id z11-20020a1c7e0b000000b0030db7b70b6bso6143900wmc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Oct 2021 02:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dbqiLL8aUgPksDHzHaUghNX/IFV5YGYn2GKMzSbGgXE=;
        b=FBVF3ZPIVUk9qKdxRPmrXVIhsOvmuadNOKFlxnp6cDew1DInimJnkB0oyvoLlJFRAs
         fsCPIobNZyb+gStsCk6BZeL1SwOw//LExuo+gAqwILbi5eK3c/tmCZ2DH69+o/UVhUWh
         VCrE4ReqQrolqyZzvSgryO6A8RySv2DYxjGzSSuLGV49C1NVnac2ciN87ja6yLwwyd7d
         VSw8LbbCLrKXDHJ5An3yOTK9iNMjyWv60FDoDVGJWqcQWiSlb+FoD52iq8oFHgUNzkea
         SyAfSN6mdgcoK34+LzSHCpGr2NxsCWR7KCdjvJZqbyy2VNs6/2gslC6cWTm5GCL3OKpy
         /WlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dbqiLL8aUgPksDHzHaUghNX/IFV5YGYn2GKMzSbGgXE=;
        b=mbl/D31E/rY4pepsTjuWP+e2ztba1ovDa9M8/eDMuF86mtN5hLROpRmFkQNt8wGyrb
         0qxZl5YmNUZbhx+fJU+Gh3aF59W49k6QTLM2aPXtDvU85lC1niFAq2NRUHtEgQxYvphd
         HKC2rshKLR6miijkePl7nDbiVZDOL0digejCLPwFEkeF0fUil3D4jo7qScaVWJClh1sA
         Q/Sq6WKw+I1oyjmBVGeW+pfkUkj7AwFvqIljZXQG5jEfZl2+cIXua03dTF0DnI/9njB4
         bNib3rqJVLrGXErHrROuPbEs5JO9b6x+82Bpco2ywlJnWmg/OF735kO7Bv+3eCMVo5Di
         DXwg==
X-Gm-Message-State: AOAM532ei1lurNKEUDYnu6r3zhK9IxCVP3WXtl9OzgmbHFl1lGK1r+9f
	I8LIUxFc2ScXbNFkT6HQOnYWctL3IkkNmA==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr19316174wmi.115.1634808497790;
        Thu, 21 Oct 2021 02:28:17 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id p19sm7198376wmg.29.2021.10.21.02.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 02:28:16 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH] staging: vt6655: Use named constants when checking preamble type
Date: Thu, 21 Oct 2021 10:27:53 +0100
Message-Id: <20211021092753.511863-1-karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compare `preamble_type` to a predefined constant, `PREAMBLE_SHORT`,
instead of a literal in `bb_get_frame_time` and `vnt_get_phy_field`
functions. Thanks to this change, it is clear that we check
the type of a preamble, not just compare it against an arbitrary value.
Remove a redundant comment.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 8f9177db6663..84fa6ea3e2e6 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1717,7 +1717,7 @@ unsigned int bb_get_frame_time(unsigned char preamble_type,
 	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
-		if (preamble_type == 1) /* Short */
+		if (preamble_type == PREAMBLE_SHORT)
 			preamble = 96;
 		else
 			preamble = 192;
@@ -1779,7 +1779,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	case RATE_2M:
 		count = bit_count / 2;
 
-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x09;
 		else
 			phy->signal = 0x01;
@@ -1792,7 +1792,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		if (tmp != bit_count)
 			count++;
 
-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x0a;
 		else
 			phy->signal = 0x02;
@@ -1809,7 +1809,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 				ext_bit = true;
 		}
 
-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x0b;
 		else
 			phy->signal = 0x03;
-- 
2.30.2


