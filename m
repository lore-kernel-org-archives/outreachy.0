X-GM-THRID: 6477977779126140928
X-Received: by 10.223.178.210 with SMTP id g76mr1163146wrd.7.1508271738331;
        Tue, 17 Oct 2017 13:22:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.79 with SMTP id n73ls687830wrb.3.gmail; Tue, 17 Oct
 2017 13:22:17 -0700 (PDT)
X-Received: by 10.28.4.210 with SMTP id 201mr635125wme.19.1508271737904;
        Tue, 17 Oct 2017 13:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508271737; cv=none;
        d=google.com; s=arc-20160816;
        b=WIjRWZtP9quHdRdaPkDaQNadh2PuS8dHzzQqi0zhfy37VjG8tcHRKgAXnxRR9dpSpd
         liiW9AIEE4zI/zrokYirfr7cbjfazMHEIExKATo1JvKtZXYfYgLIJo6+JunWixwpxG7o
         /fIHd9UK57kfdlats7rJe1f8ghf/fd90J0CWRFM/kvyP5im8YANUFcWeMDp4NgG/W2Bb
         2DaUuNBvlnMP2jieWfQlyDpACSQhJ/BNimDYb16pnAJ5CQWGsdhHrq7WCmxullwbO+Oe
         W0/KJG4xOwZYMNBJgg330FQK9Nv/cp6CXPUFTMMVS00xuMQOCd0Oegp7T/NQSBqzHPi3
         nafA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=37n23geYVIyprotMqyz4OIWoBIVFQrqW2CMhINJ5Wfs=;
        b=LC+n15ObtML8e2tbdqXDc8cOANSIoj71T9g2raUz5oBOt/tot4GCTi+nDA+Khy1+Vu
         Vtt3cLfktEymYKf2TAaoDvuyfktCEVmnxDKfzbf0L/I8ldMouIG/fjcgxOHc+hL6Ixel
         yLSEqUZnfct+32WAaOoFmAF609tvca6ZuGGAjXqAbm4el7DzbAxgcL6z5nGfgaa9INtj
         IsmXsoXcgEUWNfxgqEQlo0hrn/TYuLwD81E9q+gNPA1o6jnn/xq+8QJ2vUvEjBVUIr3y
         BoR88sUgVOBIY3GwtqDHztr8OP/tYIvkaBiBb5E2PnvNJtNeWSFjzkZDtZ4Ac8xiYNoz
         dyTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CURn45Es;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p70si491914wma.1.2017.10.17.13.22.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CURn45Es;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id f4so6248364wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=37n23geYVIyprotMqyz4OIWoBIVFQrqW2CMhINJ5Wfs=;
        b=CURn45Es2HPzy+NXaFweL2xUcXPDqAWDoau/8QQHYSfDkPdrcw3HlbTgKtdKeUe8ih
         ktT+Ki8ys+rEPGh1qGVL9IhTe+vgHPWhfAWz9/hodgBIG7JNGI7CKQINB5mtlZveTG7u
         ilQf8ZciBFksb52lxLN60g8s+FfhxB33wPWyqvJJOvdFue+yY1dlf2Zqb0xUUTdn0mqg
         JAfI80qMTycEw+1OmmWJXihRpXtbFoe6C07yF2PMmV+pXdGfQz/fh83UvBc1IZaYU2/V
         erues5GkYNWh6/NmsWgdty76HJwIuUQIwXbngZL9iYDUt7cJS5UDkuCYL9vjLXFfv0th
         jRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=37n23geYVIyprotMqyz4OIWoBIVFQrqW2CMhINJ5Wfs=;
        b=GJe5BD0vyGMvsz61Ej0iG3tguH+x9l++ALQI8rewDWv2+FZqmbk4wZ6zQpcWVmDlni
         kGsCWXUbgxjv3TX3fFiuFzrr2onOCa5jdR88UKwjog0P8hiBV+13o3iuRx/iPElJo9f0
         ZiKrIbCr4UFlntNK05A4Lpk9jzT9O/+fkfTt/ciSFR0VINr4SAEYdmx+QSt6Ik0+alqw
         D6VpcI0GRtyyVyMxR+vwWaufkAM1rNGKWPxzf/oAMpyKfnNsl3DpJnl/2iCHxWjFJA1B
         Vrx2s559T0p+KAFqXhdjMA0SaTnb0ywkedlvR0btv8sR1YszdQhonzSpOM0L5DVrMjpX
         Adhw==
X-Gm-Message-State: AMCzsaW4NAqUlwzFBRiBdtQfmII24d0AeS4RI3TQvW2ZVcjohaup+ukw
	7gCnCUrQf7X/c/CMHXtKVV8=
X-Google-Smtp-Source: ABhQp+SMIjAjtm7/dR08KCzHQMpVeBQPBD9jIA+U1eEpgqjHC4kh6y6DfnfQO4urKoDcJQLBAIG0VA==
X-Received: by 10.28.230.77 with SMTP id d74mr4206293wmh.75.1508271737652;
        Tue, 17 Oct 2017 13:22:17 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id v80sm8848043wmv.37.2017.10.17.13.22.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 13:22:17 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/amd/powerplay: Remove useless variable
Date: Tue, 17 Oct 2017 23:22:08 +0300
Message-Id: <a40d49239d7a40a8cea60dfabb54eed428a6b8a9.1508270576.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1508270576.git.georgiana.chelu93@gmail.com>
References: <cover.1508270576.git.georgiana.chelu93@gmail.com>

The result variable is initialized at the beginning of the function, but
its value does not change during the function execution. Thus, remove the
variable and return the SUCCESS value, which is 0.

Issue found by coccinelle script:
* Unneeded variable: "result". Return "0"

Path to the cocci script: scripts/coccinelle/misc/returnvar.cocci

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* adjusted the subject prefix of the patches
* added the cocci script used to generate the patches

 drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
index d968c3834481..769ac11a9215 100644
--- a/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
+++ b/drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
@@ -1174,7 +1174,6 @@ int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
 
 static int vega10_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
 {
-	int result = 0;
 	struct phm_ppt_v2_information *pp_table_info =
 			(struct phm_ppt_v2_information *)(hwmgr->pptable);
 
@@ -1217,7 +1216,7 @@ static int vega10_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
 	kfree(hwmgr->pptable);
 	hwmgr->pptable = NULL;
 
-	return result;
+	return 0;
 }
 
 const struct pp_table_func vega10_pptable_funcs = {
-- 
2.11.0


