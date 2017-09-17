X-GM-THRID: 6466889326390149120
X-Received: by 10.28.169.75 with SMTP id s72mr858885wme.21.1505690004394;
        Sun, 17 Sep 2017 16:13:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.23.21 with SMTP id l21ls150012lje.3.gmail; Sun, 17 Sep 2017
 16:13:22 -0700 (PDT)
X-Received: by 10.46.4.26 with SMTP id 26mr123081lje.22.1505690002048;
        Sun, 17 Sep 2017 16:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505690002; cv=none;
        d=google.com; s=arc-20160816;
        b=UB6zuvi28dpl44/KYk2H4glrmS32aYwtqChndDaf3QfzbgPHCwdchqMeutPMFSASy6
         O/aEmus+j68B/ZSfUH0MVYiUijPtfm5BKWFhqvr0o82zH/srVkmRluuNivoYCrCJpVYJ
         cSrl7sxkLRaDBvA2t7pZQzIdvtNgNaX8xxRs6OOCZsefWqeosH14Lxp8VduuI9SNDzp+
         T5rb4DxZtfly7ZUQxfGipmBHxLEWjnBvz4cXh/SnNxTBAwhnRVQkeU6ZPfZ7A1e0+f01
         ZucH+Avg5jSrB56F9MBVmBhZnD/0nRXBi42UEnZtFO+Aw5ZucVDE3C0113F8nOxDN1XJ
         XhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=eIM6qGkr5Ebcxt8/sC+rf6WC9gg44Uum+xR9KtEM0gw=;
        b=jH5KcInBGa2HlawrWurENHb1iBnlSUMNgfsfwckQ/Z7b/kwDvKYULuOPHSuC1exFNI
         OpWKcPY+2fqN02ENKym/Vcwg6/Ikyn3CUiXNZQy1rp6B0IpM1I6Twwwk5u3c/0l40nWf
         d8iFNOfzhumhuw09NCW1SstgEiOltiRsrwzOU3p9/8cUOVvsAJXQZZ5wtMIXIeYmme3C
         oBBH2UfR8RohRQutkTalOt2vqh4oQqrZYDcuSwicKamYdBzXmsVfFxPhKCB40tWGAxgq
         fuuIZYddBGfsgi2dWWUSYzzyKFRUEERI3MPGuOUs8OYw1AspwoImuc6Jud+JU46hemtI
         b7bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKN0Klog;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p70si373716wma.1.2017.09.17.16.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 16:13:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FKN0Klog;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id r136so7226963wmf.3
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 16:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eIM6qGkr5Ebcxt8/sC+rf6WC9gg44Uum+xR9KtEM0gw=;
        b=FKN0Klog+6xIzcEkCEAnSM0zQQyYFin29ln879BwhjoV8893YwDqqsHVvTFCWpOwmu
         4DZSRd2B0SvbXbUtmG+WuIh8+sRsk9q4iQF9yojDoJW9pGsFROYjDW2zLDLJjKuxSRt1
         5CB98Rzylk7JxOdEy1PelwI4C39fn26dCPlR7SfcNo1ZezFJH8caVybrND0RPJwHXqOZ
         thUBROzdp3YYKemGaWOj6M/17HE59oeFvTEwdfKvIW+xm+i0QqsOU85axtSKU7F6QsWA
         eOoGW1+5zJWiLVQmJKfiMB8k3yjhgb73ylyGpxFAIaMvgeaFB95cUcpgwPwj5Sr5eRlT
         F76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eIM6qGkr5Ebcxt8/sC+rf6WC9gg44Uum+xR9KtEM0gw=;
        b=JMadSFoHNDQbCW1USdfLNrSW7GisDERlWWgAnvs2rHyjKTWT5jmCWK5ThW68ZqT1iQ
         CSoMzKs+PMRmkl4TTklgIng5oWXq5TfjNMLEOxa2JPYEgJU01uK6xtLnDBOqaX4hVIVv
         xAmni57s4zCNTxx4vNmcf8ST7EKGq1QjejCam/Bcy/+6VmbpgDpJOg6P6t/MZhrCQkKy
         lORAmixtG6OYPgghP6Xz+mMU1q0V7upwzwGuWsSJ7RrsKwNpGDN0+T7/bgbzl1z9+wgd
         nJANNWxyjA4Ry5U+cGc+b7oEx0PUCfjnzQUTy7r2tQEO1bs6n5k8sc5guW3IODzak/u0
         f/uA==
