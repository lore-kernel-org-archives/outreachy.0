X-GM-THRID: 6802195878840893440
X-Received: by 2002:a63:1c4a:: with SMTP id c10mr17641996pgm.252.1583771279861;
        Mon, 09 Mar 2020 09:27:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:7744:: with SMTP id s65ls3745428pgc.3.gmail; Mon, 09 Mar
 2020 09:27:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvzD3ugGJNzBRq6/BMYUqCMo0rGdnfVySSkTLDykE35Y6FAn9sbTsvXyTPKdUpnydiYOuOu
X-Received: by 2002:a63:fc1c:: with SMTP id j28mr17318883pgi.289.1583771278222;
        Mon, 09 Mar 2020 09:27:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771278; cv=none;
        d=google.com; s=arc-20160816;
        b=munoHc6ZgkYJdnjHVYf5KUCsPkb72yT1975KGL4tU3MGRxlq5ZxmcoiHkN5pDD0ZpX
         lX35bI8/LeRaYxQMQXoQWyH990xoDWNaCqpbqB+sZchc8lJicX9SDLuINRkI7gXl0Fyf
         TWqbVy7l4riqoG0Wl7hj1jEv5EQfqB5O1ok04GTVu8S566gJwyGeys2e6+nejeQhzQbo
         UGjBuX6GsjY9t9CiGq9igQLXlMQTdCeRkxGhcFmx12d3mVwf2Kktuun7Q2LEbxMpGHXi
         KsvUW2CJoBqMdQLako0Mfd3KVNecc9XL5Z2xV/hmhmCMDbRuZuzGBYWwFO7qFG44HHiZ
         somA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=skjHIoNFW9m0Z/KJROrRid0ClfTATsnMjdC8nn8fLgs=;
        b=QAxQ9zHd6OpuKuGOo/CsrPIAQIy2lRYJn+fiffuU8M4DKylJUxv67goT417ARtncPm
         Lxn9t3tPd7p7+iY41e30LCQHuOo97/BaqTydVbmbj7BJGsvx0qNdpN8g6rWw9MunTrNz
         2HX8Z18aX/akYoMSz6p4+ePzDYTOFLwz4odiHMLBFux+wNKHEPMWMt4nEVc1HhiTR1ug
         T9T6nZCxtvnhuIOKvSxohVQuykGrkcCJFXIALz2+BEMWl+vhraeLw1iZ+tjZ1JRuc7Fy
         JmNkPP9Yn7iS0BXxP49+kpnMLHfYvExfWNcdQ5qwotwRH5LkHqHOse+K7tBKvyY+aeih
         pG0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=crleq8Jx;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id y13si537301plp.0.2020.03.09.09.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=crleq8Jx;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102b.google.com with SMTP id o21so123154pjs.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=skjHIoNFW9m0Z/KJROrRid0ClfTATsnMjdC8nn8fLgs=;
        b=crleq8Jx1uDLcZpe0ytVgSa7q5F2hENDt6TFMsmRrM33DLGcRTQfO9fwWchoSYIhvg
         981umQOeu6FiwE1ihAGtJj966xuiG/3Py2IIiqNAdIZvpwfO4VWNNSly4EeZMwwUQOb/
         lWGDBXWblOGmO9qXz/joJ4qvZalcvGo5Nto7KtYoppmDhfTBSY8mESA6EuaD/MkzJkfe
         xV6R7JDSjXU2veggBPwqzPChBHxgl/eGAnGGvHGcq15dgB81RvNqQ+QPDMd5eKYCQBAF
         e0ebcFF6Api151Y/Pl5JP//ebIsQMUFM0n6BRul9B6Bmi4rARZ1wV2qeFCIdikGASqIb
         x1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=skjHIoNFW9m0Z/KJROrRid0ClfTATsnMjdC8nn8fLgs=;
        b=F/b91ICJqpmBrROtpVAIWcWwpaUEq7+xjbD5X9F72G8OaBCdaBY8YeZngU5HSJxnu7
         qliJhaoFy475E/AqdmKCPcK3RovWLe8ctpD+uqhwkZQzeiQ+B/pYFX0QOGr8/s34l4aZ
         aJ5lmmH0aBrXRPBn9sUMZxeS4RQi7pjgeeluGXMRhwhyjWzCO/Cae+39L1feLEw0rLEl
         dOKbV65iNsuWBR43gssHih0TIOds6OoCj60+MI+J3qZOpDTCeES0vqy/kv7wP9L1K5iq
         8fKjrLfciuoiMFkrQhg6AkMS8aZJnglvZR+Hwy/mnEAz2DVxlzLngilHeFItNhahbo/y
         ASFw==
X-Gm-Message-State: ANhLgQ2A4acK9GwletrH4M2wCS+a1It93IU7kpjXX2L+JSZMOWwaePn7
	yDRBSZWqlbehGZW4d2a7+jQ=
X-Received: by 2002:a17:902:9b8a:: with SMTP id y10mr15933389plp.114.1583771277794;
        Mon, 09 Mar 2020 09:27:57 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id b64sm26641364pfa.94.2020.03.09.09.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:27:57 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 3/3] [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines
Date: Mon,  9 Mar 2020 21:57:28 +0530
Message-Id: <20200309162728.4342-4-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>
References: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>

Blank lines aren't necessary after an open brace '{'.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
Nothing has changed.

 drivers/staging/qlge/qlge.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 4ef8dae3d7a0..fc8c5ca8935d 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -119,7 +119,6 @@ enum {
  * Processor Address Register (PROC_ADDR) bit definitions.
  */
 enum {
-
 	/* Misc. stuff */
 	MAILBOX_COUNT = 16,
 	MAILBOX_TIMEOUT = 5,
@@ -1762,7 +1761,6 @@ struct ql_nic_misc {
 };
 
 struct ql_reg_dump {
-
 	/* segment 0 */
 	struct mpi_coredump_global_header mpi_global_header;
 
@@ -2059,7 +2057,6 @@ enum {
 };
 
 struct nic_operations {
-
 	int (*get_flash) (struct ql_adapter *);
 	int (*port_initialize) (struct ql_adapter *);
 };
-- 
2.17.1


