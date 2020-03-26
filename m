X-GM-THRID: 6808478175670042624
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr7793756plk.150.1585222355353;
        Thu, 26 Mar 2020 04:32:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls3793260plq.7.gmail; Thu, 26
 Mar 2020 04:32:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtoL4awUHDmoLEYitkMoen4KhzlCI5bXrI21Kc8tNXX9wws1gO/Lh0ZD/bHpDCS0zITktUc
X-Received: by 2002:a17:90b:4d07:: with SMTP id mw7mr2724102pjb.103.1585222353799;
        Thu, 26 Mar 2020 04:32:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585222353; cv=none;
        d=google.com; s=arc-20160816;
        b=qTOKTVABUOLO17HeWOD3XbAS8kLb0Pz2p+4DrySDVOxfrnk1xOrzioT89lbV170WNz
         RR78idLKJjTH+vdAm8uXHrKzPSVj+xuJBdzAQGf5t7CCGGVftwFBD1js4j52ei+PUwB2
         Se5iqXggqyj2QU0502pLWVYqk6yfFmxOHofhyRHq2IrZ7oN5eREDalO8ICdQA6/2t1fX
         RbI9yTZq2uV9hR+n7muFfpoJZSqgVQ0YntnoCYqxKlxceW/UYG8Kz4wRl5NZ0T6X5+Tp
         ZejrKR2jqO8NjVKBboVLYdr3RrOBNn4TwekGG9MUeVFQnG1hMAkdUcOqXa40tPKMZyWz
         dxKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=PHcs4GB3AoNw6GTKIzaWPrLDhOAMwn19frkFdnLFbkE=;
        b=fyonsvtCLgIsfX2k6B0rf3zaqpPtTYYx81Exq6KuG2JLpHJruVKcr+qurzpinvzJjy
         OZDu1JwSQGDg9oY1wgnxC56UMNO5CQC5UW1cQp8T9ntINolPtmlo96R9OZucut9/oFfI
         SR1l2rVY2oJFr5/fKd3+sPbGm0kVH4cDsr25+S0cIGxuXO46wVuSskRyqKJKdTVTXgZG
         HM+EJ/fgO39MjbzHvTUsYVObnQE62tb8l3S2Ztyp0kLSys79RXJpnY9a7CpFxAHuwfQX
         uTSrauQUOlxodRjR+d3AmXCktKRm+B8kiGa3NhSvs9tz2DstEBzYMj08O8ptnYVrXrKm
         b0Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gf5zVKKM;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id f8si176334pjw.3.2020.03.26.04.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 04:32:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gf5zVKKM;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id q16so3274419pje.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 04:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PHcs4GB3AoNw6GTKIzaWPrLDhOAMwn19frkFdnLFbkE=;
        b=Gf5zVKKMsc5hD/OTXIgHwmE5TJY0TNUX98X4+6mpDQZE6rshNeMhbuw6VuBz8ZNASR
         I39FDvDX0PTynGwTyTcSueFrz/QCyEuO94YnZM6hxweS+ja6YkhQJBclQwIK5NT4pJBE
         +yxLkSFvcOOHzNlxBRNAklgD19kU/P+tmi0MqT4MwyXPIE4rGYFJ9vEuME2n0R89hehD
         HvjpctL/lhDMSZMLRsic6KC/I3o07MSyYhj87G4HT3mthePcCNG27N8wrlT2Tg4OAcyZ
         iJW+fddEDO+Y30KB1yYeyaTvmJ+pt5a0QCgNqlB7zpUzLPcYj5euu0YfSJOl3FYHuhcx
         +nUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PHcs4GB3AoNw6GTKIzaWPrLDhOAMwn19frkFdnLFbkE=;
        b=TEnAqLyju5k7xh3wM13Msma1Uk9q7s9BbaYfMKEcktoQClu8l2rdU6vdqcOvfIoalz
         oCkGu6Tf87HEds6wn2dfOYTv9u80C8mwv1Lvc6D4tUdkFkarmqxHaDd64OQV0DBXJPfR
         P4PNbeE1G4jpshASZRP89Nj2wRZhUK9b1H1Cq+pjtuXggmmU0FhxIvPR54J6sMNM+yuL
         oADC94qCBEKBGWujDCWGdlSGioBU2umnlMkn7EeDMuN1wpBYxhQAxOSdPSMv/o8e0E2o
         8vEhumSAKKjolfFt9+xovn35in9OmIQ4HsTfoX+CLKtvVyEjIPnsim7yM4a9l/UmfHHW
         bSLQ==
X-Gm-Message-State: ANhLgQ2A51w6/wHDdO6wxNgWrJfDSekdX6ttlutGz2G8YByBBG24jCAL
	zFhl0890xlpHP06JO54U/F2zLLP91TY=
X-Received: by 2002:a17:90a:5d0a:: with SMTP id s10mr2650362pji.166.1585222352911;
        Thu, 26 Mar 2020 04:32:32 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2405:205:1208:56c8:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id 132sm1479454pfc.183.2020.03.26.04.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 04:32:32 -0700 (PDT)
Date: Thu, 26 Mar 2020 17:02:10 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove unnecessary cast on void
 pointer
Message-ID: <20200326113210.GA29951@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Assignment to a typed pointer is sufficient in C.
No cast is needed.

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
index 34d83b238265..3ea1972545e5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
+++ b/drivers/staging/rtl8723bs/hal/odm_CfoTracking.c
@@ -298,7 +298,7 @@ void ODM_CfoTracking(void *pDM_VOID)
 void ODM_ParsingCFO(void *pDM_VOID, void *pPktinfo_VOID, s8 *pcfotail)
 {
 	PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
-	struct odm_packet_info *pPktinfo = (struct odm_packet_info *)pPktinfo_VOID;
+	struct odm_packet_info *pPktinfo = pPktinfo_VOID;
 	PCFO_TRACKING pCfoTrack = &pDM_Odm->DM_CfoTrack;
 	u8 i;
 
-- 
2.17.1


