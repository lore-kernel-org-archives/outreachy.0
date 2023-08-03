Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1D6FA2
	for <outreachy@lists.linux.dev>; Thu,  3 Aug 2023 15:27:36 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1bc0d39b52cso7755135ad.2;
        Thu, 03 Aug 2023 08:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691076455; x=1691681255;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3PEClLdiiliH1dtsL2h+XTbEz6roLIfQbCqPY68CHc=;
        b=Z7rfNE2VzdzatxG1UFZAvohhYF+7QA2YhD0ixakQKhmwy1YuZgGFDvNVsh3hR66hGo
         rrC55Ff9+EKEJ5HbWV9LXQxIzgqfQGh61A+K+ryrxJVWQNvEJPUev/n/Ood4rP5XZDSl
         f2ukN7GwwDtJhqUYZC/xMZourAP/XaNjVTQ0KKVlSgH9EcTOCRZDObF3M2T/6Of7Py/j
         KTeuYNWJQhagoT3lERILi7nsuzCfZe7Rfx+HoRoBszjsSE0VHxwbdkrf1qgQHEILvXLx
         0xTOeHsMch3bSnFP6b9sA/zAzGNB2OODAAJ8iv4onMwB4Muz38I/BS6NEeJZ8WNK+tBM
         4/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691076455; x=1691681255;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o3PEClLdiiliH1dtsL2h+XTbEz6roLIfQbCqPY68CHc=;
        b=P2+N8tsfHg3XuMmZFmpFghVCj5zVuGYe0peBX3jHQgqBoOAnFL5QyFCx8/6Tyq3gFp
         KwY1qr+gPwFxvN3o1Gq3380BvAm+RLIkpuIf7VRmPSlrB3LF6kFE7nJM+RQmenY0O7UU
         cUbQ9UxgVR0cy44xuHQNMeI8VIskGGFJeDIWo0DyJKSJVlV2i1+SZlWCBEhVWg+v/xy4
         1o54wX/l1wCxc1Y5UzvNabW42QUYjG1Ek0DiVQ8WbfqCM5zEk38gIUxqHgCwI/hgYmlC
         0VGAK56kAutzsHy/bTexXf/JvU/Ay8LnTn/WVd9N+ZLK2viFa5nucdgUusAePrxvZl8A
         dmtg==
X-Gm-Message-State: ABy/qLYQObjZ6xnLP96xTYx48nIeJCSQY6t5wDQ4ZjCEDgpoHSqDadKG
	Jwg2IRARcTLKgluIUBXraJI=
X-Google-Smtp-Source: APBJJlEu4wiaio+GPI4TFImQcwQYkHYBU/0TAwL9+yWKK8YhLErTBo6r3L3T5vRw3K07E0xp6NIxDg==
X-Received: by 2002:a17:902:ecd2:b0:1bb:141c:3034 with SMTP id a18-20020a170902ecd200b001bb141c3034mr21319157plh.12.1691076455462;
        Thu, 03 Aug 2023 08:27:35 -0700 (PDT)
Received: from ubuntu.myguest.virtualbox.org ([223.178.255.173])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902b60d00b001bc16bc9f5fsm7582494pls.284.2023.08.03.08.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 08:27:35 -0700 (PDT)
Date: Thu, 3 Aug 2023 20:57:31 +0530
From: Pavan Bobba <opensource206@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Straube <straube.linux@gmail.com>,
	Philipp Hortmann <philipp.g.hortmann@gmail.com>,
	outreachy@lists.linux.dev
Cc: inux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: vt6655: replace camel case by snake case
Message-ID: <ZMvHVLVCQakLyWUa@ubuntu.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Replace array name of camel case by snake case. Issue found
by checkpatch

Signed-off-by: Pavan Bobba <opensource206@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 0e135af8316b..8b913c64845c 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -499,7 +499,7 @@ static const unsigned char by_vt3253_init_tab_rfmd[CB_VT3253_INIT_FOR_RFMD][2] =
 };
 
 #define CB_VT3253B0_INIT_FOR_RFMD 256
-static const unsigned char byVT3253B0_RFMD[CB_VT3253B0_INIT_FOR_RFMD][2] = {
+static const unsigned char byvt3253b0_rfmd[CB_VT3253B0_INIT_FOR_RFMD][2] = {
 	{0x00, 0x31},
 	{0x01, 0x00},
 	{0x02, 0x00},
@@ -2005,8 +2005,8 @@ bool bb_vt3253_init(struct vnt_private *priv)
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
 				result &= bb_write_embedded(priv,
-					byVT3253B0_RFMD[ii][0],
-					byVT3253B0_RFMD[ii][1]);
+					byvt3253b0_rfmd[ii][0],
+					byvt3253b0_rfmd[ii][1]);
 
 			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
 				result &= bb_write_embedded(priv,
-- 
2.34.1

