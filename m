X-GM-THRID: 6339007462058754048
X-Received: by 10.107.190.71 with SMTP id o68mr6416542iof.58.1475920093760;
        Sat, 08 Oct 2016 02:48:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls7194544otb.4.gmail; Sat, 08 Oct 2016
 02:48:13 -0700 (PDT)
X-Received: by 10.237.35.137 with SMTP id j9mr3658847qtc.2.1475920093400;
        Sat, 08 Oct 2016 02:48:13 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si6454023pab.2.2016.10.08.02.48.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id qn10so3934024pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B7Pk5bYveTRJnlDJfesUgY4lS+Y8X+N6Xn0Uo73ESM4=;
        b=mKZ0PR0hqRUaTKBVYlsvGTGQjwy+Vss0mCdPBnZWop6ve+5qnc0rdiy8MUIYQL/zHg
         KIymGqj8UFTg6UsZs9DbRUa4AKYTEyQNBtZRtsHdoDkeZlp+VX7gSmzrmFMYop7mFqq5
         PY06KL7a8rZl2UCJ38D7gdf1JxqoPYIGKWvF9MHbDmMN2ZSn51EyOtWfk5urqQbUjrDV
         CdCMr008h7uf8CyZLjgrWQ2BvFTv4ILkPvvBTtrVBYOqdT2e8pVHnW6vtVkqXXGFNoth
         ixIFGlVTYh/U+Dm4o4yQSNPB/thMMxNB4rc1xQChvwKlQob0tqwsWLLkZ6FZf02Wocju
         FBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B7Pk5bYveTRJnlDJfesUgY4lS+Y8X+N6Xn0Uo73ESM4=;
        b=NSOqw0eMYPWSZn3OPafS6PgYzRCpBbuosz0zihL72zgr25GE5a9HY+UPCVR/3Cat79
         0HJ9zy5ul+KttMYuDHfiamq4sqZ4nmNkXMayfYM2XPuippmCp1vgCNc+qGNvJR+ijYFw
         7jHPO4qHfOamAuCis7aIMhOoTO29hx/Gq/hnhQR+Doa1RP3KXh787i0kOrjIa1noZ+cE
         BYcj8EfndCfQH2skK3NVWPKNOWt0ECFylRGvUt3JVq2Qhx4KKdTRhqZL9Qd/QE8PG63b
         +Iqv2FXpc/XyP0Gj6wP9/nht/nRipdqmJbGjXLy3EMShQ3b4WJp3XZ5P/Wzpi5A5qlV4
         JABg==
X-Gm-Message-State: AA6/9Rk90p3mgQEQBISq4Tw9pI7T3fhFcCAjNbhpRBzrvHIEquLTfRa5x1ZkcONdMI8ujw==
X-Received: by 10.66.1.71 with SMTP id 7mr37335248pak.168.1475920093165;
        Sat, 08 Oct 2016 02:48:13 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id h63sm9664036pfe.87.2016.10.08.02.48.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:48:12 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:48:10 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 07/13] staging: wlan-ng: renames hfa384x_scanResultSub to
 avoid camelcase
Message-ID: <20161008094810.GA13348@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased struct hfa384x_scanResultSub to
hfa384x_scan_result_sub in order to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 4 ++--
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 7af07cb..e3fae14 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -659,7 +659,7 @@ struct hfa384x_comm_tallies_32 {
 } __packed;
 
 /*--  Inquiry Frame, Diagnose: Scan Results & Subfields--*/
-struct hfa384x_ScanResultSub {
+struct hfa384x_scan_result_sub {
 	u16 chid;
 	u16 anl;
 	u16 sl;
@@ -674,7 +674,7 @@ struct hfa384x_ScanResultSub {
 struct hfa384x_scan_result {
 	u16 rsvd;
 	u16 scanreason;
-	struct hfa384x_ScanResultSub result[HFA384x_SCANRESULT_MAX];
+	struct hfa384x_scan_result_sub result[HFA384x_SCANRESULT_MAX];
 } __packed;
 
 /*--  Inquiry Frame, Diagnose: ChInfo Results & Subfields--*/
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index c74f486..8a91534 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1045,7 +1045,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 	/* Get the number of results, first in bytes, then in results */
 	nbss = (inf->framelen * sizeof(u16)) -
 	    sizeof(inf->infotype) - sizeof(inf->info.scanresult.scanreason);
-	nbss /= sizeof(struct hfa384x_ScanResultSub);
+	nbss /= sizeof(struct hfa384x_scan_result_sub);
 
 	/* Print em */
 	pr_debug("rx scanresults, reason=%d, nbss=%d:\n",
-- 
2.10.0


