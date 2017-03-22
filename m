X-GM-THRID: 6400147141672566784
X-Received: by 10.200.33.136 with SMTP id 8mr6113386qty.26.1490198020664;
        Wed, 22 Mar 2017 08:53:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls2573912otb.38.gmail; Wed, 22 Mar
 2017 08:53:40 -0700 (PDT)
X-Received: by 10.13.225.22 with SMTP id k22mr20986573ywe.51.1490198020096;
        Wed, 22 Mar 2017 08:53:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si416238pfb.5.2017.03.22.08.53.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 08:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r137so23637027pfr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 08:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q0+DYJyD4Ox3tn5e2lwt7WvcDh8D2UKezEQRn2ileF8=;
        b=tp7HykDOk2V8uMoJN6SUR5aOkD6x1rGkKno4kM82JocuG9vziuosB9EnxDeRlXzYSo
         +KIKaQu3wP9OqJ9Em7bkVFIGAfZHERgCwTeMwlfPuLLENRhszMqbs4A7bNCPJj0g1gbo
         i1NxiAh6NNGHUKn4iNPQ/9h9bPKjjUQ+fUM57WDkxum1ykGjn8xtQbQy/KxqvsiMi2o0
         Qrv1gHxl62rJMjeL1RpWuRPD/yNoBJL+mKmfi5t1b328QkyJDXqZOLHDsX+UJlmGuMpb
         7hkudAGM5WrLvuYwXUf+PN1DnKe/PReaNwlT7e40JhKgFkuIPUf/9hs7/ULsK6UbJ5ay
         8Q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q0+DYJyD4Ox3tn5e2lwt7WvcDh8D2UKezEQRn2ileF8=;
        b=iNeIpQMlGJv3gdGRD2K4p1gQFctC0HLThsbnnCZ8GGjlAAwAmiDFvKEetVo2fAT5HD
         XcnQFnnY9Zpxs2//Up4SrcILVcDfhV3anL0gY7yfmgZVcKeHknyZ2I13eirBAsu9b2T5
         zo+67DFAsikR6xb+Z7pwrtgd21pAiLh5ZE1AQqb6G3EUmDos8HJ5FlLPe0zCDIMzwYyg
         rJzHjZscDlmMMpqv9xmC4dMkud2Z0CXPFwcAELnhlWcsOgGQo+rW/AJS5DAz0v1GxHCa
         L7slcbaLAxYaoMlHVxnFzRCPPjEN0kdmN346wZ8mfZgxlHFG0RD8DDWJO3C3RwkdSZBs
         An3g==
X-Gm-Message-State: AFeK/H27PwkkD70TIFqqmz1hB1cOCByYKJ6fUcNoRzyTtjPpQ8dW0KWeMrNCgS7m28obfw==
X-Received: by 10.84.231.201 with SMTP id g9mr56286932pln.91.1490198019432;
        Wed, 22 Mar 2017 08:53:39 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm4829205pfi.69.2017.03.22.08.53.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 08:53:37 -0700 (PDT)
Date: Wed, 22 Mar 2017 21:23:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	lustre-devel@lists.lustre.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: Replace a bit shift by a use of BIT.
Message-ID: <20170322155333.GA17411@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
 - remove the unnecessary parenthesis.
 - removethe wrong changes.

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 8 ++++----
 drivers/staging/lustre/lnet/lnet/lib-ptl.c             | 2 +-
 drivers/staging/lustre/lustre/llite/lproc_llite.c      | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index eaa4399e6a2e..2b93ceaa2844 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -1906,14 +1906,14 @@ ksocknal_connect(struct ksock_route *route)
 		if (retry_later) /* needs reschedule */
 			break;
 
-		if (wanted & (1 << SOCKLND_CONN_ANY)) {
+		if (wanted & BIT(SOCKLND_CONN_ANY)) {
 			type = SOCKLND_CONN_ANY;
-		} else if (wanted & (1 << SOCKLND_CONN_CONTROL)) {
+		} else if (wanted & BIT(SOCKLND_CONN_CONTROL)) {
 			type = SOCKLND_CONN_CONTROL;
-		} else if (wanted & (1 << SOCKLND_CONN_BULK_IN)) {
+		} else if (wanted & BIT(SOCKLND_CONN_BULK_IN)) {
 			type = SOCKLND_CONN_BULK_IN;
 		} else {
-			LASSERT(wanted & (1 << SOCKLND_CONN_BULK_OUT));
+			LASSERT(wanted & BIT(SOCKLND_CONN_BULK_OUT));
 			type = SOCKLND_CONN_BULK_OUT;
 		}
 
diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index 63cce0c4a065..33332724ab94 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -334,7 +334,7 @@ lnet_mt_test_exhausted(struct lnet_match_table *mtable, int pos)
 	bmap = &mtable->mt_exhausted[pos >> LNET_MT_BITS_U64];
 	pos &= (1 << LNET_MT_BITS_U64) - 1;
 
-	return (*bmap & (1ULL << pos));
+	return (*bmap & BIT(pos));
 }
 
 static void
diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index 40f1fcf8b5c0..c742cba60199 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -1308,7 +1308,7 @@ static void ll_display_extents_info(struct ll_rw_extents_info *io_extents,
 			   r, pct(r, read_tot), pct(read_cum, read_tot),
 			   w, pct(w, write_tot), pct(write_cum, write_tot));
 		start = end;
-		if (start == 1 << 10) {
+		if (start == 1024) {
 			start = 1;
 			units += 10;
 			unitp++;
-- 
2.11.0


