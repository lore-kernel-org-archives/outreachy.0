Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.47
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793614501;
	b=s2KS4kh3wY+OX8WsriQoowh02oYP6M7zstYgNwRXb3vGhugg0Pcg8oX6CsC6KRO8mPbM
	 heR6ZY0LC/85icn2j32+EYwLyf7/43N9nIooCzSl/xFAq3SWJtrk4O7Jh5gudM8Kfu1Ex
	 I8YYMQL9MyKS/aNeCFdohlWOoWboYkYKN91uSMiO1dv5RrTcHWdB2cpEBBSMukU/A7u0h
	 17JYMOjD1d0DBy14Cc2/SLcfiNBftFr1Twy/B4M6GTyU57jGZ9UMaQWKy/bJixQ+IOjrG
	 pCW7yCN5eRmf+qvJCSGieGO0XkVT3kCQbEKLhD1S7cCW6OvoGprTdUZOqd9nv3uwYqQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793614501;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=zRD0mPqiIs7KB0/9JW36eAF9YH1/o2iif3vtRCsEuiI=;
	b=COfYwjCcn8MYTYv4uafvxjqbRtyM9xZP1++8zitRyoXsu2FBunvoldbnT7/uEljzL1EQ
	 vtAXW0po+AnxMZgBNRftNv0AY5dzDMuuX2CPN6IC9qqIJ/2ZM/aQtNTmIVG/0qfvXxunZ
	 UVmvwpqtj/OwMDflticIrEZVqplWSdMYY8uNlpo/dDL29fhaQYm2uXJsFm2FREhlF0ada
	 jzBDFtWX2oxnsuzso10CZP3xjMac5zHJyJSU1RFZ36HsKn90H50sHsOOSazDhGLSuBaWj
	 X5XvkMuWa6sXujnFPafaDFRwJx7KYYhepZDQPk6Zf8YNJH2gHzeIoU+fo7ov7XmA+Ug==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dcTp14nb;
	arc=none smtp.remote-ip=209.85.128.47
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF3606A326
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 10:15:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4EFF3606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dcTp14nb
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a20a37703bso21532865e9.1
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 02:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793614500; x=1794219300; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=zRD0mPqiIs7KB0/9JW36eAF9YH1/o2iif3vtRCsEuiI=;
        b=dcTp14nbPKx7Y4FJe2JzQYhyn6mQ03HNZDJbx4wjU2LYd0HizzV8Iy0oYJLEE+9Apy
         I7CiNuh9+GWR+5BtY2DqarFbxbXdD442rvbQ8sXO/RuBbjFVgHPt4n2qyecBNjA9g9Sl
         gXgGWxmco5WEdy7HRc5XoZ6oUe7krEGXfkJ2amB2VK3X2qArlzekqtY9TSJWwVP+gm+8
         8VJnxwrZusXoVt09ksf27OIiaBOKKGDcFU5vUkZK7jr4MduUmBmlBS5SPcB81X+ooW/P
         sNMEuHG80xTIySsnEHVCrWng5Uft8bLus6Td1xN9j0A7TYtA1Hg5afd0mDQce5q/5pEC
         ASlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793614500; x=1794219300;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zRD0mPqiIs7KB0/9JW36eAF9YH1/o2iif3vtRCsEuiI=;
        b=ratetXtGG+e+y2G3Lk82pKLycalI+9dd+NMBzPTkOIGwuSYuNPB9JfsBFLi955smbl
         /nFTCbplAleWHdNzOXv9SAD5Mubxd/u4BDqr57HqGPRXQp7RHZfNe+9UrneEzWqrbBL2
         kLyz7DrkRpoc1/AlIBwQl28fCV8UD4bgZKK/L/Fjo877N1/wK/ChuWyAhZqcmzVq49lM
         uaknk+Qkat2gMvlloZpMPayIk1e+fsU42+yzrZQud1Pmvk3R2+6yCT76zrA9kg/YkCJL
         ZLyNDIsvTkJh3+rcwEXjseUtjt15T2fEOWkU0gvU2oZGu48eyNDcEUBnEmCZ843S8THU
         KHXQ==
