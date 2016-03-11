X-GM-THRID: 6260738819949068288
X-Received: by 10.182.65.106 with SMTP id w10mr6303157obs.6.1457691879949;
        Fri, 11 Mar 2016 02:24:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.2 with SMTP id x2ls1043192obg.40.gmail; Fri, 11 Mar
 2016 02:24:39 -0800 (PST)
X-Received: by 10.182.250.201 with SMTP id ze9mr6610309obc.0.1457691879606;
        Fri, 11 Mar 2016 02:24:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si1146899pfa.2.2016.03.11.02.24.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 02:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so7873718pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 02:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CPDhkOaVj6vgblXXGbb2Sa57evjo4a+xU8GIQmebD4Y=;
        b=gilpPd3coGThSfBVnDAJC3IemnWYF4rTybJ/LU2dmIVW+WZ4zvazuQGWLZDN+i+t2Y
         SA85BhvECooW44j3HY+kXyEXDL86t4OYvaLav8htDMWKt2HSqzNqL6/xK7sCZAPt5Bhv
         RumiohbS5JnMLvFdLvMRZlGZttBR57lMqD6Xp8/NuO92mmZY7mdyzZ69hwb/QHuArl1A
         1YoDSM7gQG8k521J9x8ogq5bBYkUg23StUKDUIqkL/GDxu6a9DTuwDTpTQMOb5ol+l0o
         ujav848Qhz/LVkDkr5IfhiDw3HhfuGEa3NTw0DzMyPQitqz7MOI/riDdrig0C9gUU6/J
         B/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CPDhkOaVj6vgblXXGbb2Sa57evjo4a+xU8GIQmebD4Y=;
        b=OAlrXnw3n6YAGer+1PHIQV0pa9QtQhVGqJprrGtycK8P85K2Mle1dLSIkj3Ff9ZldL
         o44GRvC+xyhJUWnc+c1op6pFzKvQc6bBrrZ8Bqfcl/osbBkVhTXvDwMwQ+qpad0vr816
         Pza8vpzxJhIk26jaYY4Y42hKWga6ZjU4EjhqKxmi7UeKFp+47SbA+3lLpOy5Qxji6jbX
         AJ+tF+MOKII7syHw1PkvKgn2k7kin9AMQ5DhNKa90WnjBmKb2o2hQB/vMp9c0wafRZOJ
         /z5JaBC0t6C5EfGJhm5NV0SA3Y+GhE9bIBJIoxWoS/qIaNwLbSaUc3xMv53uHOvRFQ3C
         +qow==
X-Gm-Message-State: AD7BkJJ1qMGWyoXp1eUSVGEL1WpYDct6ULK/KWtIeqPSyOah6vN77FLEmSoAg5QlM5d0GA==
X-Received: by 10.66.62.169 with SMTP id z9mr13500929par.139.1457691879460;
        Fri, 11 Mar 2016 02:24:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.82])
        by smtp.gmail.com with ESMTPSA id fk9sm11818728pad.9.2016.03.11.02.24.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 02:24:39 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 15:54:28 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8712: Remove function r8712_setptm_cmd and r8712_gettssi_cmd
Date: Fri, 11 Mar 2016 15:53:57 +0530
Message-Id: <8412bdff59b0f3a2109591d80bb394827fa533e4.1457691346.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>

The function r8712_setptm_cmd and r8712_gettssi_cmd are not used
anywhere in the kernel so remove them. Also, remove their function
prototypes.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 47 -----------------------------------
 drivers/staging/rtl8712/rtl871x_cmd.h |  2 --
 2 files changed, 49 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 5875677..86136cc 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -315,27 +315,6 @@ u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset)
 	return _SUCCESS;
 }
 
-/* power tracking mechanism setting */
-u8 r8712_setptm_cmd(struct _adapter *padapter, u8 type)
-{
-	struct cmd_obj		*ph2c;
-	struct writePTM_parm	*pwriteptmparm;
-	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
-		return _FAIL;
-	pwriteptmparm = kmalloc(sizeof(*pwriteptmparm), GFP_ATOMIC);
-	if (pwriteptmparm == NULL) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	init_h2fwcmd_w_parm_no_rsp(ph2c, pwriteptmparm, GEN_CMD_CODE(_SetPT));
-	pwriteptmparm->type = type;
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type)
 {
 	struct cmd_obj *ph2c;
@@ -730,32 +709,6 @@ u8 r8712_setrttbl_cmd(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-u8 r8712_gettssi_cmd(struct _adapter *padapter, u8 offset, u8 *pval)
-{
-	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
-	struct cmd_obj *ph2c;
-	struct readTSSI_parm *prdtssiparm;
-
-	ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
-	if (ph2c == NULL)
-		return _FAIL;
-	prdtssiparm = kmalloc(sizeof(*prdtssiparm), GFP_ATOMIC);
-	if (prdtssiparm == NULL) {
-		kfree(ph2c);
-		return _FAIL;
-	}
-	INIT_LIST_HEAD(&ph2c->list);
-	ph2c->cmdcode = GEN_CMD_CODE(_ReadTSSI);
-	ph2c->parmbuf = (unsigned char *)prdtssiparm;
-	ph2c->cmdsz = sizeof(struct readTSSI_parm);
-	ph2c->rsp = pval;
-	ph2c->rspsz = sizeof(struct readTSSI_rsp);
-
-	prdtssiparm->offset = offset;
-	r8712_enqueue_cmd(pcmdpriv, ph2c);
-	return _SUCCESS;
-}
-
 u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
 {
 	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 818cd88..e4a2a50 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -736,8 +736,6 @@ u8 r8712_setrfintfs_cmd(struct _adapter *padapter, u8 mode);
 u8 r8712_setrfreg_cmd(struct _adapter  *padapter, u8 offset, u32 val);
 u8 r8712_setrttbl_cmd(struct _adapter  *padapter,
 		      struct setratable_parm *prate_table);
-u8 r8712_gettssi_cmd(struct _adapter  *padapter, u8 offset, u8 *pval);
-u8 r8712_setptm_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_setfwdig_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_setfwra_cmd(struct _adapter *padapter, u8 type);
 u8 r8712_addbareq_cmd(struct _adapter *padapter, u8 tid);
-- 
1.9.1


