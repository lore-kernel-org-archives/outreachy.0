X-GM-THRID: 6669057124685840384
X-Received: by 2002:a37:4989:: with SMTP id w131mr5425781qka.54.1552760876531;
        Sat, 16 Mar 2019 11:27:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b927:: with SMTP id u39ls4863895qvf.3.gmail; Sat, 16 Mar
 2019 11:27:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3WRXJYbUkRrozTTTBAgeR27LQL/Ug5X44Gzb1w9wwcH0+4NbZHSBEjQPdz5E/8IXDD925
X-Received: by 2002:a0c:92d3:: with SMTP id c19mr1345225qvc.38.1552760875796;
        Sat, 16 Mar 2019 11:27:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552760875; cv=none;
        d=google.com; s=arc-20160816;
        b=OLWrWrnx/KP9fdv02JN3oyo88g3dIgO8PE07LFuq8lezeM+TtloxdE2sQvPIbIhcZu
         RPhMzxFZd6Yt4iIsL6VNnrEwXo6V2KTMW4H3Rtqy1ijS+MStl8bO3uaeuMeXfXhCW3UQ
         RKXZk5EKBQKg4PpO5WlescQeZYxDeXVdhm/u23/0rozImg+201ZnoINdIuA9gdMNdAsP
         IbXyYDBzAzsDuQnrGT/HcypjOhp8xZpqqkcW9ZkC7eZWNmroKHklxbZ/CB7B1EboL8M8
         8pfQFD0BnwN7KXLejAAY2U1z3c1zfyXFA2AcKslRoC53ONtnH6JC6um9CLb2QUdAhmJ5
         909Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=baOHwY5a/DeRD19BRRrk4bsjwtyzT6EyN0sgAPcVFq4hUnMyBEox443poxe9Szf5A4
         8aI/xVWsrj2Eqa04wwClMIno7+CfFjW+k1KBOHGxuEitKiJa1eP2ZnEpyGe2E93CKAf1
         nvonKdWrLiI0h/kKraBYIpgIZp/oq/HMRi2qIt4yJ5pxoKcuWU8XD+ZcFnESNV7U6R3z
         /phLUn/xcliZYUV/vRR40RCwT43Orj4hUgGVYA+MFQN7UxGAwaFA72xrWNsEz1Ly2nH5
         IKoK9xd7vaSuLlHAwwHkXmwc7QLHLWuB1SRVj/TuEV+7Ufd7CPbwGkSM50hLdzijHkEr
         QIIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyvYu1BP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 27si376850qtp.1.2019.03.16.11.27.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyvYu1BP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id d25so8510937pfn.8
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 11:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=gyvYu1BPM1V05DKtjheYWcD8vpUCz8CJtIKfRFRkS4RjUMP3tqcipxDr+oHzRqfWoS
         Yy54OGaetiEr2R4faHVFQs6D5FzSdHH3R+z9T+03hDmWlWYmqBrfDZyWrdUki+Uxp0IH
         kHTVDrViZfjrYTO2BzefbWwEubZh4va1RlAth1zitxWnHZTjppts7LUJS58g77qWOZmM
         KNEBcGiVQBdwL3CiFhyxnhHP1yNy1P340+1oPxHUToYTctMY+PIuRV6AvriEExxzXm+p
         cwfqzQA0zoKgaqIG+XPRhbuI62mkovXSiQ3uEqVkj4LZfHMFxFS1P6UNdej8nlfLAxNJ
         +3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cr0OAsQ1ZyFiswrR1lSWyaUjBVEWjIl4Aj7e9ep03YA=;
        b=akezm78CJxMRXV05EvBUvcLP9JOqHOn0Gok9HSPrygKDMPsN21k6uMTMjAorURkfNF
         QgCqbaRVMjKvBCZcpYnbkYV7V47ofQ60iJVypKO4O/rJO9TCcRK3PiJgdFWbrpT27+a9
         HdpSZZyC3YQodmEiCsUhMGPkUXq1r0bkYgkgHv001OJnZFAd45tzNtbgmEnqU8aA9a+p
         weXY2V6OL5yBRW2m6WlU5cXXFbNDDXB7oFXT4PCa+/4wBLC9aPWpDQWEnAxc4vkD73dN
         A5YRGqTvute5q5W1h1BfBNB+/GOCBJobxXucOFpgXYvjcW1umLpzZKpgi6iY2cJzWEh+
         wqnw==
X-Gm-Message-State: APjAAAWy3cV/v4Yi818OrznOnw4hzYx2wryOMMY/MOVcYn/6kyDWltnF
	PwE+okjhNx6DsS3EBUjPc4A=
X-Received: by 2002:a63:c909:: with SMTP id o9mr9542231pgg.432.1552760874881;
        Sat, 16 Mar 2019 11:27:54 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id z15sm9187221pfn.30.2019.03.16.11.27.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:27:54 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 6/9] staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_cmd.c
Date: Sat, 16 Mar 2019 23:15:40 +0530
Message-Id: <20190316174543.36254-7-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316174543.36254-1-himadri18.07@gmail.com>
References: <20190316174543.36254-1-himadri18.07@gmail.com>

Remove comparison to NULL in file rtl8723b_cmd.c. Suggested by
Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 9f4a10aaa774..fe3891106a6d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1480,7 +1480,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
 
 	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_871X("%s: alloc ReservedPagePacket fail!\n", __func__);
 		return;
 	}
@@ -1620,7 +1620,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 
 	/* if the ap staion info. exists, get the kek, kck from staion info. */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-	if (psta == NULL) {
+	if (!psta) {
 		memset(kek, 0, RTW_KEK_LEN);
 		memset(kck, 0, RTW_KCK_LEN);
 		DBG_8192C("%s, KEK, KCK download rsvd page all zero\n", __func__);
@@ -1856,7 +1856,7 @@ static void rtl8723b_set_AP_FwRsvdPagePkt(
 	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
 
 	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_871X("%s: alloc ReservedPagePacket fail!\n", __func__);
 		return;
 	}
@@ -2069,7 +2069,7 @@ void rtl8723b_Add_RateATid(
 	u32 mask = bitmap&0x0FFFFFFF;
 
 	psta = pmlmeinfo->FW_sta_info[mac_id].psta;
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	bw = psta->bw_mode;
@@ -2107,7 +2107,7 @@ static void ConstructBtNullFunctionData(
 	pmlmeext = &padapter->mlmeextpriv;
 	pmlmeinfo = &pmlmeext->mlmext_info;
 
-	if (NULL == StaAddr) {
+	if (!StaAddr) {
 		memcpy(bssid, myid(&padapter->eeprompriv), ETH_ALEN);
 		StaAddr = bssid;
 	}
@@ -2176,7 +2176,7 @@ static void SetFwRsvdPagePkt_BTCoex(struct adapter *padapter)
 	MaxRsvdPageBufSize = RsvdPageNum*PageSize;
 
 	pcmdframe = rtw_alloc_cmdxmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_8192C("%s: alloc ReservedPagePacket fail!\n", __func__);
 		return;
 	}
-- 
2.17.1


