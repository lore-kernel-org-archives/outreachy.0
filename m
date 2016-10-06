X-GM-THRID: 6338219457268154368
X-Received: by 10.107.63.195 with SMTP id m186mr3527721ioa.42.1475731715258;
        Wed, 05 Oct 2016 22:28:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls2256774ota.19.gmail; Wed, 05 Oct
 2016 22:28:34 -0700 (PDT)
X-Received: by 10.176.2.75 with SMTP id 69mr3257372uas.2.1475731714903;
        Wed, 05 Oct 2016 22:28:34 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ua1si3960728pac.1.2016.10.05.22.28.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 22:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 190so529792pfv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 05 Oct 2016 22:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=I7WMEnfKYfVrw4Xjy55sh8MkMXRSnyQqdzldq3+YRNo=;
        b=KoHJiOGwoox8cKSluy9zCLLWJNWJOyvChomCXk8UBD5tj8rsjW3zbvdyk4IuEFg/uq
         yt+yEt+B2GJjz1tJIWtPDKGsUmJcE6KOT1JKRzkkavb1sKrApOfKpvO6meBSKGK6xmHi
         YZDE7vh85V4R29DbIssWtTlv6DeVb9QqezDIN3F+BL5dwRVDhY+tNOoGi8YEpRgar3x9
         1u1fONf01jkgj3Xd39SdET/XMPW48Wy5kWRfoLATcG2+MYCA/Y+0UWrpqGBTY8liGrKd
         HnIqC8CQjJGUC/BG1ZTkBzQkhYPzYn4FVj1hHuz/EwLNnAhkA50fX5Nk3Ik7lGdLVhde
         PikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=I7WMEnfKYfVrw4Xjy55sh8MkMXRSnyQqdzldq3+YRNo=;
        b=luoXibWqLWSdbg27SkofJ45/CJeDhsLjrIcm/QKHcSse0AeXiIEHcdEg0ze7aNLT0v
         rhkA+H3XPjO9HUWfbSTOSoFo220crYaq8dXhVgsKgTsCNC9UoEXVT+VTwrCDzZuWtFhR
         1ZpdBMT5Cp3WI+2LH11nw6LKMxg+Lo/MPx8h0UxUzfrjzaMTp8w7HcuImVSHWNTya0o2
         5QBE2y5lEeiLpuRYoQMg+rAjLA8RvdOky32FK0VUe1L3s3Qkt2tncN/OSJ2kcxhbKK8A
         HbQwyoMbpBqCOC2oV4s/CqYCUPqPvR2ymQA4MvBg4vUSSVstcJeHZRYaR7DH/FyzfrT5
         IgDg==
X-Gm-Message-State: AA6/9RmTdWdbo7sm8m+VyWRz6lNPHneu5aeNm36bga6xoOoXp3Obao3rcIsunPOiNfPXPg==
X-Received: by 10.98.198.144 with SMTP id x16mr14859639pfk.42.1475731714638;
        Wed, 05 Oct 2016 22:28:34 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id l2sm18623988pav.7.2016.10.05.22.28.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 22:28:34 -0700 (PDT)
Date: Wed, 5 Oct 2016 22:28:32 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, gregkh@linuxfoundation.org,
	daniel.baluta@intel.com
Subject: [PATCH] staging: i4l: remove parens around return statement
Message-ID: <20161006052829.GA7790@localhost>
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
index 62f5629..d4247b8 100644
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
index 99c9c0a..0573f51 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -95,7 +95,7 @@ act2000_find_msn(act2000_card *card, char *msn, int ia5)
 		p = p->next;
 	}
 	if (!ia5)
-		return (1 << (eaz - '0'));
+		return 1 << (eaz - '0');
 	else
 		return eaz;
 }
@@ -111,10 +111,10 @@ act2000_find_eaz(act2000_card *card, char eaz)
 
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
@@ -293,7 +293,7 @@ act2000_command(act2000_card *card, isdn_ctrl *c)
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
@@ -776,7 +776,7 @@ act2000_addcard(int bus, int port, int irq, char *id)
 			failed++;
 		}
 	}
-	return (added - failed);
+	return added - failed;
 }
 
 #define DRIVERNAME "IBM Active 2000 ISDN driver"
-- 
2.1.4


