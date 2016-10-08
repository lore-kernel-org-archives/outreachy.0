X-GM-THRID: 6339007282393645056
X-Received: by 10.157.11.180 with SMTP id 49mr2168728oth.42.1475920061627;
        Sat, 08 Oct 2016 02:47:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.207.70 with SMTP id y67ls1977433itf.18.gmail; Sat, 08 Oct
 2016 02:47:40 -0700 (PDT)
X-Received: by 10.98.23.147 with SMTP id 141mr4742092pfx.41.1475920060929;
        Sat, 08 Oct 2016 02:47:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si2870540pfw.0.2016.10.08.02.47.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:47:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so4199996pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qc7pUbL+6dUyyNTq+xGwKPiI5OZ1ZUNH0r4mY1xGhrw=;
        b=jed80+N2MF9GzHSgSUikdekstz/euc/bOYrha7JSEuiJVk38ii3svuYwlLNaOL9gJw
         ehqWyEFMjBXEDZja1M9I5Uby3n00BhL+R5ub6x7k+lao5oGvRplWaMBJirVnexxfGspS
         iyk5MnQLqq3+o10izx3OQ7HMKALAs8n2KeROGQJcPODR4wKEa5OLxFnqlg5Z2mgXDrqg
         HlHnLTk9EAYrg6TpyKKVUeD+FhcWhKW9uF8wTjeRt4RE0MT9C44ZUzQUpbKtA5l5fYsd
         5KCZC/dgPzlmebWhZ5ZbWqOd1fNTwepKO26eOThF+QTiKQSA3jOaHKebUd46X8kTIqXY
         8WxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qc7pUbL+6dUyyNTq+xGwKPiI5OZ1ZUNH0r4mY1xGhrw=;
        b=hZsXVff5dIxoh3zkgP5h3zIupw1dkV2eNyjLtoAg4pYjcCcvpoQ4gt5n0/wbOQED/P
         ACy7fcOi094YDhvc/Ha1EupN8uQZ+nO8ujMOrFqY9EO/LKUkPhyYc0R7Pmz4cDOX8kF2
         54Iqbyw13jXHfnFjFN0aZPESlS6bzBNcFWxDAJrqndo8qMzU4oNsoHTjxhK9rOa+GY78
         rKmMes0IXqcS811FY9Q5kaMTijGjMdrGyvPuAE9NmThJzNnPaRCWhCePy48aZF0lDIm6
         YM6SGqwkajJf5zMBfB1tenXovfZvpGeVREX2cETR9nh1OsKOle9v17vi7t5zwWlnZG/6
         tQbg==
X-Gm-Message-State: AA6/9Rm6u+dl+4MuIRwN/+xsuE56OjmRXB6PyATjCYUI7ajV22rhbrz8JMl1MysV6jEMdA==
X-Received: by 10.99.104.69 with SMTP id d66mr785383pgc.26.1475920060749;
        Sat, 08 Oct 2016 02:47:40 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id 198sm19991342pfy.38.2016.10.08.02.47.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:47:40 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:47:38 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 05/13] staging: wlan-ng: renames hfa384x_ScanResult to
 avoid camelcase
Message-ID: <20161008094737.GA13008@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_ScanResult to hfa384x_scan_result
in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 4 ++--
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e4105e1..6268703 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -671,7 +671,7 @@ struct hfa384x_ScanResultSub {
 	u16 proberesp_rate;
 } __packed;
 
-struct hfa384x_ScanResult {
+struct hfa384x_scan_result {
 	u16 rsvd;
 	u16 scanreason;
 	struct hfa384x_ScanResultSub result[HFA384x_SCANRESULT_MAX];
@@ -764,7 +764,7 @@ struct hfa384x_KeyIDChanged {
 union hfa384x_infodata {
 	struct hfa384x_CommTallies16 commtallies16;
 	struct hfa384x_comm_tallies_32 commtallies32;
-	struct hfa384x_ScanResult scanresult;
+	struct hfa384x_scan_result scanresult;
 	struct hfa384x_ChInfoResult chinforesult;
 	struct hfa384x_HScanResult hscanresult;
 	struct hfa384x_LinkStatus linkstatus;
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 73dd344..ec62bb5 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1037,7 +1037,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 {
 	struct hfa384x *hw = wlandev->priv;
 	int nbss;
-	struct hfa384x_ScanResult *sr = &(inf->info.scanresult);
+	struct hfa384x_scan_result *sr = &inf->info.scanresult;
 	int i;
 	struct hfa384x_JoinRequest_data joinreq;
 	int result;
-- 
2.10.0


