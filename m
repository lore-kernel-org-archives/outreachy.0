X-GM-THRID: 6207871882034675712
X-Received: by 10.180.160.194 with SMTP id xm2mr3637334wib.6.1445382815705;
        Tue, 20 Oct 2015 16:13:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.152 with SMTP id 24ls122102lfv.97.gmail; Tue, 20 Oct
 2015 16:13:35 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr1274282lbc.20.1445382815160;
        Tue, 20 Oct 2015 16:13:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id cm6si890750wib.1.2015.10.20.16.13.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 16:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x241.google.com with SMTP id uk10so8221265wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 16:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CgDIovGznoZedzM8JONjIeWC03Vxkb5fZe+44pWlDZw=;
        b=GP9062hQBR0fQyB0Y3i3agKfGJrJWC8FgxsMjCPdxOo+JPNRCIRn9pgsSbJvg1pFCR
         F4z/9tWbJtdkqHTjDAYOEvIj6G7XGH4QxYvtt7alI6ELOjT+c5zvK9YIPhlIlGKxMk+x
         hqUKojgWPySs2DunkFkLIUPpWoEwSts6fSO+/qhq7Yfhd8N3uiqiLpcirSXNift3N/YS
         kE2NUfNOGh7NAi36+cH3xysYvTy/lvZO/SqgXmsAKdQp+XTi4ax1A6Gw+69WSfVhVKA4
         Z48iqT6qO9lnAZnhhXDBIGzFvUX3sAzVXW5pRPEH2DDDU7bGq+b/f4jExFXp/rNlaNOM
         vY7A==
X-Received: by 10.180.39.234 with SMTP id s10mr31415686wik.32.1445382815071;
        Tue, 20 Oct 2015 16:13:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jt3sm6563486wjc.12.2015.10.20.16.13.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 16:13:34 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/5] staging: dgap: add spaces around binary operator '|'
Date: Wed, 21 Oct 2015 02:13:19 +0300
Message-Id: <e20a6f69d9b2c8bb11f7e5448a87fa3f2d7974aa.1445382697.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445382697.git.ciorneiioana@gmail.com>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445382697.git.ciorneiioana@gmail.com>
References: <cover.1445382697.git.ciorneiioana@gmail.com>

This patch adds spaces around binary operator '|'.
Done with coccinelle semantic patch:

