X-GM-THRID: 6338219457268154368
X-Received: by 10.13.243.193 with SMTP id c184mr6731117ywf.154.1476038157840;
        Sun, 09 Oct 2016 11:35:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.238 with SMTP id t43ls762837otd.27.gmail; Sun, 09 Oct
 2016 11:35:57 -0700 (PDT)
X-Received: by 10.237.34.216 with SMTP id q24mr5110284qtc.69.1476038157444;
        Sun, 09 Oct 2016 11:35:57 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si7564681par.0.2016.10.09.11.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 11:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so6071722pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 11:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GrY1vBHyZ2QYscw9zqEnDLhTVPY0Qc+cKLO/zy4B9Eo=;
        b=r0QZjBvLW+LnLFrqfWoWzIGiD711mN0b+CcfSPsSbpqlbn9UvfLhvHeNQHiq9PHfq3
         oiU/t+p1TWDC99tKLgqkhq0cz/cFMk42aaOXRL5PjGmau1JMhPXRMJesoZvl08g5YRrB
         fxDD2c0J1wAxRiKB9svrLbJNJpvJKQ1YonhmP2D+YooQ6aZij/O4rb/EqXH3YoSPSdDF
         MLvSMkelaSco7sriz2dnOCWiq/1HOWxbnvntlLfkUL3o52nnA1U+ap7D/wFUHPAEjNxW
         ZPTGVN85uYjUwI1jpApFWC1kgKentuBD86yr7kWrGNy3+0JVm+2iuqRw2JRXWIbbpxSL
         efcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GrY1vBHyZ2QYscw9zqEnDLhTVPY0Qc+cKLO/zy4B9Eo=;
        b=hRL1yKwpsAHZipZ0vO5CL439uTYuEv/HvokoQBySDnbr/Vrfj43gkej454JdE1IA8m
         oCHhP8jsmieHPGz0MO5F+n00Sl7/Y4hF+wckfvm8G+tgegZGJhwfy+j4cWq9MeDjGXzj
         W5yNW/6M1k3n0TPsTCGaKdldWH7MliwoUrJYJ5oqbvdkeyWr3YyHQNBcs3xYPw+Kj+oq
         FMCU4j8G33ACuI3mXdchjU8ki3goTBLWw+EnlNORoWPIhS8p1XNdSyH9XaWgWlnb69su
         Zt8zsXZKRdqlJOTMuRujW67jOuuG1em7uQYi0KQolpojQfKFdxO7nZIVeInpNwdMmWgz
         xDQw==
X-Gm-Message-State: AA6/9Rmn1ujci+2P/kuzCD0UOl0WUSBe3BFFSDEHmfZA8yj6rJrVuyzbrgf8TniysaPa+w==
X-Received: by 10.98.157.210 with SMTP id a79mr48856302pfk.179.1476038157213;
        Sun, 09 Oct 2016 11:35:57 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id w198sm28453930pfd.70.2016.10.09.11.35.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 11:35:56 -0700 (PDT)
Date: Sun, 9 Oct 2016 11:35:54 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: i4l: remove parens around return statement
Message-ID: <20161009183549.GA6474@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses surrounding return statements. Error found by
checkpatch.

changes made using coccinelle script:

@@
expression e,e1;
@@
(
return (e / e1);
|
return
-(
e
-)
;
)

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/i4l/act2000/capi.c   |  2 +-
 drivers/staging/i4l/act2000/module.c | 18 +++++++++---------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/i4l/act2000/capi.c b/drivers/staging/i4l/act2000/capi.c
index 66c1e57..61386a7 100644
--- a/drivers/staging/i4l/act2000/capi.c
+++ b/drivers/staging/i4l/act2000/capi.c
@@ -99,7 +99,7 @@ actcapi_chkhdr(act2000_card *card, actcapi_msghdr *hdr)
 	for (i = 0; i < num_valid_imsg; i++)
 		if ((hdr->cmd.cmd == valid_msg[i].cmd.cmd) &&
 		    (hdr->cmd.subcmd == valid_msg[i].cmd.subcmd)) {
-			return (i ? 1 : 2);
+			return i ? 1 : 2;
 		}
 	return 0;
 }
diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index e227c08..6aa1203 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -94,7 +94,7 @@ act2000_find_msn(act2000_card *card, char *msn, int ia5)
 		p = p->next;
 	}
 	if (!ia5)
-		return (1 << (eaz - '0'));
+		return 1 << (eaz - '0');
 	else
 		return eaz;
 }
@@ -110,10 +110,10 @@ act2000_find_eaz(act2000_card *card, char eaz)
 
 	while (p) {
 		if (p->eaz == eaz)
-			return (p->msn);
+			return p->msn;
 		p = p->next;
 	}
-	return ("\0");
+	return "\0";
 }
 
 /*
@@ -292,7 +292,7 @@ act2000_command(act2000_card *card, isdn_ctrl *c)
 			if (ret)
 				return ret;
 			if (card->flags & ACT2000_FLAGS_RUNNING)
-				return (actcapi_manufacturer_req_msn(card));
+				return actcapi_manufacturer_req_msn(card);
 			return 0;
 		case ACT2000_IOCTL_ADDCARD:
 			if (copy_from_user(&cdef, arg,
@@ -512,7 +512,7 @@ if_command(isdn_ctrl *c)
 	act2000_card *card = act2000_findcard(c->driver);
 
 	if (card)
-		return (act2000_command(card, c));
+		return act2000_command(card, c);
 	printk(KERN_ERR
 	       "act2000: if_command %d called with invalid driverId %d!\n",
 	       c->command, c->driver);
@@ -527,7 +527,7 @@ if_writecmd(const u_char __user *buf, int len, int id, int channel)
 	if (card) {
 		if (!(card->flags & ACT2000_FLAGS_RUNNING))
 			return -ENODEV;
-		return (len);
+		return len;
 	}
 	printk(KERN_ERR
 	       "act2000: if_writecmd called with invalid driverId!\n");
@@ -542,7 +542,7 @@ if_readstatus(u_char __user *buf, int len, int id, int channel)
 	if (card) {
 		if (!(card->flags & ACT2000_FLAGS_RUNNING))
 			return -ENODEV;
-		return (act2000_readstatus(buf, len, card));
+		return act2000_readstatus(buf, len, card);
 	}
 	printk(KERN_ERR
 	       "act2000: if_readstatus called with invalid driverId!\n");
@@ -557,7 +557,7 @@ if_sendbuf(int id, int channel, int ack, struct sk_buff *skb)
 	if (card) {
 		if (!(card->flags & ACT2000_FLAGS_RUNNING))
 			return -ENODEV;
-		return (act2000_sendbuf(card, channel, ack, skb));
+		return act2000_sendbuf(card, channel, ack, skb);
 	}
 	printk(KERN_ERR
 	       "act2000: if_sendbuf called with invalid driverId!\n");
@@ -777,7 +777,7 @@ act2000_addcard(int bus, int port, int irq, char *id)
 			failed++;
 		}
 	}
-	return (added - failed);
+	return added - failed;
 }
 
 #define DRIVERNAME "IBM Active 2000 ISDN driver"
-- 
2.1.4


