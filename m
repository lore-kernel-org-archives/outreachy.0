X-GM-THRID: 6339007538213683200
X-Received: by 10.107.169.35 with SMTP id s35mr1273805ioe.26.1475920116085;
        Sat, 08 Oct 2016 02:48:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls1899494ite.21.canary; Sat, 08 Oct
 2016 02:48:35 -0700 (PDT)
X-Received: by 10.66.23.35 with SMTP id j3mr3758743paf.39.1475920115629;
        Sat, 08 Oct 2016 02:48:35 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si2871143pfw.0.2016.10.08.02.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:48:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so2614408pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HaWOd9SOs1F2kja1sv/XsgnjpPQidM5oOR8sHYQ3/EA=;
        b=dX/KC9KMBRsqULPFkiyT4g2OC0o2vU9jnNJTOdvOqHO7uwiqLSsAWIgj6wKnHpAH5x
         d9qI49OYzHfEUncl/fdpI7/SkoUNz27fF3zls/KlLw56byYkyurx1CoRg7SgqphbpVrB
         3s/pv10sW9npwxneBol1raoAOPCGMH3PCMVagEcFc8xoUMXAEy4y9femepnrC9oprCC2
         Bv9IbO7ky1kvjMcQlozhDtyCcPuqXZGiKy6bid40fLx/hzoIhEtLOWOUoUEVneEujjXg
         KnQqDhQZ+tjXxYN0J+gQ/UsX8I/Ms1nMMeVTtdfDptWxDkCccpdmhMhHyUmpj10MqJ/C
         V8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HaWOd9SOs1F2kja1sv/XsgnjpPQidM5oOR8sHYQ3/EA=;
        b=ZmMk6L3pUpNEazJlyOg3AGdct9WO2oLvGp+eteSv949iJwZuK6FFEcH3HmrgS3TVT4
         X3zxj/HymQTGLXrHYcfbxq8TyGVr1Tjf2Un0wRVUu/UfaCEAd9bJqm1uHtXpPzrpavXm
         t4SzprSdsw0QQ3na/5CMXpEF2bySgYC8NPLE0uJla+MkaWvkDl6+bTgYGxprapnBFig4
         DTGFpUc39KbElDt2OPPVQsYdWfYWVRXqiLa2oWsZ6IOy7SGiqw/PafBJCRphz29NrlBR
         9+1QSn6GHqrv/gl+XeI/DhbJHhIWtDv/w0+npR2fyVieVQpOxLaP2hEvRLrhhJmX1j2s
         c1Dw==
X-Gm-Message-State: AA6/9RlqeguuCK725rSYb2eYQH+acXQRRBhp3CirQbOWsbh6IgcdjXDp2U5HClOd0qvIbg==
X-Received: by 10.98.87.140 with SMTP id i12mr37192539pfj.157.1475920115453;
        Sat, 08 Oct 2016 02:48:35 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id p26sm19962832pfj.80.2016.10.08.02.48.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:48:35 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:48:31 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 08/13] staging: wlan-ng: renames hfa384x_ChInfoResultSub
 to avoid camelcase
Message-ID: <20161008094831.GA13546@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_ChInfoResultSub to
hfa384x_ch_info_result_sub in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 4 ++--
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e3fae14..7b6b373 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -678,7 +678,7 @@ struct hfa384x_scan_result {
 } __packed;
 
 /*--  Inquiry Frame, Diagnose: ChInfo Results & Subfields--*/
-struct hfa384x_ChInfoResultSub {
+struct hfa384x_ch_info_result_sub {
 	u16 chid;
 	u16 anl;
 	u16 pnl;
@@ -690,7 +690,7 @@ struct hfa384x_ChInfoResultSub {
 
 struct hfa384x_ChInfoResult {
 	u16 scanchannels;
-	struct hfa384x_ChInfoResultSub result[HFA384x_CHINFORESULT_MAX];
+	struct hfa384x_ch_info_result_sub result[HFA384x_CHINFORESULT_MAX];
 } __packed;
 
 /*--  Inquiry Frame, Diagnose: Host Scan Results & Subfields--*/
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 8a91534..0d2bc69 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1139,8 +1139,8 @@ static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
 	    le16_to_cpu(inf->info.chinforesult.scanchannels);
 
 	for (i = 0, n = 0; i < HFA384x_CHINFORESULT_MAX; i++) {
-		struct hfa384x_ChInfoResultSub *result;
-		struct hfa384x_ChInfoResultSub *chinforesult;
+		struct hfa384x_ch_info_result_sub *result;
+		struct hfa384x_ch_info_result_sub *chinforesult;
 		int chan;
 
 		if (!(hw->channel_info.results.scanchannels & (1 << i)))
-- 
2.10.0


