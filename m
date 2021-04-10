X-GM-THRID: 6949346353837244416
X-Received: by 2002:a17:90a:d41:: with SMTP id 1mr17428937pju.232.1618020784586;
        Fri, 09 Apr 2021 19:13:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls4835102ple.9.gmail; Fri, 09
 Apr 2021 19:13:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwy1+KlwmF5dGmNWo7N8a18ukKamslIjeAXWVzyiqZYhnz9pGnieE572yNQOhDlC9PZjtGZ
X-Received: by 2002:a17:902:dccb:b029:ea:c2bd:aed9 with SMTP id t11-20020a170902dccbb02900eac2bdaed9mr678397pll.79.1618020783449;
        Fri, 09 Apr 2021 19:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618020783; cv=none;
        d=google.com; s=arc-20160816;
        b=ATBxe90xYCa6T/mwQPTOhKESlZxfnWktWM9HotSUOal8LjkLKT4OF50WnONauavD/u
         rzTeUfg96M8g9nD3eCSVONWj5gYRNq2BAuSu/MAIsq9JokEGRkDcFgS9RnFmLFSfnAvX
         aoxfBS0rACyU70xBMOUKQlXv6vlcVi4wryRZcwuIj9JiK+A5LvY1zHTvrPMWkzxkEnFJ
         8x0bZMNt8KUvtk6snI7HO+0kg1PdNDhUbSRFip6nxBfmPKwvXgoH4N2PURe0djJDonrK
         PTT4b1COoOW/Ur4IvS13jvLglCokvfc3XcVw1h11pD0gU54w8RTE+91n/iZYagkhzaRQ
         rhmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=H4JBybcyVdit3LlCjtiu0PtEyNhtJrRBX+ityRlDmVU=;
        b=Ru9j0kDXb3+lSR6VKDx/VdFJLsA8H+WqxcJ5NntXh0/xm4gnFphb5mTiPeAo0BheMa
         Rq7//bFPjhdfmoOd1aAeE+WehjCFysDagkCg3TyK5uLAarwQCiGOwTXE7PMbBnehtYDb
         7pjasFAYaOu7J/7QxC1ggCryvdvwsFdJ4/sJmZyWS3GLpx2Je5GqC2yEBjPw93D9T0P7
         mGsedCd+6+XOHZsqsHdiitj95o6FZ7BWQrDmK7lfe34DS0q3Qjwktg6/8BfPdxYyGZMU
         FYWRp/VwPOyHEe7ujBL8DOynkHMj35x5pOZJfsjspRSo47CovKvXtIIcADss6ESr9WFW
         GNLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHPkNWnb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id 131si328204pfa.2.2021.04.09.19.13.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 19:13:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lHPkNWnb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id w8so1271267plg.9
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 19:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=H4JBybcyVdit3LlCjtiu0PtEyNhtJrRBX+ityRlDmVU=;
        b=lHPkNWnbDZB6hbYSyq11SYll5bNsBsBby70IJDygyWZIhq1PnBkpdLoSGFB4BJoEMj
         JRw0otNXdWNRbA8zI7q6TBdwqMl6aLDdi22xJXgHX/bFmXUnlsLuNr9DLEfieCVhNX44
         Y4ZroOxi03+U0/9zIO7E5l82w+d/0Sefozt+3KT0Kvx49vPEAka7z14w2tAM/ClXeBi8
         8w3M+clmzr5O4FSqbtwbSCKVTcBrmd+hsDnyGjqekX8sKf1A3VMcdpBRFKY1bu09S0R+
         CSWUBUwKo8BZbrmM0zcHY2tshPY1oebGgJmshqWlOaNKDCRLzx+zz+OhdE83ZZ4A4+v+
         97iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=H4JBybcyVdit3LlCjtiu0PtEyNhtJrRBX+ityRlDmVU=;
        b=O8Ms04j6epZAQ5Qzo0NhfBpAjpMPOOBr8p8puSYq2OzCrtUQUy+UvLc3KxhX3myMF/
         LOCycIM00DrX1EWO44Z5+3dikTATKyyhKbG92cFVfukb/p09WHBl4CeBOGwi8Nsk928Z
         sPtPoAdirdpO0OevwUDHB5gIM58Lofpn/sqm7al+MCUwsz553/pJNwd94/5fmofGnklF
         h6AHnMkn9WctpZzgtevYgM4W8K6dj5CrUwZFHc9ugYvRsMhgq8xJwKP3pCI2jZYo+pda
         Q0CIg6dRv+snC3OslF7g13hC97sOvmGsjd7ji3IH0N9Gue4C/Iosqo4nZRCDf1ad/DlT
         C33A==
X-Gm-Message-State: AOAM530/TV3zvo359ofMU+gqrkmSfznK63pu9E2VSP38xSYAAPNdY5ZN
	OXKVlX8Qp5esvyic8DdiYA8=
X-Received: by 2002:a17:902:9f83:b029:e9:3455:44d2 with SMTP id g3-20020a1709029f83b02900e9345544d2mr15741805plq.11.1618020783151;
        Fri, 09 Apr 2021 19:13:03 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id v6sm239697pfb.130.2021.04.09.19.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:13:02 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:42:57 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 2/3] staging: rtl8192e: remove unnecessary ftrace-like logging
Message-ID: <YHEJqTJchcKdNMyg@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HTProc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 0b1e92f17805..89d0e9ec188d 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -630,7 +630,6 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
 	pHTInfo->bCurrentHTSupport = false;
 
 	pHTInfo->bCurBW40MHz = false;
@@ -698,7 +697,6 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 	u8	bIOTAction = 0;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
 	/* unmark bEnableHT flag here is the same reason why unmarked in
 	 * function rtllib_softmac_new_net. WB 2008.09.10
 	 */
@@ -832,8 +830,6 @@ static void HTSetConnectBwModeCallback(struct rtllib_device *ieee)
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
-
 	if (pHTInfo->bCurBW40MHz) {
 		if (pHTInfo->CurSTAExtChnlOffset == HT_EXTCHNL_OFFSET_UPPER)
 			ieee->set_chan(ieee->dev,
-- 
2.30.2


