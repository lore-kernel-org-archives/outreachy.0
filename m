X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:9383:: with SMTP id y125mr7165621itd.1.1554149452244;
        Mon, 01 Apr 2019 13:10:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls4003157ioq.6.gmail; Mon, 01 Apr
 2019 13:10:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyFbt8bvmUnBVTy4nLf48byjN9fbDSTg3qQ/Q3Ggf3g6hN6rrvacS7JtfCLQacL83ry5shB
X-Received: by 2002:a5d:954c:: with SMTP id a12mr10680235ios.31.1554149451317;
        Mon, 01 Apr 2019 13:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149451; cv=none;
        d=google.com; s=arc-20160816;
        b=s6K9wFNAqgBl0KM7k/0pPNvcvZcfUwPCWYSkGeh5JrX+z1hbNOdYfi5meGbdZ7ZoVt
         ODguOkFJbK4fiGLGbayEAiJCMkQWWeTdJqENtOO3YxFh0rQ0tE+9MaMW2V8ubtoFDpJ8
         uB29CKd4Bnz+l51njEnO4vKulLrFQc0TrwYu5k1vzHoC1593BMK9lAYwC6jMHQ22NTk6
         UhKJMbuKcDcJWjoPsg8qyPBVQKuu8Oal72HM8lv9+nOCgqpzurLhci6RjbeFgHZ79X18
         RbygzY08WWKEutQuvlWnRDRGni3gIUWn8zAmGB73SJjWf8n1bmLvh3t4pvFspgQaFU/R
         LyvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Sz7PX4gI5DWE1NwocjqMEbtAxlz50CbAB2W8MakNnXg=;
        b=AttcleodUDTggXlomio2yHdnGGyvjCPumd1iBT6nvlj0jcMEYE6bXjSfUK5xbxnusA
         tz488ktWVD1Nx8Q4tfI4eitz1Am4USb7GM8X3qae1oKR43KSQRiurhwdBj+Imtlj7to5
         9inreTUCV+tPOUBJV4QBzjr5IJA0vcp4x4equYkR50wIppRcDOwGn+jEwC35BAbuNzhb
         j+P8yOe+jHG6NEWnD/NpUUEyQpdRNdZMns0QNvkdZx2b+/egiGv6J+8TyNo5TByjyLxw
         tz9EBgct34dWF+SfJ5Hi8ap6Cauo9Q9tioNrmKzYPHoLJ11iIr4MK3m62ZTByjFu+mfO
         G3Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DdwHbMut;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id 17si232843itx.0.2019.04.01.13.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DdwHbMut;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id 10so5118720pfo.5
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Sz7PX4gI5DWE1NwocjqMEbtAxlz50CbAB2W8MakNnXg=;
        b=DdwHbMutq8d3/WLBQ7O9VwnwMm0ikpjETelYacXWvMQ12YCWoeP87JJwa81jD6hoxp
         Qscl7i676s1UEXT0iuPsb8TnOksxQF3ngwUBQ++chJmlzpl/1rfIRM7b+v5fx+gJsh0B
         OsGRdWBmKne1ny0+F8kBbIH00wzyrxKJGAenrOX+2Hu3NVnZiiFH+uNoKKlLXtBhGgnt
         PwD/aa8hkNGnVRvrMRwgJEb37hfi5qRRtSio06CcKS3Ec5mCHG440zWtYjZ4fj8IRfO8
         Or9lEb+SVm6XesNv4tWpTb0rCf8TLR8I01ypM1lk85wRsMqykVSfqhdDMyxYK4aES8b+
         ebQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Sz7PX4gI5DWE1NwocjqMEbtAxlz50CbAB2W8MakNnXg=;
        b=JqvwvAEwGxaoi1uio6ueln7smKwO5VAhoyoQpV93A2LWOo0olLh8LaMZ7Na4kod0N+
         AVvEebdtub8znVsh7ziIZ1lE1Ur5AEkAjm5OBXA/d6/cNZKHkrhNpTcyV0Cjj3UVyITK
         ing8KyteHYS4+ZYojDDQLU7eiKWszwUpHyieYB0xTYmit/t7+XNwdK2ksMWBcGKklYRD
         hHcY1RuR2cSr5mZO0P9cynsBIhMDJLTaPwYpG8H7f6/M/rXlOyr9ANOKTiqgEb9drPnp
         Bx9Z4/aj7qc5ueHTGv7Jwnty1k4/kzyP4dFmqOzZ7u5hTRLZIJy0XCwVte3i9uJqqIT+
         2gOg==
X-Gm-Message-State: APjAAAW0vICPJBTYkW6ukhbk99EQJbFFMAzOq0z1agR0G6ix6Dif0HC8
	/Hhngk5zW+JeNbmWeac5NTa1o3/j
X-Received: by 2002:a63:68c9:: with SMTP id d192mr64401082pgc.264.1554149450926;
        Mon, 01 Apr 2019 13:10:50 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:50 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 4/6] staging: rtl8712: use list_entry in function r8712_get_oldest_wlan_network
Date: Tue,  2 Apr 2019 01:39:53 +0530
Message-Id: <20190401200955.98744-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401200955.98744-1-himadri18.07@gmail.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>

struct wlan_network contains field list of type list_head. Hence,
getting the address of wlan_network using list_entry is equivalent
of using container_of to do the same. And to use list_entry for list
manipulations is a better choice.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V4:
	- Change log message
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index e0b4b8fbcc0e..05bfc2a60eb9 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -289,7 +289,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 	while (1) {
 		if (end_of_queue_search(phead, plist) ==  true)
 			break;
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
-- 
2.17.1


