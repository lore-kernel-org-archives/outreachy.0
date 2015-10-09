X-GM-THRID: 6203360253861429248
X-Received: by 10.129.146.87 with SMTP id j84mr12810705ywg.18.1444423745555;
        Fri, 09 Oct 2015 13:49:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.100 with SMTP id y91ls1885554qgy.7.gmail; Fri, 09 Oct
 2015 13:49:04 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr12381805ywc.8.1444423744202;
        Fri, 09 Oct 2015 13:49:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si321657pab.1.2015.10.09.13.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so96118975pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ALqeHmV3eHPVBQLbrLp37zOf+eJAUQx7u6zohM7M2Z8=;
        b=fF76xma1aQRWn0Q7Ze9VfexSQLLcgnbPvWNjAUIw6B3u2f9xTOr48OsSO6NLIvxR0N
         8Ee6Go6nnh36Bw2rKu3k7saDTj5O7tPonLXqHXgoB0dEMf54ILGCdHsMVRZ7dFjJtm+U
         loT865+ZLtwkBFy9+/ZUCFX8rwN1JQHl0l/N8weMo0nlWVuc7obNabA9b7FLDGHRMTwN
         GI9HhTqMwKLy/kqTvKNFMpi9Qg2q6PhHGkMsBeFisTHqPv7sTRF7SEQFi868zZ6wsZq6
         KIWj0r4KhzqcsT5qDgV/8L8ci+7jXjFbfuOXd1vJvWl4i0VHdtoindjcy0HnfvsLFbMq
         qNdw==
X-Received: by 10.66.144.165 with SMTP id sn5mr17990813pab.122.1444423744020;
        Fri, 09 Oct 2015 13:49:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id gv1sm4167137pbc.38.2015.10.09.13.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:49:03 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:19:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: sm750fb: Remove multiple blank lines
Message-ID: <93b5f9583eae0718b246722b5018dd1eaebd26e5.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 3691db1..91ee375 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -117,7 +117,6 @@ static void setDisplayControl(int ctrl, int disp_state)
 	}
 }
 
-
 static void waitNextVerticalSync(int ctrl, int delay)
 {
 	unsigned int status;
@@ -189,7 +188,6 @@ static void swPanelPowerSequence(int disp, int delay)
 	POKE32(PANEL_DISPLAY_CTRL, reg);
 	primaryWaitVerticalSync(delay);
 
-
 	reg = PEEK32(PANEL_DISPLAY_CTRL);
 	reg = FIELD_VALUE(reg, PANEL_DISPLAY_CTRL, DATA, disp);
 	POKE32(PANEL_DISPLAY_CTRL, reg);
@@ -200,7 +198,6 @@ static void swPanelPowerSequence(int disp, int delay)
 	POKE32(PANEL_DISPLAY_CTRL, reg);
 	primaryWaitVerticalSync(delay);
 
-
 	reg = PEEK32(PANEL_DISPLAY_CTRL);
 	reg = FIELD_VALUE(reg, PANEL_DISPLAY_CTRL, FPEN, disp);
 	POKE32(PANEL_DISPLAY_CTRL, reg);
-- 
1.9.1


