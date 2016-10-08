X-GM-THRID: 6339007462058754048
X-Received: by 10.98.74.148 with SMTP id c20mr3466031pfj.12.1475915187561;
        Sat, 08 Oct 2016 01:26:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.69 with SMTP id k66ls2369018ioe.22.gmail; Sat, 08 Oct
 2016 01:26:27 -0700 (PDT)
X-Received: by 10.66.174.228 with SMTP id bv4mr5126939pac.148.1475915187140;
        Sat, 08 Oct 2016 01:26:27 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si6537431par.0.2016.10.08.01.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so4091444pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OoPYuiMc/umpAY2CXd5TsKSd1s6X5PiZmMHAgG7AjWM=;
        b=vutTYMbCZ+b2gPgtT0qtEiui5DAj/A35q5VLdO1fDkzDb88PQhdTK/RXIvuLAKFi6I
         PshAOWtwFsHRqJ/V0bqUk/Aop4E/EvXjb/HmFhFRYVjciveKyzH0G7aFv5FlDSHe5RyG
         oqIXM9xHIti1vuU1AxipD2R977yhSu++QhXu7UNYGSo6+8M+4ZEMUI1o3UdqA7qYcYBW
         jryOgig0XRHA3FNvIf3221K3Qd1YNLUABwP1RqFdD5BX6FHSMlpuOpiFZRHN/wIuHrRK
         80sIcTxtMGgRzMtL1lPOTQ13Vu8QCq7oagx8xAY02roAr+3dTFwenKivsRPKdQebtRyg
         hWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OoPYuiMc/umpAY2CXd5TsKSd1s6X5PiZmMHAgG7AjWM=;
        b=VbQTnvnPxBygPvHkK8PuAzmHKFm/Ub4Rcv0zZE55UVEXWBteXtln81GaO5rVia+zwG
         Q0Q0yf0OPaKCml6rwIa8dKsWq6nOVfTFZy0j9Jzv9pDkIGX36jk6Yl5FzjhSetkja8lw
         0yR+ewjSo4mTjQeVaB5zcZkdiI6M8TfDIzKlRjqJRtcs/HtSOR37LIjGnd9+r40AYIi4
         JdBVhMzIPWTjWbTcVVKY0+PrKTFa02JIWhzNxM8AUntLdLl2Wda7JtVYTvnFWDucAPLf
         VCbgLGLVHTf+jwae6RUhZCEnSkjpyBYkoVJUeu5J9zoicBqfhlWRLfuUmp8WGHphm0br
         uvfQ==
X-Gm-Message-State: AA6/9RmkrLzZ/ybMAn6E4snys8oyNDxm06IFVNmdvkv/70ikcJSO3fwIf9cR2rHru6FvPA==
X-Received: by 10.98.58.90 with SMTP id h87mr35003312pfa.6.1475915186973;
        Sat, 08 Oct 2016 01:26:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id m83sm19360482pfg.48.2016.10.08.01.26.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:26:26 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:26:24 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 07/13] staging: wlan-ng: renames hfa384x_scanResultSub to
 avoid camelcase
Message-ID: <20161008082623.GA8793@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
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
index effe46b..f6bb397 100644
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


