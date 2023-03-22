Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6202ABA49
	for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 22:07:25 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id r11so78941444edd.5
        for <outreachy@lists.linux.dev>; Wed, 22 Mar 2023 15:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seecs.edu.pk; s=google; t=1679522843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JVG2u0PxjcHnMZyDP5cFJRBQ+0w73Zdls1zxTkcKhxE=;
        b=4BllPFkRTczeJDJcUxBJ4nsD6E4yo6yZMqI5ufh32vPtKvfVCk57nb7nG3lnCd7pLg
         IZf1khqXXszZgb3ZKun7cZ0SEvW0V1Km+MTlbTlLMA+9NCZLXTAy42vqSW3yCafM5wrB
         rTfpNxBxJLw2I1H/aKLoXRpLnMGIpUpdCB4yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679522843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JVG2u0PxjcHnMZyDP5cFJRBQ+0w73Zdls1zxTkcKhxE=;
        b=aJ256FEZSz29EekkIA+Gjh1t/Y++m5Y/lcI1xg8IEe0c4gkguvnXjBSiFTnL44+VEc
         TUB/RTISxCro6OBvqz4ElO1YDMjYBF6fZeJHoxYizii5GugIl/xM0c3kcffN93NQXjIk
         Y/zdPHV/rtAvPWsGmh1cNl4goJGf9SLWaSbVvjoLf4mmgFmpRZ35g7EVfVDBEwSYVPTo
         10/j5flfXiEsI+AFlDi651QgLgTx09E5qhpoZEccIBBoqglNgetsXA0iUfCdnIj9nY8V
         up9h0lSkunbo7heq98vUhKEyyV32QKPnYwh1GP9B76xHcrMZupE3gU9l/E/eF+g5xV2U
         Mv0g==
X-Gm-Message-State: AO0yUKVg1KMAMBBvV9muxqxY7rwhhNx+N8Dgy/rFz4EuM8jKIKx3/r9N
	5XL+fTvpBchI3FTPaAIzdOvAMe8NS1uz2Cipuo8=
X-Google-Smtp-Source: AK7set+SkK/C2Wqx91jsFrtmCMtKRHhrbDLMipKVjE/mmH6XsanIVqmWwvsaMF1HoLCV4+Nj+3O/5w==
X-Received: by 2002:a17:906:4f8f:b0:925:5705:b5b8 with SMTP id o15-20020a1709064f8f00b009255705b5b8mr8138114eju.58.1679522843190;
        Wed, 22 Mar 2023 15:07:23 -0700 (PDT)
Received: from khadija-virtual-machine.localdomain ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id v19-20020a17090651d300b0092b86d41dbasm7787935ejk.114.2023.03.22.15.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 15:07:22 -0700 (PDT)
From: Khadija Kamran <kkamran.bese16seecs@seecs.edu.pk>
X-Google-Original-From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: outreachy@lists.linux.dev
Cc: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Khadija Kamran <kamrankhadijadj@gmail.com>
Subject: [PATCH 0/4] staging: rtl8192e: code cleanup patches
Date: Thu, 23 Mar 2023 03:07:00 +0500
Message-Id: <cover.1679521517.git.kamrankhadijadj@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix several cleanup issues reported by checkpatch.pl in module
staging/rtl8192e in file rtllib_rx.c

Khadija Kamran (4):
  staging: rtl8192e: remove extra blank lines
  staging: rtl8192e: add blank lines after declarations
  staging: rtl8192e: add spaces around binary operators
  staging: rtl8192e: remove blank lines after '{'

 drivers/staging/rtl8192e/rtllib_rx.c | 73 +++++++++++-----------------
 1 file changed, 29 insertions(+), 44 deletions(-)

-- 
2.34.1

