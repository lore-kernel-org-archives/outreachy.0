X-GM-THRID: 6528054471582285824
X-Received: by 10.176.20.146 with SMTP id d18mr1303556uae.96.1519931124303;
        Thu, 01 Mar 2018 11:05:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.124.135 with SMTP id x129ls3905989vkc.9.gmail; Thu, 01 Mar
 2018 11:05:23 -0800 (PST)
X-Google-Smtp-Source: AG47ELtnRzVjo/30C8qCblGKzfHo0GPvzYRUs6dh4ioPusU1caWwUPfwcfRztlYS3MV6obbcOsRa
X-Received: by 10.31.244.132 with SMTP id s126mr1282131vkh.8.1519931123465;
        Thu, 01 Mar 2018 11:05:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519931123; cv=none;
        d=google.com; s=arc-20160816;
        b=uUMWgTLGYg/k2Uif7BX79Zq2CcADy44o9F6U+al+HvKDHPddLNC2HK6LrMfnbjOjX3
         a5Y0lxvrOG6IuuDt3qwEadI3btLi8/5kpYfPWJjoEZTuOB1ZqbZxewdx9t+CwW78TSZB
         Gu8TtyFH8mA09CC2TA5+QvyxMYdzqEDw5Uzhxd9JBhrwityoXjIE5v5Pi24QqShRLq4f
         EXHDPvBO/1jyNMS9OmTVESDLGI/lHZC+/OoIKi7ESt5ARWc2EMHBVoKhyJhFVTCC7L41
         TeGn2a1L00LSClehP9WtcsjswnPM8+jmDXQeSTI9PU7VjN3ag8IkNZyrFcpwryEHUJ8N
         YcSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Cte7jvfcg+2U7mfdT14sOqfvx/VIniSt/wvsUzu6pVk=;
        b=fz6byu98dMQMOS1JzqI3sZp9y54EPJX0kiGlINyCS7v87gF00+hVhJ75h4cDiVG1YX
         EjpEbUxfHNEcT/YX/UYW/iuGoIPLSZva3IqnGgMrof6AhZ0AlSzD3Lb7zuBDeheE3W82
         QDmxt/puHIzS5g3uzQNFOS6Vd+x0+8h1RX4K75HZunQY+es7CXKx095p1+LroQM0/nhw
         9J0HIXwVJQFYVsTKQnZ1Lnkmvef2Ajt1ID/R+3dviqsjn4t3JWvMEX81sAAyrpBtL17Y
         QrTPDo8sZDP2HGxcLscvqWjCY6bu5Sdsv8M4oaOeqLoPmWaNc56tgfIylSGZRGubCUsA
         Jafw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gePXvKI1;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id x135si277736vke.2.2018.03.01.11.05.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 11:05:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gePXvKI1;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x242.google.com with SMTP id u13-v6so4196435plq.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 11:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Cte7jvfcg+2U7mfdT14sOqfvx/VIniSt/wvsUzu6pVk=;
        b=gePXvKI1bcrt+DCUEDGMBkiYHQXlkoD0GdJV1ctrdQ9a+jpNmmHrupTY7UR/ER8TuM
         NogbTTTVtmnY6ZyWMj7nPdmKUadzwZZIgVyMKlHErHfbiP9SCol6vqhUBa54p4Gh7G0s
         DmNNzmi5Cnilhs91QdITkRIyGKb1Evoz+mBOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Cte7jvfcg+2U7mfdT14sOqfvx/VIniSt/wvsUzu6pVk=;
        b=gyW8kuE35wksX6SOshcRLAkK2CNBbyeoy/r8hcWFhuFRi0PlT1T+U7dzeq/DUapIwt
         YZhWumbCm4nY81MnZxW1AtZivh/M42Qdwn/xLRF8mIkcbcUV0lQ93jCD+KtGzXnXa54N
         JcM5wzFlrfP/dioIxKH3+bzwsNEGA2zuBusUsbEgap/4IHkij3avjjdRHeQoB7bS3yui
         IvKyMqsHyYCKb2fkCA2bThqgxprJq3V/8PFoXjQOlaLiimxsI72VfSkH5hRl1bNMATer
         t5Qj9Z754KFtE3KRCBkKPdDddRNgvIB0w84aONO5N/YDOWUQO7vmQHhhutkFr7wfmZsc
         PYBQ==
X-Gm-Message-State: APf1xPC96mZjUkArzKHugZnLrWqT0S8KUTW/CdbHPE9a9gkpgb+dcU51
	Ig7GqbrO6oMtiK/OEwILhSocaDFN
X-Received: by 2002:a17:902:d682:: with SMTP id v2-v6mr2818298ply.348.1519931122123;
        Thu, 01 Mar 2018 11:05:22 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id e5sm7176269pgs.17.2018.03.01.11.05.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 11:05:21 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] staging: ks7010: Remove spaces after typecast to int
Date: Fri,  2 Mar 2018 00:35:10 +0530
Message-Id: <1519931110-2763-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Remove spaces after typecast. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Revert to typecasting after removing in version 1.
 - Remove space after typecasting.

 drivers/staging/ks7010/ks_wlan_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 482af50..91acf87 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -208,7 +208,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
 	/* for SLEEP MODE */
 	/* If setting by frequency, convert to a channel */
 	if ((fwrq->e == 1) &&
-	    (fwrq->m >= (int) 2.412e8) && (fwrq->m <= (int) 2.487e8)) {
+	    (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
 		int f = fwrq->m / 100000;
 		int c = 0;
 
-- 
1.9.1


