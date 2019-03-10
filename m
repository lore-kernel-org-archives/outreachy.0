X-GM-THRID: 6666820090157072384
X-Received: by 2002:a6b:fc05:: with SMTP id r5mr6049954ioh.6.1552240018418;
        Sun, 10 Mar 2019 10:46:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls4253240itm.5.gmail; Sun, 10 Mar
 2019 10:46:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysp1tkJbPHECOagiJsGzUXsTL7249Ctdj1pRci/qCM79FG9UAL8+Xvz9NDufRBorJCCEYE
X-Received: by 2002:a24:1708:: with SMTP id 8mr19309672ith.0.1552240017858;
        Sun, 10 Mar 2019 10:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240017; cv=none;
        d=google.com; s=arc-20160816;
        b=dPfntkiVhvAn2Y5Ie2rAqynk+5wFweTfOkYkhM9ECBcMXxVMgszZDM+VI+CH4qaqjC
         9L4fOta9kU9xyQEs5fXwdt/hNUbAC7S9A352+y/1sf7kfnVwdF8Di1iS2ttIpKB/bvjy
         hBe1kGP3HDYTTRyE+siTDl6jukp6gHnTewvUhlyluK9bozuolAnOYFd61312/UySD8Zr
         iruXoR2pi5da0uI2j0rRwDvKjh+wzm5YENE9/rUuNrqiR9310Eic1igIpDN9/ukKu+Ur
         WxjR9Hd98nz4TDNv0HL38t3JatLsyoHu1vIU8w7NAkUJ/z6RH8/GYT5Jkc2zPGPqix4L
         jW7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mkUX197DVePTxE2t9F9PjkDkWIep7EyWiXDx3x6T++8=;
        b=izmIfdl3uGF/yT7Z5RWPQU1DvMu+8sdpikHw6rzp7PToMDQ6BGD+eAP/cj3OoxO5Za
         wfglgYRw/seEHS3fXl/u7S0It5Ee/FbeVZnP+V/phlMxqX+BG4mGqaTJlXVA6MwUv9ut
         vKoKwGe3rhLo8ZoVmxtj2ScNF5UsM131lH/3hxpO9Wv97TKJYyU1A+E8oiH0/fQAcjJE
         lyFnxzekzvGdPUpBZ+w5fOPFh1PnXFi8nbgBPs9NBK5YpQ3ubDuS71bnFxgITrgPS8IW
         hiHCc1OrlSKLVXyruoytU0QkR/RHjKGJj2Nrt4/ysv4/R8tEFmnF2EOmNE1iRZfbks2I
         zMrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NpzH1ItU;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y204si887747itb.0.2019.03.10.10.46.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NpzH1ItU;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r124so2203010pgr.3
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mkUX197DVePTxE2t9F9PjkDkWIep7EyWiXDx3x6T++8=;
        b=NpzH1ItUFJ7b/L0JHm8zojWQIUY08FxOTAy11fDRgYsMSw3DvbccBiD3Xo66rPnWXQ
         fiIFBXO3fX2mJ9J/hglEjJR+IljejVyYb8820BpMYZlW5Z7DZAosPSyPxQ0v2poxfMxz
         wDxDzHF/5eR+gkwd0xGw5inSzWshOtFOeMuyW5qjjX9enK57yHaoJVjx4Lv+JRlSLmnC
         wTNAGDUnnJOlil5lDIa75smt3EMrnhhIkDerCx1gbcSvTl5ntsIVtKfbz3b7tsTMrcL3
         ETM0HDOFbebvelTdRpWUfryphFsEeGxfmM8ZM+3Cbkvex1InfCN1tdgQXXD3uztIW3Jp
         nktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mkUX197DVePTxE2t9F9PjkDkWIep7EyWiXDx3x6T++8=;
        b=KbPz74V3dQUuxUAro44cMxYkg3OTwr3GeYiCGQbOXdjxDTJuTgfSs5SoMGasgqe0h5
         Ll37axjvwk9jbgS9xFJ6tkLUgqMr8jnwgMYRm2Gpy2E6ng+MLWYcgu6tteJoiNYyNqBK
         uGfJ7H4FAhSe/rQ1pEwGNH7mUi02bWRv6RCHDfrzfeF4B4d52/DUcYoAo152qHhkiIW0
         rFMEkyqr+xfQ9t1qfpZ9c+QqfanXmOaHbIpKlm3RKMdON+kcs/yU6Ipr+K8DJXDiVJUX
         U4oXWJzXlnP8pGUj4SBR1xPEzGc2Vwkj98QHphsCLIp8pWGPMaQtF89R2jDorai6ag4Y
         RqBQ==
X-Gm-Message-State: APjAAAUHhiKMix7H4MEsyVGo7AjPY2Txe0uT6iHvIVblQuIhh8JhwG0j
	USJOCVFZQhXln7aohckmPP/idC8089g=
X-Received: by 2002:a63:5317:: with SMTP id h23mr2025991pgb.437.1552240017037;
        Sun, 10 Mar 2019 10:46:57 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:56 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/5] Staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
Date: Sun, 10 Mar 2019 23:16:34 +0530
Message-Id: <20190310174635.16923-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_LINK_DETECT_T and *PRT_LINK_DETECT_T of struct _RT_LINK_DETECT_T.
-Change Structure name _RT_LINK_DETECT_T to rt_link_detect to maintain Linux kernel Coding Style.
-Replace occurences of RT_LINK_DETECT_T to struct rt_link_detect.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 152854fc09f8..6986b51b37c4 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1586,7 +1586,7 @@ typedef enum {
 } country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
-typedef struct _RT_LINK_DETECT_T {
+struct rt_link_detect {
 
 	u32				NumRecvBcnInPeriod;
 	u32				NumRecvDataInPeriod;
@@ -1599,7 +1599,7 @@ typedef struct _RT_LINK_DETECT_T {
 	u32				NumTxOkInPeriod;
 	u32				NumRxOkInPeriod;
 	bool				bBusyTraffic;
-} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+};
 
 
 struct ieee80211_device {
@@ -1876,7 +1876,7 @@ struct ieee80211_device {
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T	LinkDetectInfo;
+	struct rt_link_detect	LinkDetectInfo;
 	//added by amy for ps
 	struct rt_power_save_control	PowerSaveControl;
 //}
-- 
2.17.1


