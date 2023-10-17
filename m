Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F282A4175D
	for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 10:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bLf3Jufm"
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-d9ad90e1038so5841403276.3
        for <outreachy@lists.linux.dev>; Tue, 17 Oct 2023 03:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697538853; x=1698143653; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y04BNRKy+ibQwyxy5U26dHcopyErfvq/EHK+Rz+47TY=;
        b=bLf3JufmPXHj2IkUl8opDDAfpdyW53/OdxEZBsud8EQbN9c1+u7VVxfaadfWywHyFG
         /+kiHGOvUI4u5CyKLPUGRxlf26gW1kAF4iVyyw98ELg+leBfQQH+z0zPhGjssMHflG8d
         cZbZAf/7D5FlG6WftzZmI4k1OwkSH+TuFCs2fTEn/aWzrTkAXr9qRgvTiU7voNEa6KAQ
         lFx2CEWdtbRx80DLg8dFOmtyY3+R5nLazYijZw4uBcaXyEl5G+TxvYpX5lzyXOCV7M9I
         xrwUiRXWR85zIaodyCaXnfRWhZlYbAYy2z2M4FE4sXSM72zDVqGUrNkHz1FkL7D93nag
         NH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697538853; x=1698143653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y04BNRKy+ibQwyxy5U26dHcopyErfvq/EHK+Rz+47TY=;
        b=vH6JUEXqC+jOXAwkvvW51RiVCFnCHzZHaWloqlCtdki4g94gK/+m2goyYzZVhuDDNK
         vIacx7u5IKTV6O9a2gvVqcmPPBqM4v7qjbmIndlelxl+maPlxBfXGi5nD8ETX3Xoe9G9
         /ZjpQsDh72ogivXtzIswn0Ppuy6mD9eD78pjIqXFPKW9CpDa4xtyAA8uNO6p7D0PHscq
         wQwqhPDpsKcs5Rzqg1DvsPEAp0variuQv+q40emty6PGcV4sJIq4PXdq8OGxiW4QVlJK
         1gNfj/RALPA37hNmHeZmANsIHdGK7be5rUeNOeojQqpyn305sISuBrpu9FH82XH8Y7b8
         jpmA==
X-Gm-Message-State: AOJu0YyNvwwdv8JALJg0jWJ8gT0LDUamK9GhyNAkGI+RMCNhOh1KgJUh
	6WzDURNxpYL2dOoCcIw79TWFIVDbNOa/NhwR
X-Google-Smtp-Source: AGHT+IEgZXz2PEtAqP4WkVHZVHpYzUky+SMmeqL8JlqfI96eUVGpdlke1C/PPLhCDRHi82BnRx1AEw==
X-Received: by 2002:a25:9b85:0:b0:d9a:5918:8f53 with SMTP id v5-20020a259b85000000b00d9a59188f53mr1579826ybo.56.1697538852835;
        Tue, 17 Oct 2023 03:34:12 -0700 (PDT)
Received: from gilbert-PC ([105.112.189.86])
        by smtp.gmail.com with ESMTPSA id y140-20020a25dc92000000b00d746487d6f7sm417265ybe.35.2023.10.17.03.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 03:34:12 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Subject: [PATCH v2 0/4]: staging: vt6655: Rename variable bUpdateBBVGA, byCurrentCh, byCurPwr and byBBPreEDRSSI
Date: Tue, 17 Oct 2023 11:34:01 +0100
Message-Id: <cover.1697535791.git.gilbertadikankwu@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make the variable names adhere to Linux kernel coding style and fix
checkpatch.pl errors.

v1 -> v2:
        fix error reported here [here](https://lore.kernel.org/outreachy/d77f35a3-5eec-d02f-459b-1968a58ff7d5@intel.com/T/#m12a562e40fc6c250f6989b252c7e121435c48bc2)
        reword the commit messages as suggested [here](https://lore.kernel.org/outreachy/d77f35a3-5eec-d02f-459b-1968a58ff7d5@intel.com/T/#m9051ff56ac0248bbcad371c82e23cc22cefb2a23)

Gilbert Adikankwu (4):
  staging: vt6655: Rename variable bUpdateBBVGA
  staging: vt6655: Rename variable byCurrentCh
  staging: vt6655: Rename variable byCurPwr
  staging: vt6655: Rename variable byBBPreEDRSSI

 drivers/staging/vt6655/baseband.c    |  2 +-
 drivers/staging/vt6655/channel.c     | 18 +++++++++---------
 drivers/staging/vt6655/device.h      |  8 ++++----
 drivers/staging/vt6655/device_main.c |  8 ++++----
 drivers/staging/vt6655/dpc.c         |  2 +-
 drivers/staging/vt6655/rf.c          |  4 ++--
 6 files changed, 21 insertions(+), 21 deletions(-)
-- 
2.34.1

