X-GM-THRID: 6261584556721176576
X-Received: by 10.140.176.6 with SMTP id w6mr15225482qhw.23.1457890999360;
        Sun, 13 Mar 2016 10:43:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.204.106 with SMTP id kx10ls1301719obc.37.gmail; Sun, 13
 Mar 2016 10:43:19 -0700 (PDT)
X-Received: by 10.182.142.8 with SMTP id rs8mr15663549obb.33.1457890999043;
        Sun, 13 Mar 2016 10:43:19 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si1160767ywc.0.2016.03.13.10.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id t4so10776894qge.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YbTQICSk/hUVHFg9YDqP/rp5kIiN6E2rIpswL8kwAO0=;
        b=CCyRqUsgvJ7sxfjeGShXd9vi+5yi/wML6tdFPrc/QU4Z8r7LtJz6lfD02xYcw+1Lgt
         mw7wPwKE7JqTzUbD4JVRfD7jxWuKg0Loi/JnCjsGm/+EXRv7P/b6D39it9oHV6+PYYlI
         NLD4zWMb24wTS0RybLnDz8votJnhqUGPDVrm7iwQPV6xhIKgbg+tQfqkKDDvqOwBuht/
         UNXrRrF7pXWaQLlmzF48S5jRMyrEQVSwRwa3ZzTHhJqnJrliv9uesbHSkR7ZXNmDUNNK
         Tsavcu0yz62WL8YTSJVPQO+Eu7E80+0nYml2CWjw5ZpZ64mVEUtSYTQAMH/atxEQ3a98
         GBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YbTQICSk/hUVHFg9YDqP/rp5kIiN6E2rIpswL8kwAO0=;
        b=YxQW8I7YjBB8ve9KHFe9MpaaSBmNfUPW+QJvWhqhz/xSysFb6QIamReQFD6QndwfLs
         7qrQUmUq1Sn8k8Fbwpofuj9kKMbS9to6Okh2MAwmpgVa8D1HjRxQ+sGnyAP5a0XJZnT1
         DpRZ5KZ1y+rOke8bpfBBhKK/7XcG/I1WXU6iMYImv/s0AanxjvRwwY4537HMsDL4Pqn5
         kEZi/um+smgFaE2aLhMA2slLYWeNpBUcPo7KzzO1TX3WkBzGczMJN7YvRoPwmr69E/1k
         C1qj/Z1mt/7wBAUIt37E5vc3jrwX9pSh7+qBKsMqopmwUthSC/aZpkCByMJALLf7kcU/
         9Tpw==
X-Gm-Message-State: AD7BkJLI7XAfXFPwj1UxpX1g0FPRSHDVPxSpotqXz+6pRnY2LpHyIKfP3L2j/rwo1aXOlg==
X-Received: by 10.140.240.3 with SMTP id l3mr26970335qhc.93.1457890998793;
        Sun, 13 Mar 2016 10:43:18 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id g184sm8603585qkb.7.2016.03.13.10.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:43:18 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:43:15 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/8] staging: dgnc: renames dgnc_Serial_Major variable to
 avoid camelcase
Message-ID: <8ba58c355c1b174885542c866a29c6a593c29981.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames dgnc_Serial_Major variable
in order to fix a camelcase checkpatch issue:

CHECK: Avoid CamelCase: <dgnc_Serial_Major>
+       uint            dgnc_Serial_Major;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 5bb69da..c37f84e 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -213,7 +213,7 @@ struct dgnc_board {
 	bool		dgnc_Major_Serial_Registered;
 	bool		dgnc_Major_TransparentPrint_Registered;
 
-	uint		dgnc_Serial_Major;
+	uint		dgnc_serial_major;
 	uint		dgnc_TransparentPrint_Major;
 
 	uint		TtyRefCnt;
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79566a..dfbea0ab 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -287,7 +287,7 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	}
 
 	dgnc_BoardsByMajor[brd->serial_driver.major] = brd;
-	brd->dgnc_Serial_Major = brd->serial_driver.major;
+	brd->dgnc_serial_major = brd->serial_driver.major;
 	brd->dgnc_TransparentPrint_Major = brd->print_driver.major;
 
 	return rc;
@@ -410,7 +410,7 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 
 	if (brd->dgnc_Major_Serial_Registered) {
 		dgnc_BoardsByMajor[brd->serial_driver.major] = NULL;
-		brd->dgnc_Serial_Major = 0;
+		brd->dgnc_serial_major = 0;
 		for (i = 0; i < brd->nasync; i++) {
 			if (brd->channels[i])
 				dgnc_remove_tty_sysfs(brd->channels[i]->
-- 
2.7.2


