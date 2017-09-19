X-GM-THRID: 6467514574021066752
X-Received: by 10.107.83.9 with SMTP id h9mr910228iob.96.1505835620689;
        Tue, 19 Sep 2017 08:40:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.78 with SMTP id l75ls7517346itb.9.canary-gmail; Tue, 19
 Sep 2017 08:40:20 -0700 (PDT)
X-Received: by 10.36.1.204 with SMTP id 195mr773552itk.41.1505835620202;
        Tue, 19 Sep 2017 08:40:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835620; cv=none;
        d=google.com; s=arc-20160816;
        b=pYREm1a1NySJNckcGkoUXv1v7w15YklEmiBfiMUd5+pSTQllACy1KtvDdypfxJ+jm+
         eYN956/ZrGNO1laFMIaJWd1tWujMaPNM5d91QeEdCG13g/CGnxLxh4XaXBMyQdPoPtnO
         UOINeSuZl0bSRvaxaoWK3roVwescj1l+piSThj+oMPp+AKYgxrmW39dSOsCsJi0ZrZra
         Op030khIDpKbE+9I9xsC0yjnsjoJK2dkcC3QaJ9ReQSzZHxLZoETmFNmo40oIdX/U1cv
         3n6iIPWup5YIFncLX1n4/i0JhzJVlWuX+pyznwC1Umcy4tybDNFj6tuvfiMhFWjRXTwP
         Eu6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=nj76yraInYj655Qu5xg0FFSh/RpMbpAxo/RfOr+HHdi/NGCnerC/SPNZqOQcNouYos
         wqnJPZPYwk7v19vwaUjPK/hn/sGdUwdaENj1EAvLbDu9SJLaDadSHDIFAuuAseX4ODQu
         ZltmKCe1KdINGNCgfqdpV7pt/HPnq5QvydRW7KIXHKZpe06sJEXE4O/TT19bvc4HRrSn
         vowqJ2yN3Vq/YoHq/YzasKFz9TomQH6inRCwJMnIh9minKB7diONDA7hyNsK9SYRtNNO
         6c+KKfrElfoViG/iuyLqxN8dlX97fLYDTShK1My0q1O+XXEADdsAyWxwJBcRvS7kuVum
         p/Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2ZZ1ieL;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c200si267092pfb.14.2017.09.19.08.40.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M2ZZ1ieL;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so5130pfk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=M2ZZ1ieLw3UbZgYoq9wAA71h/C8K5een2a+I0fin/SiddnvUc7Kp/XBC4QjGhrkl7B
         kow9k9IK33XnmS/H0S73VDp809doAriCh6QalK1y1ds/KAQWL7dyDi1FPhlLXuXu23qT
         cM+a7VcijAe1An1XJrxx2K5Z9udSp4QD2tHvtk9VZbYetrSEVQ9RdiwZvqKIsv3hDmew
         4WKMTm/unh5q0NAWmPhnsUYII0+q+v7bfoKVouelNDfsXoY+7q6oP6soJecgIMIPquA8
         ZAu1YVIoEvqdhU8uTRVmuWzGge+BqzCOOfVxYcx59ZtwNivIn60cODplB3gHWvxWQ9LD
         GBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=FdMsEsFzdLTpVDG6CLzhlotJ4D0nGT/qG/0zo3iabg6nYIteGmflKe3P39mrIJUjJy
         LGcV4uR7kROKCnNqwI+dm6NWq/RHNOn9xzpQG4dbSmKUmfmcrCuwcgBQ2NAieeg6qsMC
         BA9atKlR/I4vNhr356BOcUdE92+dV2aP3xNAUTmwS7ur6PmQ1zCmEodkVaQHkbnitaLs
         QET92PcbHfUt5Ybr8HvzL/o05Q1d53plDv4+ke3q4KPXJ9R6Oj2XgVZbQosIwPY1g0qN
         49Gpum69kiRwljiSSdksx8LVGXkASEavl6k2W+Ry8ysecwYp4sY2/OLimjAC7o7Xd6G6
         v0Rg==
X-Gm-Message-State: AHPjjUifVKMAK7GQzqKTXfpQkV1aNFmQ1x2xFBnTeRuwp9lNb0CEF+cZ
	5LLwgf52hwOrpska0vTW0w0=
X-Google-Smtp-Source: AOwi7QAJAP+jxtbhcfNluf+u5GHRouKo+BZ1s+G4H5iI7I9JGB4yYFMbgHmEkr3PcGhyCYEH0x7yCQ==
X-Received: by 10.99.126.84 with SMTP id o20mr1708749pgn.295.1505835619929;
        Tue, 19 Sep 2017 08:40:19 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id t81sm4248392pfg.154.2017.09.19.08.40.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:19 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 07/12] staging: lustre: fld: fix line over 80 characters
Date: Tue, 19 Sep 2017 21:09:19 +0530
Message-Id: <481b78cef7d5f3f665d1cc2cf81e56d464a96821.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_request.c b/drivers/staging/lustre/lustre/fld/fld_request.c
index 5b18083..081e137 100644
--- a/drivers/staging/lustre/lustre/fld/fld_request.c
+++ b/drivers/staging/lustre/lustre/fld/fld_request.c
@@ -425,7 +425,8 @@ int fld_client_lookup(struct lu_client_fld *fld, u64 seq, u32 *mds,
 	target = fld_client_get_target(fld, seq);
 	LASSERT(target);
 
-	CDEBUG(D_INFO, "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
+	CDEBUG(D_INFO,
+	       "%s: Lookup fld entry (seq: %#llx) on target %s (idx %llu)\n",
 	       fld->lcf_name, seq, fld_target_name(target), target->ft_idx);
 
 	res.lsr_start = seq;
-- 
2.7.4


