X-GM-THRID: 6755697010299371520
X-Received: by 2002:ac8:7006:: with SMTP id x6mr16003029qtm.152.1572933283702;
        Mon, 04 Nov 2019 21:54:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls5601957qke.7.gmail; Mon, 04 Nov
 2019 21:54:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqz8uTGiu0ds9Gypqo3Ldd68hia3i5bvVkJoj02IDaDoJ2cmjH0i1VEoE76vc9Oty0/qllLB
X-Received: by 2002:a05:620a:13e2:: with SMTP id h2mr859289qkl.114.1572933282473;
        Mon, 04 Nov 2019 21:54:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572933282; cv=none;
        d=google.com; s=arc-20160816;
        b=vCRkr9Upn82q01aNtMYZNN0d+whxizgh/lFlDsf6J+T41xaDqi/mhm2qlG6UUyQOaI
         x3dPH1coI4sr+nhcyQJAroZhN74ZxPWIO0P536OpixBltvPzDDjqoqMhpXeI6cIonPM8
         phe/5+GlVoRyCXJG+VJhgfmq/1QxMkcut4qAqHzY+2mctgu/bQBurSVtj4hlGZkz2nBm
         fEa6iTMcYj63YNMmzbeyZ22dZ9qB7mvM541N5d17DtDFwukwf4TRfsECzuft8+RhmScE
         TJ19I878N9y1FUeJHG5JP+uFaOXbTacS0hgz0HI+e6WHx8OdtEa1trUeyaTnMoeYRAkW
         fwFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=j/zjH1WsGxqzWXQl7cWzzAx6Ls1Pf10bXD65wF5zXRA=;
        b=LruqzIK6E/Nah/HtKFSSl/ghFYfMCCj8UkREkHrmrkQNC5kkXpjpd7UCMw5ux+3S+t
         9+JHzUja6Dj7W4k3hP2kienlS/FGN6HsXFptitZnbtYU8Ad3oXsZjBxKwoJVkJVY14e4
         bT7uR1SV49sBhQLupfLOr5ccy8gKxgo5oFPYSHFEnoudjtWN71yHoz5e471ubu3cOOYE
         FDXSiuuUNxAELRe87Dcz8VgsEcVTLRklt61II/E15EMFXdVuaNLtHaK5vqlwGiOB13uW
         2teUYA6AGBC/fbznFU5Hb/EAKUn4u773pex7Ebtll4sxJgqy811pQqGZjRfxwT5H6MoJ
         U/+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z6WgzEkt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d189si986456qkb.1.2019.11.04.21.54.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 21:54:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z6WgzEkt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id x6so8814228pln.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 21:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=j/zjH1WsGxqzWXQl7cWzzAx6Ls1Pf10bXD65wF5zXRA=;
        b=Z6WgzEkt/ANlGabZkKqXN6RmV5XMrA5SiDCHoSJKDz3H5pnqawFalWJLWNuaHtsUak
         QA8CwlkHE+KFsS36o6edkbQNBbnrnYwN6TRZOUbUevyEykq34SovXvL5feuZY/48SAbp
         ydPoXk3w1C2mgVjRcHWk1/epIWbn2zycR33cpih3szV8nLVxkUpLATOPbXPgcdm7Fs0q
         kkkrit31SIftidf5ckDzgE6tVJSATMAeaFGMYJ14WNCcyVKhwlIZbfTsGVloEOzWTPmV
         wkTr7mlKBhSRCHM3ZSZrdHcT6C5lGm4m2aFyP+msECEGbFkvuCNgRFxFRpGI0MHXziuU
         gUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=j/zjH1WsGxqzWXQl7cWzzAx6Ls1Pf10bXD65wF5zXRA=;
        b=ZizL7I0Oeopq8kHDItOWytRlaOSgwOb4Yewli1DXK89jYkeaetRU5p1WbsbRTctgsc
         hBxuCYP+Mv5nlMtjwFwTj4+zeLj5zNYVsqmWGIIlG9B6pbrZchoYpVgg35UG5gNSrRoU
         hxUzlqOTTEzMl+9o4FYsQ88rnwJX1nTX0UXl+v8dwljpNzhi3xjpla5sRpmawaB3Madc
         clJl1WtoXhPGbcZmhrb+6uxOnGlfMK6itMjUmf/WZVgB6x5lnM26IIDFLfiwOA9DS2VO
         b5Enkrqs3EDKeTosoUXsuVsTZjIZI4IOQ05uebD+srJXR0R6wshsi2UDHyaZhEXrWeg1
         yemg==
X-Gm-Message-State: APjAAAVHHkY+lAtId9eflXfuUuKWgosnCYk4X1nmucIHCn1nRI9ih7in
	fPp8IqfAUxY5BprDHY3GfY4=
X-Received: by 2002:a17:902:7e45:: with SMTP id a5mr7715143pln.315.1572933281462;
        Mon, 04 Nov 2019 21:54:41 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id w5sm6944900pfd.31.2019.11.04.21.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 21:54:40 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	srinivas.pandruvada@linux.intel.com,
	lenb@kernel.org,
	rjw@rjwysocki.net,
	viresh.kumar@linaro.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: intel_pstate: Fix sparse plain int pointer
Date: Mon,  4 Nov 2019 21:54:27 -0800
Message-Id: <20191105055427.11943-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Patch fixes sparse warning: Using plain integer as NULL pointer.
Replaces assignment of 0 to pointer with NULL assignment.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/cpufreq/intel_pstate.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 53a51c169451..cfcf34e04c3d 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -2664,21 +2664,21 @@ enum {
 
 /* Hardware vendor-specific info that has its own power management modes */
 static struct acpi_platform_list plat_info[] __initdata = {
-	{"HP    ", "ProLiant", 0, ACPI_SIG_FADT, all_versions, 0, PSS},
-	{"ORACLE", "X4-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4-2L   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4-2B   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X3-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X3-2L   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X3-2B   ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4470M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4270M3 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4270M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4170M2 ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4170 M3", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X4275 M3", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "X6-2    ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
-	{"ORACLE", "Sudbury ", 0, ACPI_SIG_FADT, all_versions, 0, PPC},
+	{"HP    ", "ProLiant", 0, ACPI_SIG_FADT, all_versions, NULL, PSS},
+	{"ORACLE", "X4-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4-2L   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4-2B   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X3-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X3-2L   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X3-2B   ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4470M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4270M3 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4270M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4170M2 ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4170 M3", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X4275 M3", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "X6-2    ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
+	{"ORACLE", "Sudbury ", 0, ACPI_SIG_FADT, all_versions, NULL, PPC},
 	{ } /* End */
 };
 
-- 
2.17.1


