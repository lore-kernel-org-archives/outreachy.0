Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3293939C1
	for <outreachy@lists.linux.dev>; Sat, 17 Oct 2026 08:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792226701; cv=none; b=LrtTpv8tri4DLcm6E0rXXWZuObKzyaUQBkdIIHbohayWfb2t3rNuOt1AncthbJIZqyLIn7UntZazZMNfgHbdXGfPfsD5iVG2V/GEA/ALNmppg0HOqwvXzCNqFvTp3jCBlnpKwSzcWTwua6Kd2pfnsUPy+FrT0HL0lVuv9grx160=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792226701; c=relaxed/simple;
	bh=8uSgPY5J4SRj7MOr1f/0kPNYNpJMtVZt/cJJlSdW0DE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qJ3Kw/1b9rYTTn3e9N2hEmnJGRk4cZwRYRNWQzt6ZpG/DcFvOwehO26Spo8GF8SfuRkDIS8IActrh1+7yYQieCP5rJTu+K1h8A7m/e+tRWrooLrV5P5nXvqh2KY2EVlwL8EaYWoDWSzYrXtlxex2G/xvzkwHRSTJZ2tbGGow/uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n4MGebTo; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="n4MGebTo"
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-35943f55c06so904164eec.0
        for <outreachy@lists.linux.dev>; Sat, 17 Oct 2026 01:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792226697; x=1792831497; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=CDKDg1qqrPaeFL1JFANvjweHJRgsUSZoEsZ1Bk80NL4=;
        b=n4MGebToNGDHZdJGe1oowXPyzj63M6DUr/9CbaUqGBtcyMFzJ1bfVvJIW+/WztXUix
         WWc3PYt8yV+vuxo1OZVEufr1/wDxQgwJAQH34OsqyKqNUSop2uwCDeVsNH18NWXdbSPF
         u/65W8VedgPDvEjCCeaoeGybW18SkwjYlIbLhJjPkXVLPF1lswSZa3fnFSW9DMbk5WUg
         dQ3nmhmwz17mxstfdPlNHWkcpD4Mvw3OuZWqeci+yErwh+04MvE1JheW3UzgpSF8pxOq
         q5tnHP/cHllanPE9jNp6nqoShZQEGtCA/KVIOpuQt1/Cv70ia7zUCMYuG7TXyjzQLsTl
         r77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792226697; x=1792831497;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CDKDg1qqrPaeFL1JFANvjweHJRgsUSZoEsZ1Bk80NL4=;
        b=g0AZxbcOhiOGiF0XPifD3oaE5QJKTHsYsMlHj5KiD4cqPGpf3iSRMBtGI40BQzAkZt
         fSkZbxrMHsUEY5eG9udM9Nt4El/iWcGzx4Pnr46NjxuHf6+CB0giqpYWAs81FUehOlNI
         k6LEQFbRYmox6QsxMef8CSnFeoXAB5S/OlbaqZ0aD37Hqb+TKCT9Mb25+jp6dJH6KK9o
         6c8m5TyeWgXJO9GQeSoEa62pOFiQNg+Z5YJjHggdGay3w/povZcF1p+W800ORgFYgbVr
         7Ho6qQOGZTIJbBKdR9hPpWKfMxOgnk40XdPLjCnar3YjLV8GKNMjDq9X1zvAhggyy/xe
         DI+Q==
X-Forwarded-Encrypted: i=1; AKwUvBxZFliwpOb49Au2+ziCWeQDzQuSUnqpXjW7W0PedgjswRh97S5eyN9MmwMfOUtn3wY70uTTOHMvloA=@lists.linux.dev
X-Gm-Message-State: AFq9FYIm2ezGqYUZv6wcLthlq8WDuxfZvtTlxsgdwWW1xuLaLoXjlnCN
	Kf1rlWDSdTvTuG8f87sRAXT0tuUruvDBDIBEoIefnRu1r6ndcyWy+E0N
X-Gm-Gg: AYBFou0/K/E+Q+sG9/pUk3FAJxWOkV5Un6BJXYRptnQhKoIkh3SR+yEEPLoJM9yM6gM
	pHIye++4lGiG3JUG1T/k82tr/1zgLr4AQN6n5O+LT8PmqFkGvN5GOtDuiTkzYa3eik4rcizCdf1
	UlL6AILRZVSFjz/DF2Y3Yp6mwHhERhoW7bbDYizqUUHFuMIU8z9Q3rhWp/impJ/6nNjvUieiQby
	nkAAgiffpgBZATvxcK10ccnEFGB5d8U//KeDbDwZAZ2HbtUSS1S74Kn8lB/n29kHlHG1Li8MPuh
	rTIDfT3UZOtfn8KD1wk3IbPaeqXQ3JGDlZOp2DM+prCf8vouEbg5LDTLVgXknvnAMZQ5j1Wf+lC
	bgMeeAcADMA/Z9Y2BnWwhapCVdkNw2nnuGvLe6GPU1cW7ZrEGiecD3PdBMxJbVrbDxT1lyybF6y
	zUXspoujRBOUH8KmFzJ9mU3xguvASlzM9Bn59ENISsXraIcGHVCr4UKyLXUQdKDZQwXGTogSCP0
	EPyc/w=
X-Received: by 2002:a05:693c:65c8:b0:34c:6edc:f4d with SMTP id 5a478bee46e88-3619ed15f04mr2742791eec.1.1792226696671;
        Sat, 17 Oct 2026 01:44:56 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:8046:55b6:b0c1:1b0d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36081fa5a6esm13584872eec.16.2026.10.17.01.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 01:44:55 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: pure.logic@nexus-software.ie,
	johan@kernel.org,
	elder@kernel.org,
	rmfrfs@gmail.com,
	vireshk@kernel.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	ethantidmore06@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v2] staging: greybus: Align function arguments
Date: Sat, 17 Oct 2026 14:14:41 +0530
Message-ID: <20261017084441.12123-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Align the function arguments to follow the coding style and
improve readability, addressing the alignment warning reported by
checkpatch.pl

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v2:
 - Rebased onto staging-next.
v1: https://lore.kernel.org/outreachy/C560A15E-6F28-4FC8-8BE2-277B503340AD@inria.fr/T/#t

 drivers/staging/greybus/loopback.c | 3 ++-
 drivers/staging/greybus/spilib.c   | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index fe48a687377a..efc69c10cffe 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -652,7 +652,8 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
 		}
 
 		if (!gb_operation_response_alloc(operation,
-						 len + sizeof(*response), GFP_KERNEL)) {
+						 len + sizeof(*response),
+						 GFP_KERNEL)) {
 			dev_err(dev, "error allocating response\n");
 			return -ENOMEM;
 		}
diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
index e4d1ae8308aa..c1982f3fb931 100644
--- a/drivers/staging/greybus/spilib.c
+++ b/drivers/staging/greybus/spilib.c
@@ -160,7 +160,8 @@ static struct spi_transfer *get_next_xfer(struct spi_transfer *xfer,
 
 /* Routines to transfer data */
 static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
-		struct gb_connection *connection, struct spi_message *msg)
+						    struct gb_connection *connection,
+						    struct spi_message *msg)
 {
 	struct gb_spi_transfer_request *request;
 	struct spi_device *dev = msg->spi;
-- 
2.43.0

