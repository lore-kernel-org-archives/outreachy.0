X-GM-THRID: 6256344010151952384
X-Received: by 10.182.24.199 with SMTP id w7mr8857692obf.48.1456668602792;
        Sun, 28 Feb 2016 06:10:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.74 with SMTP id i71ls19697ioi.96.gmail; Sun, 28 Feb
 2016 06:10:02 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr9076398pfa.2.1456668602366;
        Sun, 28 Feb 2016 06:10:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22b.google.com (mail-io0-x22b.google.com. [2607:f8b0:4001:c06::22b])
        by gmr-mx.google.com with ESMTPS id iq8si681138igb.0.2016.02.28.06.10.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:10:02 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) client-ip=2607:f8b0:4001:c06::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22b.google.com with SMTP id 9so159209495iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+N/q6+3wpefmMsNEcQDF+AIEmozXl19F0O1/izNQFws=;
        b=vLvf/rnG09N9KZcf/aCty/NR+GEd9wJwgMe4lTk1mUJMv8g8gBnt4S61onDPmvRAaK
         dDYE93TurGYgqxNhZmMDsbK7q8yY0VI68fDP8ESFcWxTro2UDtjU5ArkwX3fKFfvoa5P
         LIfuWnHZfNyFxOVaayax8UOKr1EbXsbLMrg87LCfV1jgb86w71FyChAVW96TED1Sx1gj
         5rbOVyPYhcv4ZI0TQXFT5f0EIM/Z54oviLgAigqVKj1RZ7LrVVmYy0r17unHA4Dc7JTB
         C4iPK2JOvgxZr0XcmxlInbrUZb+R5xcCKEGNTRx7y5qrt/lvulF8lcjbg8fuDf+ewzzO
         zSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+N/q6+3wpefmMsNEcQDF+AIEmozXl19F0O1/izNQFws=;
        b=ICWsWG43TvdwbUgCRfoS+RuRtmFYSScyTWyL776Wuf6jlxch7tggAui/3UHhhWA/CH
         bBi3nb7yMPdyJSz72XLvXc+2ThMrXdHeer6s8nAKY7Cnp0ynkuXY9eoTfsCjwd7YkKua
         nUfMRMsmawhzlAQ8I1B/92SeMWp3FYNzo+8VVeZgUOs5U4D+AsD1ZafUUmt11NI2OPfC
         gmOsoWmFBMDtmiCbmpDg6OOvJUU7sTyAjrWwcLdyWSs1uIQXD6/ZYKLEVLpXdRnriVn1
         hO8+oyK98kkOrLFQBwHZLGDuE6urE1wEVdiOnidjq17d59QopneuKnJCXltzPB1YvU6Z
         bBSw==
X-Gm-Message-State: AG10YOSCRtpj1EqteDl5Dqe1DeeWUKZYDACjLGCxZb2ewVcfi9Bsnl0FubGB6CbmyF0c/w==
X-Received: by 10.107.130.89 with SMTP id e86mr15185171iod.23.1456668602194;
        Sun, 28 Feb 2016 06:10:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id h131sm9144440ioe.7.2016.02.28.06.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:10:01 -0800 (PST)
Date: Sun, 28 Feb 2016 14:09:12 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Use list_entry() rather than
 container_of()
Message-ID: <20160228190912.GA5429@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_entry() rather than container_of() for nodes of doubly linked 
lists.
Semantic patch used:

@a exists@
identifier var;
struct list_head *ptr;
@@

  var =
- container_of
+ list_entry
  (ptr, ...);

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index 0608431..866e2bf 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -113,7 +113,7 @@ kiblnd_get_idle_tx(lnet_ni_t *ni, lnet_nid_t target)
 	node = kiblnd_pool_alloc_node(&tps->tps_poolset);
 	if (!node)
 		return NULL;
-	tx = container_of(node, kib_tx_t, tx_list);
+	tx = list_entry(node, kib_tx_t, tx_list);
 
 	LASSERT(!tx->tx_nwrq);
 	LASSERT(!tx->tx_queued);
-- 
2.5.0


