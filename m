X-GM-THRID: 6665747871131762688
X-Received: by 2002:a1f:bc4:: with SMTP id 187mr9206520vkl.1.1551993093933;
        Thu, 07 Mar 2019 13:11:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls1221895vka.3.gmail; Thu, 07 Mar
 2019 13:11:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9L0qK4qdfUs104oB95CnM782s76AM0EG0r2JDX6upCNBG6O9P8XQnfesiOENpDzqbhOJi
X-Received: by 2002:ac5:c316:: with SMTP id j22mr9227404vkk.18.1551993093164;
        Thu, 07 Mar 2019 13:11:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551993093; cv=none;
        d=google.com; s=arc-20160816;
        b=fjKx375niJffM8hGQP7pTNnmkC4iLGFRcugtfVOUZU5JwsnpEpt/zvde6D/FlS9yq1
         AEA5Y6B+TrdSw0buAZhhJuNm6jmzrT6AI7wwVthdmd2oiLsRUTugzB0JR1OYKtfhtYI7
         5bNE/z+qIkX7bIbhk/bGzbaz0VGuW3HXz3wFv/cylFOfGGB4uk+thGwtaTQ9GGhOiFC9
         X2RtnfQ2ZN5afJ1Aq8pZHBTn0NhtLVp6SMnvtK/o1vcHNz0stxtYP0ULcxmkI4yKvgyA
         TbnhyG1aMHA1DqfaRZLZkQP+D8OaXTVg9Nhz7zZ0KMS1dFyzDIIHLobXSdXgnlhl3zEP
         wvpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=afIBDypn0ICxaoDBDqtLt57YrNX0EsS7bs8UP18kgkA=;
        b=GGTJW16zfXoH0lceV5uTcqRmQ6ftId6m/f8jNiUhq9iFerbMeUhkY7yn7dxXwkp9zu
         nLHo09vrENev3U1XEMEv+2CymL37LYhDtMVaqmLPjOWVH2sKSOjyvemHhUW0HookWu9q
         kK7KY6g4tPG8WQzgMD5P47msSL9rdrgR3RaPGdtQ/hGiv1QNxc/O0QQj8Oc5V9uLYBYh
         jYOWCSwG6m/qAs0D0PLYNguGMXcqbgqLpx+P8ElT5bsQSwkosrUl1tIybvB3Xcy4OnW3
         pHGJ+RHFrDrNg6+vou8P7G6TehNtCfl7cX0+QeeOnq+c7NERl4eM7YDu90a9f8JieiOZ
         60cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dc6QyTiW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e17si285280vke.0.2019.03.07.13.11.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 13:11:33 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dc6QyTiW;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id g1so15358954otj.11
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 13:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=afIBDypn0ICxaoDBDqtLt57YrNX0EsS7bs8UP18kgkA=;
        b=Dc6QyTiWLIFnYWN+gQQl5tMZqZ8hL90BFeWddjZxs2WXEWEpNuHXJB5bwc6Y7mqkQ/
         XYESYgINOwM66FohFb5KjEDLCb0D5lDs8Or7EbAA6+86JbV8H7Y8P8PePufJCrCbTc+v
         3sgTWkqkhMhxGO9UmSVPTz/ROmrMWtlUTyddxIWZPtrOFQsQmbTaBOo3s7Vzs/QU0xRu
         J0aV1IkpebF6hVCIye6QPmPowGwB/me5t/AYlZF7P5bXl05QXDD1RUwLbdAagBQyONVq
         5/7+xb2UQJxhGebGwFgmiW8LpTZI76UVer5lR+kHFyONa7wXW0MrCA4yjhrrVDki3W+0
         0qdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=afIBDypn0ICxaoDBDqtLt57YrNX0EsS7bs8UP18kgkA=;
        b=rm0UUN7aGmAMkqDvlYQ20eROvR/k97ekqC73OiFYaAELYlLAVvhS3imxvjwvCADbnU
         g4pMT1iu8Gb25Ur00Wyboxh4wVff3URdxPvgrel2rM66cc00opkPQ5fMpJ3bJSMMSlB4
         IB2uoOXgLoSFgR0/SmGt7gVjdZ6Te6g8LJPpEvy26MFalvKZO6MDGO9zPUSUmKUteVjd
         0oaFTluyDjnQZ7iFx5CdlLFb1Hqs4bFdVDR5FIn7okvs+n0x+Ia95ukAt4mCi7L9GoEO
         IZdfqb4S99rtkBzSeWEinmZ4IPSWLDiE9YT11125REt2Kz56QMS5g5l6HV4dfP5U30FG
         +zjg==
X-Gm-Message-State: APjAAAUZv3fSwOJPGeEPlsI5qthpqiqJe1wTEY66xl3IMsquuj4rGPHe
	5KqlYX2hlvjQiY0gkQOUa3D5ub8EA48=
X-Received: by 2002:a9d:5a14:: with SMTP id v20mr9507964oth.298.1551993092813;
        Thu, 07 Mar 2019 13:11:32 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id r184sm2355907oif.31.2019.03.07.13.11.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 Mar 2019 13:11:32 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: vt6655: Remove unused function prototype and definition
Date: Thu,  7 Mar 2019 15:11:29 -0600
Message-Id: <20190307211129.8949-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove an unused function, as it is never called in kernel tree.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v4-
- Removed comment lines for function

Changes in v3-
- Changed subject line
- Removed change log above signed-off-by

Changes in v2-
- Changed patch series to a patch
---
 drivers/staging/vt6655/mac.c | 24 ------------------------
 drivers/staging/vt6655/mac.h |  2 --
 2 files changed, 26 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 40a8f1ce837c..f5ae7f1f5689 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -12,7 +12,6 @@
  * Date: May 21, 1996
  *
  * Functions:
- *      MACbIsRegBitsOn - Test if All test Bits On
  *      MACbIsRegBitsOff - Test if All test Bits Off
  *      MACbIsIntDisable - Test if MAC interrupt disable
  *      MACvSetShortRetryLimit - Set 802.11 Short Retry limit
@@ -42,29 +41,6 @@
 #include "tmacro.h"
 #include "mac.h"
 
-/*
- * Description:
- *      Test if all test bits on
- *
- * Parameters:
- *  In:
- *      io_base    - Base Address for MAC
- *      byRegOfs    - Offset of MAC Register
- *      byTestBits  - Test bits
- *  Out:
- *      none
- *
- * Return Value: true if all test bits On; otherwise false
- *
- */
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits)
-{
-	void __iomem *io_base = priv->PortOffset;
-
-	return (ioread8(io_base + byRegOfs) & byTestBits) == byTestBits;
-}
-
 /*
  * Description:
  *      Test if all test bits off
diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 59538ac09fc5..c7888c4e96f2 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -876,8 +876,6 @@ do {								\
 #define MACvSetRFLE_LatchBase(iobase)                                 \
 	MACvWordRegBitsOn(iobase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_RFLEOPT)
 
-bool MACbIsRegBitsOn(struct vnt_private *priv, unsigned char byRegOfs,
-		     unsigned char byTestBits);
 bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 		      unsigned char byTestBits);
 
-- 
2.17.1


