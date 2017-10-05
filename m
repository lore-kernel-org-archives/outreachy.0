X-GM-THRID: 6473410411176656896
X-Received: by 10.101.72.12 with SMTP id h12mr2273772pgs.145.1507208341990;
        Thu, 05 Oct 2017 05:59:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.65.193 with SMTP id o184ls5055961pga.0.gmail; Thu, 05 Oct
 2017 05:59:01 -0700 (PDT)
X-Received: by 10.99.61.12 with SMTP id k12mr2257770pga.160.1507208341262;
        Thu, 05 Oct 2017 05:59:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208341; cv=none;
        d=google.com; s=arc-20160816;
        b=b3Q5kEvfZU8QvwEBULOV0DI+4L33dzs5OtJFbkxZ84fXGaaLv3llHRuxfC+uj0IRqP
         /zlfW4JWafleRMNLdjd4PSkFlN8icf47/4fksIZ6XAIR9cfpyTdQVkTnqY2bJmeOuVcq
         XQWI3/p2EJDpii4A9kIK2KgYtTZVHk0c3AgM6ly7r3CQPo9S4mN1IwXbrVLCsSR0TQLL
         3FTkofUwTaKcM7BavfdO+Hnw0v5MoNghLQ/CKO72Jb81Zwx65jIdFSPP8oe41XBI6DBV
         efTIyhHZ3DT5bKzQmyy7jHxYWKrkVQ180yvDWsWaKW4Kh5bA3MXYn0Exvvzefh/N3yqU
         KNRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=Ub/xWSRiirMVxcbcSU9LJPdd77fdyQilmWan10tQEyAAZ67pELOFUiudWS8McU5/Zf
         lFLyl8s1RkDxLmhR/X5tZ715+Fo3N3r5dthddPfiA8heaQC6EK2KsAGNnoumCRpoouoc
         VSdPHYBCSPP5oCpLxpygkbxyu1KPF0N+Kk5HwMVdU0yPHI5A/8HuQsJ85T+IKToFsFDG
         sKgIfKK1uyL5LjBRD0Rv+UTWfBUdbAJOSVsnmnFMXxZDHKKV/NB+ZjTwiB9DySdykU0L
         lRFbMOvEl+0pg1GYzVPxWDAfu35wX2VdGmqs2Huxpa9LFLudfmffoAXMOyiiQkUOYXRm
         FzUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRLlrtb2;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w11si1860574pfk.4.2017.10.05.05.59.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:59:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRLlrtb2;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so14589134pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=tRLlrtb2nlQQLeMDVV/x/E3YGL5JPVcYNvgyk9JFn5o75tZHsiBB0hJ4k2xGTANE1c
         9oVI1Sdn16i6Ym3d4Wb9OOYdGF78M+KjWyKZjTb32I3iTDeBJBngaA5dsP6NwuXQ7P/8
         9xp5J+esacQzNCmsqeUddHlEuItApXzGo5WklbyOJlz3L33Q1XUBrQOpmLTFBN1QT4eE
         ZyrFQmB5ogulzWNM8IbdCK6eBmCxy0zb7WTooBe/2U+qs/25YlL5XARQTWuJxN/cM0hO
         TgP7bvfRelQ/gQJmz9exbMihOgDExIdDuqcdvWZg6pzAYudP6b+QngLI6QgDtdv4McE7
         2hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9RTeACkRvBdJCyhV7XimV+byetSCikeDSSST98i0Ir4=;
        b=UM8XWzR93ap6/oK125eyrNSKtwPDxBGU4rHS57k3ONXPvy1LREjChnhrY/Tb/a6jdN
         M6c1kgi1916pKVhocDbwRAWzevRzHYzBNUvc87Tl71aLMATAjXlHL0wrTu52LXCCnQ4z
         D8uPxmpJiPJqC45Jfvq6MXko7A7hANMvj/066uCax0xtIQcBPBirKvaBvm3BUznR5BkW
         GtJ3DoMpfIvfQD4grKiS4NGMR1zxTuKAT1Lb3wN4BSpwb20cEHubAczWvw7KinWlDHQM
         K6xtGAabDkihDW3xMZkMvqtjAp8a9lgvTQRkifz2hoQ3oJuaXMYO1ybjUbTwfJjAgsdf
         3w6Q==
X-Gm-Message-State: AMCzsaUMZ0tgphtoGPX7+j38bEraao/fVKWXbrRqEXqyBKa4Zf8OctIj
	BKXGp6ldMugesIQx+gktOeI5MQ8O
X-Google-Smtp-Source: AOwi7QBXD1FM88KvdJ6ryWW3pfGlDqVKGz9gunqq5Wwwz5MrP9Msa4oeSbpky5J++bejJffkKsQZ0A==
X-Received: by 10.98.139.76 with SMTP id j73mr3576358pfe.265.1507208341019;
        Thu, 05 Oct 2017 05:59:01 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id d13sm28449341pgn.53.2017.10.05.05.58.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:59:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 07/11] staging: lustre: fld: fix line over 80 characters
Date: Thu,  5 Oct 2017 18:28:19 +0530
Message-Id: <1507208303-17615-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

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


