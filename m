X-GM-THRID: 6660411047048904704
X-Received: by 2002:a24:654c:: with SMTP id u73mr9080723itb.16.1550747791911;
        Thu, 21 Feb 2019 03:16:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b14:: with SMTP id c20ls733862jaa.1.gmail; Thu, 21 Feb
 2019 03:16:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaHGmPB9L64w7VBKItiavjWjZKBupQ5a3M8AGyeUBa6ebn3BgOJwKt84DmRxbjZUvOCfWGg
X-Received: by 2002:a02:18c9:: with SMTP id 70mr23385384jar.20.1550747791187;
        Thu, 21 Feb 2019 03:16:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550747791; cv=none;
        d=google.com; s=arc-20160816;
        b=VZ29FzP9LIgrpQgrAZpiU5E9cfnFMPGSMdLEjo/XqMz99zfCDfTxsYfJm6YGMJznJA
         HXJdTiWhS4w24nObljq2ObA8dnOhMh2GgowU6czByMaqa0OTl5N4XWF+7PICaL2ErFhP
         fC/K4vIqDegvW3BJ36bT3YMaPnh2mgHohnG5QTNQn8etr+kBwUiM2W+9vTGCYuNf0L4B
         YFWeHdWL5GueF4Cc9svQeT3ErSRXL8GA8Xbtw64ciUDIqZqKFmzd9tfUlHHVR9eKx8ev
         qkTPmXb8/HrZ7MAreUSzqNlQK+LMQgceYhYlvuH9q131GcKdDTwgq86ntdf2Gx3pHbJH
         +xuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MheTbDU66ohziQxIFqAWvuM6zGBtcBao9Klz2rHqkh4=;
        b=g4BB8SRmtstNoBQZ8uJMzkbHX1CttqHMixjOiflMXsTd080WxrkQO78obvQ7K4eOsO
         C8n9n2+09yWG8DQxcw3naA5eePgR7RY1bdFCLza5CAlsodnUzHry7k558Bd+/Oc189Ua
         QMDDVXUqaqTa8p2ySL59URMlY0bVqb+HkFYOrdFGMwXVmdArjfK3fMBDYlhtb0VnQRI9
         ilrA/D2EENNgPIk7NuBvskptQ+zg2wp9lJ77OO9udLEP7wHZp6uUf+ALuHuuh6+Rjeum
         YEx3mwmAz+4/T6ZjWFnCKPrpmOpCaR2q+HGGqUrdiM/MjgL2CXBKOgjk6AkEQjbKXaMn
         ACtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EM+Thrcu;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j6si423905itb.0.2019.02.21.03.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:16:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EM+Thrcu;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y5so8458921plk.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MheTbDU66ohziQxIFqAWvuM6zGBtcBao9Klz2rHqkh4=;
        b=EM+Thrcu+nG/4+SeaJSX3JNHzjKXFNW8HnXYK83gNURKWoCwaQHH34JVx0r5QouL1h
         P6lxzcLVP2ifNyOad7b6ntmFD2zdDnNqB8Q8kQRN1zEp+tEq3RbdT3qG+wyUwdrQyGXT
         Ou/eoi8tv4x1fMzA4dZfjYib1gRZHo8wtBp/ADS2bSKd9oej/Zm+Ee1e/Prvh78vK/pg
         Csf1py/2mf0iZmjbqYJE3jtU7X+d/FiRWwNHkcpcyq683TXVAkSjLExOS6V5mx3tzVZv
         T4HZvtm2JRV9JZg5KhljbeemdT4ipo9ZNutyluKNriHhBMfUfrn5CvWdylvrpZhXbMwm
         ckjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MheTbDU66ohziQxIFqAWvuM6zGBtcBao9Klz2rHqkh4=;
        b=MGzYAkspcTwvDMd7bfCAaGNxY5LmtFb1RH7qaCXavCUspJR7DB8Y0FcSdkLrSL4hnC
         fZD2SFX9yo3uxkG4/FCe8Uqm1lYziz71nPnlbym7IVPuRP5wSW5XLy+vgBk3q8XxLARc
         x4SVRTsXWw6vriTh+0iSG2Mz2VMf02PlgFSa/BrKVABKkq6CLNzB8IV+xk87jKY6RYlu
         +umodc1xN0ndlBIxEv3RSHUPO+Z4LizWvyP7hJZyjixbaJtf2C4SBxiUp84c9qxdtCI9
         4Qr05OBCKaIqK5N4BzfIIaVxmSAf+mufPfhzUQ2U1cicNXjb+gmHo+aKmMM+wXGBLg1B
         khUQ==
X-Gm-Message-State: AHQUAuYd/X/RbJ3uNZ2f2aAWcsEqGfz/qSf9Pn2/vCFxb0M12BuYw+Nu
	c8rWzXnbOfsWBBe/CRLM7OPjaEbXOW0=
X-Received: by 2002:a17:902:2aa8:: with SMTP id j37mr40494345plb.226.1550747790488;
        Thu, 21 Feb 2019 03:16:30 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id l12sm41981070pgk.40.2019.02.21.03.16.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:16:29 -0800 (PST)
Date: Thu, 21 Feb 2019 16:46:27 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] staging: netlogic: Add SPDX license Identifier
Message-ID: <20190221111627.GA29041@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
Issue found with checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/netlogic/xlr_net.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index f76e16cfd15d..de51d64c1f23 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
-- 
2.17.1


