X-GM-THRID: 6387647463261470720
X-Received: by 10.36.34.144 with SMTP id o138mr3794437ito.14.1487240070700;
        Thu, 16 Feb 2017 02:14:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls1060129otb.2.gmail; Thu, 16 Feb
 2017 02:14:30 -0800 (PST)
X-Received: by 10.237.36.7 with SMTP id r7mr386207qtc.54.1487240070364;
        Thu, 16 Feb 2017 02:14:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z3si1245496pfj.0.2017.02.16.02.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 02:14:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e4so1309121pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 02:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Tlg93hxS9qTZhRdrOfnMS46CpfJHgxZydB7/MQBiF0c=;
        b=t+TcA57LX2hoOI1Gc8NjaMFixla76Acvc6bx42QTB9U3483izUq0kn61ImpwKTlJq5
         MctZv0Sx7wd9owvSJ9IT9Fea04LvkM7R1JgOhSDOe/435qKKuIidHsY+7N1dmy037pwx
         HNWTTPl7uonHptibmERG1o0/1dFOzmbwHjNILF61px1mpUL/bdWit0B1U9RD91E/4KEe
         /5U6rKR/y8tXDizzmBof2nKmtRJDmnprMPGF9++ZbZr799KvZT8mPCtIj4BL2XniV76Y
         CPZpmRMQqv5RVFKJdT5IOtjv80Nhg2T3hQzJpODoDtBMbcxW9/8UWAUNSOuGJPs7MFF/
         SGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Tlg93hxS9qTZhRdrOfnMS46CpfJHgxZydB7/MQBiF0c=;
        b=j5CdoHHoRUSoyE9+5QSooGHycOatl43fhz30IS9KXt2LudLUqBq8nETecdeRSD3r4G
         lMzOgskGA0EONeZmxZLpUuEnp+4hZvly/IDAJ4GqKhpu5+h7Pa8dXpG41aKIU4z8ej39
         Zxb0i/ejLGVPJNcM7oHymMZnSkXjnzQzX8CxuSEMaLDREGOZZyDdlETNFoOfk9+Xv5rU
         zzUNnPuAr1Oxxt9LSqgVQhmiP2KAQEkTEXmTeY7P+tmuelyrsFpbdS3HBnFD3eAq/jto
         6H8EMj922nq5RoxZQklhNRpWGwle439lOhUBmFtSWZ1upICkzDNnxG8PBuwYSyvIcgHU
         WGVA==
X-Gm-Message-State: AMke39lvieNNQZB1CI2KlGe6Jkfn0fmQr5owuN+n/n5sG/v/E1oyELP3vhbkDo5waUHnbg==
X-Received: by 10.98.211.8 with SMTP id q8mr1712669pfg.164.1487240070123;
        Thu, 16 Feb 2017 02:14:30 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id f65sm12724028pfk.5.2017.02.16.02.14.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 02:14:29 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: wlan-ng: add blank line after declaration
Date: Thu, 16 Feb 2017 15:42:16 +0530
Message-Id: <1487239937-26115-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

add blank line after struct declaration to fix the checkpatch issue, add
blank line after declarations.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 5f1851c..f199847 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1175,6 +1175,7 @@ struct hfa384x_usbctlx {
 	enum ctlx_state state;	/* Tracks running state */
 
 	struct completion done;
+
 	volatile int reapable;	/* Food for the reaper task */
 
 	ctlx_cmdcb_t cmdcb;	/* Async command callback */
-- 
2.7.4


