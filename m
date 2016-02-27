X-GM-THRID: 6256048527740239872
X-Received: by 10.66.63.68 with SMTP id e4mr6240930pas.40.1456599805293;
        Sat, 27 Feb 2016 11:03:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls149030igv.20.gmail; Sat, 27 Feb
 2016 11:03:25 -0800 (PST)
X-Received: by 10.66.218.8 with SMTP id pc8mr6247452pac.45.1456599805005;
        Sat, 27 Feb 2016 11:03:25 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id r75si1120550pfr.0.2016.02.27.11.03.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:03:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 184so741076pff.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GgAZmjAwZhzcHNIhf+lZOr0jZ0/E3VG84n7jssRQ2NQ=;
        b=wIlQ7LoDBApU4PfV6djT/pg9RTSMgQASkd7D43jEbmUmfAl5AYzTu8NkOt+c/0ikU4
         MSJw2EZoyDFTRJ1mOBspPmzPOlQGtLFCr3lmwOPMcrIYWLzdO5C8MR02kYqrFIt3uTEs
         GUmyiZ58oUqTsg/ITktYrcOMsZCcKm5RseyEGnUK9RNKfb2pfrQ24oiFUQCV6Y+1Fb1L
         VciTQDqj2N2g8PyWtx4o3v0igw5KLN/CA8FVI0yYA4FaX16H4yCHtZcw8wr7uYxsTBT6
         ES4+AbpHdiLsJQb6NfrmL3WszJU+1Qh2lysBkf7Zxhc7FY856BPFtMPnlt+hlcLt2zem
         RZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GgAZmjAwZhzcHNIhf+lZOr0jZ0/E3VG84n7jssRQ2NQ=;
        b=fUlA6YZQ8BmUheyAdN5rzAqXBUVQPvYNTWxOazPd390kwbJ5b/Sme/sSOP4uwWmO3U
         CG4OmzZmAMc+S5Xojv4NBzvhP8ydlcU2Q/8R9zsdXpUXZvBL1J9HUa4eA2lj5icHAl6F
         1Fb7tFmN1LWW41D9GMuxXc8sF+U0HB5Q6wUc6llmBiU/UezIuv3RMWUb0/qpDWKO49iz
         QTRmvtSqI7yCL5v4338jkMgfJjKJIcHLjJd7W1MMTuqi8aQmN+c/DFv95/VGlVdsx9mD
         1dgMrfOfEEo5YamLUDvj2hSSYBeRvItcDbLTj/g1tXIocxIHEfUe1JuHu7RyJf9ct1+a
         iapw==
X-Gm-Message-State: AD7BkJKgjZ3eJSXi6yK3erdmqBZioLB57tlTOTrNODYZtAa3Aw/C/rrlyR/rVHprbALjpg==
X-Received: by 10.98.71.210 with SMTP id p79mr11172524pfi.4.1456599804872;
        Sat, 27 Feb 2016 11:03:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z67sm27623084pfa.71.2016.02.27.11.03.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 11:03:24 -0800 (PST)
Date: Sun, 28 Feb 2016 00:30:36 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: ptlrpc: Use macro DIV_ROUND_UP
Message-ID: <20160227190036.GA3598@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Fixed typo "lusture" to "lustre" in the subject

 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
index 72d5b9b..0d58d8e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -274,7 +274,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
 static inline
 int npages_to_npools(unsigned long npages)
 {
-	return (int) ((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
+	return (int) (DIV_ROUND_UP(npages, PAGES_PER_POOL));
 }

 /*
--
2.1.4


