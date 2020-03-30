X-GM-THRID: 6809468497850007552
X-Received: by 2002:a02:b690:: with SMTP id i16mr13255692jam.69.1585604789246;
        Mon, 30 Mar 2020 14:46:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:d391:: with SMTP id o17ls4544147ilo.10.gmail; Mon, 30
 Mar 2020 14:46:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvuIxj1oRiGKwDwCFjvp74uXeGQy8Y/SbWWxDIo2zqx9KFS/a3pBSrvBCquWdM65zvaN1o7
X-Received: by 2002:a92:b6db:: with SMTP id m88mr13804388ill.115.1585604788053;
        Mon, 30 Mar 2020 14:46:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585604788; cv=none;
        d=google.com; s=arc-20160816;
        b=JR8eKgOqLYTr2aYcTLdX1oAnHWoiwo9L01X/Vc7uyh2uQCaX1x+ErVgVH5KrmQyIsV
         ZFCZlIPpEvuZQZYZTJNkW1BGY+2GHrRp4OT3kgRntFSjGshlI0wzVDVduxB0nDpwel6U
         BqDyGOydU6McqKG5gQteLnQzotkk2uwQZ2rJ4P5XYNffHGb1TJfupTXHfuroEe73TZ8q
         Q7qAIDdnOeUaJ7CQ75gPdp+1XR8CjohmA5/8+44Xd3e/dFkOiKsT8Ut9ArwTZ2Xvj+IG
         vF4Z+BcKKSGNwAxL3FGYjZJ5qTq9DYLJ/KQsNmGOMdLjGwPxGd91YJJRjMt8R63UwgNA
         WPrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3dcAoN1+dU5RRo0qINqwezngMlazlEYMLnB6EmXTGbk=;
        b=BT91wwgM8M5ZGyqtbejJpgIrzUGVk13TG6gICzss1JYyBMRy48K+7d/BTynWrbTVXr
         WJkAP79TZyDNX5H1fzG+El7oyOOmTOnksBCZU9Jo0lzshxvrUPDSLVEj7QEfKjTLyIX2
         MqkVrMeCyiZcFUL75mlKsLUnGeszRUMUmjf8/m0MRPgRB0L7jeA4SANpFbnbIdFNX302
         ARGbHhwdU9lIGWrpaeYBy3Mnb1CBW6ruN1HkdgGM3itDe7DUAje6jEcplLp6iY2KKXWG
         DHhUkkQ/rhPw/zfk4EmZ4tFWLspk6ltKVr7N5Ktr1HfwcFNRnLbPOrS8U9PO/OEr6Bts
         t6wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gfMsUMHA;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t125si1193762iof.4.2020.03.30.14.46.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 14:46:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gfMsUMHA;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b1so9309124pgm.8
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 14:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3dcAoN1+dU5RRo0qINqwezngMlazlEYMLnB6EmXTGbk=;
        b=gfMsUMHA4Pj+mLP3dWOOZyyRsxv5bDcLC9BidEGTSQ7NW9TvGI91+zRGqK0yyy5U6x
         gAOQq0qrBTTm70t5+5tP7DkIG1xzxdTFpnly5Z/fztRTKFPbxV79ssKcqiTjSNbgZ9vk
         PEfs7JFtlM/1pR+BGeTWQzvf9Dtz9dwxcEmkCG4YaD69Cd9F7R1y5IS6ogrdi7nS0WFA
         Z3xDilkr1yhnZBQGijvSByqe11SdRg7tFFGPjp8mlr5/py8kat4vxrupCdnuimdxz1kj
         EaOdRGf0Cjhh3Z1zmjmFlP+k1lvQf3/HgcNrAmz9HxaJKstu1+nJFpD5PZQic89HbJTN
         Hynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3dcAoN1+dU5RRo0qINqwezngMlazlEYMLnB6EmXTGbk=;
        b=MTerD2lTisl7gOGEOOmB+8BZ4tFGSyUgV/TPRjskV3TiwvOXOkPyvUNGm1kJHA6Qcj
         mX81B4ylsYtCOxmuEzPoqRlabC62xoSwEVxfIyZTM6ZK2Bz0ULCYokJKVYTJWquEBWvj
         JdlCk3qvPDbZB0KJxURAD4cDBXCJSKkzjzEVc5SNGSMT2jORH1o3+/UsvD/Guc+krj4E
         t2g1Fcw6UzzJCH8Q5YoT85vBHEZ1VuRlXqF0Wu3au7xSo+jmKUAQwWInC0SCyorJIfCH
         6ensrxl6wbFIPgQqkR2brtUMI2EUlYzeZi2kTYCm4v7eCROSLPw6+u87CuX0UKP0l9Gh
         d5aQ==
X-Gm-Message-State: ANhLgQ31Or8v7dePrLt0GyISAtJl6945L9PMjAN/sll4kDkBQ6Y9GpaC
	QyUac+EutAuteUCCP+fr6HEV0V17FUPnJQ==
X-Received: by 2002:a63:b40d:: with SMTP id s13mr15459446pgf.268.1585604787127;
        Mon, 30 Mar 2020 14:46:27 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id q6sm403410pja.34.2020.03.30.14.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 14:46:26 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v6] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 14:46:13 -0700
Message-Id: <20200330214613.31078-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v6: Forgot to add all the v5 code to commit.

v5: Remove Suggested-by: Julia Lawall above seperator line.
	Remove break; statement in switch block.
	break; removal checked by both gcc compile and checkpatch.
	Suggested by Stefano Brivio <sbrivio@redhat.com>

v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..c947e8188384 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
-		break;
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 | 
+					  SOFTPWRCTL_SWPE3));
 	}
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


