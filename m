X-GM-THRID: 6466329510613614592
X-Received: by 10.13.245.195 with SMTP id e186mr5681988ywf.13.1505559667971;
        Sat, 16 Sep 2017 04:01:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.209 with SMTP id d200ls2595854itb.12.canary-gmail; Sat,
 16 Sep 2017 04:01:07 -0700 (PDT)
X-Received: by 10.101.81.135 with SMTP id h7mr16764358pgq.36.1505559667336;
        Sat, 16 Sep 2017 04:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559667; cv=none;
        d=google.com; s=arc-20160816;
        b=mH0QowsxFUU4/GunRUF29GzIUoBXBWTqMtXUkVEBF0cv9VEql3oU8oNr2t1iLQTQI6
         RdFaTf9tnqiZTHV7B65Lold7NmTw+UAl/+8FLw/22LTlMZLdn9EReRjhN7pUqCUDOA2K
         r0t5WdpP9zQ8ihE1ICmU7KRdAwJgX57eV6xpn4JCG8XQASGqEFjUzZ7PA5Im8vmhHP1S
         8NIDG8Bdi/hj86xshVbOeyRHRfcuk9QSCF9y97kpy2LycYcHdSl3KN4aYn0eKyJsQSJl
         0ygTlGQsEHl9uwBwrhJv9W/HTP8QX+1zvcMT6B50is8LnyCmIRFTTcxn6Poco7BSHIBj
         ymIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=+7gtoUsxC5ngm6TwDjaz3dWduf7R0MmH/ZOFwrUJVwg=;
        b=YL4KGMPDBaCUVTBhtWVZRdABbTio12OIx0Xlu6jLbj2hyEFeLR4WXHoXRboJO2305C
         vSQ2EcNA4fiw1h2Vmy9J+EKksbKWl+2GZff+LtPg1Q5/c7mFg8vP3QCKoYtKIPRQyOJn
         u1HiaSPiadWers5FNGxFRxFEyun1v5vCYuW5jD3md4E2a71cFDDTOE3CqiHz7jGPL2k4
         1SQNVfuHo4RBdS0QJCSpUC58ehGYksbiUkYLVrbA2sT1zsHc/fuj2LReBGW5XexQazdj
         hFUY/6pMMyodrTYL9050oRH2tvo+cXykcptTa9ZrYJgaPs7OvGgXbsgTsXWs+4EbPL6p
         4D5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QULPDfmT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id k76si317818pfb.5.2017.09.16.04.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QULPDfmT;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so2624957pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+7gtoUsxC5ngm6TwDjaz3dWduf7R0MmH/ZOFwrUJVwg=;
        b=QULPDfmTa1NTw7ErUvYimVL2lQbqQk9/TN0mxi8a6I4PFEl3GAc9Ks8vs2EWTphjXT
         yedN8/Nymx0448ynbTE4ULPYFsGTsxz793t0J5o4gUj0sIOC5A7n8f7+TJI6JRtkCC6Z
         La1EpyfM4JDH93YPepQqjFay6DotTK5451bExdm7FVYcN5UwiC48BIhGldol/hwwbAOb
         FGXkQS/vor9b2SzFuROjabLeVI1N4Ev5NgMJx7JpFHqd3NfgAVTKPrNNZKel6IOhpoRr
         qS8LipN0KQIKYvjFWppddLhL7Od4VpNM94ysGdRjLEsDDmLh/oSSlkZyc6u/LYIy/zKj
         KSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+7gtoUsxC5ngm6TwDjaz3dWduf7R0MmH/ZOFwrUJVwg=;
        b=IhR50gWg7bsJvFGuouCMY5xUTY0yPn0pEUwPeVh31BGG/vsWyv1KDRqhMj6bT0yQIf
         ATGiI4fI9MkWB7n9Apq3fr39pN/iAl62vkKtPzvJ3JKMrxRP9LGfaL7SXp5OV05rXMbR
         0CmLz0WcV1BgQa8JZBNUd5n+t/ZV9HNs3EalLotH63WPpkPK97tZWFPkXCRyBbAt+n9X
         qNF1DCVmoz9Ganb/79uEycCXAMDYZk+i/Yo9eenuPJMFUQcOLFeeSMWczigPPXI+OWkZ
         UAz6xhDPTl8v5GRsROdxHtxiI7fXUXsuAZ8Vqs/gdDcUJLab/HzyD4whZyCnQdali6ey
         rDrQ==
X-Gm-Message-State: AHPjjUgSADT1EAFEWTkFASz3+04SJsIutDKGK3RtjOtBpvgzuyWr3veW
	iq8x3O7vclCGvAZXwMk=
