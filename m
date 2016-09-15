X-GM-THRID: 6330639307056873472
X-Received: by 10.36.94.136 with SMTP id h130mr3464350itb.3.1473966887420;
        Thu, 15 Sep 2016 12:14:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.74 with SMTP id u10ls4316109otd.30.gmail; Thu, 15 Sep
 2016 12:14:46 -0700 (PDT)
X-Received: by 10.129.154.196 with SMTP id r187mr7425304ywg.54.1473966886950;
        Thu, 15 Sep 2016 12:14:46 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si1466809pfw.1.2016.09.15.12.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:14:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so1134636pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IAsrU5QryL7KVtE3Pk3s1nlJJqlfApPN3xhSBb84Cfw=;
        b=IxQS78xX+e+S1cJOW+5sQZxyVZxdGuAOgx3clcXl5UEjknfa8iS+qJcyBJ39TNBY0Q
         k8iSpwrhO0Gxg7Cw1GGRQwpYQAGUL006nTZmt+Ex5ltlCM9K+Pbj131NvmJ6tCaFsSD8
         r2bHLcrecznJsPKyVlyCMfsOImtzDhYGOuEp6ZVYgM+SEAw1dM0OU/GdA2xaxk0skdh1
         +vy9n4YV8DBtb/ChIkZPpxHeb2sdoCzvfcnfQ5U/5VrtnQzIDgbZs9pMw7LCuWwB6CxN
         w7UUrJDJnpPs2EiSOgbT9y4+V//QPKnOaXCkh+QG0gBxI0p8jID6MEptA0LU3fXyvoka
         yjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IAsrU5QryL7KVtE3Pk3s1nlJJqlfApPN3xhSBb84Cfw=;
        b=JWdA0d8A9PZdKBKatYWQjUiJdIm3t+8Wsei1L9Or67sqVCRZPtO5Wi/zQb2Nqr+Q8j
         J2/RAloo+3SGYrdltm8E8im5/HT0h30etRQ80vAXWqBmVvQFLSzwr9k1hSN8hNnspV3Y
         dXC1uhK/ZfWkhpqxN6NN7EKuoU0PaabEr0KmHOXCKY79ZcqH1JQEMgSFsIdSnbvKswfi
         t3rei5YbxIV1ITsSLhNYjf2HyUZOJob0ulVJufPhba3fMPmjnZXK8XlhrmNGXN/B1X8w
         6bbE8JUrmEVyAsdvtnI9aRk3OB/H5uBQYr83istaSoyaZeXEf6GDZTEBsVcXMcdxhfAe
         4unw==
X-Gm-Message-State: AE9vXwPY8JKkNUTEXlk47GB+ajoRo6J5WDhTzOQtzHndAl+/bxzibtxG4TK1hnFv/gBp7A==
X-Received: by 10.98.70.80 with SMTP id t77mr17131108pfa.110.1473966886776;
        Thu, 15 Sep 2016 12:14:46 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k69sm38051273pfb.85.2016.09.15.12.14.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:14:46 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:44:38 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: slicoss: Remove blank lines before & after
 braces
Message-ID: <9cccce3a5979c652dee3795cfadb6c477cec2516.1473966683.git.aquannie@gmail.com>
References: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary blank lines after an opening brace '{' and before a closing
brace '}'. Issue detected by checkpatch.pl.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 6bfb7a8..f2c751c 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -514,7 +514,6 @@ static int slic_card_download(struct adapter *adapter)
 			slic_write32(adapter, SLIC_REG_WCS, instruction);
 			instruction = *(u32 *)(fw->data + index);
 			index += 4;
-
 		}
 	}
 	release_firmware(fw);
@@ -2718,7 +2717,6 @@ static int slic_card_init(struct sliccard *card, struct adapter *adapter)
 		/*  see if the EEPROM is valid by checking it's checksum */
 		if ((eecodesize <= MAX_EECODE_SIZE) &&
 		    (eecodesize >= MIN_EECODE_SIZE)) {
-
 			ee_chksum =
 			    *(u16 *)((char *)peeprom + (eecodesize - 2));
 			/*
@@ -2856,7 +2854,6 @@ static int slic_init_adapter(struct net_device *netdev,
 	 */
 	for (index = 1, pslic_handle = &adapter->slic_handles[1];
 	     index < SLIC_CMDQ_MAXCMDS; index++, pslic_handle++) {
-
 		pslic_handle->token.handle_index = index;
 		pslic_handle->type = SLIC_HANDLE_FREE;
 		pslic_handle->next = adapter->pfree_slic_handles;
-- 
2.7.4


