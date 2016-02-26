X-GM-THRID: 6255628757507244032
X-Received: by 10.31.168.130 with SMTP id r124mr1631921vke.10.1456502357855;
        Fri, 26 Feb 2016 07:59:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls1211116qge.5.gmail; Fri, 26 Feb
 2016 07:59:17 -0800 (PST)
X-Received: by 10.140.156.139 with SMTP id c133mr1627225qhc.4.1456502357395;
        Fri, 26 Feb 2016 07:59:17 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r75si439699pfr.0.2016.02.26.07.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:59:17 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q63so1542364pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=at//9syDPgy8XJTyAprV2t2dbcEfZ33u7H1bfFnw4Gg=;
        b=Y87L9Gd+/41KaW2PMJmx6myAMIAKZE8Y+3Kg3CQEngu+6/g0tGPcY0yf4qmIHrGLti
         RRHJKpuHl9DryqYMdn0IpSWBrp5EhHQwv98/j4oyqBeo2IJCb9kaMy45Hkx15iyZLWcZ
         J70T7wW2Akw9u4ye0Ca7EIE2GqKf/uUxEYBwr82c024MT4uxNysNWNnJjrLs186UkLCt
         cZMfVLioVne9NPd8dYgRi4uOy4cxAOqGyJv7GwO6IoxaR12hrOqCtWeZozgn6VGOsVbS
         +Cz08AF8qDwzGO6gEFISvzL925hsJmDDOyGLBQNUfukPoWSxfRMO2VWWlWkDM9hvw3VS
         6x3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=at//9syDPgy8XJTyAprV2t2dbcEfZ33u7H1bfFnw4Gg=;
        b=gEc9Mh79TAyssJSMpNyO0qTSdqwcphnQFJLOgkALrQQBReB9VAD9BxdIrIF64KvkxK
         oCy+ZA/HBe6RCl4WdOTzDdj1hJ3W7nyLg4plwmdKohjCCM/EfpWqW5i1hlMF7EaIvtYu
         /esbiyr2IoHPZDtlfPJfR3HTEUIZWfavVv6uXbgS/7HSkkwwgnOc7+YHHkgKmwNRGvGM
         CjBjsb/fy8H0bKvMkikVIVxzN5aPm+r5CNbBmFTkQhC5Q14aAJxcvTjv2dG2X9Dw6yTJ
         M650138R8yOaqcJ5xUgyF7uVFfzXLN7bIKn4mtrs3IenDoKtlcyJLFylse2zVui9vLRI
         jFjA==
X-Gm-Message-State: AD7BkJKkaS1rXRQqoTu87jpXBraC08BFXC3YybNiF3mfLaIpULzqnoeEiR36WykcuJ1pbQ==
X-Received: by 10.98.33.77 with SMTP id h74mr3027369pfh.157.1456502357106;
        Fri, 26 Feb 2016 07:59:17 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m5sm20311928pfi.84.2016.02.26.07.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 07:59:16 -0800 (PST)
Date: Fri, 26 Feb 2016 21:29:20 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: dgnc: Fix block comment style
Message-ID: <0cfb34766bc00eb94ca15b8cac7cf9d0fdffe362.1456501665.git.aquannie@gmail.com>
References: <cover.1456501665.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456501665.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the block comment style.
1. The checkpatch.pl warning:
Block comments use a trailing */ on a separate line.
2. '====' separator is unnecessary and should not be used.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index df1d00b..88355c5 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -443,15 +443,13 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 	brd->PrintDriver.termios = NULL;
 }
 
-/*=======================================================================
- *
+/*
  *	dgnc_wmove - Write data to transmit queue.
  *
  *		ch	- Pointer to channel structure.
  *		buf	- Pointer to characters to be moved.
  *		n	- Number of characters to move.
- *
- *=======================================================================*/
+ */
 static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
 {
 	int	remain;
@@ -489,13 +487,11 @@ static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
 	ch->ch_w_head = head;
 }
 
-/*=======================================================================
- *
+/*
  *      dgnc_input - Process received data.
  *
  *	      ch      - Pointer to channel structure.
- *
- *=======================================================================*/
+ */
 void dgnc_input(struct channel_t *ch)
 {
 	struct dgnc_board *bd;
-- 
2.1.4


