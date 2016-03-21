X-GM-THRID: 6264591603084558336
X-Received: by 10.107.185.5 with SMTP id j5mr23949669iof.8.1458588895971;
        Mon, 21 Mar 2016 12:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.8 with SMTP id 8ls4209060qgg.12.gmail; Mon, 21 Mar 2016
 12:34:55 -0700 (PDT)
X-Received: by 10.140.223.17 with SMTP id t17mr24573116qhb.18.1458588895385;
        Mon, 21 Mar 2016 12:34:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si4025737pab.0.2016.03.21.12.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id u190so31837646pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 12:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zjEp9ln/5mMdqOQ20q+SwyiD0Kd91cnc+SfUMJi+/0I=;
        b=d3JrvT63EYA73Pau4af+xW54gWBjLMiX/HV5g2j3c2joofIMTdwVldZJOvMe4hoouw
         IPw/BRPAyP0d0XdRPQy5R5MB+Da1AYNz7NZB1CmGrVLOWpAPO51fhE30reRGGw+EzkVd
         lq9L0nwJoUv4jqecwaphKvrSaaqFFYsUcogjs4NsxiNlquT5IvoJl8x1WVAZnLtiwq+R
         9aoKTXw+Ox14+ix7psa1rNJmhJ9Xv5cUptXw4ea6YscfFkZ3ND2cLOrtT6MKKKDCFrLL
         Y0GR57uCJCqpCGrppjylpbYfYzBAF/SXbMP1MQpUAgFUIkP436P86bWcqtmcOuqnmLL3
         XBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zjEp9ln/5mMdqOQ20q+SwyiD0Kd91cnc+SfUMJi+/0I=;
        b=G7oUZrNxRurZbfMiE2mmwXqnNS8r5r8wQJy3lufXjz3fGiR6VjVycU0x66on6TvnXE
         h7GA3+u+NgTkLkVTpozD+50SOnng08Qo210fminSCVEXo01+lueR9GGqP/sjeAqxZtLk
         YwEypNBIC2VlVJrZUSML6z9ocP8MqX1wIEEp46S3MzX9nA3yLmfD8evDb2aG4zMqetFD
         TWppXIV3xNukXzN4Qc1lhe+yRj8PkkQKFYYC6IctO06uAR7WsG+2/UMSjs42hREd9S/y
         q6fSNmZaTxMNcbAxkvp45p84opSnuRylQkZmPzMaArmR2s1vdZTQ7Kc78FRK6LYgzoGT
         M4zA==
X-Gm-Message-State: AD7BkJI4YQNTnAwCdmC1GFJbNf8NKXsHIb97KxeNkF3rwnB4nPCf1XLpnBqziDIh1iNLww==
X-Received: by 10.98.72.29 with SMTP id v29mr2300190pfa.71.1458588895217;
        Mon, 21 Mar 2016 12:34:55 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id se8sm42619626pac.44.2016.03.21.12.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 12:34:54 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:06:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lib-move: Remove unnecessary space after
 cast.
Message-ID: <20160321123603.GA3615@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary space after cast.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/lib-move.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c b/drivers/staging/lustre/lnet/lnet/lib-move.c
index 0009a8d..44e2bd6 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-move.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
@@ -407,7 +407,7 @@ lnet_copy_kiov2iov(unsigned int niov, struct kvec *iov, unsigned int iovoffset,
 		LASSERT(niov > 0);
 		LASSERT(nkiov > 0);
 		this_nob = min(iov->iov_len - iovoffset,
-			       (__kernel_size_t) kiov->kiov_len - kiovoffset);
+			       (__kernel_size_t)kiov->kiov_len - kiovoffset);
 		this_nob = min(this_nob, nob);
 
 		if (!addr)
@@ -477,7 +477,7 @@ lnet_copy_iov2kiov(unsigned int nkiov, lnet_kiov_t *kiov,
 	do {
 		LASSERT(nkiov > 0);
 		LASSERT(niov > 0);
-		this_nob = min((__kernel_size_t) kiov->kiov_len - kiovoffset,
+		this_nob = min((__kernel_size_t)kiov->kiov_len - kiovoffset,
 			       iov->iov_len - iovoffset);
 		this_nob = min(this_nob, nob);
 
@@ -996,7 +996,7 @@ lnet_return_tx_credits_locked(lnet_msg_t *msg)
 			LASSERT(msg2->msg_txpeer->lp_ni == ni);
 			LASSERT(msg2->msg_tx_delayed);
 
-			(void) lnet_post_send_locked(msg2, 1);
+			(void)lnet_post_send_locked(msg2, 1);
 		}
 	}
 
@@ -1019,7 +1019,7 @@ lnet_return_tx_credits_locked(lnet_msg_t *msg)
 			LASSERT(msg2->msg_txpeer == txpeer);
 			LASSERT(msg2->msg_tx_delayed);
 
-			(void) lnet_post_send_locked(msg2, 1);
+			(void)lnet_post_send_locked(msg2, 1);
 		}
 	}
 
@@ -1142,7 +1142,7 @@ routing_off:
 					  lnet_msg_t, msg_list);
 			list_del(&msg2->msg_list);
 
-			(void) lnet_post_routed_recv_locked(msg2, 1);
+			(void)lnet_post_routed_recv_locked(msg2, 1);
 		}
 	}
 	if (rxpeer) {
-- 
1.8.3.4


