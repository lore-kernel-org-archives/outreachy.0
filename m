X-GM-THRID: 6395630061335085056
X-Received: by 10.25.157.14 with SMTP id g14mr2735231lfe.28.1489165116581;
        Fri, 10 Mar 2017 08:58:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1054493lja.32.gmail; Fri, 10 Mar 2017
 08:58:36 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr3425504ljp.31.1489165116214;
        Fri, 10 Mar 2017 08:58:36 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id f7si265339wmg.3.2017.03.10.08.58.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:58:36 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id g10so12306998wrg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2OoyuGHauTyMLIU4wZSS2s4x8KI9JnRimqvdEMowvDQ=;
        b=jpFrTP3IrdSayY6ip6psyRKEgbuwYsT5V2oGC45+hiBYuAgG2XDN9RlCskvgwkyPgq
         TXuMqwJ+oxDrXFMngg0SskSkZKMx+b62vdtqeaK3Vm+fXfHT1ec8MFlDSmfie8iBMcMk
         nMy+eXru3e8qTwoWYjAru2afgrdUqm/Ms8mFIyLRqi060aGZE8OOYiQ79Fvx5TpF6L6N
         S8FBqUGqEpJJ6Z9ibBOoFnlMUdKvLc3puHocbGN4DFNGeKZKn/AzVJFKO6k2dvp1npGH
         r1jgELygPiACM/SaeHTSH+mckax4xFN3mLS2/1GzGKiuEqH6xxrIRVAATT059wSTIEoy
         05pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2OoyuGHauTyMLIU4wZSS2s4x8KI9JnRimqvdEMowvDQ=;
        b=hd0tRkFFSxi4SqkE8Z47iCs5D06r7kPc13vi3P6GxOZSVXGLDqMGob776vCAVvEl3H
         a1YunTGHjbqK7KAPem8QZUVaB2MUyWJOP+X1Bd88rEOSpGmvVls4vCq7CEFW9hOi2Fa8
         wVFaDraFHKrLfPTSUoBAnkDkVB+S1bsWB1VBHrCs0ro7mhLxK8RzmFpOeImWNapGN5dI
         SPESm1qdzFbFNp9Mh+PrtcBWqhDOU4BtvdmbfpwFCnFfMVq09+58EIbfkOiFhxKnXbsf
         T+29I/VAm5MMhQdAuS3xc50tqt8DLGDn2Wu0i+DBAFOzpt4mRPrISFrEB/B4G67XaWv3
         vACA==
X-Gm-Message-State: AMke39kIjMmjZVhdkvsz0/yX60+1igxlTDWjY4dC6HO0/jSMC7PinZP3yeWq8k0WdFUZoQ==
X-Received: by 10.223.166.244 with SMTP id t107mr16395258wrc.80.1489165115972;
        Fri, 10 Mar 2017 08:58:35 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id m188sm4079785wma.27.2017.03.10.08.58.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 08:58:35 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/4] staging: wilc1000:  Enhance code formatting
Date: Fri, 10 Mar 2017 18:58:33 +0200
Message-Id: <20170310165833.4033-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Trims line size at 80 characters wilc_wlan_cfg.c file by moving a part of the lines in a new line.

Fixed the checkpath.pl issue:
CHECK: line over 80 characters.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan_cfg.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
index 926fc16..fed66dcd 100644
--- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
+++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
@@ -217,7 +217,8 @@ static int wilc_wlan_cfg_set_word(u8 *frame, u32 offset, u16 id, u32 val32)
 	return 7;
 }
 
-static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str, u32 size)
+static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str,
+				 u32 size)
 {
 	u8 *buf;
 
@@ -298,7 +299,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 					break;
 
 				if (g_cfg_hword[i].id == wid) {
-					g_cfg_hword[i].val = cpu_to_le16(info[3] | (info[4] << 8));
+					g_cfg_hword[i].val =
+					cpu_to_le16(info[3] | (info[4] << 8));
 					break;
 				}
 				i++;
@@ -312,7 +314,10 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 					break;
 
 				if (g_cfg_word[i].id == wid) {
-					g_cfg_word[i].val = cpu_to_le32(info[3] | (info[4] << 8) | (info[5] << 16) | (info[6] << 24));
+					g_cfg_word[i].val = cpu_to_le32(info[3]
+						| (info[4] << 8)
+						| (info[5] << 16)
+						| (info[6] << 24));
 					break;
 				}
 				i++;
@@ -332,7 +337,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
 						i += toggle;
 						toggle ^= 1;
 					}
-					memcpy(g_cfg_str[i].str, &info[2], (info[2] + 1));
+					memcpy(g_cfg_str[i].str, &info[2],
+					       (info[2] + 1));
 					break;
 				}
 				i++;
@@ -478,14 +484,16 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
 				u32 size =  g_cfg_str[i].str[0];
 
 				if (buffer_size >= size) {
-					if (g_cfg_str[i].id == WID_SITE_SURVEY_RESULTS)	{
+					if (g_cfg_str[i].id ==
+					    WID_SITE_SURVEY_RESULTS){
 						static int toggle;
 
 						i += toggle;
 						toggle ^= 1;
 
 					}
-					memcpy(buffer,  &g_cfg_str[i].str[1], size);
+					memcpy(buffer,  &g_cfg_str[i].str[1],
+					       size);
 					ret = size;
 				}
 				break;
@@ -510,7 +518,8 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
 	size -= 4;
 
 	/**
-	 *      The  valid types of response messages are 'R' (Response), 'I' (Information), and 'N' (Network Information)
+	 *      The  valid types of response messages are 'R' (Response),
+	 *      'I' (Information), and 'N' (Network Information)
 	 **/
 
 	switch (msg_type) {
-- 
2.9.3


