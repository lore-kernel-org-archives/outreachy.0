X-GM-THRID: 6808597928719941632
X-Received: by 2002:a5d:68c4:: with SMTP id p4mr15339070wrw.308.1585315024440;
        Fri, 27 Mar 2020 06:17:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls369689wrd.5.gmail; Fri, 27 Mar
 2020 06:17:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvoNVDXQ4VNYso8t9jdI+/FB0DgC539o1jPIMkU9urxS1PcvFWPvIlmunXmsQWFvxqZ/Cbb
X-Received: by 2002:adf:e807:: with SMTP id o7mr15842253wrm.77.1585315023149;
        Fri, 27 Mar 2020 06:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585315023; cv=none;
        d=google.com; s=arc-20160816;
        b=mDDF4EGHA3SHz6gDlQc95+QOJ5knVJ8H7efSvXC1rAsjLWtjl2evPZr8okCOjl/MtR
         0L87snVBh6KaJXm1HIibbPF+I5WO+XUdmFd6f4OAjULH9aSYQxzumsayZxvqQJK7cgvk
         N5mF8ooxVy0h6gyCfwzzyL9YBKMDl4kHCGjlsiTSb2Yegdi/UU+PRYbez48jD2alJu9u
         9FTtiuj9Gs39t2RWUYJJ4Ann1JNn3Nxbwj4dlSb9frRa5FasGgzAhv6lORvDWK+Ao96+
         fvPv2RzP2DPnDxHHAckDkRSQautO+2eDdVgg1uZYgprbUwutWtEbUxDwgohT18ZTc+tY
         rDaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cIBw8lZ+YGRDQPkuxTqwLMTALVMFP4tzTQKZKqeC7P0=;
        b=n2SPqQLzyyxwmcH1fTnnmQR/0P1Ih5mgDm6tpuoUccv5IfYhno8FYe4XguWAcB+YMi
         xjDeVWfAu4M6qXEXVbsntYLOhT6xL9V9SELQFS2+Pj7RacbksLIIT0FzN/uRxdTdW6Au
         /NYEFFby7QGRa8UoOXI6Ss5rLq1DruyxpPPyvDrm+811d/r7ftWdC8KnryaIPKo/xyAl
         8CYTu0kDYxcPxBO97MxyAnA85UHwLlsk5UUau9d8fHe/UJbReI1axgRHFvMB/2Q/RUdv
         A3ZsmiemA3dvcnA/80uQ3smblRlPRqveYgjTF/SnGBUHkpgG0dFAjjHwXHNE9VMYczS3
         h9Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeD6Kk0B;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q197si236861wme.2.2020.03.27.06.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 06:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jeD6Kk0B;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id v4so7782184lfo.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 06:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cIBw8lZ+YGRDQPkuxTqwLMTALVMFP4tzTQKZKqeC7P0=;
        b=jeD6Kk0BwPCpTW/Pjc3yiLNyq36Ieebt5pP5PVljt63dUW+S3EWEHW9qGmzh166wQw
         p1rApL3F/Q0cu8FIX5BWV2QBOEGghTUSvkUWzRI+PUTvJ91KWciijNKaGliQ2zliGjIe
         r/uGzYbPcuHwuY5p8XidFryKRHHLfHBGCRd1Fc0QW1iOE9wB1yDO+eH8NFqeNbrEOky/
         DSs1WSlcxygMI7NpMxQOAQPPe9xJF4l5qAkTlOgzVaEKTS9GOxQJT/wFUKj8TtESu7mh
         +CGYorte+nmIYbJGOWt4escCUayGnZk2d4tZM2WYPoXduON/hiSqPByHMxB+7zhYcQiA
         EHew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cIBw8lZ+YGRDQPkuxTqwLMTALVMFP4tzTQKZKqeC7P0=;
        b=bmQk27cjjeFTO4NOdtCtpb99KKM3xJg/qG5jS66h3AuiqvgiN62uKCysl4htVT47x3
         NJdyo4u/u+6ULJjdlyfp1GgAYxlws+rTKB7SBw+uG10lotnu8gU3JX5R4XFKkGhbGVoN
         SLA4Y5akYNos1wuYVreMrH0X2T/zDyme+BU8riv1LFk2JgGa3dCBTQ9vRDTn239QyOKy
         faiViZbLHzj6KM3Y6zddf6uhtOwnNKtglYJza9zZWbycGdRHYfYjt3c9etjyUlf6n/4m
         jcgX0l6xXhi5SP4TDiLEQaGmnD7g87t9i8gRFaplIWxjK2W3y+beyJ09pwKeuVy682qN
         dMJg==
X-Gm-Message-State: AGi0PuZ0rsj2ybg3zP//jgSjMJVgI+zecHZ3jhhaCP0py+qPwMP9chMI
	3MkdhTykeWFIfjAw3k/S4oV2tGkCqzY=
X-Received: by 2002:a19:844f:: with SMTP id g76mr2248605lfd.112.1585315022592;
        Fri, 27 Mar 2020 06:17:02 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id d23sm2717927lji.62.2020.03.27.06.17.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 06:17:02 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:16:59 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: qlge: Adjust end of block comment
Message-ID: <20200327131659.GA8032@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Drop an unnecessary * on the last line of
a block comment to follow the Linux kernel coding conventions.
Problem found by checkpatch.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
Changes in v3:
-Add v2 and v1 changes in e-mail.
Changes in v2:
-Edited the subject line and the log message.
Changes in v1:
-Drop an unnecessary * on the last line of a block comment.
---
drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9..31322ec 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.7.4


