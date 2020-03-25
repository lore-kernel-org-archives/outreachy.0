X-GM-THRID: 6808287066247397376
X-Received: by 2002:a19:7907:: with SMTP id u7mr3722821lfc.18.1585177859972;
        Wed, 25 Mar 2020 16:10:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls737073ljp.1.gmail; Wed, 25
 Mar 2020 16:10:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vthR0iw08MQl1Y6kEJHa9X1kb63hEid5ZksyAIwY3MYXXD2AocyRjK7AZOsBeLShFN+WZhn
X-Received: by 2002:a2e:9b41:: with SMTP id o1mr3412991ljj.145.1585177858458;
        Wed, 25 Mar 2020 16:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585177858; cv=none;
        d=google.com; s=arc-20160816;
        b=MyxMF7PLCTT/XYbCXb/xaTPlrWjK9IHeUCXZtyvLOGCNMSbnXLNXQSo65YMwJ5SItm
         squtT/fVGGETryPDfny0NxRTVeWNxPIT/GACpHO4G1fMLaAfDqHRB7hgXPGoq3ULXwl0
         Xk/u3e2i7U31MoXV30/M0IciJ24NNzqmrye9HVigD/PtaMxko6qA45zHSiZ0/v8KcIHT
         kha3hxtgHAveuIyCJ2sYHaD/adX8tCpIWNHjaYUIk3N4PElqSK1EUzieoDoDEmAxIJ0O
         Ze6kmLcN++JKZeBLEBE55L7Wzx8DM/Q2bmHIIjYgeGE3ZXfGU/J9Wlk9FeZPNSezc5W9
         ZbGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2G8jZgsLmBvh+NJsrpo4D7AWnj+ZLIDrXPNOLnCQw24=;
        b=tGJ+ChBsZy0MMAYvsG3r3bZt1tmVP5dN/TYYidJghkPSWhmPCTTOeVFUyfTjtKdBWg
         Hx2TT0nDm21L0RZYeTAOMPbc6yPJTGY09kER9JkzFFbfUuuszOLH3Pmq1OD3Z+zdOmA/
         0GTShiOFqXcONtvD3ePJQBoop0n9j302QDtZaslTGSb8WpM2sSrprNixxHMxdAhfYHl5
         Sr5RUxzUL2F+tmW5kN5T0mrl57PM8K/Upure9jkt+M/d1DbDZR/7OrZUog7XTbF6PDN6
         v2IRYYBfuzyHB/EXofm8lU62GLHPwirUmIrmI3kHsVYClPuAXECh2eKKZtL8KxROwkKS
         AW+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DfIxImv+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id e4si24855ljn.1.2020.03.25.16.10.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 16:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DfIxImv+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id v4so3229809lfo.12
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2G8jZgsLmBvh+NJsrpo4D7AWnj+ZLIDrXPNOLnCQw24=;
        b=DfIxImv+sMQT6P/juH7u3WEUKulGwH8FTfHrS+bRFZi6GCkvn2tJXCo3Tglv/eaywT
         nklk3yfmSn6wPFCEJwzGyIiG3vZsYcT2SeAr69/iQpEQCeFycrg4QHoG3z9hJp8CXpuJ
         WXR19S+vG3Th84dUNb2F33koF0ShAhenkMiS+0ObELOB4+hOmCE3ME4ic3SrTTgq87zR
         N6ZzKgkiIVil6z8GW0qU3ghpYVQFTIGUj2RwGKezXcb/+/dwxY89GP+jk4XcrP1CUmYd
         +ARUGfxKjrtxppfajqtcMRkBs0Q1+dw/TBV4BW01EGeNhl9NxB/1LURycJaikS3aJLI7
         TlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2G8jZgsLmBvh+NJsrpo4D7AWnj+ZLIDrXPNOLnCQw24=;
        b=V4mCRQs96X0XEGf7OMzEabWjP5148R6617/GuQXWeqSXj8f8/JAn7H1F/G8hmAPAOY
         2Xk4+ZMZOMzSR6OcFVZQ4RvQmNNZAsGXD2C5BN809NLOux3ZpSMUkJtlXEgn8XPQK3wb
         jsnYKM6YeeWzAtGdaQUYc+hMr7MqqnfVxhZr6WsnsFdhulYUr+uET4mvk3V7wCNBwHYl
         mlZEgLcDqgfGYs6BsGDYIQfzLRB6I5Keh5BhY9OBGHHI8s2iWobRShPt6VOQXDy1mbIv
         c0R5ZyCnhveZ8DzI5U3biJIo5KcbS4+lHHPXM3StulHlW9ONsnOmPvH8xGEmUK+DLhtc
         H0eQ==
X-Gm-Message-State: ANhLgQ38Or2euAltQANC82NtGtQWt/8yLuEpfKliXDJg0dKfoPx3nQrv
	s/XzvGuG0k37Cp8HfbEVFh/LPtl4
X-Received: by 2002:a05:6512:108a:: with SMTP id j10mr3810002lfg.35.1585177858200;
        Wed, 25 Mar 2020 16:10:58 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.199])
        by smtp.gmail.com with ESMTPSA id 24sm322745ljv.105.2020.03.25.16.10.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 16:10:57 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:10:55 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: qlge: Block comments use a trailing */ on a
 separate line
Message-ID: <20200325231055.GA29122@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Deleted more * for block comments rules.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
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


