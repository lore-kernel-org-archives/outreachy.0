X-GM-THRID: 6332004037860261888
X-Received: by 10.157.35.113 with SMTP id k46mr4346875otd.124.1474284575963;
        Mon, 19 Sep 2016 04:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls10078654ott.0.gmail; Mon, 19 Sep
 2016 04:29:35 -0700 (PDT)
X-Received: by 10.13.194.69 with SMTP id e66mr3860987ywd.152.1474284575533;
        Mon, 19 Sep 2016 04:29:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si4599936pab.2.2016.09.19.04.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 04:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so4219312pfl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 04:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l0ipzuOSOy/OYlbbwPSnQ1KMcWMkaNihEYV4hLCkw+0=;
        b=ZG9Eidnh8JWy+3KRGYTY48iuDxKJTCGAouRwws4Wfmdc/4sxYzlJmx6aVS7S3wozkg
         9DZYNlTtf7d6vlfiZGN78LoaX4llmNCX7HVbNABAPXVVr2/hnb+DdT/JUMDwu3jp+Tji
         ONQFqFBbwVRNcYgEK9QE5vbvwATWq9VroqLGPTddq6Uxx0HS4Uv4erUWy/Lfm1+6O6DU
         wvD8dUJrwaEmYgUvfk26+uWDHbihsTGroqWiGxo59b4+sJQzQpTdNUegNpBoQntnLq9i
         4r6ymkyXn9QjUO56qxBaagVGamdeW2q9purGkS7x/kY0aMQGahuj/8XGAUjqGS42tWSg
         gJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l0ipzuOSOy/OYlbbwPSnQ1KMcWMkaNihEYV4hLCkw+0=;
        b=A0ZcFaK7FPCjBlH5Nw03jR6eDXw8Yesj+7dOaPOgag6KbCeZuMDchi0eKY3RldUoGY
         d7diOnREN4mXyeoR7eD/VSIJoStgs/n69whAAhpZwCAFESoGjbLZ4nXeHKV8x1Mctsko
         GBS/4l9bNibP9IqN1iOT8FE9Lod1syXoGmiWomMr7VtRJIzoyPOiLNn1BEfl8Je+P90s
         92TmtHfbCc3J36lFTc1HrfRg0/EZhowR60Qu0FgUZL1iNsGSDf+9nIPKhcpMvRU9zesW
         LGecHtgsEfKXassv6b1lo48fPDl1M/0XkQXxEY63F389rkFKpc9ER8qAjMgNeSrtFpqc
         UA2A==
X-Gm-Message-State: AE9vXwOaV25MOpEVj6IRYKm6EvSYL1+uHYnGo8PzLqI2mDQVOeYT1qoRTYssxmld4BQ8MQ==
X-Received: by 10.98.104.71 with SMTP id d68mr46323706pfc.163.1474284575331;
        Mon, 19 Sep 2016 04:29:35 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id f7sm10196252pfk.79.2016.09.19.04.29.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 04:29:34 -0700 (PDT)
Date: Mon, 19 Sep 2016 17:00:16 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rts5208: Add space around operator.
Message-ID: <20160919113016.GA3928@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around operator. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index c75493a..a10dd62 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -743,7 +743,7 @@ static inline int check_sd_speed_prior(u32 sd_speed_prior)
 	int i;
 
 	for (i = 0; i < 4; i++) {
-		u8 tmp = (u8)(sd_speed_prior >> (i*8));
+		u8 tmp = (u8)(sd_speed_prior >> (i * 8));
 
 		if ((tmp < 0x01) || (tmp > 0x04)) {
 			fake_para = true;
@@ -2336,7 +2336,7 @@ int rtsx_write_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
 
 	ptr = buf;
 	reg_addr = PPBUF_BASE2;
-	for (i = 0; i < buf_len/256; i++) {
+	for (i = 0; i < buf_len / 256; i++) {
 		rtsx_init_cmd(chip);
 
 		for (j = 0; j < 256; j++) {
@@ -2352,10 +2352,10 @@ int rtsx_write_ppbuf(struct rtsx_chip *chip, u8 *buf, int buf_len)
 		}
 	}
 
-	if (buf_len%256) {
+	if (buf_len % 256) {
 		rtsx_init_cmd(chip);
 
-		for (j = 0; j < buf_len%256; j++) {
+		for (j = 0; j < buf_len % 256; j++) {
 			rtsx_add_cmd(chip, WRITE_REG_CMD, reg_addr++, 0xFF,
 				     *ptr);
 			ptr++;
-- 
1.7.1