@@
identifier x, y, z;
@@
(
- x|y|z
+ x | y | z
|
- x|y
+ x | y
)

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/dgap/dgap.c | 58 ++++++++++++++++++++++-----------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 163d566..60bb56e 100644
--- a/drivers/staging/dgap/dgap.c
+++ b/drivers/staging/dgap/dgap.c
@@ -140,21 +140,21 @@ struct board_id {
 };
 
 static struct board_id dgap_ids[] = {
-	{ PPCM,        PCI_DEV_XEM_NAME,     64, (T_PCXM|T_PCLITE|T_PCIBUS) },
-	{ PCX,         PCI_DEV_CX_NAME,     128, (T_CX|T_PCIBUS)            },
-	{ PCX,         PCI_DEV_CX_IBM_NAME, 128, (T_CX|T_PCIBUS)            },
-	{ PEPC,        PCI_DEV_EPCJ_NAME,   224, (T_EPC|T_PCIBUS)           },
-	{ APORT2_920P, PCI_DEV_920_2_NAME,    2, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ APORT4_920P, PCI_DEV_920_4_NAME,    4, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ APORT8_920P, PCI_DEV_920_8_NAME,    8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XR_NAME,       8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XRJ_NAME,      8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XR_422_NAME,   8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XR_IBM_NAME,   8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XR_SAIP_NAME,  8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PAPORT8,     PCI_DEV_XR_BULL_NAME,  8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ APORT8_920P, PCI_DEV_920_8_HP_NAME, 8, (T_PCXR|T_PCLITE|T_PCIBUS) },
-	{ PPCM,        PCI_DEV_XEM_HP_NAME,  64, (T_PCXM|T_PCLITE|T_PCIBUS) },
+	{PPCM,        PCI_DEV_XEM_NAME,     64, (T_PCXM | T_PCLITE | T_PCIBUS)},
+	{PCX,         PCI_DEV_CX_NAME,     128, (T_CX | T_PCIBUS)            },
+	{PCX,         PCI_DEV_CX_IBM_NAME, 128, (T_CX | T_PCIBUS)            },
+	{PEPC,        PCI_DEV_EPCJ_NAME,   224, (T_EPC | T_PCIBUS)           },
+	{APORT2_920P, PCI_DEV_920_2_NAME,    2, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{APORT4_920P, PCI_DEV_920_4_NAME,    4, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{APORT8_920P, PCI_DEV_920_8_NAME,    8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XR_NAME,       8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XRJ_NAME,      8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XR_422_NAME,   8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XR_IBM_NAME,   8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XR_SAIP_NAME,  8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PAPORT8,     PCI_DEV_XR_BULL_NAME,  8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{APORT8_920P, PCI_DEV_920_8_HP_NAME, 8, (T_PCXR | T_PCLITE | T_PCIBUS)},
+	{PPCM,        PCI_DEV_XEM_HP_NAME,  64, (T_PCXM | T_PCLITE | T_PCIBUS)},
 	{0,}						/* 0 terminated list. */
 };
 
@@ -2705,7 +2705,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		ch->ch_flags |= (CH_BAUD0);
 
 		/* Drop RTS and DTR */
-		ch->ch_mval &= ~(D_RTS(ch)|D_DTR(ch));
+		ch->ch_mval &= ~(D_RTS(ch) | D_DTR(ch));
 		mval = D_DTR(ch) | D_RTS(ch);
 		ch->ch_baud_info = 0;
 
@@ -2726,7 +2726,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		/* Handle transition from B0 */
 		if (ch->ch_flags & CH_BAUD0) {
 			ch->ch_flags &= ~(CH_BAUD0);
-			ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
+			ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
 		}
 		mval = D_DTR(ch) | D_RTS(ch);
 
@@ -2872,7 +2872,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		/* Handle transition from B0 */
 		if (ch->ch_flags & CH_BAUD0) {
 			ch->ch_flags &= ~(CH_BAUD0);
-			ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
+			ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
 		}
 		mval = D_DTR(ch) | D_RTS(ch);
 	}
@@ -3161,12 +3161,12 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
 	head = readw(&ch->ch_bs->tx_head);
 	dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
 	dgap_cmdw(ch, RESUMETX, 0, 0);
-	if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 	}
-	if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 	}
 
@@ -3982,7 +3982,7 @@ static int dgap_set_modem_info(struct channel_t *ch, struct board_t *bd,
 		break;
 
 	case TIOCMSET:
-		ch->ch_mforce = D_DTR(ch)|D_RTS(ch);
+		ch->ch_mforce = D_DTR(ch) | D_RTS(ch);
 
 		if (arg & TIOCM_RTS)
 			ch->ch_mval |= D_RTS(ch);
@@ -4589,8 +4589,8 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 		 * If we have HUPCL set, lower DTR and RTS
 		 */
 		if (ch->ch_c_cflag & HUPCL) {
-			ch->ch_mostat &= ~(D_RTS(ch)|D_DTR(ch));
-			dgap_cmdb(ch, SMODEM, 0, D_DTR(ch)|D_RTS(ch), 0);
+			ch->ch_mostat &= ~(D_RTS(ch) | D_DTR(ch));
+			dgap_cmdb(ch, SMODEM, 0, D_DTR(ch) | D_RTS(ch), 0);
 
 			/*
 			 * Go to sleep to ensure RTS/DTR
@@ -4962,12 +4962,12 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		head = readw(&ch->ch_bs->tx_head);
 		dgap_cmdw(ch, FLUSHTX, (u16)head, 0);
 		dgap_cmdw(ch, RESUMETX, 0, 0);
-		if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
-			ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
+		if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
+			ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
 			wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 		}
-		if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
-			ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
+		if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
+			ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
 			wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 		}
 		if (waitqueue_active(&tty->write_wait))
-- 
2.1.4


