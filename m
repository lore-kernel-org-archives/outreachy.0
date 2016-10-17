X-GM-THRID: 6342252130050506752
X-Received: by 10.98.8.1 with SMTP id c1mr6276233pfd.21.1476670645622;
        Sun, 16 Oct 2016 19:17:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls12530017otg.13.gmail; Sun, 16 Oct
 2016 19:17:25 -0700 (PDT)
X-Received: by 10.129.120.196 with SMTP id t187mr5786217ywc.65.1476670645320;
        Sun, 16 Oct 2016 19:17:25 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x14si3747865vkd.3.2016.10.16.19.17.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:17:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 130so4763118vkg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 19:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XSdzMyKWpeQyyT8/P52sqpsqpOC/vMEFfyC8H9E5aOw=;
        b=xceg1X56dhOSW/rqmnRgcHVTAiBKyzKitVYidEyoX2HYg8pMVivV856xpAjgWEXGrO
         8dXoCL3LMyryiiUDh1pDspN09gKggX6Pgc/5h4xWnPNMT4Bb7D3WBLmhXIzd43XnBcL+
         Fs1zNThvfcVEXFWXoQZVWRe4tfN3JFndoHoEYnPhJ9/0foMXaotRx2ny5Sb71wyHmPlz
         Blau6VVAGAuFIg9qHwaKucbtUhcnO19pCZyg3rx8+20gbq9o7+9ElvOWy9J9Bqb8gMfd
         AmebJmUbsUjnxTd13ncN7QXZomM1VfRyzQutENAan7rMPP0OJMNmxeFEvQ7hR7Jar5jH
         uLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XSdzMyKWpeQyyT8/P52sqpsqpOC/vMEFfyC8H9E5aOw=;
        b=B4JZsIjTGQbNQY0A0Itw2WUBbypvcArzLFfDx2hTltLYqoGVoNz2k3RaBJ8ezL+r/1
         9bRPqMXw+Ec+v0g+6uoVC1bOOkmxk9urU61/QjARhFk80+pfvB57yfIPCeYnTMdzwLAY
         wfYbddKdBvRcow/NwcQKAejwQHdRBXYwMLHktyHP6ZZZ7M77GX+z5ZryT8I8i152sPhN
         HL53L7oMKe3O0vGTgESgcDfZV+esErnTB12exAglD/lssrlwI4a1ZaQ3vf+wDqQKEyKO
         EM+g0rxi46HWk2IN8iP10lCnnnYifqVB/smCkmD1b4mlTxXPU1XLaYv09x7Ara6hEbwN
         uODw==
X-Gm-Message-State: AA6/9RmbVocTmoBc25sc/3gaC3cimZ6yNKW3Q3b+Uwqbn42TPIKMr1s3vizBe8LfsfJCgQ==
X-Received: by 10.31.188.67 with SMTP id m64mr7160211vkf.155.1476670645138;
        Sun, 16 Oct 2016 19:17:25 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm10873420vki.28.2016.10.16.19.17.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:17:24 -0700 (PDT)
Date: Mon, 17 Oct 2016 00:17:20 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: arnaud.patard@rtp-net.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: xgifb: Compress return logic into one line.
Message-ID: <20161017021720.GA7591@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify return logic to avoid unnecessary variable assignments.

Coccinelle was used with this semantic patch:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index d8010c5..f4bcb156 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1682,13 +1682,11 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
 			}
 
 			if (pVBInfo->TVInfo & TVSetYPbPr750p) {
-				tempal = XGI_YPbPr750pVCLK;
-				return tempal;
+				return XGI_YPbPr750pVCLK;
 			}
 
 			if (pVBInfo->TVInfo & TVSetYPbPr525p) {
-				tempal = YPbPr525pVCLK;
-				return tempal;
+				return YPbPr525pVCLK;
 			}
 
 			tempal = NTSC1024VCLK;
@@ -1705,8 +1703,7 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
 	} /* {End of VB} */
 
 	inb((pVBInfo->P3ca + 0x02));
-	tempal = XGI330_RefIndex[RefreshRateTableIndex].Ext_CRTVCLK;
-	return tempal;
+	return XGI330_RefIndex[RefreshRateTableIndex].Ext_CRTVCLK;
 }
 
 static void XGI_GetVCLKLen(unsigned char tempal, unsigned char *di_0,
-- 
2.7.4


