X-GM-THRID: 6342587863157178368
X-Received: by 10.237.34.99 with SMTP id o32mr64508qtc.65.1476748814666;
        Mon, 17 Oct 2016 17:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls2825599ita.17.gmail; Mon, 17 Oct
 2016 17:00:12 -0700 (PDT)
X-Received: by 10.66.246.166 with SMTP id xx6mr49343pac.95.1476748811976;
        Mon, 17 Oct 2016 17:00:11 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id x14si4558764vkd.3.2016.10.17.17.00.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 17:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so8852349vkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 17:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bkV7jODsf3kGMFuugWuZjRvhbyl2i+xpEIFqLhkmEEg=;
        b=ckznxDstsJB7UfXI8efrTIsQ6U/NSZYY+meXxwotx9uoNKQvesusDPZgm3/Dw3CPEf
         Ek5c95efSRtRRRXJuObI145gtup8uktbZ8Iv4g+6Jtp7WY2XgHqIT1g/x5zpY793lcL8
         0bd72Oz045oFM1xam279vMkcxJosuppMyr0D9gSsCIRKoYXeh++NtaBiGha4g4jLdpDn
         cfmp1JPV2uQVsnGwH6ZRzbn3M8OYpNXgbCopNmtxUCimQCz/nKtEkhqEM9UnOzQQmV30
         KAcGxf7A7A/60zcQnEANjXTSbkSjVK5yB40a3NedDcIPF3wJupunYGmZjX69idhElFgF
         k8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bkV7jODsf3kGMFuugWuZjRvhbyl2i+xpEIFqLhkmEEg=;
        b=khLKnVNYrFV9Kj80j+d6Hah+rJr5jWAWip/WwS9Aj5CaF+fATCHWD7Acv3F0VNaJHS
         Maw5zQO8GJ0Q5A1C+u7NkzDhDNF51pT1FHzcw/zd8vdgKyyTvuNvAUwNL/SbItiZDlt8
         dZMWQLMmUXB/mwrbNv1nZ2CQ/3PaUIxfx3oheV39rh29689T5oJiB9xYMTTSdoa2jLcE
         H0Sxvv13X9gULMiBkFCEuUnN1vwJvS9MtENnXHJbRXSzaOD4PwVOlIztZ8uwFH2fBudj
         ldIlQ6D6KjzCukn3LTSiCmhx23YNpcz9QbEMyKon4D0j2xkyP8sjzhXzNQUL59h4XyFn
         jUyw==
X-Gm-Message-State: AA6/9RkYjd4Cuz0a9nHFjDXg7RYU1FnX31G9ucrmg5ESnoRtXtM/oPIGcLdhVByNccZJTw==
X-Received: by 10.31.199.199 with SMTP id x190mr52164vkf.117.1476748811811;
        Mon, 17 Oct 2016 17:00:11 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id x195sm12793908vkd.5.2016.10.17.17.00.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 17:00:11 -0700 (PDT)
Date: Mon, 17 Oct 2016 22:00:07 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
	arve@android.com, riandrews@android.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: android: Remove unnecessary parentheses.
Message-ID: <20161018000006.GA25375@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The removed parentheses are unnecessary and don't add readability.

Found using Coccinelle semantic patch:
@@ expression e, e1, e2; @@
e =
(
        (e1 == e2)
|
-       (e1)
+       e1
)

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index 7e023d5..3ebbb75 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -30,7 +30,7 @@
 
 static gfp_t high_order_gfp_flags = (GFP_HIGHUSER | __GFP_ZERO | __GFP_NOWARN |
 				     __GFP_NORETRY) & ~__GFP_RECLAIM;
-static gfp_t low_order_gfp_flags  = (GFP_HIGHUSER | __GFP_ZERO);
+static gfp_t low_order_gfp_flags  = GFP_HIGHUSER | __GFP_ZERO;
 static const unsigned int orders[] = {8, 4, 0};
 
 static int order_to_index(unsigned int order)
-- 
2.7.4


