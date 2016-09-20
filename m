X-GM-THRID: 6332317703208960000
X-Received: by 10.129.21.214 with SMTP id 205mr5411872ywv.164.1474357606672;
        Tue, 20 Sep 2016 00:46:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls1309536otj.7.gmail; Tue, 20 Sep
 2016 00:46:46 -0700 (PDT)
X-Received: by 10.237.56.8 with SMTP id j8mr16108823qte.0.1474357606323;
        Tue, 20 Sep 2016 00:46:46 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si5814206pam.0.2016.09.20.00.46.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:46:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so555369pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 00:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=elwwjlj3g3HTv9YdUaUUAGtLDAd4a3xPL0NO4JYr77w=;
        b=n9b6hLCUUshMjEsxrcwUb5MmR6Sa/V3dMMnky/RPj0BstUSrPoNzPwR+CzOlHIgcoZ
         XSyhuco67patEktgkMHgUjnZ+ZkBE2eGVK7YldS/DEdssArh5q499Sp5B7dY9+Nw6QsC
         qlsfndjsCcohhpOjhklbn75Z4dgQ2Rx1GD8AkZy0wIxlTkFVmZaJcsSmZynFfx1ewqDa
         JQ2sl9NDvQMmpFac+poV1K4SGhHM8XzV/WsOA0qVKnL2p0cK3NbOiyBtShEJ0LLXbyQm
         SE4sQ6GoDfiq6SDyBOA0udP0/YUQclnKy2+fiyrgP7ID9fh4BGZHaZkgcCdx/AYzyGGB
         XzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=elwwjlj3g3HTv9YdUaUUAGtLDAd4a3xPL0NO4JYr77w=;
        b=RFhlfUqNhf3elAJav2a8s3EGOSh+GbHc43SUYVazyIh19WOEOS6Xnwe72qvHnvXPZv
         7OpcvfA3YXduHAcQDTevAw1kBsP9OLgMgaZcrRQrY5FeE1CFUr43VcP/pmLNh6syxbEJ
         ERquEzv+iUIGhoTjNJnQ9Bl/GyovF4pRktpZQNBJ7Mjkky0eeaDAXdQ2CsBn98aOjKkE
         4AcHJHGXIzLXE+c/hiffsteR8SvC5yswbgQTnLLqVGz0+3z/c1+/Ko1s6QvDBrBjC6Ry
         EEZVF+rtYtmay9JscHh9u/kLdITbc8z4m0u6aOuqSdUljvggeF5USMpmS7wDkiOxdzVt
         UBBA==
X-Gm-Message-State: AE9vXwMVeKAZ9JFPH5FHNW/GzEm0z0+BFt/Oh5cDOt1M+jgyrmFLy43CwFH0ZMzXRpgTjg==
X-Received: by 10.66.52.42 with SMTP id q10mr53164713pao.34.1474357605159;
        Tue, 20 Sep 2016 00:46:45 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i4sm23671563pav.27.2016.09.20.00.46.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 00:46:44 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:16:37 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: dgnc: Merge assignment with return
Message-ID: <20160920074637.GA9549@toblerone>
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
Change in v2:
Make the commit message clearer.

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