X-Google-Smtp-Source: ADKCNb5CIg0lltpuveBb9jfmfuJoaaDBsQgWpSavny1GhjGptA1BgXSjW0PWDLxc/9RzogHOQD93Ag==
X-Received: by 10.84.231.133 with SMTP id g5mr29939275plk.188.1505559667057;
        Sat, 16 Sep 2017 04:01:07 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id k67sm5928041pga.46.2017.09.16.04.01.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:06 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 01/11] staging: rtl8192u: fix spaces around algebric and binary operators
Date: Sat, 16 Sep 2017 16:30:44 +0530
Message-Id: <78b96e43e67c3d2f6fdc7bf20b7afc68c012af22.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes prefer spaces around '+', '_', '?', '&', '==', '!=', '|', '&&', '=' as reported
by checkpatch.pl.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index b062cad..6ea104f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -412,12 +412,12 @@ typedef struct ieee_param {
 #define IEEE80211_QCTL_TID              0x000F
 
 #define	FC_QOS_BIT					BIT(7)
-#define IsDataFrame(pdu)			( ((pdu[0] & 0x0C)==0x08) ? true : false )
-#define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)) )
+#define IsDataFrame(pdu)			( ((pdu[0] & 0x0C) == 0x08) ? true : false )
+#define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0] & FC_QOS_BIT)) )
 //added by wb. Is this right?
-#define IsQoSDataFrame(pframe)  ((*(u16 *)pframe&(IEEE80211_STYPE_QOS_DATA|IEEE80211_FTYPE_DATA)) == (IEEE80211_STYPE_QOS_DATA|IEEE80211_FTYPE_DATA))
-#define Frame_Order(pframe)     (*(u16 *)pframe&IEEE80211_FCTL_ORDER)
-#define SN_LESS(a, b)		(((a-b)&0x800)!=0)
+#define IsQoSDataFrame(pframe)  ((*(u16 *)pframe & (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA)) == (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA))
+#define Frame_Order(pframe)     (*(u16 *)pframe & IEEE80211_FCTL_ORDER)
+#define SN_LESS(a, b)		(((a - b) & 0x800) != 0)
 #define SN_EQUAL(a, b)	(a == b)
 #define MAX_DEV_ADDR_SIZE 8
 typedef enum _ACT_CATEGORY{
@@ -442,7 +442,7 @@ typedef enum _BA_ACTION{
 } BA_ACTION, *PBA_ACTION;
 
 typedef enum _InitialGainOpType{
-	IG_Backup=0,
+	IG_Backup = 0,
 	IG_Restore,
 	IG_Max
 }InitialGainOpType;
@@ -462,10 +462,10 @@ do { if (ieee80211_debug_level & (level)) \
 			int i;					\
 			u8 *pdata = (u8 *) data;			\
 			printk(KERN_DEBUG "ieee80211: %s()\n", __func__);	\
-			for(i=0; i<(int)(datalen); i++)			\
+			for(i = 0; i < (int)(datalen); i++)			\
 			{						\
 				printk("%2x ", pdata[i]);		\
-				if ((i+1)%16 == 0) printk("\n");	\
+				if ((i + 1) % 16 == 0) printk("\n");	\
 			}				\
 			printk("\n");			\
 		}					\
@@ -876,9 +876,9 @@ enum ieee80211_mfie {
 	MFIE_TYPE_ERP = 42,
 	MFIE_TYPE_RSN = 48,
 	MFIE_TYPE_RATES_EX = 50,
-	MFIE_TYPE_HT_CAP= 45,
-	 MFIE_TYPE_HT_INFO= 61,
-	 MFIE_TYPE_AIRONET=133,
+	MFIE_TYPE_HT_CAP = 45,
+	 MFIE_TYPE_HT_INFO = 61,
+	 MFIE_TYPE_AIRONET = 133,
 	MFIE_TYPE_GENERIC = 221,
 	MFIE_TYPE_QOS_PARAMETER = 222,
 };
@@ -1196,7 +1196,7 @@ static inline u8 Frame_QoSTID(u8 *buf)
 	u16 fc;
 	hdr = (struct rtl_80211_hdr_3addr *)buf;
 	fc = le16_to_cpu(hdr->frame_ctl);
-	return (u8)((frameqos *)(buf + (((fc & IEEE80211_FCTL_TODS)&&(fc & IEEE80211_FCTL_FROMDS))? 30 : 24)))->field.tid;
+	return (u8)((frameqos *)(buf + (((fc & IEEE80211_FCTL_TODS) && (fc & IEEE80211_FCTL_FROMDS)) ? 30 : 24)))->field.tid;
 }
 
 //added by amy for reorder
@@ -2023,7 +2023,7 @@ struct ieee80211_device {
 #define IEEE_G            (1<<2)
 #define IEEE_N_24G		  (1<<4)
 #define	IEEE_N_5G		  (1<<5)
-#define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
+#define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
 
 /* Generate a 802.11 header */
 
-- 
2.7.4


