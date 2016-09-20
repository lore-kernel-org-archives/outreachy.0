X-GM-THRID: 6332371296265961472
X-Received: by 10.31.169.205 with SMTP id s196mr1077188vke.21.1474370175555;
        Tue, 20 Sep 2016 04:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls1686088otb.16.gmail; Tue, 20 Sep
 2016 04:16:15 -0700 (PDT)
X-Received: by 10.129.131.19 with SMTP id t19mr5712928ywf.79.1474370175257;
        Tue, 20 Sep 2016 04:16:15 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si5930347pab.2.2016.09.20.04.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hi10so808623pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Cx+BK/5acZi+Qxy5ZHBHTT+rIYAIK8Y0AlwFvJ4vFTI=;
        b=S7/03peUNNB38iugU+Ud3JoWYxeGhYkCKzSGTzJQ4dsbnwki40c5WaYX0ojoyIxOPz
         nBEiio2TcRiedNbkT8mxYTzrD91UD/OViPc05UnOtsUctYoo1J+uO/lahIRAW6VpCctP
         3rodYiwPck8IDXU2+sAJr0MV6PD/tG7GFzI0osw9kXh2m1L/eKEABPjDg95Mu+Q2GEta
         RuNJaRleLZGHL9t6UeRMjQqhKfxrUUs2hJ838lDkRzcW250U22CrLvX5pVBGgOweFLC1
         +vwOglXNbOaxp5Awx2qvfCGrv2zjjiAhTSWGG36N/1Q8teJ8cpfYZ/N6u+gQ5KfaAFBW
         tumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Cx+BK/5acZi+Qxy5ZHBHTT+rIYAIK8Y0AlwFvJ4vFTI=;
        b=aU3guE4qqNh4bRF5kzSU2S0dJOKBBYicnRGx+Gj4wJz6ktny7nQKIFHQNn3xwdVKzS
         YSZ/vLhabEdMSTWP4m3TUxfN9RULhJzLz5KffOR7EImRQKrBMl3w1RzU8KTijkLJYmSV
         uIwF8Q7i36UdqPwpsKYpseD7K4AI95zHRCG+v3f5nuH04rGimdc4eWS3/X6oIR6U9qk2
         Mye/ZgMhZBU0NYC9nadDE8QUofyMl4HQ4crgHC6zUt+YXST1NNSrAYvbRtuBJNhDodM5
         JLk+1xwleqZeHbmRsdFO7ay+b/oEY7qzl4xy5FtPHdXx37w/avPcrHWAvrsSnPjA8N3b
         VBkg==
X-Gm-Message-State: AE9vXwN/7wfS/V/m03UpsoOCsnmuBvz4K0PGWContsfUQ2L1c/im2P39al9tqkPRwnY+8A==
X-Received: by 10.66.26.207 with SMTP id n15mr54579740pag.69.1474370174839;
        Tue, 20 Sep 2016 04:16:14 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 70sm45622431pfn.46.2016.09.20.04.16.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:16:14 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:46:05 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 6/7] staging: rts5208: Use BIT(x) macro
Message-ID: <897925be253744b0566a93d95d4a88ce1ce3234d.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replaces left shift operation (1 << x) by BIT(x). Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.h | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index 79d1df6..132c2e6 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -266,22 +266,22 @@ struct sense_data_t {
 #define TRIG_DMA		(0x01 << 31)
 
 /* Bus interrupt pending register */
-#define CMD_DONE_INT		(1 << 31)
-#define DATA_DONE_INT		(1 << 30)
-#define TRANS_OK_INT		(1 << 29)
-#define TRANS_FAIL_INT		(1 << 28)
-#define XD_INT			(1 << 27)
-#define MS_INT			(1 << 26)
-#define SD_INT			(1 << 25)
-#define GPIO0_INT		(1 << 24)
-#define OC_INT			(1 << 23)
-#define SD_WRITE_PROTECT	(1 << 19)
-#define XD_EXIST		(1 << 18)
-#define MS_EXIST		(1 << 17)
-#define SD_EXIST		(1 << 16)
+#define CMD_DONE_INT		BIT(31)
+#define DATA_DONE_INT		BIT(30)
+#define TRANS_OK_INT		BIT(29)
+#define TRANS_FAIL_INT		BIT(28)
+#define XD_INT			BIT(27)
+#define MS_INT			BIT(26)
+#define SD_INT			BIT(25)
+#define GPIO0_INT		BIT(24)
+#define OC_INT			BIT(23)
+#define SD_WRITE_PROTECT	BIT(19)
+#define XD_EXIST		BIT(18)
+#define MS_EXIST		BIT(17)
+#define SD_EXIST		BIT(16)
 #define DELINK_INT		GPIO0_INT
-#define MS_OC_INT		(1 << 23)
-#define SD_OC_INT		(1 << 22)
+#define MS_OC_INT		BIT(23)
+#define SD_OC_INT		BIT(22)
 
 #define CARD_INT		(XD_INT | MS_INT | SD_INT)
 #define NEED_COMPLETE_INT	(DATA_DONE_INT | TRANS_OK_INT | TRANS_FAIL_INT)
-- 
2.7.4