X-Gm-Message-State: AFq9FYJeRJiEu8+dzG/IU+EJ0gK39S9Ov0nL5FL8ZsgMlUaDnG3DgOG2
	69dR75ZhGUA4N7nzNSOT7o71b6H+8Q4s0ArbiXg+16Fi0Fw0ipZk/tz3
X-Gm-Gg: AYBFou1QKKYHoqSMKsj2+KQML5TfEzPVXqaaNppcBjI+B5yrGnU7BCtvI5DPI8PIIZS
	lqmcOkkHX3eazDeTlJz2PW46C75az2UJhyKRzbIYODd1AUQO7TiamMyBEpPxcY2CJ8Weynd9bZA
	2Nqr/5rfpLn/cGtAplnoG7v0aypG+5+xHCCovSSSLhVx+Xf9oieZAxEa3KzMFnq0tuHJAdnG2bg
	FuHSyJiGXOH5C+5CaQTQuxXa/GpBeiLOaEeTPNCzU40bZh/c6bQJrtrgZvseGvQXTmuMeCqmOV6
	+RW1pmeL8IJfYNf5zm2gNOpNGHFpDDcebMeF5fqohYetyjQMS0z+RBxhwzwkKNycHXcxVm1TjGQ
	wLwI8yqu+IKoGp+v2ZRLVDLi2+7kCmRp730o+YGRJGc+84NSwbgCYB8HFZg0c+s8CCufWE+E+Pz
	hvS1E1UjjoYQ9S2LCCT/VWrkh62YC7382p5mk3n13v0CR8fIyWnzWDkXoIS6T7z/aCmfOPpr9IG
	l6AsKYMkgCiauqMXqTzBNa09w1JoJ9ynaytgw3tiO7jHejlG5Nx1+V/kcyeJ22QjdIzYBqslS2L
	UYaMEgZFh0D1VrdnpEjPLTjPK0DIkcjFMhZ5mO1ioovk92jxh57NwzUk3K+FYwFOBDnUbTfk45r
	AAMyjdxFkSmArgbgY878XzipsJZX1JvHU5acKlfuYl0zqFxXihJM3zXYadp56DVYhJg==
X-Received: by 2002:a05:600c:4e08:b0:4a1:ce33:1536 with SMTP id 5b1f17b1804b1-4ac1719112emr211409145e9.9.1793614499570;
        Mon, 02 Nov 2026 02:14:59 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([154.80.101.0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abf5b289f7sm263888645e9.5.2026.11.02.02.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:14:59 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH v2] staging: most: dim2: fix non-kernel-doc comment in errors.h
Date: Mon,  2 Nov 2026 15:02:03 +0500
Message-ID: <20261102101433.4618-1-mariasheikh812@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The comment above enum dim_errors_t starts with "/**" but it is not in
kernel-doc format, which scripts/kernel-doc -none reports as a warning.
Use a regular comment instead.

Found using scripts/kernel-doc -none

Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
Changes in v2:
	- Use a single line comment, as suggested by Julia Lawall.
	- Converting it to kernel-doc was tried, but it produced
	  warnings for ever enum value and its inline comments, so a regular 
	  comment is used. 


 drivers/staging/most/dim2/errors.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
index d707daaac3b6..966b0c731921 100644
--- a/drivers/staging/most/dim2/errors.h
+++ b/drivers/staging/most/dim2/errors.h
@@ -9,9 +9,7 @@
 #ifndef _MOST_DIM_ERRORS_H
 #define _MOST_DIM_ERRORS_H
 
-/**
- * MOST DIM errors.
- */
+/* MOST DIM errors. */
 enum dim_errors_t {
 	/** Not an error */
 	DIM_NO_ERROR = 0,
-- 
2.53.0

