X-GM-THRID: 6329749419272962048
X-Received: by 10.157.32.33 with SMTP id n30mr20279092ota.0.1473759631868;
        Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.196 with SMTP id l187ls44631ioa.51.gmail; Tue, 13 Sep
 2016 02:40:31 -0700 (PDT)
X-Received: by 10.66.16.135 with SMTP id g7mr10915318pad.27.1473759631543;
        Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si3071577pab.2.2016.09.13.02.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so9010924pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Lm8R07vdAiUiIcYU8s5PlCqrfr/+xJKB//Ahp7mP8z0=;
        b=1HAQ+Z7JHm3sSiR8SZPjusTiIdc0w+Hy/Y+G43ZnaQCOdOiAV6L6zX1EHBy7A6zz5t
         CIBch2xaNvz0r3b4daTVb+Q4UOrBLU1jLHEoe7SwOYSJQOFk340lT4EfqlsLXFiAMqov
         v2CDBVSK51sDNOePHtccGH8Xzwz0Oa9mAY/R5X7ZICrfB8Iv0uRKVDko1jB8DgNJviDc
         GRckbi4Ik8TB+Jt4v3XZRX+RVSfhJzDZfOT4Tui0gvXloLpcZXY3YQ6fISAVn1wFU7lN
         lXI9R+gO3E0yLwxI5uxrKNJFIt6hCvdCIDh7dTNxqTewyGuYV3+6SYuyRyY/DgJZlFae
         FUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Lm8R07vdAiUiIcYU8s5PlCqrfr/+xJKB//Ahp7mP8z0=;
        b=UnlEOAOKyrWU1lqUzfRu7L03fdmuFnelZxI8blm/+Oedz1ppvXkbQJb8124eo1tS08
         aZ2B8Sw/P0ooctZezaLBbFf8fqsWkWRMo+fBGwwA6U0kQfyyBZuEK6KxitXtGL2y2QaA
         qqJJ4Sa2UL3hKqsMmG5w1hwl+gdRkvhmL2ax2erM412L4nzNCRIydxE7yMUMSSC1EQRk
         AuCQrWGDI1ZLgQuO8/zl0KDICbqCVzp4Kghx3l1wjUcjgUfXG4pGQnmdimbxNTEvGyf6
         8HtEHw1c5x5TXCCZkP9Iz0N5Rji6VLGtBfY5lWENR+qf6ziXvJeoI7ZCARLutjSWDFrK
         vcYA==
X-Gm-Message-State: AE9vXwOD11/cjHz2jL9CX25JQevlSrtXfmq2kH+tM4fm6ND7+RBTYc2+PcpNrWIdPpQxSQ==
X-Received: by 10.66.127.14 with SMTP id nc14mr26547179pab.18.1473759631368;
        Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id p73sm18810782pfj.35.2016.09.13.02.40.29
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:40:31 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:10:21 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: media: lirc: lirc_imon.c: add space around the
 operators
Message-ID: <67fcc56aa3c42d1f5ee141beb2611189e8ec9e98.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Add space around the operators { "<<", "*"}.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index e44f841..ee12da2 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -561,7 +561,7 @@ static void submit_data(struct imon_context *context)
 		value |= PULSE_BIT;
 
 	for (i = 0; i < 4; ++i)
-		buf[i] = value>>(i*8);
+		buf[i] = value >> (i * 8);
 
 	lirc_buffer_write(context->driver->rbuf, buf);
 	wake_up(&context->driver->rbuf->wait_poll);
-- 
1.9.1


