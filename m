X-GM-THRID: 6466384589611859968
X-Received: by 10.200.50.44 with SMTP id x41mr12491165qta.57.1505572542010;
        Sat, 16 Sep 2017 07:35:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.233.1 with SMTP id f1ls2663412ith.11.gmail; Sat, 16 Sep
 2017 07:35:41 -0700 (PDT)
X-Received: by 10.101.86.13 with SMTP id l13mr17436485pgs.103.1505572541479;
        Sat, 16 Sep 2017 07:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505572541; cv=none;
        d=google.com; s=arc-20160816;
        b=C+PZYb2AiYVjgEm3hsfQX8eaDq5QaR5Soaug0H2LiejAL1T8EIPjmE3ftVa++sIVMK
         vNX+33YekDHCMY5vJPFSuGlSdWMAh2OYaR3ZGHdiRqnEkoOEaL/NUV9VhD+wRN+oEN5p
         KI46eRaiG2PeXJbQyzh6aXbPu8H1kTh4XmKfw91pEfDTRAXJorD/hhW9V1rYnf1lQUnx
         fFHYpxztl9pNj0pEladuFIa72dyFUEHMmA0oGV5cWeA7ra63C//okJZ0hYxGFXjt0UiI
         xkns6SffmZ0UPkDCEqB1opR49BQgNEXVi5SKeshkT8hMkjAg3nrb4iGhgsS63M+bJQdM
         ivFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=YJSRhjaIFF5R661TKHUHsCPUVHfiwOgYw65zEXFBn3M=;
        b=dRY4eZaYHrrkZphA4m7VexC6NKkfgTUj+dSGYs6pnylQ1Ruu+I9l9RO803wTPaZvIF
         cP2JWP8cSiAQHew6ZfeJOhvI/CjwC2qShHEIRR8me6kiXzU9o8GWol0lBY7XtoufEgyv
         b/B2/mf7O92HACEV8UCSIjrSdBobj5HTfzXI+O4JQmAvOKHanEbiAyOJpRBq9Oe95Gp3
         ymhLYaqpwIVeY0PKnAC56dViXBTYXYOsooTgm4kyO7vQqIvLUtnTeq/fIfis9p1vg6oJ
         hzEjUYhtDqlPZqPewtqCZb+/JNZhVVNnrJlPKvQW/kscOBNiwWewrA4LArW0QlAQkEwA
         UUQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUSGUzEr;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k76si291144pfa.10.2017.09.16.07.35.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 07:35:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CUSGUzEr;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so2809345pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 07:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YJSRhjaIFF5R661TKHUHsCPUVHfiwOgYw65zEXFBn3M=;
        b=CUSGUzErEGCGijHVtF50LgJk38oen8R5bBT0GkDNMlstl0VZ1ac5qI1eD23ds0/Wq9
         wjKe817TG/6e8DtNuJOr9yfiOSVn8TDADCmQxZ4/05LnlLewWeqTaY/qdekpQMpSxsUZ
         w0BFZ5V9cM43aT9urwxHDtSifOT/JBpfgt29o0NV3dKx59ps5PJ4kJ1o+w5lm+6dOXIH
         0w/mWFo/oaObQP5p7pVFs50RZ1iW3A7+76V+pGm4xBpW4MtVi7FrwdItPv92x9gkayM7
         W/FshP2TNj6tiYHa3OUAXTwfm18/H9f+c7MnFnLzB1+TIHzreSHG45JJdj47PVX+Kghw
         v9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YJSRhjaIFF5R661TKHUHsCPUVHfiwOgYw65zEXFBn3M=;
        b=ugWpG4t3QugZ2+2CURzwGMux7WWzR18eXjZGhLH/ZqHqjU4zwqkGcsM2DgdjedQ1aH
         /j81BW36kJJPs33tLYJS9PM959ympzZhYWa8cp7oBjPPviTL2xAqQlTyIEmszqsqOoqA
         ZLtBKi7mQoQ1JymZY4CfZKUYeKuKyIHch78b6R7w98sNEamWCi9PbLs/bueL7bg6TxGn
         pu0KsPzTLwGwewo+snT5qBHwYbTCiognOeFBY5JBXLD1j++moiShCEhY3g9UdApAmljh
         3iNlg/SkE16z+YzlXXHvE0IXSVCnkikVDVKAgtxeHDGKIHsBJwsnZQA3a87HWdCYH0vy
         gmCQ==
X-Gm-Message-State: AHPjjUhv+ZGrSxJQiVGs/K+Ve6t+juVgWYoFmAcZcBUCdnwmJDms2jcc
	rhCfQhbpip11Gg==
X-Google-Smtp-Source: ADKCNb4kcW5yGtOxvy9j1neV3gS+CTzpLejzPkkMrRjduV+hGB2vJ8pt5Td6Ui4IIqbi6VEtbgTvzA==
X-Received: by 10.99.150.25 with SMTP id c25mr27511771pge.241.1505572541276;
        Sat, 16 Sep 2017 07:35:41 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id t25sm7319027pfe.96.2017.09.16.07.35.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 07:35:40 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 2/2] Staging: dgnc: Remove unused variable in struct channel_t
Date: Sat, 16 Sep 2017 20:05:36 +0530
Message-Id: <a57f835fc443d51ae9eadd1b995435c215f14974.1505572018.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505572018.git.srishtishar@gmail.com>
References: <cover.1505572018.git.srishtishar@gmail.com>

Eliminate the variables that are not used and the comments
associated with them.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 5d2566e..082d659 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -312,8 +312,6 @@ struct un_t {
  * @ch_err_overrun: Count of overruns on channel.
  * @ch_xon_sends: Count of xons transmitted.
  * @ch_xoff_sends: Count of xoffs transmitted.
- * @proc_entry_pointer: Proc/<board>/<channel> entry.
- * @dgnc_channel_table: Proc/<board>/<channel> entry.
  */
 struct channel_t {
 	struct dgnc_board *ch_bd;
@@ -382,10 +380,6 @@ struct channel_t {
 
 	ulong		ch_xon_sends;
 	ulong		ch_xoff_sends;
-
-	struct proc_dir_entry *proc_entry_pointer;
-	struct dgnc_proc_entry *dgnc_channel_table;
-
 };
 
 extern uint		dgnc_major;		/* Our driver/mgmt major */
-- 
2.7.4


