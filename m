X-GM-THRID: 6666118349921976320
X-Received: by 2002:a17:906:14c2:: with SMTP id y2mr2464287ejc.11.1552076626012;
        Fri, 08 Mar 2019 12:23:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:97e2:: with SMTP id f31ls2630508edb.0.gmail; Fri, 08 Mar
 2019 12:23:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqxECKkYljg0SUpUDIXUhwVMO90WX7C7BkeeH3xn+vPApK6SxpfCXI/nfsuOUzxIw1aGJ4uG
X-Received: by 2002:aa7:c758:: with SMTP id c24mr5897750eds.2.1552076625065;
        Fri, 08 Mar 2019 12:23:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076625; cv=none;
        d=google.com; s=arc-20160816;
        b=Lsrd4h5B2Z9JBVoKy0h5IIlgVDU46qlRGBHuhPJy7AIayZgZ53rt7IWR/b5wOql4dB
         rTr8Oe6Rsu81uKlTVI4l6KA4J1rZoouM9a33ap8RQa0Wh/9CO/IwxDZ+mviNQUxizH1m
         Z/o8Q3gB9YtVZUvVCiQ0YvgGzf1C+NM+Fu+SZ/ccPfwG9P8p/ThxvXmqOOoE6NtHDaJZ
         fQqD+gWyM5iPuU187hneJA3nQjl8dq3C0XlmWtzLsSlKQtXn3JUu+mjydJ220EdDuZZz
         fUVlzLuEfsOrqs2A5x6sa7BHBGxIFTY2wj1jTGAZnaQ5Kaa0WQrYfWg2M5jdsKVl0bpn
         NdMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dADrW7m3DTKneFXkTDGSa9t7sweAxj9qEUUQ8LdpZJk=;
        b=LZmq63quh9ccsBENoYooAcPZkyTrKfS5IoDucBhZw+vfINwf6l0dK0tkLlfEIpmEuG
         Amw6BfzhTNswDdE0RQsr+9onH5uhnXbPrZLEUIWV1kxFUBhOPVUpetpVbha2cFMQREpj
         UV9WcPMIMrp8V/MD6UOh9yiaeHzgrmsP0QDu9fGnN122igc7c/ZDMB2qmYT830MI6Ufa
         751Pmi7FPm+thPHiUz9E8lObBjSOhkVZPkOGOe7h9USX+MK+kHWHdrWo8gp+0MSkRQG6
         RyeTpoGj80SklPQQjHw+i675IOTMkJ5lHh9T1gSy7gYVCWB1Qm+zzSvjqlWSwrrsw4d7
         AP3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGhrYGSn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r37si455479edd.2.2019.03.08.12.23.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KGhrYGSn;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id o10so9687065wmc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 12:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dADrW7m3DTKneFXkTDGSa9t7sweAxj9qEUUQ8LdpZJk=;
        b=KGhrYGSn1EAf/bhUaSsoraZ148EwG3WLWGqLJKVd9tUFO9Yfpg4RB2UhVudHL6DRjU
         O99sFkrGDHcnrwe4EnEiS1Qv0eMBA7QzxUqYpNPqvQzrhQxaX3LT5QgYVzZ8apctNYuS
         M/VTaiIG5NOoxz7yhMyazhUdJ+fyVLLsk7TXXNmvVdRZkKlHUVz0mMsFoPMsaYjAtkMV
         N0HeUGcxMb7iF+d5HsMHg1ZNTgvx+zaZi/D9szC1l7VhoNCZgD3l9mXlfSUfFBx9COfm
         4Fw/pCLsKJIARJHDwyZpI+8/94+4duHrTx/pSCqxYDTT4olPkF3DMq/tVJesFZhfNkH9
         Su/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dADrW7m3DTKneFXkTDGSa9t7sweAxj9qEUUQ8LdpZJk=;
        b=XdLmff0jzdY9k3c8XqtlXJU2V+0uAOixbdoF4xS3KeZOaTcx9zVs1qiGrFE+OPK/I4
         grKYnV8JxeCh3bX7rwxe2ybrCOHYSkr+1IKXH1grozAO8Ug743oVomF1XCGRath3lJFl
         5ByeBQWpq2kurwQgffxhTr68/Mg9JVhbJC2EXbxVEVx6Mq4AUGA9FY0zu+lQfg4bQbvW
         KZlOL3ZBmaFDdYaG4+ktU9HJ/oOG8pp6tM2j7446xS74nMdxMRm2yJgG5eI0TEc53cG9
         b8WRuG9FwMJ0A6ydcwStTOMwUhcEDbBVxGcjwQwVGySnLey4BWYYppwdueBaUQqmK9iC
         w26w==
X-Gm-Message-State: APjAAAXWpJoGRA5JrwRhIuiQ861fhgxQa4oZ3evZWhhkccs4ypd2CjZd
	fxw8mEGlNsefkLh4YdpNnyUARJs=
X-Received: by 2002:a05:600c:2210:: with SMTP id z16mr10099961wml.57.1552076624550;
        Fri, 08 Mar 2019 12:23:44 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain ([176.12.107.132])
        by smtp.gmail.com with ESMTPSA id d24sm21381733wrb.47.2019.03.08.12.23.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 12:23:44 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: aacraid: add SPDX GPL-2.0+ license identifier
Date: Fri,  8 Mar 2019 20:23:27 +0000
Message-Id: <20190308202328.14042-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/scsi/aacraid/aachba.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/aacraid/aachba.c b/drivers/scsi/aacraid/aachba.c
index 75ab5ff6b78c..955ddb32aa40 100644
--- a/drivers/scsi/aacraid/aachba.c
+++ b/drivers/scsi/aacraid/aachba.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *	Adaptec AAC series RAID controller driver
  *	(c) Copyright 2001 Red Hat Inc.
-- 
2.20.1


