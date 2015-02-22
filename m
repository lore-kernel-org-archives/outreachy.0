X-GM-THRID: 2568138784768
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,583367ef61986abf,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.239.41 with SMTP id vp9mr823289wjc.5.1424630911476;
        Sun, 22 Feb 2015 10:48:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.186.71 with SMTP id fi7ls422455wic.28.canary; Sun, 22 Feb
 2015 10:48:31 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr785508wib.3.1424630911127;
        Sun, 22 Feb 2015 10:48:31 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x241.google.com (mail-wg0-x241.google.com. [2a00:1450:400c:c00::241])
        by gmr-mx.google.com with ESMTPS id ta1si531875wic.1.2015.02.22.10.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:48:31 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) client-ip=2a00:1450:400c:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x241.google.com with SMTP id k14so7341132wgh.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 10:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/45KXDyM4yFwwgAZCoNi+wVwcGLn/hIjdiTiSmo/8zY=;
        b=STyjg5lPVuqXwF4pGR5ZpcIDv0SLvGl8E3Ryl8RSVBkhARwjfIs00MZUwxf2pMqbqT
         mmfRPPD+da+UoMsw8ikh0eLm5hCJIiJN/vUcVreeVyH1q8XJoMlcA8EFgb6DYvfkmt3I
         32UR/IHRbQgVFID0xrQc1YNoRGQMT28W7ANwDqoTqPehjg8s301WOoFZw93UQqPHUFhz
         BknnoEhDQpP8lAt6lJFnCPOwP3QMexvRnZs2AyIXNxZGutfKZLvr2o2rr/UICN3NU2hR
         Dz3lSuKXY3wDsv8ZXUd2u25gR42QJBeBym+yehuPq21W1U23OoX7QluDyNevHO4Okvck
         GF6w==
X-Received: by 10.180.79.227 with SMTP id m3mr14148394wix.3.1424630911059;
        Sun, 22 Feb 2015 10:48:31 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hm6sm52218821wjb.32.2015.02.22.10.48.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 10:48:30 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Delete space
Date: Sun, 22 Feb 2015 20:48:22 +0200
Message-Id: <1424630902-16306-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: "foo *	bar" should be "foo *bar".That's why delete space together.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_efuse.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_efuse.c b/drivers/staging/rtl8723au/core/rtw_efuse.c
index 81960e7..0e64d12 100644
--- a/drivers/staging/rtl8723au/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723au/core/rtw_efuse.c
@@ -328,12 +328,12 @@ EFUSE_Read1Byte23a(struct rtw_adapter *Adapter, u16 Address)
 
 void
 EFUSE_Write1Byte(
-	struct rtw_adapter *	Adapter,
+	struct rtw_adapter *Adapter,
 	u16		Address,
 	u8		Value);
 void
 EFUSE_Write1Byte(
-	struct rtw_adapter *	Adapter,
+	struct rtw_adapter *Adapter,
 	u16		Address,
 	u8		Value)
 {
@@ -636,7 +636,7 @@ Efuse_ReadAllMap(struct rtw_adapter *pAdapter, u8 efuseType, u8 *Efuse)
  *---------------------------------------------------------------------------*/
 static void
 efuse_ShadowRead1Byte(
-	struct rtw_adapter *	pAdapter,
+	struct rtw_adapter *pAdapter,
 	u16		Offset,
 	u8		*Value)
 {
@@ -648,7 +648,7 @@ efuse_ShadowRead1Byte(
 /* Read Two Bytes */
 static void
 efuse_ShadowRead2Byte(
-	struct rtw_adapter *	pAdapter,
+	struct rtw_adapter *pAdapter,
 	u16		Offset,
 	u16		*Value)
 {
@@ -661,7 +661,7 @@ efuse_ShadowRead2Byte(
 /* Read Four Bytes */
 static void
 efuse_ShadowRead4Byte(
-	struct rtw_adapter *	pAdapter,
+	struct rtw_adapter *pAdapter,
 	u16		Offset,
 	u32		*Value)
 {
@@ -723,7 +723,7 @@ void EFUSE_ShadowMapUpdate23a(struct rtw_adapter *pAdapter, u8 efuseType)
  *---------------------------------------------------------------------------*/
 void
 EFUSE_ShadowRead23a(
-	struct rtw_adapter *	pAdapter,
+	struct rtw_adapter *pAdapter,
 	u8		Type,
 	u16		Offset,
 	u32		*Value)
-- 
1.9.1


