X-GM-THRID: 6331967538741641216
X-Received: by 10.200.46.229 with SMTP id i34mr3964003qta.60.1474276303973;
        Mon, 19 Sep 2016 02:11:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.234 with SMTP id 103ls3196795iom.0.gmail; Mon, 19 Sep
 2016 02:11:43 -0700 (PDT)
X-Received: by 10.107.201.74 with SMTP id z71mr3781473iof.54.1474276303503;
        Mon, 19 Sep 2016 02:11:43 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si5040860pab.1.2016.09.19.02.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so6704307pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 02:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yPbszSFt/HboVhw1eQfdWllsX1hzkboIgDXiFDE/HE0=;
        b=01NFsyHr8aSroG6EgSW9HZcpvNu7Jqw+p3cE8yQ591/ABI2bLHVDD/qyGA9IToheHv
         jwbvlZYqc97x6uJAtv2B2+R13jiLwySuh26+LsqnzD4iC7NzIu7v/AXhIdkHrfwV+vqd
         2GcanWpc8d2mgPDR8DgKwJhKLZXeI0+24qmzOasFThz7SqIxss1AMngV6rhCCJHlTAgK
         bn745UkYiZl6i0JsW03okRpxwW0i8Uri61qvu4kNbt48TchRN0W93S5vcRnIexabuDfL
         AmPn1N8SBZ8HOZqrTc+g40WVtYEXENqhqWpjbxKXmavkvJytNT7TObqUa05DLdT0oJEK
         bzTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yPbszSFt/HboVhw1eQfdWllsX1hzkboIgDXiFDE/HE0=;
        b=bv/QXFhU9K6ABQO7AmRCdUF3bHsvFcxmp25m/r4Vn9rmnzqh23pX9GXEj3xA5QXLT6
         CG8bZHCoijbfgLxDTyLYGIruTI3ZWkdCqxpgG7POagefNNabipHYBilcE+snSwfY4/2f
         iX22WkHtHaH6I39erpiebxRFFzqzF3dB20yBaOTqssAW189UJ9YG20uyjLLLyTOKg6eC
         oZd9MdSiX2z/n1LQkA1GOZBJYcitiZ3s0PEgh3FrWZf7XnQYrzAPldQ6hIUcfP+4umKN
         DWzqW6CV463Xqg4AheGAftZaR1yABvhCzXDUtdUVPMm2OUObAPjxrtjahe6zQkfAl1Rl
         0oeA==
X-Gm-Message-State: AE9vXwNAo2nfTV6ixp+QveUwnJohNVRvaqB/45cttQwUr2Jt10lfdQFdI87nOR+E381Ftg==
X-Received: by 10.66.253.133 with SMTP id aa5mr31343753pad.161.1474276303087;
        Mon, 19 Sep 2016 02:11:43 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id i4sm16774031pav.27.2016.09.19.02.11.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 02:11:42 -0700 (PDT)
Date: Mon, 19 Sep 2016 14:42:24 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] Staging: rts5208: ms: Use x instead of x != NULL.
Message-ID: <da7a46543cf27108dcd189089399a205ddcc04d8.1474275111.git.bankarsandhya512@gmail.com>
References: <cover.1474275111.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474275111.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rts5208/ms.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index f927ba6..6afddea 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -4077,7 +4077,7 @@ void ms_free_l2p_tbl(struct rtsx_chip *chip)
 	struct ms_info *ms_card = &chip->ms_card;
 	int i = 0;
 
-	if (ms_card->segment != NULL) {
+	if (ms_card->segment) {
 		for (i = 0; i < ms_card->segment_cnt; i++) {
 			vfree(ms_card->segment[i].l2p_table);
 			ms_card->segment[i].l2p_table = NULL;
-- 
1.7.1


