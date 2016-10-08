X-GM-THRID: 6339162656111329280
X-Received: by 10.129.119.215 with SMTP id s206mr6374315ywc.102.1475951321794;
        Sat, 08 Oct 2016 11:28:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls2223707itd.6.canary; Sat, 08 Oct
 2016 11:28:41 -0700 (PDT)
X-Received: by 10.66.232.138 with SMTP id to10mr1962163pac.15.1475951321108;
        Sat, 08 Oct 2016 11:28:41 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d11si2995366pfl.2.2016.10.08.11.28.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:28:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so4702519pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ikqwvkdTN1+JhO0ZxpgyXr3eh/Jy9eTXU6rD+2LNU40=;
        b=Db+RnV3SzfN63x90V9Vaakc4ckBNYYIvXAbDQOdk7nncc+/clFIjV3u4cFe639rPLD
         knkKUdi/zJBeZ/5/UKTz3qdZxp5HTkOryVv2gMYRxslMWL8045Vvt2NGpNFzuW29hvk9
         NVVYniWuaM8eO4Wg9zUhqrW8hYpKsHzVEgqg1CtUnD1upqq/S5V9uDovysstVLjXE2oY
         0Lvw+u6unHom9KrbeRQHKWyUpGToPGMnsx9hGmI8C7XE57VZgnptBmPuSaF6ID3S2Arc
         hpIiM4NFaf0nKO4sOzRknqcc1sK9r6IdyBMne0wR6dnKz6G6O8NNAlA3RkeeL+N6tZfJ
         Mcmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ikqwvkdTN1+JhO0ZxpgyXr3eh/Jy9eTXU6rD+2LNU40=;
        b=NFWFz3BBfJ/EWePUNsLu5wlHRcVYxec7khjKwGZojSSP7epD8SnrwUIn669DeHtq14
         vU70T1mYfVVdy5z9UaHEe0USkRXTlHzCzVmxP7DcXBjTGuU82hs/h51bLKLrjVp9Qs1V
         3SJ9K9blb4Wjmb9Rn7afcBEY2FGPaLqb0FQ5lCP0jPJ8Qax9ZqF33rShTzqK96RC+iE8
         Ekx9I5UQJlAs8Vn4QAHNQWGQyJe/dvf966LYYcxndH2kdwTPrzf2f3EMWKCZuZzcaBom
         TNu2wyB7IudfF55hYKuYw2rHQhgHyo2N4iBF2ydwq9RMUpUHKwZPWHzEMELMmT6cCGhg
         fY1w==
X-Gm-Message-State: AA6/9Rl+b+LGKjpu1RJN8QXIOh15JSy1OkKMN63n76vISEodf9STkAn4uAQLDJWeVIhBSA==
X-Received: by 10.99.53.193 with SMTP id c184mr1093763pga.169.1475951320923;
        Sat, 08 Oct 2016 11:28:40 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.183.226])
        by smtp.gmail.com with ESMTPSA id si1sm40002445pab.0.2016.10.08.11.28.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:28:39 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 08 Oct 2016 23:58:24 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192e: Remove ternary operator
Date: Sat,  8 Oct 2016 23:58:17 +0530
Message-Id: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Relational and logical operators evaluate to either true or false.
Explicit conversion is not needed so remove the ternary operator.
Done using coccinelle:

@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
 drivers/staging/rtl8192e/rtllib.h         |  2 +-
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index dd9c0c8..8cd51a9 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 #endif
 	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
 			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
-	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
-				 true : false);
+	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
 
 	pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
-				    ((pPeerHTCap->ShortGI20Mhz == 1) ?
-				    true : false) : false);
+				    (pPeerHTCap->ShortGI20Mhz == 1) : false);
 	pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
-				     ((pPeerHTCap->ShortGI40Mhz == 1) ?
-				     true : false) : false);
+				     (pPeerHTCap->ShortGI40Mhz == 1) : false);
 
 	pHTInfo->bCurSuppCCK = ((pHTInfo->bRegSuppCCK) ?
-			       ((pPeerHTCap->DssCCk == 1) ? true :
-			       false) : false);
+			       (pPeerHTCap->DssCCk == 1) : false);
 
 
 	pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index b895a53..f2c28f3 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -464,7 +464,7 @@ struct ieee_param {
 #define RTLLIB_QCTL_TID	      0x000F
 
 #define	FC_QOS_BIT					BIT7
-#define IsDataFrame(pdu)	(((pdu[0] & 0x0C) == 0x08) ? true : false)
+#define IsDataFrame(pdu)	((pdu[0] & 0x0C) == 0x08)
 #define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)))
 #define IsQoSDataFrame(pframe)			\
 	((*(u16 *)pframe&(RTLLIB_STYPE_QOS_DATA|RTLLIB_FTYPE_DATA)) ==	\
-- 
1.9.1


