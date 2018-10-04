X-GM-THRID: 6608456604457107456
X-Received: by 2002:aed:3e0b:: with SMTP id l11-v6mr4066599qtf.7.1538651555874;
        Thu, 04 Oct 2018 04:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4c4c:: with SMTP id z73-v6ls1580288qka.6.gmail; Thu, 04
 Oct 2018 04:12:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62lO63sAU9HV4i6+r3sakFJLMWQGD2SciGynx7uSKWA2JoZNFwYnJVvAjDLXGThA6SHSrOS
X-Received: by 2002:a37:1a66:: with SMTP id a99-v6mr3967562qka.8.1538651555326;
        Thu, 04 Oct 2018 04:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538651555; cv=none;
        d=google.com; s=arc-20160816;
        b=Sru/KQ2g+lBKq891aXSHWuTxH6CK61iVChwKe9rI6BaVOTHZuD3izW9NEPkmNjjgrq
         w0IgCLMu8HbLV3dMl88zq2lm0teky5RLssqKi2M2FvODsXS8G+9PAc3fZI7hgpmyN2qA
         FyzkCfsFPvZ9yg0OulWPbx3xDxEBn+o74gcSezs/Lb5kks2oB1q2AaYMHsaaGarOXyc2
         ANw9XMc+RTehHdgoOce5WdQcLQUrCf3UJwO26ognGBT4JUQWKmwjTNIB0SgETJsZ9Xsd
         dyuh0FcQi+rMkHv3iVj3QUHKKkMfyIn0TZYB6/bh8+NNptC5V+IUNAduzBJ5BtETuFE4
         DOpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qGKGcBcpc2RF8oeJD75mmQAhj4eUPEC4ZEcjZYS+hKA=;
        b=uxpTPPPGC+RiaLYtKRXvGAW0zIUUpwjsBAsz1b9ehj5IkQ+pYYKtXO/0wHBbJoobWW
         EVI9S9HI4RXcqgHLZN/hk19NiwaZKn596LH+BlsNUp359tyMGxkkpC7V3Cjdoq6UoJx8
         VN2NiF8P9XwOZOvja7M+yDZ26/utNXmv8gZWSBrbXuzh8flGj69QQDLYqULJzmyXWHH8
         8lnzmWJbJbLoMpdo/hTaA0mFuZBCHFLcMw2rqvAA5KeeLslM2Wcri1vtAkojAfRI2lHd
         w/YuVBCZ5yguivIJgguZt2KhPyFtU1aMTArzWn4msg4nLAJf3brG3vLXWMdmiQNYcV24
         2hYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iMa1XUPk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id k8-v6si236008qkg.3.2018.10.04.04.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iMa1XUPk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id f8-v6so5024075plb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qGKGcBcpc2RF8oeJD75mmQAhj4eUPEC4ZEcjZYS+hKA=;
        b=iMa1XUPk8DrWNn/sFoD0AFZoIsn1H9/1abSNG68Huj2VchnpCYGOM5hIkg5HSe5em9
         5E9hHI9+ZGEwUKEdOp1k+rC/gTI9L9ulyOjMLXacDgSkv+5KkhOAsZfrRwyLH2sFmdAB
         JtbWDWM1nO3iX+n6cNg6ecmC+cdehWUvwRD6rS4NsGaqu7h34eVnsLRQG0WUow/bbrYB
         GS8HP5R5EMsZRxiuHz4J+6lr4moQuQdD6HhBy665dXNDy/T6UkNQA8mEbBe6cyTfs5Jq
         bjQzv1vZIeLn0XzMwkY8JRINnXPeKTSCRBNnf+LpTboledFzezOEbiztqXOD4pFH73rn
         3m/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qGKGcBcpc2RF8oeJD75mmQAhj4eUPEC4ZEcjZYS+hKA=;
        b=H5lOaeSuctU+vyAwmkXwp2BiALXne0kC2LZi2lqPgVcI2yyCSsuZ/ksImNcjPjXgHQ
         Cz9gezUx52dMMmG1pYpaLDwWeiXLlpRpiecwTmNJ4O/MFUtjQPQOZ+uPGKjhjHe/6Dfx
         yKnSkIXa6MPd/PYigzWmFYuwW1QNlXtRODUHCy8Y4ZEucKVeOESljBz2OdMkywTdKU5b
         4adSZm4FbCB+2tHlA7ObaBDqT9IrurcY0taMOocNUl4tdLIY7e6PyrC47S8dclt4biJA
         s/nySCDqGM9cMxBtosCtlCEbpTez5z/MBpM66RyBpRe1SXUoT1s4qLbB1gVDVzEyJH8+
         siyA==
X-Gm-Message-State: ABuFfojwOZHftez9ZyCS5NRFySOJN4JkxrFPTTkuQqZsYgPujzfbHyh8
	ZlIrFc/rcpEdXPYjB1PR9TY=
X-Received: by 2002:a17:902:b712:: with SMTP id d18-v6mr6120716pls.53.1538651554771;
        Thu, 04 Oct 2018 04:12:34 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id y85-v6sm9277942pfa.120.2018.10.04.04.12.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:12:34 -0700 (PDT)
Date: Thu, 4 Oct 2018 16:42:04 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH 1/4] staging: mt7621-pci: do not initialise statics to 0
Message-ID: <dbd85c8647fdc02a03e1266568ac8b043bd6720d.1538646749.git.mamtashukla555@gmail.com>
References: <cover.1538646749.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538646749.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove initialisation for static global variable to fix checkpatch issue.
ERROR: do not initialise statics to 0

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index ba1f117..3182d8a 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -122,7 +122,7 @@
 #define RALINK_PCIE_CLK_EN		BIT(21)
 
 #define MEMORY_BASE 0x0
-static int pcie_link_status = 0;
+static int pcie_link_status;
 
 /**
  * struct mt7621_pcie_port - PCIe port information
-- 
1.9.1

Removed initialisation to 0 for static global variable:
1.This type of variable iss initialised to 0 implicitly as per C coding
standard.
2.Also this will take space in .BSS segment of memory while linking.

