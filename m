X-GM-THRID: 6467514574021066752
X-Received: by 10.31.172.4 with SMTP id v4mr924295vke.28.1505835646322;
        Tue, 19 Sep 2017 08:40:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.67 with SMTP id g64ls4619426ioa.26.gmail; Tue, 19 Sep
 2017 08:40:45 -0700 (PDT)
X-Received: by 10.159.198.6 with SMTP id f6mr898772plo.20.1505835645818;
        Tue, 19 Sep 2017 08:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835645; cv=none;
        d=google.com; s=arc-20160816;
        b=SPHkHlouLDEveDg1IPvMBX97LTCLZ2jLDAXK/rBxefNGQiyRDqPnNCwBE8s28dfQ+1
         MPn+93mSyByS+OeRg0zBou1kC3V6O93MlKvwEc5O0/udsLiOCpYwOysHp+VY/Qqo6XVq
         PU5DiBndhczuy2xV6CsKaCMkB2Oz8gs4vlT1SCX42qTcTnpIP5mM6BKM9NW3LmW6Ojbk
         2yfFcFZd1aJ+HEdQ99idj4UNELjSlwioL0qrlSBMRbAJ1YGuyYFczfM+k/IzZ2Ds+VI2
         6mDVvXEChlyb9M3dk2e67Wa6ZbgtX80jlqjez7BLJCVuioAnmkCXBwKoV1QdDGJ/bNv1
         qrrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=zdqmA02lqhRjxd3lo9MQ5FIsvutURvlCCLxlUYO96aY61QXsKW8RfESCoufg+2QH9k
         tfdvTAQ3fbOZmBB6AUJyNH+b4CMNSXNM/YRYm9w8YSUgE4+OQ1OBpMmJ1DisMffywJ8m
         Z6KIBR8Rfm3DMeaKRtq7a8ciGrPZPCuV1eSJBTXJ2fuh2A5UcL7WUGEfFV5b1WgWCis6
         DpZrh9Myseg6oMnOXw3CyjHfUzBlN+6Rcn5XMx2rLiyQ6l5PjJ2rvtTx/OH8ipBUljZa
         Qtz0bR+wGlcsmd5s4/wNqOtlj0YpLLK82tyTGTiU08ytRp0NXxg4IeoKAuZpNf1DNm+j
         pgLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtGXbIAG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id t77si280221pfi.13.2017.09.19.08.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mtGXbIAG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so1657098pfg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=mtGXbIAG8aMfOnfNBJfM2zmRM8XJKmovK94WL/GsV48zq+Y1fI95f1icYVwoYGZfEn
         ns3ZyjgxUy2d/fcBNpyCs2iLLpE3yFA3QZ3bIdFkNBm4N8Q9OohW9Gd+zLgeZuuOeDnu
         9Xt1w8XBO7Tv8+1LdoZdc4q1BOIVGndiS2VQKaOXPCfFfjrHzlbqFnITD8caMajV3AEZ
         Bj7hSfA89wgncx8oKyCMzToDVM3CNPEnnAod883gGIvdLbVKQSvUV9HTcBBX5DX8H4BZ
         WuPgmyjk9KX5FrdOO0bFfEc0rwZOZwhDCGuiywuutbenByyxu2+HdWbXFhqNO6sYOt3z
         KuPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=MGS7+XCk/QDZSb3Q8rcz8QPpyh91JyRKO5xSJbvhrDk=;
        b=tMKQQQJyFduhqacJdrS6fLmjpf8HTFNaFzhqTGS99491SCUVF1pFnN1Emt3hDu4ih0
         D0B8Pvumieg4YZBFTrxpd326+v2DZqZl/KYK+QhIJxGmO/NFpbvQQqktaaaSHVXvd2V0
         YsWD+RLjpvuFc7mEce6MMuxZW9QRchVUqLwYIxTMniBUGYnX6M77+jRFQOcJF3Nffi4G
         fG2RGwJpaBAecImFEngtq6GSeI6bsGRRQb9miojmqp3O9UpTRi+bBqZRYvCB6kdaRwgq
         qKqLXHR1rMY6qTOuvKj3E4RtvZ0k4Ujl2ESiDdFIhEPTr/0Sd0gZuGgiARQpnN4NDg8S
         9F7A==
X-Gm-Message-State: AHPjjUhZaHEaBhSzXvi5rcGGUUHWeuRmsCdkUV6uwcB2j9/7DBleIQnM
	Pn2VVSd9tvoOkfjyN3GuXzc=
X-Google-Smtp-Source: AOwi7QC3B1FNIBLX/JQsj6HD3pCmDgPh9BgmqF+kost2pkgGVznAQTSrprZQKAmRAPfNahoOThXD8g==
X-Received: by 10.98.74.74 with SMTP id x71mr1702514pfa.236.1505835645544;
        Tue, 19 Sep 2017 08:40:45 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id u184sm4473634pfb.126.2017.09.19.08.40.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:45 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 11/12] staging: lustre: lllite: fix multi line comments alignment in file
Date: Tue, 19 Sep 2017 21:09:23 +0530
Message-Id: <9251f9fe3ea7bdd5e1143fec81797db917c8229a.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:
WARNING: Block comments should align the * on each line

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index bd17b38..d1fa32b 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -386,8 +386,8 @@ static int ll_intent_file_open(struct dentry *de, void *lmm, int lmmsize,
 	ll_finish_md_op_data(op_data);
 	if (rc == -ESTALE) {
 		/* reason for keep own exit path - don`t flood log
-		* with messages with -ESTALE errors.
-		*/
+		 * with messages with -ESTALE errors.
+		 */
 		if (!it_disposition(itp, DISP_OPEN_OPEN) ||
 		    it_open_error(DISP_OPEN_OPEN, itp))
 			goto out;
-- 
2.7.4


