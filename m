X-GM-THRID: 6339007538213683200
X-Received: by 10.107.35.149 with SMTP id j143mr5496965ioj.1.1475915205470;
        Sat, 08 Oct 2016 01:26:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls6712353otc.12.gmail; Sat, 08 Oct
 2016 01:26:45 -0700 (PDT)
X-Received: by 10.157.2.71 with SMTP id 65mr6235061otb.100.1475915205037;
        Sat, 08 Oct 2016 01:26:45 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ua1si6518437pac.1.2016.10.08.01.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:26:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so3857626pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rhjLY0RdHH0aEO/e+FCuCwy/YS2RiBPJtz+4pRz5WJA=;
        b=o7gog7NJdeUrK3qNN06Uu8aC//bjHZ3a+39MfIWlrGW3IIzQwob2mn14p1jwWHbaQs
         /t7oA7WA1l/UHzOIdSRlw+kygosFW99f+GQvcEIuE8WHq9T9cXx0RvSsX8CmyMu2Jg09
         BTR9XikuLF0fOLp2qMFjATObrsbEjYciklIS+bGcuVE5Nj2Hpvv16uU/TXg+97Pq1gp3
         1OsRtpSyHhtDbsThtH+P3xfSTvSOIhHFWWLfS6k1yUeR99EpTAHBPTax+EDMb+F91Xo9
         Sk8O7ABAwEf4UiEo2qKFMy89fKBvxV9ZHbXTr0CF8Cc0EIh9aXpwO8l9mgaYIHtVJkHY
         Z1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rhjLY0RdHH0aEO/e+FCuCwy/YS2RiBPJtz+4pRz5WJA=;
        b=WubOHtvwoPM0aMAWeOL8IZt3KrFHZANGpSjEFwNTK9BPEmn43O523r+hgr8E897wxD
         gGHY4p2TGz5GUP2ZIKiCxORzEC1iQklss8d92023F9S4Tunt4GxzndZ5UfJDPlYMLWD5
         yuMzirjzEM+FCXGIS/JUm9s0OienYMbxD4nytEwls6J+ss2FH6MlQRR3CeCfJzTZhuUv
         Y5enxyzNneZHmk2+y70rd0mHcdAVXm0GrlLabXKvvsKuFQ0vF243wDd3a0WBQQIxtAKE
         20a32CUynGVbgfXVAszw0Q2aORM+Jzc4YJkHgcTrlb7ald9Y8AjfSPPUmQMpasUiX1RF
         TBzQ==
X-Gm-Message-State: AA6/9RknklvWT8jxIqI1H3LLzAiu5mLA8ohHyVI2jh/yxXdN2bQdX5xcZbApcrQFmyaPRg==
X-Received: by 10.66.163.227 with SMTP id yl3mr37531163pab.0.1475915204848;
        Sat, 08 Oct 2016 01:26:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id s82sm142721pfg.56.2016.10.08.01.26.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:26:44 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:26:42 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 08/13] staging: wlan-ng: renames hfa384x_ChInfoResultSub to
 avoid camelcase
Message-ID: <20161008082642.GA8993@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
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
index f6bb397..900ae8c 100644
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


