X-GM-THRID: 6330628880333799424
X-Received: by 10.200.54.228 with SMTP id b33mr5949819qtc.28.1473964396883;
        Thu, 15 Sep 2016 11:33:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.1 with SMTP id l1ls1346956iol.16.gmail; Thu, 15 Sep
 2016 11:33:15 -0700 (PDT)
X-Received: by 10.98.26.8 with SMTP id a8mr7487749pfa.4.1473964395309;
        Thu, 15 Sep 2016 11:33:15 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 142si3103690pfx.2.2016.09.15.11.33.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:33:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so2424114pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NoaNoaA5UTWgQyDLqTLNGKeCMMMvawzxFAK9O8vVhr0=;
        b=G9+M2B3dAF4+fQUqfdmXgWkNbnaqeY/qVtNWDpaW+8AOX0nRU2NbS5AWHz9IWh026N
         WkYD6ctkVYK3NJRoBlAQlWfFy8cEIHuC9iSONmOKRZ42GRD9/qtY1AMG/bS/si5HJruA
         c/rT15ofnOLdktdWgJKG9CXyYDlwgGMqyN03dsjzl2jdqol1pwT4rsSOkDVrnmAVibcj
         DZvc8qjo/ATfr/oAGcCl9aT4HIBMVZvorZhtfATHIXapyAwvy8MMk10WHSjx6kWZa9d7
         2gOzfkScKb9xz+MNTVEBCbbuvKWOG6vzSqTT1PijxHzBsgIDzq8qfvagFeBLat9CqGLB
         e6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NoaNoaA5UTWgQyDLqTLNGKeCMMMvawzxFAK9O8vVhr0=;
        b=TD7sJIe01qyafwRWM8+N6ewG10FlbyEWEw7/5JK8aXLbHVKIV68GGIQObch/Z+mRSh
         gqFYUvnbXb/0W+YwDzxoeoIcQtYSYLXkRR3h6OT3o6xenPL/mnhAkq6Lvd5St/dbNwDm
         z98TUMTZK4K4ljjWGwIQT0KebbIJTMfGbgHYcYnMV7Ra/21nlng07o7SXqkrKlJS25p+
         IIBQrfqWkPYxV9WBkWTTLFY+yBS1jMpi0fe+gn7d07b51NpcHP5aS/jh6+MhnPejooeH
         91h5RnZpQnN1JkpLN8vDGI07H1ez0ph/LJGU+SRY8m1c2seLlHP6/c4gyYry7J3qPdcC
         +7XA==
X-Gm-Message-State: AE9vXwN7RzqeUe7X2PS70Dj50hTLj00S4tzVIyi/KYHSIFUPEXJpyvmHq/oFD/ZRkefstg==
X-Received: by 10.66.72.8 with SMTP id z8mr16633949pau.141.1473964395085;
        Thu, 15 Sep 2016 11:33:15 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.236.194])
        by smtp.gmail.com with ESMTPSA id u19sm4347178pfa.40.2016.09.15.11.33.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:33:14 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:02:58 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: speakup: Remove unnecessary 'else' after a 'return'
 statement
Message-ID: <20160915183258.GA13583@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch resolves the following issue detected by checkpatch.pl:
WARNING: else is not generally useful after a break or return.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/speakup/keyhelp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
index ce94cb1..ab56d89 100644
--- a/drivers/staging/speakup/keyhelp.c
+++ b/drivers/staging/speakup/keyhelp.c
@@ -178,7 +178,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
 		build_key_data(); /* rebuild each time in case new mapping */
 		return 1;
-	} else {
+	}
 		name = NULL;
 		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
 			synth_printf("%s\n",
@@ -201,7 +201,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
 		synth_printf(spk_msg_get(MSG_KEYDESC), name);
 		synth_printf("\n");
 		return 1;
-	}
+
 	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
 	func = funcvals[cur_item];
 	synth_printf("%s", name);
-- 
2.7.4


