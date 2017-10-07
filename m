X-GM-THRID: 6474166398714118144
X-Received: by 10.99.64.71 with SMTP id n68mr486848pga.137.1507384329028;
        Sat, 07 Oct 2017 06:52:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.82.135 with SMTP id y7ls297274pgp.4.gmail; Sat, 07 Oct
 2017 06:52:07 -0700 (PDT)
X-Received: by 10.101.69.67 with SMTP id x3mr494144pgr.132.1507384327982;
        Sat, 07 Oct 2017 06:52:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507384327; cv=none;
        d=google.com; s=arc-20160816;
        b=kqBcWbQiw3XiaRl0k5EGlZ0BDnvvWV8MDtxT0zxTWXw/bZpE3uRByp5N+2GzjTUQ9g
         S2+pyTr9UnDgeg4Qz8xYKx1q8KrOLsv+rrsZ5Q3h0RkTaqgOgBVgc1QIEFVDelG0hfWC
         MB/aeaSRwPCJ3ifmN47MUeuIOMh1dFKbloNdNOvk39C78Z6IL+U4EvhqxSG0eIPcldxF
         xc0o/kXM0WaG0PgTXRR/c35b1qrQdtO3kxQpHA0tkgHqmQB2ch/SRF5fzCMTwVOsRUL7
         Jfzj29YivJU9ARbufQx2L/b5XdrIrgoI5tyqIWOobSjWunrb6WBqsIurGwvD1DsFVtBh
         ZqIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=LWfznl+E7UHk1Tm2a3ZnCyf/c7UsK7xYbPig73lsJ88=;
        b=aTFVw9vK3szRQYOszQNC6pHkKaIjmzH4tLrVVhHDzM/K5Dl0IPCAx6zU6KuxbWKsQP
         Odkf/gMdfovuiCyiPWHCWcWMA3j4wtnzCiklNMFaGYjZsPaQxtKlmWcr6ZAnx8JgQZzV
         LbM0fK8NfJwK5Z+L5VlyA7OYpuW3Jn4DjxIN6RAIGH3gGQqms6MCmA+LNaMES4f5sWsG
         uB0bDm8OTx6GPy/Ms3HP2ET/Rxsq64E5a92TyXjZCoB4AbyQ9hgzvRTDtAGfEFa/A0bo
         Iio56OBJVnFP5KQiYW1Pu967ZQXz0HHvyt4+XD1c6PQhrDKYptbZssQf1goId0peVnBI
         +Vgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kWluOt6K;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id l80si34931pfk.26.2017.10.07.06.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 06:52:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kWluOt6K;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o1so19863492pga.4
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 06:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LWfznl+E7UHk1Tm2a3ZnCyf/c7UsK7xYbPig73lsJ88=;
        b=kWluOt6Kb6Men1EFtEmxMdy3kfylXRSBBPdPKD7Rwcn2idEATzSzOPHGN+fTJQmo5u
         U6z/BIvE1U/WP9IXr3iL6nPrWwSipoWe0MfXbLSQvASzUhgAjeWIBozJukurd8Ecfuoy
         gUfe8snhNpOMch2ocKvOOSrKJxoqvfWzTBVby2nkIZk4AZ1kEmy8TaTqaWUPdx4WOHv7
         0sC9jcKbzCm/sQgAz9DQgiMnuQlGWc9nveWdMojlmnPC0FvGdR8gUMfC0AiZcgSthrhA
         KqkuuGkgHZL4Sj3YBhUxzTe1lVahoDMDnsdsBzfmFnwKXHI1W097TqogIFzgAdAqKYqb
         4Tpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LWfznl+E7UHk1Tm2a3ZnCyf/c7UsK7xYbPig73lsJ88=;
        b=gYnoTfVKoIhIUy1idFVcQanwfQleDaZ6hhCOIneQAfU5Qd/zvdvkWuLoEZ/1rWwOYT
         +OSR7zy3daG2zIVFHl8jHS3cxqfw+WxMHsKMAkWWghAeUqd3h7YpXzEhx8ee8rSAdlPE
         BS23f3wSlAAE2MO3YAjQnY71NeYFskrhB3TJEBurVFtTt8+6sL0+wjI1rBNxbWLX1Iup
         WmoQl+qEZJha+6VEbsi11m33YSGwgblwRg0oJ36kKG4H7Q+lx6SlTEeBvnWFjHt0RZnA
         0+7xn9UGl8HqfZ8JCmaDZS5bGhVm35wdMuCFeJdxjRbgZlVlOrMBp9ux7qK6ax++3Mzr
         jwxg==
X-Gm-Message-State: AMCzsaW0dNDF+qpB1Cl9IFGNrL72ZhIuODGpS5q8NAnyxdlaUdABqgII
	hI0yPzznampVs9gi50pxJXM=
X-Google-Smtp-Source: AOwi7QB0yH+jsgpMCrXvCrdwg1IWqkOm41wlLS02jmfnu5NJCNKjQwac9kRamg07UcmTxusttdfGNw==
X-Received: by 10.101.78.8 with SMTP id r8mr4790293pgt.306.1507384327668;
        Sat, 07 Oct 2017 06:52:07 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id 75sm7507774pfx.145.2017.10.07.06.52.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 06:52:06 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: atomisp: pci: Eliminate use of typedefs for struct
Date: Sat,  7 Oct 2017 19:22:02 +0530
Message-Id: <1507384322-16584-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

The use of typedefs for struct is discouraged, and hence can be
eliminated. Done using the following semantic patch by coccinelle.

@r1@
type T;
@@

typedef struct {...} T;

@script: python p@
T << r1.T;
T1;
@@

if T[-2:] == "_t" or T[-2:] == "_T":
        coccinelle.T1 = T[:-2]
else:
        coccinelle.T1 = T

print T, T1
@r2@
type r1.T;
identifier p.T1;
@@

- typedef
struct
+ T1
{
...
}
- T
;

@r3@
type r1.T;
identifier p.T1;
@@

- T
+ struct T1

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c  | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
index d9178e8..6d9bceb 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/spctrl/src/spctrl.c
@@ -37,7 +37,7 @@ more details.
 #include "ia_css_spctrl.h"
 #include "ia_css_debug.h"
 
-typedef struct {
+struct spctrl_context_info {
 	struct ia_css_sp_init_dmem_cfg dmem_config;
 	uint32_t        spctrl_config_dmem_addr; /** location of dmem_cfg  in SP dmem */
 	uint32_t        spctrl_state_dmem_addr;
@@ -45,9 +45,9 @@ typedef struct {
 	hrt_vaddress    code_addr;          /* sp firmware location in host mem-DDR*/
 	uint32_t        code_size;
 	char           *program_name;       /* used in case of PLATFORM_SIM */
-} spctrl_context_info;
+};
 
-static spctrl_context_info spctrl_cofig_info[N_SP_ID];
+static struct spctrl_context_info spctrl_cofig_info[N_SP_ID];
 static bool spctrl_loaded[N_SP_ID] = {0};
 
 /* Load firmware */
-- 
2.7.4


