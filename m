X-GM-THRID: 6465879632669310976
X-Received: by 10.107.156.16 with SMTP id f16mr2482577ioe.85.1505454953905;
        Thu, 14 Sep 2017 22:55:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.43.5 with SMTP id r5ls6175564ior.21.gmail; Thu, 14 Sep
 2017 22:55:53 -0700 (PDT)
X-Received: by 10.31.254.138 with SMTP id l132mr12853490vki.106.1505454953419;
        Thu, 14 Sep 2017 22:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505454953; cv=none;
        d=google.com; s=arc-20160816;
        b=flrO8t5b1/ddW81nJg5NZvelKUvqGccpPIUPfaZvYFpFTp4pW03SqD9UFAcRyzv90k
         lxxURisv9QC59xIIxTUR6x/98g0XwygykSYs2AjYrg80q2ftOeEPWjhIxF1rtmhZ1FlX
         asixMf/sDsfNKZlLctdLSuL2DZanVj9qQokaN2eW0xNAi8sLL0grdZAupRx4h9MjByg6
         iyQqQ786KmYVcMkb4DPS9vDAd7aiQtFrWVv9lOnDnkiWDPwHHGggf87kvAZjkHSvTVCQ
         aH51Ma1Lc/xEt2p3e5ydqSdw6vLlCPN8pirabOMG6H/loYLqU+lz5lS+eDj9KlD7UDMV
         OvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=bPMqEtLrs9JmvUvjBQxNKX3P9biLm/1tS+ggffxTw0/ozfkgyEk2qDWto+/uWJIRBi
         O3ulhkyB3i2phdj1zV6OfQRBt8MsL/pRg/uMxtkQtFrJ5F85p6azNSz/k7R2ZvbxjIsL
         fwvvmH0Wf92sPxVBPm7SNYyz+ITM7Je6BUaR9rrOybQ+DWrstJwVHhJvSQ1TMoHBCmew
         Z/atDelK01JR9crXxLM5kzZ5I0LLlwGE8inleDoZpJ5gHFPoDJ66UeAbQHDNnpv2Za5r
         eYv9zci9A3pRFPGYOUMPP++3z7ZETp1BygtTKaHdSMvASu8EscKlhPDuiFQWGHI8tE1X
         sAgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cn3Na4lP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f189si15841pfa.1.2017.09.14.22.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 22:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cn3Na4lP;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id j16so842886pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 22:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=Cn3Na4lPhR+yO4Y1CMYl6HrhKz313gZZqsakd7vEOT1wLLSuZcAFHOteGY6YGcMVgv
         orA4Gp5ve0eEud+C4AJgjzZqcGnMqmoMNVSEYvF2a+okZlL/+WZH30QzAzluYhtkhOwJ
         tc2KpQ+I4h1BqE2UmLx90zwybJfWwYIK5ORmFVPWDeFcLXNeG3vDYZm/onVj7g6j8mzq
         zO7Z5HpYQ3v2vYJf4zHuMlDXzzqYOu2JMuZFj3AeoWEPKZX5LFgKfVGcv6IkxXdbsGBd
         69m+xweaJI92L11CyOw+Zhr+gIXaFRgkRuF1oiZAGfrvc8AzO/i42CSm4SDcStGdr4Gs
         DvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e2LfbdTn/6sF9GDnReFZUh45ywZ2AM+edL1+VKae/nk=;
        b=PIF2p9cwiRf7rQnsvFDG3eSYDTjwruL6vqFDgPwRy9XW9fAwMkoMM6ru74xY8Tpc8f
         BGrf10nDCjilPGpkvDNpyvB0iJqB+n1yg4m32JH9rltXa3gPU7rgQjheFKB2cuWa8ILa
         P5igDKgOIey1xofUdarRwP3qcD+3pa1lwtJuMjHp00oYY8dzkMc/n7XSY/alZ2K9Rsrt
         i3opXve2+B9nL6F5oDmuCbNq3o+fInh/RPncRYssCCnoL51hvZpCEQ7DZS01ya4lj19C
         6nndLm8d+ayu9paUpf55JJwLZf5poQXjyPmN39/YMAqYfq9lxSP/7iqoZizCfnCK+wVQ
         qNxg==
X-Gm-Message-State: AHPjjUiq+bpMSjHibUrYAPj1YOfbe2EO89pTV13Ux8IbBgMuFgQLK8Tq
	KW8X+sT0bkKRDw==
X-Google-Smtp-Source: ADKCNb5w6wck29i8Cw0Sj9h7WQS0DSEpVe0hlkOAGSpMQ9aCjULJYPeqx43fT1yA8QAmv+Ky8LfN0Q==
X-Received: by 10.98.33.134 with SMTP id o6mr23593283pfj.103.1505454953139;
        Thu, 14 Sep 2017 22:55:53 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id l23sm401957pgu.34.2017.09.14.22.55.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 22:55:52 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 8/8] staging: lustre: ldlm: fix lines over 80 characters
Date: Fri, 15 Sep 2017 11:25:08 +0530
Message-Id: <b5f262938fc8650da3af305cff351d5df02029ef.1505454643.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505454643.git.aastha.gupta4104@gmail.com>
References: <cover.1505454643.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index c2ddf73..c374f14 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -1358,7 +1358,8 @@ void ldlm_resource_dump(int level, struct ldlm_resource *res)
 			LDLM_DEBUG_LIMIT(level, lock, "###");
 			if (!(level & D_CANTMASK) &&
 			    ++granted > ldlm_dump_granted_max) {
-				CDEBUG(level, "only dump %d granted locks to avoid DDOS.\n",
+				CDEBUG(level,
+				       "only dump %d granted locks to avoid DDOS.\n",
 				       granted);
 				break;
 			}
-- 
2.7.4


