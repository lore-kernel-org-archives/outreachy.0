X-GM-THRID: 6468535394097954816
X-Received: by 10.129.43.68 with SMTP id r65mr6797550ywr.210.1506073259001;
        Fri, 22 Sep 2017 02:40:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.100.2 with SMTP id y2ls1389334pgb.26.gmail; Fri, 22 Sep
 2017 02:40:57 -0700 (PDT)
X-Received: by 10.101.78.145 with SMTP id b17mr5272382pgs.148.1506073257904;
        Fri, 22 Sep 2017 02:40:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506073257; cv=none;
        d=google.com; s=arc-20160816;
        b=px8JFFm3JCXDJHrI5cBqARBOUQImZKernLVsSH+BvNtG+uFEnMVF9LLeNxha4xGQZw
         IQwTpTf0p9FqTCoE5MgZKRoe3yDNYWWi7S0h27q6xllLiCS2dkG/dKt5+2tLV2LWM4GX
         EeZatMdNk3V1lNW7OAqoe9TyC8U5YaRiUoF/F3Ee1ecp57ZMfNLD3d01K1yqOdrJJaeD
         EGP/eDPYBI8Kjo4j9qELDNWLv60vfimCUDrtyJP0gb61n0BdYWDJio1jDxfXlwLZ0CgZ
         t745nXcRasSFb7j5S2wanxdu4DZEHmEfVa56E67FbCiBWEMotmn6O0gG5VR4eMR07+fT
         hhHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=y9eluzdy3pNsWbebk1Z12eQEWWZTr4Jmg6lfxb7b+Ug=;
        b=vtYJZd2WoFL7BurWaYpxjlnDl5nXIgWfsbSzr5cvFt8rNwB+/jX1gwb1Ijv1fLLoJQ
         qA0hqRT1dRHAA2pUE+B8F2fsxw92v8iRy7DvCjjAgoMYC/bpEa38l5QgtqBWfNoxzEK7
         FJeGcb/XeCJ9qKSFMRegtAL0t7/DssXAaOzvtfAEH0r4XhlZVF/ZpZkliYAtAiqnmmep
         28EXDjRN3WuPceMmhZmVgo6kYEp+HLlhOyIXqy5r97jjQdy9bWpmovPR7ja/hs1i/G1W
         JLqmQzDHlFp9piHz4OYa0Kdz80nuUGQyEu6wLDgDGOgA5wOYgzic9+kXK0wOS3Ots+mS
         g2rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z+Ho8ySK;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a83si226979pfl.25.2017.09.22.02.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:40:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z+Ho8ySK;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so258555pfi.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 02:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y9eluzdy3pNsWbebk1Z12eQEWWZTr4Jmg6lfxb7b+Ug=;
        b=Z+Ho8ySKph/TlZFTYwlY7vWV3c5ELhjP4tGTTOuH+BheDyn+Ne2MadTfXCC/NdYp55
         4v54jmQga7nTwa+n+ezsX8AHkddz/VlVSHc3UcDXhjt7CaB6jquU+QRalZKr+fIRiZcK
         W8Fzm8GYL142ExztcbHTzg8gmWYuxMNwEIJ35qBnRC/TDxwy0UnnPhzwx7B9/HHf4YiN
         Yu6zp9lgggAFy8Y97oG9k8EwVhb5TrU2/wHd5Yu7YIjjSb4xspgvnmDWVZDGFOzGaF4N
         QbCJI45esHsVvflUACDlKjgfAlE7UaNmqMe16TjAqiuKRMMAj418uG4y05/bEQ8CmKOk
         EFvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y9eluzdy3pNsWbebk1Z12eQEWWZTr4Jmg6lfxb7b+Ug=;
        b=W1gNFJDwuCRTxlPO8TPYElqzg0Z+4Qu7pEYewBDVuetdq88Fk8IwpCiwgS+6QRzUD+
         ATb63GbOUC2o+lpxXvJu2OiJYTt4ZOIVIaNm0ekeJptKm+smYFvl4lxTeQKnyPa+Ujm6
         30wC0ovziIuDvRmUNC0YNHRTfHbn3zt1JD51/s0jIqd5QtDInSPVouYTjYVwbykK/eRX
         XS7JKZcziwF68NxALiizH8WERjRQTpAE2fMPdskHmwO6qfnNIJho5+AbAm2g4aG53g8P
         +H0p3pSM2FdAtiAYwkdxI7ab03cNVpEBAK9lJeG881VF6TMoUVkiDJJKFjSu6w7u3Gfq
         fyRQ==
X-Gm-Message-State: AHPjjUiR/lSOSUnBFPOg1EAeUNChjIcKQMT/d1w1PgHnfZPFoAayr1aD
	8Ji+5HJnyrToiv00PirzQbI=
X-Google-Smtp-Source: AOwi7QBO/w5NxwHwHvdsgSvnWibNz3AnkMyfAHy5rv4n767EEQUurcUDTJ2rDXwdF9vEQKmfA/wl/g==
X-Received: by 10.84.129.193 with SMTP id b59mr8675537plb.200.1506073257608;
        Fri, 22 Sep 2017 02:40:57 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id b7sm5403674pge.79.2017.09.22.02.40.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:40:57 -0700 (PDT)
Date: Fri, 22 Sep 2017 15:10:52 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: remove unneeded conversions to bool
Message-ID: <20170922094052.GA29313@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch suppresses the following warning issued by coccicheck:
WARNING: conversion to bool not needed here

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..2db2ca6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -707,7 +707,7 @@ static int issue_probereq_ex(struct adapter *padapter,
 	unsigned long start = jiffies;
 
 	do {
-		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
+		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
 
 		i++;
 
@@ -1283,7 +1283,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
+		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
 
 		i++;
 
@@ -1410,7 +1410,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 		da = pnetwork->MacAddress;
 
 	do {
-		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
+		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
 
 		i++;
 
@@ -1517,7 +1517,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
 	unsigned long start = jiffies;
 
 	do {
-		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
+		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
 
 		i++;
 
-- 
2.7.4


