X-GM-THRID: 6207482452562149376
X-Received: by 10.194.240.230 with SMTP id wd6mr1084038wjc.0.1445371024561;
        Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls261246wiy.30.gmail; Tue, 20 Oct
 2015 12:57:04 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr1083443wjc.2.1445371024141;
        Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id d7si185692wiy.2.2015.10.20.12.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fx6so61479078wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=7DeU1uHT19ZYuuuQBljKbaPD6xl2U0rv9kWMqTo4zmI=;
        b=gDcmdq2QK8pCsHB7hgqlbaRbo3oI9zoHKO48gkaCRyosCw2oFm18YFxlWM7TteVzfN
         RjD8086JNytHrPyqd7l6jjX+0XlM382GvQ/pV2wKyoY2D/Ae10Bbc63Xw+gjmVced1Jq
         nexSUTp2K+dujVTQlEXAyPnuOWwhimaVRof3DypT9LK9amXcfAVtuPgF1cQanKuom0nJ
         NlMRmY4snYx95xMgV3AzQzh21fkGY4m4BPjfh34NLBpSwZtWD0TbHEqXzZ1KVyE/TJc/
         fbmCm1PKCUvmQtQc4AFJpSIIM7M/Cs01mRxYIIWeC3eZ1OpTzGQwkbpi4lN9ZkRtQxCH
         PgFQ==
X-Received: by 10.195.11.232 with SMTP id el8mr6194410wjd.138.1445371024056;
        Tue, 20 Oct 2015 12:57:04 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:03 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 6/9] staging: iio: frequency: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:44 +0300
Message-Id: <d88c6f5b5064b0a4ff412eee67385c536521242e.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index d02bb44..fcffe2c 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -111,7 +111,7 @@ static ssize_t ad9834_write(struct device *dev,
 		break;
 	case AD9834_FSEL:
 	case AD9834_PSEL:
-		if (val == 0) {
+		if (!val) {
 			st->control &= ~(this_attr->address | AD9834_PIN_SW);
 		} else if (val == 1) {
 			st->control |= this_attr->address;
-- 
1.9.1


