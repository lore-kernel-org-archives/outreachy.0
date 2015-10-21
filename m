X-GM-THRID: 6207871882034675712
X-Received: by 10.180.35.132 with SMTP id h4mr7354403wij.5.1445458708767;
        Wed, 21 Oct 2015 13:18:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.17 with SMTP id c17ls265655lfe.52.gmail; Wed, 21 Oct
 2015 13:18:28 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr2678315lbb.11.1445458707980;
        Wed, 21 Oct 2015 13:18:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id o3si361167wiz.1.2015.10.21.13.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ll6so107289771wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CMxAZixUxwEwnEJaRyHsKaAF6Q88axMP5VMmanEuQBc=;
        b=lF91ifMEk1nFfSu3TU6cVos+rzuQfCI7QMLcmmfonmABlCPdCLa+SueRDlYOPSs1it
         Vodzd/078JpiHFeP8K9oirKhm80QM2vl6qtwSHei06O9Jz1XNt478FwRt9UmLep6GsDv
         duzfWGEZ52HUjnZmwcPnpvTfX/fIr3biVpeQfnlSAO9pEMImqxOt227/JrIqAkItQV0y
         WKmKCXC3mf8AiZGk05qqKj8F3LQtlCvCoVss3gS9XJFTq9I6z+Bf4CI2gy7luAaagn0K
         ecJ8hS984+N0WcVrKeIj8DtnkFY+s2NFiOlwU6gmFh7tTq+0Fcpx3ujfjjxlsI2cEHo0
         o98w==
X-Received: by 10.180.82.36 with SMTP id f4mr13755229wiy.75.1445458707872;
        Wed, 21 Oct 2015 13:18:27 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id m6sm8703173wif.11.2015.10.21.13.18.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 13:18:27 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 5/5] staging: dgap: add spaces around binary operator '|'
Date: Wed, 21 Oct 2015 23:17:56 +0300
Message-Id: <a13aa323dc4b6156f041576c3cd3dbbec31845d0.1445458023.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1445458023.git.ciorneiioana@gmail.com>
References: <cover.1445458023.git.ciorneiioana@gmail.com>

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

Changes in v2:
    - nothing

 drivers/staging/dgap/dgap.c | 58 ++++++++++++++++++++++-----------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/dgap/dgap.c b/drivers/staging/dgap/dgap.c
index 5fb4554..bad3551 100644
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
 
@@ -2704,7 +2704,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		ch->ch_flags |= (CH_BAUD0);
 
 		/* Drop RTS and DTR */
-		ch->ch_mval &= ~(D_RTS(ch)|D_DTR(ch));
+		ch->ch_mval &= ~(D_RTS(ch) | D_DTR(ch));
 		mval = D_DTR(ch) | D_RTS(ch);
 		ch->ch_baud_info = 0;
 
@@ -2725,7 +2725,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		/* Handle transition from B0 */
 		if (ch->ch_flags & CH_BAUD0) {
 			ch->ch_flags &= ~(CH_BAUD0);
-			ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
+			ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
 		}
 		mval = D_DTR(ch) | D_RTS(ch);
 
@@ -2871,7 +2871,7 @@ static int dgap_param(struct channel_t *ch, struct board_t *bd, u32 un_type)
 		/* Handle transition from B0 */
 		if (ch->ch_flags & CH_BAUD0) {
 			ch->ch_flags &= ~(CH_BAUD0);
-			ch->ch_mval |= (D_RTS(ch)|D_DTR(ch));
+			ch->ch_mval |= (D_RTS(ch) | D_DTR(ch));
 		}
 		mval = D_DTR(ch) | D_RTS(ch);
 	}
@@ -3160,12 +3160,12 @@ static void dgap_tty_flush_buffer(struct tty_struct *tty)
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
 
@@ -3981,7 +3981,7 @@ static int dgap_set_modem_info(struct channel_t *ch, struct board_t *bd,
 		break;
 
 	case TIOCMSET:
-		ch->ch_mforce = D_DTR(ch)|D_RTS(ch);
+		ch->ch_mforce = D_DTR(ch) | D_RTS(ch);
 
 		if (arg & TIOCM_RTS)
 			ch->ch_mval |= D_RTS(ch);
@@ -4588,8 +4588,8 @@ static void dgap_tty_close(struct tty_struct *tty, struct file *file)
 		 * If we have HUPCL set, lower DTR and RTS
 		 */
 		if (ch->ch_c_cflag & HUPCL) {
-			ch->ch_mostat &= ~(D_RTS(ch)|D_DTR(ch));
-			dgap_cmdb(ch, SMODEM, 0, D_DTR(ch)|D_RTS(ch), 0);
+			ch->ch_mostat &= ~(D_RTS(ch) | D_DTR(ch));
+			dgap_cmdb(ch, SMODEM, 0, D_DTR(ch) | D_RTS(ch), 0);
 
 			/*
 			 * Go to sleep to ensure RTS/DTR
@@ -4961,12 +4961,12 @@ static int dgap_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
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


