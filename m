X-GM-THRID: 6471910913633943552
X-Received: by 10.101.65.195 with SMTP id b3mr576593pgq.38.1506859183770;
        Sun, 01 Oct 2017 04:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.7.69 with SMTP id 66ls2392188pgh.1.gmail; Sun, 01 Oct 2017
 04:59:42 -0700 (PDT)
X-Received: by 10.99.176.6 with SMTP id h6mr1070325pgf.45.1506859182761;
        Sun, 01 Oct 2017 04:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506859182; cv=none;
        d=google.com; s=arc-20160816;
        b=0rxMmF+S2HchokBUl/tbX7Dh1TwkMEbtCPnGK3eIpsfibPVlZEd2GI3wKBhLJ5rwbf
         OxZzqT4GfcvPIExWbvylwoQFnGFyK9vIsg/QFeXWOP1xOMKYcjCvNW7Dn2viAib8Axdj
         CeZKOS+RkXW9sDrjsEFeJuWoHMgv7AO+KNlv+iP/4qdb8SLF0AME0CqPS7vJIxpRaaTK
         hZ/uVTEdY0nM76jI38CJKHIr1/bM1JP9lLWOU4uPmjYonue4it0keR+COIcqIVbPfSR8
         Ry+cuNJky4Y2ZfXFgOJ/ajmu8jK1BLZXVv1PcifSh/W04io3YIS9sF8zHUk9eYHjjXF+
         M1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=Te3MacRRpGDKmtB4zZ7OY+NBXYqWn1RGO6vvAniYE4A=;
        b=IRPjgQKYAND93CT4nU5tmwrcOPkEPNim5D67aDtXIb8bQOUdiCgjCfiDdXeoW8MTzZ
         1NhyoC6fjzPfPs3YH1sHlB4fbTEOJuNE84be4v+++zEqG/sjSZfLYXEEl+5xVaj0yhra
         uO3e8ccMwF0GhNiK/91yaUVslCzVZfFxrGoOaXIuNd/Aq1YCWkkO6MIzLFw5wT7tVvAJ
         e/8L7vhIMcA9p7D91aB13Orz7isb1/L16P9ljz/4oH4bHhe4N68yIAYH+yoc3sziLlZE
         efqvSjVGcEX16T+huz+H2s6JWW14wfGvxEDbbLAh8mfcuMc0dIpOSEFuJmpuWAxYRjjF
         yRUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDtf04cR;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id w11si800419pfk.4.2017.10.01.04.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 04:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDtf04cR;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id u27so2924856pgn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Te3MacRRpGDKmtB4zZ7OY+NBXYqWn1RGO6vvAniYE4A=;
        b=cDtf04cRncVxWQyi6aDNtQ89JhUhITtyREGEY5xFLZVKBm/PoL3lzcMse5ph4Qf9cG
         5rQV6n3YWhDt2/gmDa1FDOuCYAfnDa18QOhoX0zJRI34rhOJLCppaq8t+Scyo4kdl5c5
         Jd4+1mTWutUKjuJPZRNF8pQej6/T6srqb8ZcDYocWhbtjRPERabtmqBZFMem6KzOWwD6
         8H4Gfcfyw1n/SfJ8npQBtiaRX2I92OxOIAQ4gXJS48rsCE8+MFMCtZEKf3rBVzT+dOX8
         ME1gpz6MEj6diXcy+g60DKEbv+wB6aTxKb2eJnamzR/V+8Cf/tGZ82Zs0rAic041Di+N
         R/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Te3MacRRpGDKmtB4zZ7OY+NBXYqWn1RGO6vvAniYE4A=;
        b=BgobtecgLM1OHexDfsF748bT1S4f1rNSsrd0+69z5xLTc7FuRH33C/RHbTcLvoxayL
         yykJgnuKzA6F8jZ1yvi6zbbFI5awuOGEEMVrSHqeOc/hD32osspANW6GpiNzZ2lQnRCD
         voJ9aU9s7Ie0Ba9UmPusUl8CE050X+1WooW/UfYQ0WKSdiUkYQP8Cu77cgjoZnewnzfX
         sj5l+Do4DFw9CfQkrDZTV3H8SIpU4r+1ml9En3a83VAbG6mHvRxO20qtYav/Z1rg+yfg
         NNPt+P9OtKfiuZhf8+TQu/j7Jw1essxiojgaCToiZ2dP9oIze9JEfzn3f6vEUmURlq62
         0Btw==
X-Gm-Message-State: AHPjjUjWcl9NaJ76UTYzKlJvKQ95yWFDpr4XfNoUW3geXairG/io2t6Y
	d3PI8LUYL+EeDnsnnjJUEMcA8OQ7
X-Google-Smtp-Source: AOwi7QA61CAlfAQ6OpDyx5Z0d6OU815ZYzd91JYjx0PiH/Ny64brCbDguqMeszw70QYJelWFc1hWwg==
X-Received: by 10.98.70.221 with SMTP id o90mr12244940pfi.277.1506859182325;
        Sun, 01 Oct 2017 04:59:42 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id t76sm13624502pfj.43.2017.10.01.04.59.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 04:59:41 -0700 (PDT)
Date: Sun, 1 Oct 2017 17:29:36 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	sudip.mukherjee@codethink.co.uk
Subject: [PATCH] staging: sm750fb: remove typedef for enum
Message-ID: <20171001115936.GA4941@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef will hide that 'DPMS_t' is enum. Removing this
will make sure that we are actually working with enum. Also is not
a good coding style to use typedef.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/sm750fb/ddk750_power.c | 2 +-
 drivers/staging/sm750fb/ddk750_power.h | 7 +++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 222ae1a..5d85593 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -2,7 +2,7 @@
 #include "ddk750_reg.h"
 #include "ddk750_power.h"
 
-void ddk750_set_dpms(DPMS_t state)
+void ddk750_set_dpms(enum DPMS_t state)
 {
 	unsigned int value;
 
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index 44c4fc5..a0a5bbf 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -1,20 +1,19 @@
 #ifndef DDK750_POWER_H__
 #define DDK750_POWER_H__
 
-typedef enum _DPMS_t {
+enum DPMS_t {
 	crtDPMS_ON = 0x0,
 	crtDPMS_STANDBY = 0x1,
 	crtDPMS_SUSPEND = 0x2,
 	crtDPMS_OFF = 0x3,
-}
-DPMS_t;
+};
 
 #define setDAC(off) {							\
 	poke32(MISC_CTRL,						\
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
 
-void ddk750_set_dpms(DPMS_t state);
+void ddk750_set_dpms(enum DPMS_t state);
 void sm750_set_power_mode(unsigned int powerMode);
 void sm750_set_current_gate(unsigned int gate);
 
-- 
2.7.4


