X-GM-THRID: 6203360253861429248
X-Received: by 10.66.122.201 with SMTP id lu9mr12230043pab.8.1444423670457;
        Fri, 09 Oct 2015 13:47:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.33 with SMTP id lp1ls602006igb.14.canary; Fri, 09 Oct
 2015 13:47:49 -0700 (PDT)
X-Received: by 10.66.252.6 with SMTP id zo6mr12571661pac.29.1444423669210;
        Fri, 09 Oct 2015 13:47:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si331252pbb.2.2015.10.09.13.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so95888647pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=jzLb7CwZG8BduFKCHUlULNfbLCWrmJFqdNNALOfdZOU=;
        b=pPcpNqcRpv2uNyk4WhErbzrhn2hQWg/5UPDXrlips7bBsBNplZ+2FnDCWq+r1eqJFe
         vJqdIugDCKiK5D503+ENIxw7r8U1NlRzGZt6C60lB5gNyqc39SXkY1hM1PFfAxvNnbvr
         drbrBfYKTBWxaqXGILFwGTZV9g0sSc1TTgTMZMFAoxzRGyHPzgfPmW0O/PmXfEa6RDK4
         om90tTJKRnR1ahLI02+9ZvhyjYPmCfNrRptwimXAWQNCflKBzEWy97Mrefymv1Ajiemy
         chAOpSgObknFj1Z+2yB91pLSQFvnOxZEBOl37eQhPEnHV6vKT2Zm2QlfymcUPEj9T5LF
         Bc4w==
X-Received: by 10.66.147.38 with SMTP id th6mr17512755pab.94.1444423669050;
        Fri, 09 Oct 2015 13:47:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id zc4sm4181579pbb.24.2015.10.09.13.47.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:47:48 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:17:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: sm750fb: Rename dispState
Message-ID: <716d1da225b6de062dcdfbe29b4fba838ed4f5c4.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Rename dispState to disp_state to avoid CamelCase. Problem found using
checkpatch.pl
CHECK: Avoid CamelCase: <dispState>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 24c1c82..3691db1 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -6,7 +6,7 @@
 
 #define primaryWaitVerticalSync(delay) waitNextVerticalSync(0, delay)
 
-static void setDisplayControl(int ctrl, int dispState)
+static void setDisplayControl(int ctrl, int disp_state)
 {
 	/* state != 0 means turn on both timing & plane en_bit */
 	unsigned long ulDisplayCtrlReg, ulReservedBits;
@@ -18,7 +18,7 @@ static void setDisplayControl(int ctrl, int dispState)
 	if (!ctrl) {
 		ulDisplayCtrlReg = PEEK32(PANEL_DISPLAY_CTRL);
 		/* Turn on/off the Panel display control */
-		if (dispState) {
+		if (disp_state) {
 			/* Timing should be enabled first before enabling the plane
 			 * because changing at the same time does not guarantee that
 			 * the plane will also enabled or disabled.
@@ -70,7 +70,7 @@ static void setDisplayControl(int ctrl, int dispState)
 		/* Set the secondary display control */
 		ulDisplayCtrlReg = PEEK32(CRT_DISPLAY_CTRL);
 
-		if (dispState) {
+		if (disp_state) {
 			/* Timing should be enabled first before enabling the plane because changing at the
 			   same time does not guarantee that the plane will also enabled or disabled.
 			   */
-- 
1.9.1


