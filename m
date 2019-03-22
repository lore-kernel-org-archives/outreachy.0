X-GM-THRID: 6671020394532569088
X-Received: by 2002:a17:902:a9c8:: with SMTP id b8mr6787153plr.12.1553217978610;
        Thu, 21 Mar 2019 18:26:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls2728632pgc.5.gmail; Thu, 21
 Mar 2019 18:26:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxa+Ct/4jocvG8F9RKeq0d7mktxqp1HQd0EOBCqV1Ktz+5STRKmVyMfRtbg6y2RLbLMe3sv
X-Received: by 2002:a63:fe0a:: with SMTP id p10mr2034924pgh.86.1553217977857;
        Thu, 21 Mar 2019 18:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553217977; cv=none;
        d=google.com; s=arc-20160816;
        b=VsV0/RX0io5H/fIk1CSWCXiAF/KGbD1JxI+/2amOs5i9NWyQCuU6tP2C7P1J9HzBKD
         b/Fzb9pBZ+xbe6mCEBhG8kyphYN6J1B8SZxBrN/jvLP95s/L72ET09cXodKxF4Q+GuCw
         EI8/RpCZIW1j3EsqK6U2YPKzne4H1ncFtYntRCHA/QZcliiaiyJEu/pLR6jSUQiUfqXh
         bwtodQGgRHpm1ecXey7mRmexZeDwlWatJLw9JpvxpJJ9QyhF+u5CF+aDCp2XKQDKb1Ty
         BPBygkH7r9yZW6l4vllrv6g+eXqxbiF3UsWxw5mrcQizxliVy8XKtBQg1x9Jq5kMAjNy
         HH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=0Oj6iKj3YLCgjosxeNjolKoLifcA4nV16CjU1ZSazfI=;
        b=Mx3SrHddzuGZt+cV7X1qX2cHAe9axRnqCDEI1a2vdgIRg+77ExSYqybHLTdHNWQ280
         2MuwCi8M2iSqfIXKREFkeDr6bNLhvwTHUdtzXAEBzrBGfm/JoM0TB5Zc0TkNe6eH7nSB
         d78Djz8Y+yUGgr12YpNeYUetQ2nj/J71TVoRzQnHRqsh9RkIwavqm3aiK4GtbC2pJ/Ut
         9322Cw6w4YokiNOPt1Esu/Pwc3lLYi7UciG44RGAQivAK8hD1qBumGoHfDw/cdrNfrBt
         vdsZGctwP2PK8neDy4+R/Uw4ngR2onksUuZcqJKKEsdkVUoNL6s7OlmRFBN9zAvPRab4
         C2sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUJ6oNKF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id p15si354186plr.4.2019.03.21.18.26.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 18:26:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUJ6oNKF;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32d.google.com with SMTP id c16so571636otn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 18:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0Oj6iKj3YLCgjosxeNjolKoLifcA4nV16CjU1ZSazfI=;
        b=dUJ6oNKF57J6B8r3jmNcb7Eq+nyO89BR5wkycfAf7j0zoYfXdLyOYYhAnI5FaMHHcA
         VbkRpQAwtdeTaFABULzGRpWexRk50LokMon9+jcyG916qrQmJK5E9//bY/O4+EGYX0Zi
         MbmPC0Pq7TSsKODoZW7jHbb2vWK+wGm5Eu2LTRBDoAtvc6zgZNKMA4NhEKEqxKxbwsnX
         z71EVnvYjqERKk7O/+MRvvq1xt4/Tawg7LMnrodvITqgPmKn8PWIuo1eDzo8JvB5Kdw9
         gQrlBbqyOfA+PvH6ytkgbENO0DvWERJ/CoCdezDXd8bQ+nEghpay3/XYICNVIWirdvlL
         UpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0Oj6iKj3YLCgjosxeNjolKoLifcA4nV16CjU1ZSazfI=;
        b=oYYvTgFLMxWE2GVj1S5DVLEMdvJECbz3edkAkG+m5nSONZhX5LeW6uHj8cWOcPxkEy
         JXxQoT0rXzoXE7nfv/DHETTwKKt+y0T3XL5GapUGQtzWLWYAurPd8ejEXzWlWjKv0J8M
         wIGMJPwUhBH2Y/tZSnRiBFx0RDbXeKbgjFUBn5zJJSj6ZtI5wI3ti3wRA5SsIM9PDa7p
         fFPCOzHzDusu3BWw3wHl+wfj3Juw+m5JlKB0/pFDnXWpOckFjCPB6J++/GRYRU7EoBM8
         1K4mNhtXiFMSY2RsrAimNGmOCHn30hs25OZKYfp1ijIs7IjkZWdELyfjXdj+Lns/rMux
         ydyw==
X-Gm-Message-State: APjAAAVaTWSSOCDzkwXtl9hlGuN3vtqDMbehqD7xObrUp2ng7djEbFx5
	0CdTVmUnPBnsPzvDh/l5fW0=
X-Received: by 2002:a9d:694a:: with SMTP id p10mr5159305oto.84.1553217977524;
        Thu, 21 Mar 2019 18:26:17 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:c92d:a4c3:eeab:413d])
        by smtp.gmail.com with ESMTPSA id r190sm2032903oie.43.2019.03.21.18.26.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Mar 2019 18:26:16 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/2] Staging: media: davinci_vpfe: Remove RESETBIT macro and use BIT macro
Date: Thu, 21 Mar 2019 20:26:06 -0500
Message-Id: <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553217781.git.madhumithabiw@gmail.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1553217781.git.madhumithabiw@gmail.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>

Remove RESETBIT macro and use BIT(x) instead of (1 << x) to improve
codebase.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 382d88bee5a7..4f18db127caf 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
 			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 
 		default:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
+			val &= ~BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 		}
@@ -344,7 +344,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		switch (isif_port_if) {
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_YUYV10_1X20:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			val &= ~BIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
 			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
 			break;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 7bbe7a932b30..4d126fc871f3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,7 +166,6 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
 #define IPIPEIF_ADOFS_LSB_SHIFT		5
-- 
2.17.1


