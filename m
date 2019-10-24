X-GM-THRID: 6751365568986611712
X-Received: by 2002:a5b:b10:: with SMTP id z16mr10882379ybp.177.1571924790839;
        Thu, 24 Oct 2019 06:46:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls306753ywe.3.gmail; Thu, 24 Oct
 2019 06:46:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6brcVt9Vl6QEMzEAlQ+SHJX/+Ij6gtHFyLy2IYlRPYzFy9/t74DaRlVoZYtc19T8osATZ
X-Received: by 2002:a81:7a01:: with SMTP id v1mr6892162ywc.350.1571924789184;
        Thu, 24 Oct 2019 06:46:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571924789; cv=none;
        d=google.com; s=arc-20160816;
        b=LFBLvck6CW/E/oHwPn67ir0K5Mg63vk54EXBCoIpt+Gv+7WV/eLgTLdwYwGDIKTB7S
         DmYQJLutUPOeNybv7UtIuJq2zV6GVBewtlp6tysIXrxGgPRbdOlwIXYvZwCzTDF+HXGD
         si6NgTU4usYtEOviFw0swXRCQ1LXdy6YH+a3iq+DqedHT4ZGk1/3CZvrscvnLpmLAUgS
         ZjUL9UXmsavj6EYoU+7AvCv+JXyE6igQbNddsFU1f9extkSUc/8PVi+WBElQIf6ugMmJ
         maLM85FBAi0tY2FX26K4IgVQfhyaoJIev0LySC04ME3Fkd4A/RStT62I1VF+qk/iYZQK
         LxEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YVADX6DSai4QY17qkU/v9k2gRQpKDXNZLcoVrW5hFUU=;
        b=fu+eTNXmxdXyoujx9RgFdocCDHHNIkv3ifrveja/V5BcfTiq9JXLhfy0R2vure9i1I
         O+OIRuuggNAqwbeSiTS9qB0BawS54pTN5mzznWpxwFdGSJ/Q+JPUW4Sw6E4Wi3rkuuqn
         k9pFnB1/RwjbVOqIdqeaQs1nVgDBz43ihI2sirfERaDoxaxaV5z6lqB6U85LZkQz2KJF
         q9YqPeSZhPjoir8fQ96sTajUR4JRmmNvjG9U7rN+KU5yL1VuppMbM2LMhy29U0dLJ53q
         fg2a8A7GShq42yi/I0XXs78pm2oBqrs9vRxZ70nMiLW78t4X6LYmmtfObRagfidi/Rur
         LRIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4JFyrwk;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a1si1379135ywh.3.2019.10.24.06.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 06:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4JFyrwk;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id e14so18147757qto.1
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 06:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YVADX6DSai4QY17qkU/v9k2gRQpKDXNZLcoVrW5hFUU=;
        b=j4JFyrwkWBU9tRSOs5W1MBc1MF16o6txHjzdP6vUZo5NHMBncqE/ngW6UXr3PMFTk4
         09R5fZ28SaW0YvxNoc1FBxQNlk+6YQHsKVVV8ew9RwYXUH1Bz8FMxHADRJ5HpFggD1tE
         3QtIrje9Zel5sv8J+wLM6QJfGK90UTerxyOXRZJcetMFCpUMNgumnsOrcJzxL14ncRUy
         nmVi2d+e9rUISRb/CbxxXtdgapqQ6+Fh/6hT8qrUDZO18zz6Q3fGwR/54bQZBg30rUzU
         BopX8hqwlOi6ldy118HiLLAB6OWC+Nc+se4ZZkc2mcb1+JA02kJ2Sy2ul5QWN/bjqj8V
         9VxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YVADX6DSai4QY17qkU/v9k2gRQpKDXNZLcoVrW5hFUU=;
        b=BxuieTQbvoQ5WwArjC76hWxRV5q52es6zGRFclaHQcsYzWpJ70mdkqIL9Osc8mWnUG
         yTWDLFyosIxuYMMj+9WH77a1kiHbeKWL4Hc3fB+rhF+KAQ2oVHFlHAnTB7LpcwIQP2yN
         PAdwr7QBe4fyBN21eR6SGnLsZwYya0icG4okDxXZNK0IHxcd3UR8Z/yW3Pw2+/Nu+tA6
         2h4YI9zpQ8mbAe8jynbjxt9tlt/3JmqoXgiGt/Nt2SoXJK+0KK/EgpIwUqmj6TRR17w8
         PXPFWlvkdwK39ybfbM97RLZS1sDoZU7hmhbcpfmwvIDK48DjYtsBqgIN9L4vQKBtP60j
         x3tg==
X-Gm-Message-State: APjAAAX3vb0+aYsmEsdj/UDF/ytkt4ZibXBT/5uxsHrrF9zwJV6R5hBG
	PSRqx+TchnTaz22w5jw2Bi01xWpnbrTtgA==
X-Received: by 2002:ac8:199d:: with SMTP id u29mr2805279qtj.93.1571924788633;
        Thu, 24 Oct 2019 06:46:28 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id x7sm1076821qkj.74.2019.10.24.06.46.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 06:46:28 -0700 (PDT)
Date: Thu, 24 Oct 2019 11:46:23 -0200
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191024134623.GA4506@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix lines ending with a '('. Issue found by checkpatch.

Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/gasket/gasket_ioctl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index d1b3e9a..e3047d3 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	ibuf.size = gasket_page_table_num_entries(
 		gasket_dev->page_table[ibuf.page_table_index]);
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
 		return -EFAULT;
@@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-- 
2.7.4


