X-GM-THRID: 6801918498465382400
X-Received: by 2002:a17:90a:7d07:: with SMTP id g7mr312504pjl.17.1583774139872;
        Mon, 09 Mar 2020 10:15:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8a89:: with SMTP id a9ls3643244pfc.10.gmail; Mon, 09 Mar
 2020 10:15:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsT7cFkwhOuzZgI8cdu/ZUS514CR0CvvVJcAcMkIIZ+greCnpPciu4981RGn5yMfEqi8JLW
X-Received: by 2002:a63:6944:: with SMTP id e65mr18063740pgc.406.1583774138325;
        Mon, 09 Mar 2020 10:15:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583774138; cv=none;
        d=google.com; s=arc-20160816;
        b=R+/nkkHO9r/dPS4hsuabHA1TF/dC3gCfT3M8iq7IculM6y0M8I4yWrqAN3rjgmiD1Z
         CCzzY0E7kApM/6w7QvqpCn1rJ2NVgd8pG/ZF0hKhgXW5XLp8dDkdm6dZ3nDOBqI2cS4f
         EJ/DcCQtDQISjvZ9LxSd6S66KBSWCa5vdUT8aZKHt7hps1/TKY9DDodEhH1wY2WJE5zJ
         FUV4lqx55SpE5mbaCLIRns8KsRC7PTWur3BsYfjHNW+2GwL2wXXNcI0wrhL+teXWl0Mh
         qZM8Dz5ixbchBbNp/q3OICBZWjzwqcm9Qg1PSiCpIGADnJL77gTedbaen8HGs8RVkrRI
         YObQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=nj8wmBapkkX+BomL/UJ2mRb9gDU72DjTTT5km17E4FyL+3Jz5YhSQ/blZgzlevs+0X
         NaoXBr26rIZAcKnX6UER5nX1eAg7r0m/cVvS1upvOcuksHjHKQVVPrpIez0mkMcoCS/B
         eudMRbRCxkDwvZYgb10KzzjrusNiBmnOpHm8Dd6bppPhxrm9cLKacerrQrModYhmHXhR
         atuehFfswRFpxxA5PWRbrcsbrJIEal3F57KQHgibmWDmF78FXmRWEzepTZvanV/9uHZa
         bR2QBEXDmCJsf6FV/rF1LFgKVjHW9DsmrK8vZD9CN7pXqp+HRWy+CMgJN8DDfqqKI8zY
         jJ5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ca787Ei2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y3si611602plr.1.2020.03.09.10.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:15:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ca787Ei2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 2so5089864pfg.12
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 10:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=Ca787Ei2bkXoQ/9tuwjJ8e6f582/LBmFZgvGETZ609r4GhERwrjS1KVhxITfb3SkxH
         PtHkLXZlkjeHlv3J0gNte+HBt5crWmC1PentDHZZyRDPzAbKunHgmI58qvxeqcwki6g8
         qCz+XO//vIFJb/heZwTE2Bjyn/RpprWa4v1xscFX9vQijFQQkg5OQ+pypBnANeuo49mM
         WViXeg/nlENZ1IO6L3igJHUmmjujbxAVTflbhXAj5Ext5T4JFc0DS2apwzrEfIRYTZ6X
         TuLJmpfMj8OcDVIahs0Wm1vQUPTWYu4Nb1tUwjzfroWTvdnSLusefD3eNZj6lE1DR7dZ
         3SGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=JJ/5d54J/rCS00YelmuELRPf1brGREwd2m1weNdC/OrnNhraL333W0TilHvFgWjWWf
         XWbybX/KOszgTJcpFGlYws2DgTDk7Y9reX8GwAR2vgXIaAYb7zozI+KTqJHq/bxJ4gE+
         uwHSfhIaaEHQrwzpd9adOvcWdaDQ1UW+SD/H4nKGUebDcEF5GF3XtGByL7JsjkmBEtNB
         erbUVigI2fNXAptAlYrJWG6U8R5dJeMPnL7WymtKwkM5KJKmOyJCVsNZdrKjSt72BgG/
         B+6z6vfnkRmXDPPs97O14YuC2hy9u4qT/g0Ho+QGvpI27gep3/CPhEsDf4TL64wVeEWG
         cH3Q==
X-Gm-Message-State: ANhLgQ36y/WFThjRlvPSvk/qPTqHty+Z0TjKL75Leanm1gf6BHIhRFjY
	/l4ZZdNKhdZ1MDu5v5weOVUYaoZtYZI=
X-Received: by 2002:a63:4912:: with SMTP id w18mr16861400pga.122.1583774137979;
        Mon, 09 Mar 2020 10:15:37 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id s7sm43918725pgp.44.2020.03.09.10.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 10:15:37 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: remove line over 80 characters
Date: Mon,  9 Mar 2020 22:45:31 +0530
Message-Id: <20200309171531.6597-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/vt6655/mac.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index c7888c4e96f2..eb56e16637f6 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
 void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
-void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetLongRetryLimit(struct vnt_private *priv,
+			   unsigned char byRetryLimit);
 
-void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
+void MACvSetLoopbackMode(struct vnt_private *priv,
+			 unsigned char byLoopbackMode);
 
 void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
 void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
@@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
 void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
 			       u32 curr_desc_addr);
 void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
-void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
+void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
+			       unsigned int uDelayTime);
 
 void MACvSetMISCFifo(struct vnt_private *priv, unsigned short wOffset,
 		     u32 dwData);
-- 
2.17.1


