X-GM-THRID: 6388897294904721408
X-Received: by 10.31.213.194 with SMTP id m185mr4604985vkg.30.1487531069700;
        Sun, 19 Feb 2017 11:04:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls9245211otd.42.gmail; Sun, 19 Feb
 2017 11:04:29 -0800 (PST)
X-Received: by 10.176.80.197 with SMTP id d5mr3005609uaa.15.1487531069386;
        Sun, 19 Feb 2017 11:04:29 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si1204318pfk.0.2017.02.19.11.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:04:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v184so10042594pgv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hHYkT+PNripxTOPlKeHNJ/AD4kvfABmeeK4r59YTy08=;
        b=DxTB/uOZLwx2IPZmHfKs0Qy+GZkGOBmaILgoCqR2IOlxAMcjHYuw8WK8mUvUYKC4Lr
         B4l7RqL3AOaHpjjd4FI8omDE+lDSE/HVG6qhUSu/XLl3GvEpXOdCyWbJKD6ZMj3ekRKD
         SCIb86Wg/hCdZRCzBT0ewqtIYJbdPGXP9QqBkmKqxEQanJEb5mrxQYnyX64yWIbBGi5M
         /uVFCXRMgV5Lavq6kSXx+R8iFK/TIvCN9zluJ7CwXGr+yX3s7IouCOdEkh3wPFdl38MG
         bTqqd0ySFBfBxFtGIGs5uB6MTDvCTkrrMsL4VUqZ5TnW5/pS4mwx5DSQ1GqkeUW9ka3V
         b75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hHYkT+PNripxTOPlKeHNJ/AD4kvfABmeeK4r59YTy08=;
        b=OmXGI/BhlnSlFUdTzt4FMDrMXkPRZ8ySKZ0wxB9q3sBeGY8aBwQGEflIBkcvWdnX+4
         8IeVhSzEh7yYRKC57qsu/LukSqHtXvq2+RmwQJUMoy6XgGZc24r62GnzefdvknvqO93L
         ZslB3nyBeYaGUS64DLHipi8OINd49UIWxc2xQ1Boum4JAWrrLGHvIhJcPtqGzGz8riI6
         kTAul45oQU8biFOL0UM6HNsjOc9djZHfA/78oaeH8edA5/JXo4+c/4W5lu16k7g2CtHe
         coVoK/nbTjSHm7AjGJQsMG9KB/ipfXgzUV0U2AYY8JFQCPiAzXd5PlfiuCawW3P7tlXo
         YNFQ==
X-Gm-Message-State: AMke39nOViFP4q/K13kuz4gan3GG/jcC97bR9nCiiCIsuQad+dTN9fhrkOuyWeIPCm5XtQ==
X-Received: by 10.84.237.22 with SMTP id s22mr26484930plk.145.1487531069026;
        Sun, 19 Feb 2017 11:04:29 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id n189sm30555359pfn.108.2017.02.19.11.04.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 11:04:28 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192u: Remove ternary operator
Date: Mon, 20 Feb 2017 00:32:18 +0530
Message-Id: <1487530938-17297-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

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

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..8faa3d6 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -977,16 +977,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
 //	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+		pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
 
 	//
 	// Update short GI/ long GI setting
 	//
 	// TODO:
 	pHTInfo->bCurShortGI20MHz=
-		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
+		((pHTInfo->bRegShortGI20MHz)?(pPeerHTCap->ShortGI20Mhz == 1):false);
 	pHTInfo->bCurShortGI40MHz=
-		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
+		((pHTInfo->bRegShortGI40MHz)?(pPeerHTCap->ShortGI40Mhz == 1):false);
 
 	//
 	// Config TX STBC setting
@@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	//
 	// TODO:
 	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
+		((pHTInfo->bRegSuppCCK)?(pPeerHTCap->DssCCk == 1):false);
 
 
 	//
-- 
2.7.4


