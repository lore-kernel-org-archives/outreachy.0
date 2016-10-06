X-GM-THRID: 6338470953184395264
X-Received: by 10.129.131.194 with SMTP id t185mr4308375ywf.79.1475790271474;
        Thu, 06 Oct 2016 14:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.114 with SMTP id l47ls4015153ote.24.gmail; Thu, 06 Oct
 2016 14:44:31 -0700 (PDT)
X-Received: by 10.13.250.129 with SMTP id k123mr4340190ywf.1.1475790271139;
        Thu, 06 Oct 2016 14:44:31 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 80si1429935pfw.0.2016.10.06.14.44.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 14:44:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i85so1709498pfa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 14:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lRyvb1bKI4cL7e165b3xGdIxyQcARcz6ri+xz4Nf0mY=;
        b=b+/6p8yxZisCbebKQgIPaIqhHkAVlT+i6A7K7+pphr7EfHkfnz5wyEY0b1YcuX2w6W
         oHV4CqyvehKKw6FNxz+i8jz6DtOA1X9zKoO0wqjlIZF+LLF+/yRXlSZG+bMIWhLhbBvp
         vvu008Wxq+iyhX52XvEA0zP9KmRUQfeeo4gJfY8m9rXUGmhX7MuYB3M7D1tOztz/6lVM
         E/V+uuzOPteGBV2aDP3e89cT58r7kLBJx2ccV9LYmk92TLG4Strxmw3V79NKxQAFC258
         v/DJlgOKQlBMz00hVY7rvCAhcbfulf+4Jy5k6F0miMYumBQbiJMKWuM+eaqhGBQPs8+9
         TNJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lRyvb1bKI4cL7e165b3xGdIxyQcARcz6ri+xz4Nf0mY=;
        b=IMbhTGOxsZsYZgPRd2ueNHn1JOuWNY4PGUF/w2OuPpqPEPkWvrULlvnLegPiG1rIqu
         CPjN0PR2qgDdmmdS4rsoa8McnGDM3Ooz6Py3/sh8Fn2RzZb5AnT9f9iPStS8Ob2KHHrG
         yy+1RCYESr1LKfbDXH0vmpxM9p4+iu0TvtASASYRRx0pduH0cuNTlzJKm/IbXw6YW2nG
         dznXj6MMDcoP4BqHhfOFLmJKa6J6gFnHuAJbn296NYqm2iUz8CCXgNZVQ7AVqurR45GD
         Mi7noHN+iaSX7Ene+Kn5bH6vmmgYZoX/SRYVVXjJheDbXh5Mb0y9fLbZ4ESIg3QftQQd
         lPog==
X-Gm-Message-State: AA6/9RmoWoSlHVMS/JZhbtPcoXHDba4MfCiiQSlUQCdqFppQMUD0T1eGk0Xa9PFdo+pXUw==
X-Received: by 10.98.104.71 with SMTP id d68mr30129769pfc.163.1475790270897;
        Thu, 06 Oct 2016 14:44:30 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id c9sm3299680pfc.79.2016.10.06.14.44.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 14:44:30 -0700 (PDT)
Date: Thu, 6 Oct 2016 14:44:28 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, amsfield22@gmail.com,
	daniel.baluta@intel.com
Subject: [PATCH] staging: i4l: add blank line after declarations
Message-ID: <20161006214425.GA10922@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch error "missing blank line after declarations" to conform
to kernel coding style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 1 +
 drivers/staging/i4l/act2000/capi.c        | 5 +++++
 drivers/staging/i4l/act2000/module.c      | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index ad7a039..76ff5de 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -259,6 +259,7 @@ act2000_isa_receive(act2000_card *card)
 					       "act2000_isa_receive: Invalid CAPI msg\n");
 					{
 						int i; __u8 *p; __u8 *t; __u8 tmp[30];
+
 						for (i = 0, p = (__u8 *)&card->idat.isa.rcvhdr, t = tmp; i < 8; i++)
 							t += sprintf(t, "%02x ", *(p++));
 						printk(KERN_WARNING "act2000_isa_receive: %s\n", tmp);
diff --git a/drivers/staging/i4l/act2000/capi.c b/drivers/staging/i4l/act2000/capi.c
index d4247b8..61386a7 100644
--- a/drivers/staging/i4l/act2000/capi.c
+++ b/drivers/staging/i4l/act2000/capi.c
@@ -506,6 +506,7 @@ static int
 new_plci(act2000_card *card, __u16 plci)
 {
 	int i;
+
 	for (i = 0; i < ACT2000_BCH; i++)
 		if (card->bch[i].plci == 0x8000) {
 			card->bch[i].plci = plci;
@@ -518,6 +519,7 @@ static int
 find_plci(act2000_card *card, __u16 plci)
 {
 	int i;
+
 	for (i = 0; i < ACT2000_BCH; i++)
 		if (card->bch[i].plci == plci)
 			return i;
@@ -528,6 +530,7 @@ static int
 find_ncci(act2000_card *card, __u16 ncci)
 {
 	int i;
+
 	for (i = 0; i < ACT2000_BCH; i++)
 		if (card->bch[i].ncci == ncci)
 			return i;
@@ -538,6 +541,7 @@ static int
 find_dialing(act2000_card *card, __u16 callref)
 {
 	int i;
+
 	for (i = 0; i < ACT2000_BCH; i++)
 		if ((card->bch[i].callref == callref) &&
 		    (card->bch[i].fsm_state == ACT2000_STATE_OCALL))
@@ -1088,6 +1092,7 @@ actcapi_debug_msg(struct sk_buff *skb, int direction)
 			int l = msg->hdr.len - 12;
 			int j;
 			char *p = tmp;
+
 			for (j = 0; j < l; j++)
 				p += sprintf(p, "%02x ", msg->msg.info_ind.el.display[j]);
 			printk(KERN_DEBUG " D = '%s'\n", tmp);
diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 4746a62..6aa1203 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -376,6 +376,7 @@ act2000_command(act2000_card *card, isdn_ctrl *c)
 			}
 			if (card->ptype == ISDN_PTYPE_1TR6) {
 				int i;
+
 				chan->eazmask = 0;
 				for (i = 0; i < strlen(c->parm.num); i++)
 					if (isdigit(c->parm.num[i]))
@@ -573,6 +574,7 @@ act2000_alloccard(int bus, int port, int irq, char *id)
 {
 	int i;
 	act2000_card *card;
+
 	if (!(card = kzalloc(sizeof(act2000_card), GFP_KERNEL))) {
 		printk(KERN_WARNING
 		       "act2000: (%s) Could not allocate card-struct.\n", id);
@@ -794,6 +796,7 @@ static void __exit act2000_exit(void)
 {
 	act2000_card *card = cards;
 	act2000_card *last;
+
 	while (card) {
 		unregister_card(card);
 		del_timer_sync(&card->ptimer);
-- 
2.1.4


