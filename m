X-GM-THRID: 6261606464880640000
X-Received: by 10.140.100.197 with SMTP id s63mr15149966qge.4.1457893863539;
        Sun, 13 Mar 2016 11:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.20 with SMTP id m20ls1300615obq.20.gmail; Sun, 13 Mar
 2016 11:31:02 -0700 (PDT)
X-Received: by 10.182.240.137 with SMTP id wa9mr15505359obc.16.1457893861997;
        Sun, 13 Mar 2016 11:31:01 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id i133si1027422ywe.7.2016.03.13.11.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 11:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id u110so137566618qge.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 11:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A5N6s/1UMvHCw8Pc3QY38bhffidTz8FyKGmpPloo1PY=;
        b=w8cGZnmKoqJLO+3w1a6UTZMGc8cUp1yZUHA0F0o6s88Rv5qO4yEcLk5smRzPPKkZNK
         rdSfknJTskyIy2YNTAw1Go4SiC/WidALOZJHGhEK7vsro5qmqwMDpcyWUKd7xFMxJNDQ
         NoTMHJ67EINJnscvtfbLG2ZeLMTwF9c92OrNypCxUY4Jzv24nhuDvG1LlvYtiS8tLT8e
         qfeahzYWdyyT2AVMh6AhZYwL7ulhXN2spkmEQQRk4njcoYkfDcCNz+N4UMJmLlgKYEgG
         q7KhX0W/tm2ybOzHrMkcfxn531iWA/zVxW8mbG494FkBc9r1Jytf9ZgvJMY/faeQgQzf
         kEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A5N6s/1UMvHCw8Pc3QY38bhffidTz8FyKGmpPloo1PY=;
        b=POSW7/V1u4NwI0ZnMi9JaBWoixlQLnWTRQqrNWn92OoEinStH07jyy7fs4LjS20oI4
         MZS641htIOC0aQkzDRAvt+G2UHP3mOv0Z+zMSagX/LUZPDcez/sPbsy5zjJQCJgOaBPT
         +838gOR3MESbfhJcNF7XvVD86lG/Nx3Ed6FnjMjscIEGCvgeSIvzMcswVlL/ZVK8TiWc
         eikW56TbA0BKDdQyaDbDyMGfO1QsjY2TgAuynfe0OamOQgUjhDHnEOq0NWi6Xf8d8U9V
         Cvg2yz1dWOeo834Wp9lII2heWJf3g2vgvtb0tmQyi7MWi9DF5Gz6f2/bbmuX39M5yxON
         TOBA==
X-Gm-Message-State: AD7BkJJs3jvg5VXTo3FISz9l0viZxg5PEdRvYCtWeOjowrVNQjKK/smwyby0SicvAdB2cw==
X-Received: by 10.140.230.207 with SMTP id a198mr27039168qhc.94.1457893861667;
        Sun, 13 Mar 2016 11:31:01 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id p104sm8604889qgp.20.2016.03.13.11.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 11:31:01 -0700 (PDT)
Date: Sun, 13 Mar 2016 15:30:57 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl8712_cmd.c: fixed comparison to null
Message-ID: <20160313183057.GA10781@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes multiple "comparison to NULL"
checkpatch.pl issues:

CHECK: Comparison to NULL could be written "!pcmd"
+               if (pcmd == NULL)

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.c b/drivers/staging/rtl8712/rtl8712_cmd.c
index 50f4002..13c0183 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.c
+++ b/drivers/staging/rtl8712/rtl8712_cmd.c
@@ -135,7 +135,7 @@ static u8 read_macreg_hdl(struct _adapter *padapter, u8 *pbuf)
 
 	/*  invoke cmd->callback function */
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -149,7 +149,7 @@ static u8 write_macreg_hdl(struct _adapter *padapter, u8 *pbuf)
 
 	/*  invoke cmd->callback function */
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -165,7 +165,7 @@ static u8 read_bbreg_hdl(struct _adapter *padapter, u8 *pbuf)
 	if (pcmd->rsp && pcmd->rspsz > 0)
 		memcpy(pcmd->rsp, (u8 *)&val, pcmd->rspsz);
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -178,7 +178,7 @@ static u8 write_bbreg_hdl(struct _adapter *padapter, u8 *pbuf)
 	struct cmd_obj *pcmd  = (struct cmd_obj *)pbuf;
 
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -194,7 +194,7 @@ static u8 read_rfreg_hdl(struct _adapter *padapter, u8 *pbuf)
 	if (pcmd->rsp && pcmd->rspsz > 0)
 		memcpy(pcmd->rsp, (u8 *)&val, pcmd->rspsz);
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -207,7 +207,7 @@ static u8 write_rfreg_hdl(struct _adapter *padapter, u8 *pbuf)
 	struct cmd_obj *pcmd  = (struct cmd_obj *)pbuf;
 
 	pcmd_callback = cmd_callback[pcmd->cmdcode].callback;
-	if (pcmd_callback == NULL)
+	if (!pcmd_callback)
 		r8712_free_cmd_obj(pcmd);
 	else
 		pcmd_callback(padapter, pcmd);
@@ -227,7 +227,7 @@ static struct cmd_obj *cmd_hdl_filter(struct _adapter *padapter,
 {
 	struct cmd_obj *pcmd_r;
 
-	if (pcmd == NULL)
+	if (!pcmd)
 		return pcmd;
 	pcmd_r = NULL;
 
@@ -416,7 +416,7 @@ _next:
 	/* free all cmd_obj resources */
 	do {
 		pcmd = r8712_dequeue_cmd(&(pcmdpriv->cmd_queue));
-		if (pcmd == NULL)
+		if (!pcmd)
 			break;
 		r8712_free_cmd_obj(pcmd);
 	} while (1);
@@ -431,7 +431,7 @@ void r8712_event_handle(struct _adapter *padapter, uint *peventbuf)
 	void (*event_callback)(struct _adapter *dev, u8 *pbuf);
 	struct	evt_priv *pevt_priv = &(padapter->evtpriv);
 
-	if (peventbuf == NULL)
+	if (!peventbuf)
 		goto _abort_event_;
 	evt_sz = (u16)(le32_to_cpu(*peventbuf) & 0xffff);
 	evt_seq = (u8)((le32_to_cpu(*peventbuf) >> 24) & 0x7f);
-- 
2.7.2


