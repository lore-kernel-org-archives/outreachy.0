X-GM-THRID: 6670734463616417792
X-Received: by 2002:a5e:d80b:: with SMTP id l11mr1048483iok.32.1553151398201;
        Wed, 20 Mar 2019 23:56:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7644:: with SMTP id z65ls1456429itb.4.gmail; Wed, 20 Mar
 2019 23:56:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqypb9+fNSziMx+DS2Mi52aB9Tovdg++kt2BCr2wKXM+H6sqIrn89mBh9B/Pl3ARTRLQwzY7
X-Received: by 2002:a24:2704:: with SMTP id g4mr838513ita.36.1553151397245;
        Wed, 20 Mar 2019 23:56:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553151397; cv=none;
        d=google.com; s=arc-20160816;
        b=GCZ2jUgeIpctmTWnMdz2juxJKsqt0Zg7oknyp4QgI0c1wQycW12dNcNwxcNMWyiOYH
         +HK+ESw2NJAXtw6SJH0rVnaYCXLUPG2DOV96r0ECplgLq99ozmiZvwpVRgHTw/TSXHlh
         YYjVt4DVDUb0CrR3R5Guu1PFMEPMHQGN1hphfTQ6OLqvhWmMl1eD3WdmzApUJgx/H0F+
         fBYzsTT5bIxU/2iY7LEdFaVbuHlCRCRR1DF1smRJa643urX8MqS8VFPJ3b2KV/2KBsl5
         s+IiTgP6VoxEx5D9TVRQFQ7B7iJPdJ/3gZvnbsMgJ6i/JoalYMzrK2kHdJswOHAxRIAP
         MiiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nkHMXus92k/wKXEfDZcBY/F25ic/hyTxuY+h/U1ReDs=;
        b=m7Rse4SUTo9C8oMH0E4i6FnRgb98MJovm/WR/F2n7QYYVMVvmrt4Sa5AbHUdhmVP46
         QZ0xqQRn/C88G1Di/8z2s9f5eXGurDQGSDHNpDxghOqonHZOfRxbd0bT5a94+8hYb+Zz
         TrrmFAfoMFCt8fQmwhI55jJebknAV20bVaXP3+4RXniFBvwulQ+30bo81CBbxUcyDCFP
         6SrhTI6oKtzjCrmDTem+/iSM2vlLCJPpSCStVUpAb+xBN3fM3oSUdJ+IwlUdVr73YrAO
         h2EPIARgFgrtZv6CcHYA5jywO4J2hpgBp6qg1LzpqFrMsDIrqAY3M1vD5VO3k7cp5MSL
         qsiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tehxvhFT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 65si529463itx.1.2019.03.20.23.56.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 23:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tehxvhFT;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 9so3442022pfj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 23:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nkHMXus92k/wKXEfDZcBY/F25ic/hyTxuY+h/U1ReDs=;
        b=tehxvhFTAOo4Ua4VeYjPc2q2EvtQTJ78Mv4rZpIsriK8UDFCQkO0oswMbbnqJKaPy5
         M+m1mf9wJqTamJWuSBw1r97sLedcAj8CtXVvcElAKOBRtSvGrMIK5JiUeHjXjaLhkyox
         LL9DuREZSXX+WpOoqWkce4haaQ9ruBM8OPJ3Pv2dJ8qV8auELhKlyFviIJ232pckVQvM
         tw2TKzHglCxg5GGaU+tBKLwM8NS2+SDjHWp+urZB2qPXCNyp80P2yhYrXGMymeyS1uwn
         vcuZetZbCp6bGvTp9h9R8fDB0GtaMozhkbz/VfFyR+yn2iRXSJBkxNYdYE9klquPB6r3
         EC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nkHMXus92k/wKXEfDZcBY/F25ic/hyTxuY+h/U1ReDs=;
        b=Vl9AYCr0mCFNyIaYDt8L1E3s9LUhUqqc2jI4tCK+Ymv1ddUGvluQEfjg4FxYrEUOBF
         2yQYkfkNsc+pEgtw8r2qDO92NQSCdVF+gLjKYgzbdXPGpWsF2hj8YZlJBcdRCNU147/+
         VDEKn7DrrJULicUlocPkJlG3SmPCBhFA1Loed7OH8vTjbe2kCR4dwF3FXgS4idf9PrXq
         bcpZfLbWrSxUZuu7Fr9ksLWklzt7Dt5X93yXPI0JtoPNB3v6jm8iUQoex9t0gTKIuP6e
         iKX/z6KvDInJRXQXHThAmKT0bHmxR4RyJpfyRffbfLRbk+B1Qj0Y3xaw9vgM8cEQYCgG
         F7+Q==
X-Gm-Message-State: APjAAAVK9oaMjVl2LPWnBRHSqEmJ1+WaVvtH67VSWFA0o58LnkUmk+1p
	2IWWrEIsfTxNY4iwVR6FdlbJKX4Q
X-Received: by 2002:a63:68c9:: with SMTP id d192mr2019204pgc.264.1553151396496;
        Wed, 20 Mar 2019 23:56:36 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id j8sm4689733pff.183.2019.03.20.23.56.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 23:56:35 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: fix various style issues
Date: Thu, 21 Mar 2019 12:26:18 +0530
Message-Id: <1553151378-8172-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix spaces around operator issue,
fix line over 80 characters issue
and fix lines should not end with parenthesis issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/vt6655/rf.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index fd09b97..444751a 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -723,11 +723,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
@@ -755,11 +761,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbSetPower(
-	struct vnt_private *priv,
-	unsigned int rate,
-	u16 uCH
-)
+bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 {
 	bool ret = true;
 	unsigned char byPwr = 0;
@@ -893,12 +895,8 @@ bool RFbRawSetPower(
  * Return Value: none
  *
  */
-void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long *pldBm
-	)
+void RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI,
+		  long *pldBm)
 {
 	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
 	long b = (byCurrRSSI & 0x3F);
-- 
2.7.4


