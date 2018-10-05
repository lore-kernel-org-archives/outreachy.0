X-GM-THRID: 6608456604457107456
X-Received: by 2002:aca:3203:: with SMTP id y3-v6mr7223070oiy.14.1538724221447;
        Fri, 05 Oct 2018 00:23:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cc96:: with SMTP id c144-v6ls4767921oig.13.gmail; Fri,
 05 Oct 2018 00:23:40 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63yvbUfEth8F4CYpZWsgzh1kMCtoZqlLdQxQ0VKk2//ZcotLB9UajaB9RV1s/KqoiFqPqrc
X-Received: by 2002:aca:5089:: with SMTP id e131-v6mr7532232oib.55.1538724220930;
        Fri, 05 Oct 2018 00:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538724220; cv=none;
        d=google.com; s=arc-20160816;
        b=LEJwFsvchuDWxAdgnZshPWI/EFCl1zbc8LmtDc2tkoxRpKUMCHIuAg5gZmqpcfeNct
         HVZ+NXKJhRNVvFg5WwXA2xVP8r+xIHMCHYiaFVdpeG7qVjiby9vRDyxMpv8D2p6eH2gq
         SGZfEHkdzYPj5AFKVDFxr8ZsPmtwLIkUzmmW6B+7ykgROG7DIU7FE6oeiWr3cXGULAhu
         Y5l/TYsp/rq4QEexfltGox8iKp6lqjj/Cm/jvNqfAhx1iqQaitrbbcv3UUuU60WPEahG
         dd7LO3yCvE2Qbdf/6zquWqUzXkZv1FiN1u1HR2sJIQexngbk/Qxl9N9nMbTJkvy0YSBG
         Rykw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1lb8fN8vN0MmPNCZeFgSiM7nOPzvSfsBsWXVArZ1B1M=;
        b=Uvk2aOZBc97bs39X6jlqkW/7qK0wjFtvj0DB+OZGpa3CQxz2yeoJiAemx5RZ0WpFLt
         A0P/qz4jVsYZgfyZBKJ1bpxk8EoTKAx8IktmrUpxBM+WEQNa+UJ9+mUMI5lnoTGZStRi
         8CfQznY6xbmNnhii4DK/JeMelHnF4B97LigZCGGpq876CyEKE/8UANwFfo+MQukJ3ryI
         NM4jNyHVBPd6e4AEyk5bYY7gcQl8Wm25HBSGN/E6neqpLz2mAec2p6b4npeWX/yxs8NC
         584YuMraVUYkANmRLBs926qYD126/vvW7F2DjReUUZDwCRpmtzSmZh4keS2pf1HObi8p
         xWsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbnsrljs;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n206-v6si334962oib.4.2018.10.05.00.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbnsrljs;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 23-v6so4330746pgc.8
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1lb8fN8vN0MmPNCZeFgSiM7nOPzvSfsBsWXVArZ1B1M=;
        b=gbnsrljshBJGVmMI4MVlXjxHBwzYZ5C+5fy2d1xEn7OjhbqKxI36go24P6r7h2yY/W
         Oh38EBNEcKbxqczZZvHfQiZmUinx4DAYitx8dWEIR7zv4E3S3v4aAN62tnoEFi5f+PYD
         8coGF4mTGf2fEo9QjUfS9JERt66adR3KdsaInXauyEliT0bWWzj2G6M/K8qnt0gzCvRn
         KyYlMJSZF7j04/5F+h0Rvlb4gbU5pXDbffVMVqvATOG0JDEgwehWjUow2VZnUDBdmLWc
         3POWCh9yp2LEeZetYTRWIDToQQyeyatGZ0M6xVSIhaFKZeqhqcsUSudxNW23kbSmhFmR
         u15g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1lb8fN8vN0MmPNCZeFgSiM7nOPzvSfsBsWXVArZ1B1M=;
        b=aB5XqUShM5u9JW5Ygb16NoEClLLV83QEjXSYNi4fnRsjQAjy5kiBh5lBIsIoatprea
         oWoNWRyzKAmO/oYk3uzCSF2noT9RXeLFSU4A5wQVZtrm/yFytCh48iiIcrarNSNqmQg7
         v3/J+6egTuuJfaOwfVwCae8foaitVNynjeA8UXVDPizJ1iC14hErTXq9CSWjTSUrtLng
         2HiZ+BF2RSauucbnPUVL9LkMmt0oZsD1bpzHTE4gmO1lDILVdoLkkLq9fp3NrfTzb6yZ
         A0weS9qg36hdyhCSlkFlDIMsJe0slTE0VldpxDQwkPtJ1n3BxoM9bds2E24DkHZ8VsDe
         rmjA==
X-Gm-Message-State: ABuFfojPtWldqK6xlBqg6I5bmpiDIgZwW1tWpX2iX9W4bDFlFwxwDRIP
	/emY3ZiKMJKqXJfhxoL9kvk=
X-Received: by 2002:a63:5ec5:: with SMTP id s188-v6mr9004258pgb.126.1538724220166;
        Fri, 05 Oct 2018 00:23:40 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.221.57])
        by smtp.gmail.com with ESMTPSA id x24-v6sm9490257pfh.67.2018.10.05.00.23.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:23:39 -0700 (PDT)
Date: Fri, 5 Oct 2018 12:53:34 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/5] staging: mt7621-pci: Add spaces around '|'
Message-ID: <363b3aeaa2943a5f0778be5e8be485a8e50ba24c.1538722582.git.mamtashukla555@gmail.com>
References: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538722582.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '|' to fix checkpatch issue
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v2:
-Cleanup for subject line of patch.

 drivers/staging/mt7621-pci/pci-mt7621.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 14aac08..780ba56 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -644,7 +644,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	switch (pcie_link_status) {
 	case 7:
 		val = read_config(pcie, 2, 0x4);
-		write_config(pcie, 2, 0x4, val|0x4);
+		write_config(pcie, 2, 0x4, val | 0x4);
 		val = read_config(pcie, 2, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
@@ -653,14 +653,14 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	case 5:
 	case 6:
 		val = read_config(pcie, 1, 0x4);
-		write_config(pcie, 1, 0x4, val|0x4);
+		write_config(pcie, 1, 0x4, val | 0x4);
 		val = read_config(pcie, 1, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
 		write_config(pcie, 1, 0x70c, val);
 	default:
 		val = read_config(pcie, 0, 0x4);
-		write_config(pcie, 0, 0x4, val|0x4); //bus master enable
+		write_config(pcie, 0, 0x4, val | 0x4); //bus master enable
 		val = read_config(pcie, 0, 0x70c);
 		val &= ~(0xff)<<8;
 		val |= 0x50<<8;
-- 
1.9.1


