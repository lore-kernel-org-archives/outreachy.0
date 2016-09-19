X-GM-THRID: 6332141556994146304
X-Received: by 10.157.36.101 with SMTP id p92mr254436ota.16.1474316594492;
        Mon, 19 Sep 2016 13:23:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls376737otu.25.gmail; Mon, 19 Sep 2016
 13:23:14 -0700 (PDT)
X-Received: by 10.157.34.165 with SMTP id y34mr225896ota.28.1474316593891;
        Mon, 19 Sep 2016 13:23:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si5384126pfw.1.2016.09.19.13.23.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:23:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so7691266pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 13:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oA3Fr1HP/STLOCLPATrLRieL0A7tufMiUZXAxl0NmdQ=;
        b=p6NyqbDR6eaB03QpJ47nOdOId+9uS6QpA/WnW8tyQwDG4js05gvmV/2Y91swJFKS+I
         PeM/+UPEY+TxJszIFQ9pTxrtZb0G14lMDcYQYcY/clOZdZCqv1yPwGfu9cdva/VDm8yN
         vDFMZvdIsslLBkzXUGhjoJNpBnhseOxRdw3XiX3xL61IaydkJfbNe1b7L68WLrUt6kWy
         7NLB3fwqchOtYwokgzTn87tGjr2+5eNZPF9NM+C3xCHpnnwRB2Y8zV6kULpxrPFSB4+A
         ALkef4sN53MZLwvSNGIQmiTQ3vlQ3ECbmaP2O0II9A8tSotAmU3clDeDYPyMH7sEvszd
         2erQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oA3Fr1HP/STLOCLPATrLRieL0A7tufMiUZXAxl0NmdQ=;
        b=lGucvUQG49d2VwNG1TsAqd2fbYQKu+4qC1yUaTA3wjHRqO00hJ0fXZeNchrTy3VVsK
         EnIXICt37Jzg27A7Ekf815Z087iHPBSDMWJQi0LVYEs0gpIj7V8qSaEHlMfsXRELdNgu
         elNtUX2APTUaw0iBMJdHblKad6+96r5R5iIeKuabZtkrEt77EkC+jNVWtWtO35Gfc0tb
         6JBeGfzyeCu2WHKbff1jVbET29PqGRm1CPLUmDfO5/U3p6fxaG0bcnGjz9vl1NAsnCyY
         nU+hCjTjOGmEqL4XPVbHYXdcWSqXDz15OsVFpI+/PRYMjT99wiKcMWVyzfrVIFXlW1ZT
         inSg==
X-Gm-Message-State: AE9vXwP40BfmakbDYR5iNn+rHzTmrLTVRZgOZ3qZih2XfGF+llRm2gr+aCYGA93g3n7FGA==
X-Received: by 10.98.51.131 with SMTP id z125mr49897766pfz.109.1474316593359;
        Mon, 19 Sep 2016 13:23:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y184sm73537827pfg.94.2016.09.19.13.23.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:23:12 -0700 (PDT)
Date: Tue, 20 Sep 2016 01:53:03 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: dgnc: Remove unnecessary return capture
Message-ID: <20160919202303.GA24269@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value of a function call into a variable and
then returning it, we can club the two into a single return statement. This
change was made using the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index fd46ef0..1c1ac84 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2548,9 +2548,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-		rc = put_user(C_CLOCAL(tty) ? 1 : 0,
-			      (unsigned long __user *)arg);
-		return rc;
+		return put_user(C_CLOCAL(tty) ? 1 : 0,
+				(unsigned long __user *)arg);
 
 	case TIOCSSOFTCAR:
 
@@ -2721,8 +2720,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 	case DIGI_GETCUSTOMBAUD:
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
-		rc = put_user(ch->ch_custom_speed, (unsigned int __user *)arg);
-		return rc;
+		return put_user(ch->ch_custom_speed,
+				(unsigned int __user *)arg);
 
 	case DIGI_SETCUSTOMBAUD:
 	{
@@ -2808,8 +2807,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 			events |= (EV_IPU | EV_IPS);
 
 		spin_unlock_irqrestore(&ch->ch_lock, flags);
-		rc = put_user(events, (unsigned int __user *)arg);
-		return rc;
+		return put_user(events, (unsigned int __user *)arg);
 	}
 
 	/*
-- 
2.7.4