X-Gm-Message-State: AHPjjUgEN8DdZEIb9CamuyQvrdrEjR215aJtDlFNHXhtlNn/inB/oeBb
	O3RA92BRpN1Uk2rpVA17Kjk=
X-Google-Smtp-Source: AOwi7QDlo7eIktaq0HeQGiFUk0+cpcf+RSsrLT7BtXjng+i4xD7rBw3V8tGRvSyf1IH98NTmf5EcZQ==
X-Received: by 10.28.0.88 with SMTP id 85mr4020287wma.7.1505690001689;
        Sun, 17 Sep 2017 16:13:21 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id a207sm5546173wmd.25.2017.09.17.16.13.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Sep 2017 16:13:20 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Mon, 18 Sep 2017 02:13:19 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jsimmons@infradead.org,
	andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: [PATCH] staging: lustre: lustre: Use kstrtoull instead of
 simple_strtoull
Message-ID: <20170917231319.gmp3cl4bpagcyvgi@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>

Because simple_strtoull function is obsolete, replace it with
kstrtoull. To make the change, some code refactoring was necessary.

The lprocfs_write_frac_helper() convert a string to a float. To keep
the functionality, split the string into begin (the digits before '.')
and end (the digits after '.'). Then, apply kstrtoull both on begin and
end, and build the number.

Issue found by checkpatch.pl.
---
 .../lustre/lustre/obdclass/lprocfs_status.c        | 39 +++++++++++++++-------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index e79485b4bf7f..e01ec4dcc6cc 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -239,7 +239,9 @@ EXPORT_SYMBOL(lprocfs_read_frac_helper);
 int lprocfs_write_frac_helper(const char __user *buffer, unsigned long count,
 			      int *val, int mult)
 {
-	char kernbuf[20], *end, *pbuf;
+	int rc, counter;
+	unsigned int long temp_val;
+	char kernbuf[20], *begin, *end, *pbuf;
 
 	if (count > (sizeof(kernbuf) - 1))
 		return -EINVAL;
@@ -254,26 +256,39 @@ int lprocfs_write_frac_helper(const char __user *buffer, unsigned long count,
 		pbuf++;
 	}
 
-	*val = (int)simple_strtoul(pbuf, &end, 10) * mult;
-	if (pbuf == end)
-		return -EINVAL;
+	begin = pbuf;
+	counter = 0;
+	while (pbuf && *pbuf != '.') {
+		pbuf++;
+		counter++;
+	}
+	begin[counter] = '\0';
+	end = pbuf;
+
+	pbuf = begin;
+	rc = kstrtoul(pbuf, 10, &temp_val);
+	if (rc != 0)
+		return rc;
+
+	*val = (int)temp_val * mult;
 
 	if (end && *end == '.') {
-		int temp_val, pow = 1;
-		int i;
+		int pow = 1;
 
 		pbuf = end + 1;
 		if (strlen(pbuf) > 5)
 			pbuf[5] = '\0'; /*only allow 5bits fractional*/
 
-		temp_val = (int)simple_strtoul(pbuf, &end, 10) * mult;
-
-		if (pbuf < end) {
-			for (i = 0; i < (end - pbuf); i++)
-				pow *= 10;
+		rc = kstrtoul(pbuf, 10, &temp_val);
+		if (rc != 0)
+			return rc;
 
-			*val += temp_val / pow;
+		temp_val = temp_val * mult;
+		while (pbuf) {
+			pbuf++;
+			pow *= 10;
 		}
+		*val += (int)temp_val / pow;
 	}
 	return 0;
 }
-- 
2.11.0


