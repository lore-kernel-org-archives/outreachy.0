X-GM-THRID: 6329749060210130944
X-Received: by 10.157.56.142 with SMTP id p14mr19576928otc.4.1473759547064;
        Tue, 13 Sep 2016 02:39:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.70 with SMTP id t67ls42306iof.48.gmail; Tue, 13 Sep
 2016 02:39:06 -0700 (PDT)
X-Received: by 10.107.44.11 with SMTP id s11mr187747ios.11.1473759546771;
        Tue, 13 Sep 2016 02:39:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si3070208pab.2.2016.09.13.02.39.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id ph5so2898616pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z/eN9UpzCpL109p/L/gUlFgcS9wuDTDtCTS8ski5+eQ=;
        b=rNjyFGsYBGlvFZryiklqycCPX8KoDbQ6RRk8cT1a3WZstweiiZCPtWIzgA2wX9tbFk
         QbEhnkVwKFt1bFxHJ3pkaJQpRDLxlKYPWcxCTzpFRzlbwXpnVwfunw6zd9Uv1N0Sx4nS
         AIHwuSL9UANe80jDv15pE4dYr75yNQ+gbiUmB2gZqtfldfs3Fe5gLUmzSfoBIPCFDkbo
         TSWG5Fi6035yjHDEeq+ms5eSsC2qKbSTMuJf41yWzceEgz7M1U5zfjKdf3nFZEf2FiLZ
         xLZuJiFtIzFmZb8RxW1dDNoJZS1D9xZeMtvy1cVZvNbVDYEgKiCnkFmfPayefLqv50/8
         wgaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z/eN9UpzCpL109p/L/gUlFgcS9wuDTDtCTS8ski5+eQ=;
        b=QFsuYNgSp35hEsVmrHU9qjwFaiSsxJ48CjD89o6MCpLUM8JJ7pauf/sLIvOMhAgUjH
         9yOh9opU8jvx2ihKIw+R3MOHL+AzY5oljzS7YrKITZoadNHM8/FwzpZ9OJgsFAS3fWxK
         Otu00Izx1kXEAV8QA5dlRULvyea6xGirHe+if00qJUcSeHMx/j17j58SmsGwO/ueDpzO
         HLhnwzOjLjleRh9JZxDeIdzkoBQqqRDOqlSIe9wXRnv0wZ2xXja91vnst0BHapmtyHu5
         UGZa5A+ynm+4zg0CVciMl0+aOvp9PW0pLjLNh/iwqekkJdUV+qx7sMajJSP2Y4nNpPeC
         CCDw==
X-Gm-Message-State: AE9vXwM/B0nE94EAIT27xm6J7XJ2yQXt/N2oftEv2lyNmixKQf5fipouSDWw7MNqOLMqBA==
X-Received: by 10.66.235.100 with SMTP id ul4mr41389317pac.50.1473759546591;
        Tue, 13 Sep 2016 02:39:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id h66sm29862819pfc.47.2016.09.13.02.39.04
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:39:06 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:08:57 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: media: lirc: lirc_imon.c: Remove unnecessary
 space after a cast
Message-ID: <bb931375d1e4fa071e49eb8ea0dda0b5fd160337.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove unnecessary space after cast

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index c12053d..e44f841 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -427,7 +427,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 
 	do {
 		memcpy(context->usb_tx_buf, context->tx.data_buf + offset, 7);
-		context->usb_tx_buf[7] = (unsigned char) seq;
+		context->usb_tx_buf[7] = (unsigned char)seq;
 
 		retval = send_packet(context);
 		if (retval) {
@@ -445,7 +445,7 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 	if (context->vfd_proto_6p) {
 		/* Send packet #6 */
 		memcpy(context->usb_tx_buf, &vfd_packet6, sizeof(vfd_packet6));
-		context->usb_tx_buf[7] = (unsigned char) seq;
+		context->usb_tx_buf[7] = (unsigned char)seq;
 		retval = send_packet(context);
 		if (retval)
 			dev_err(&context->usbdev->dev,
-- 
1.9.1


