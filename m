X-GM-THRID: 6331276678266880000
X-Received: by 10.129.49.195 with SMTP id x186mr1203297ywx.92.1474115224793;
        Sat, 17 Sep 2016 05:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.94.20 with SMTP id h20ls1640685itb.5.gmail; Sat, 17 Sep
 2016 05:27:04 -0700 (PDT)
X-Received: by 10.107.44.11 with SMTP id s11mr12178526ios.11.1474115224306;
        Sat, 17 Sep 2016 05:27:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 142si5227952pfx.2.2016.09.17.05.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:27:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so4611929pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7hWXAnMRdp9dyI9mhY3wzHjA3BSENAT/rE8sNlHQVJs=;
        b=0KeIehM1FiZORaUnsSxfxdkHPdNHGoGHOPZeEQldcnZ+NOfSNOVcsZmkk/qUQh4hsL
         4X9wAo2jWcpmPS1Txvt0XZ3Iz8OsIP6I0dB8uiCNuI3WIM7N0BggRKTAO/GtozB4yt+v
         FFDI3HieePJzK+yssbJNER+tDzNAF1MDHEnyuGWCG4ELpeFPhZhn3cSB/9vxCiKlWVld
         laB8m5KfNNNIxfu20yAYb7PUf6gJmToCFARmENsRvrH6KyXhlJ3MRC6Ogu++zf5aUDWN
         RK7b51u5YgnsRY34gEZKG69BMjeSQCe3rapceRiq17fbSLcrljsuPL9966Dxghxnb4Tb
         ZPWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7hWXAnMRdp9dyI9mhY3wzHjA3BSENAT/rE8sNlHQVJs=;
        b=S+www3EfcS6DYuZfd6M92OQurCYhbe6Kx55z1WKSae0kgOb0DBw9FL548KeJNPcKet
         zCYYvxcMjgxQ8MQwXb1PIMrAcX9NmodF2yzgqjCDGLVZlrNsfLPTbJaHNHJYfb7lajd2
         I4GqVk3Jnssw7yd9M5vUjkrKeZP77hbcImFtN13pj/ZWKrx4JgOGk9AOz8kjoppKpyVU
         FF9TB0HgDX91GiSXg4ZZvy4a5QmScpsH9P1iJ7Osc5sbLCAtnXbiEMXW+u6Yt2O1smSp
         0stZVRzYn/THgooyAy5zJmQaIKZ++gZrflqvUOKMeHXkNVCP5klidD9utK19WhCfj1Gs
         ljYg==
X-Gm-Message-State: AE9vXwMQ6KbsOILmdeqmc/Uq6xN3ABNr/8Hjy8K7/U4hdDGYXyT5IDJdFNKJOIwENsXt5w==
X-Received: by 10.66.148.68 with SMTP id tq4mr17004504pab.160.1474115224142;
        Sat, 17 Sep 2016 05:27:04 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id h84sm18888286pfj.38.2016.09.17.05.27.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:27:03 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:56:59 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhumika Goyal <bhumirks@gmail.com>,
	Punit Vara <punitvara@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rts5208: rtsx_chip: Add space around binary
 operators
Message-ID: <20160917122654.GA6667@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around binary operators to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index bcc4b66..c75493a 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -760,7 +760,7 @@ static inline int check_sd_current_prior(u32 sd_current_prior)
 	int i;
 
 	for (i = 0; i < 4; i++) {
-		u8 tmp = (u8)(sd_current_prior >> (i*8));
+		u8 tmp = (u8)(sd_current_prior >> (i * 8));
 
 		if (tmp > 0x03) {
 			fake_para = true;
@@ -2288,7 +2288,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
 
 	ptr = buf;
 	reg_addr = PPBUF_BASE2;
-	for (i = 0; i < buf_len/256; i++) {
+	for (i = 0; i < buf_len / 256; i++) {
 		rtsx_init_cmd(chip);
 
 		for (j = 0; j < 256; j++)
@@ -2304,10 +2304,10 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
 		ptr += 256;
 	}
 
-	if (buf_len%256) {
+	if (buf_len % 256) {
 		rtsx_init_cmd(chip);
 
-		for (j = 0; j < buf_len%256; j++)
+		for (j = 0; j < buf_len % 256; j++)
 			rtsx_add_cmd(chip, READ_REG_CMD, reg_addr++, 0, 0);
 
 		retval = rtsx_send_cmd(chip, 0, 250);
@@ -2317,7 +2317,7 @@ int rtsx_read_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
 		}
 	}
 
-	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len%256);
+	memcpy(ptr, rtsx_get_cmd_data(chip), buf_len % 256);
 
 	return STATUS_SUCCESS;
 }
-- 
2.7.4


