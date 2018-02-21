X-GM-THRID: 6525083396428791808
X-Received: by 10.159.59.235 with SMTP id y43mr2267283uah.21.1519248835799;
        Wed, 21 Feb 2018 13:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.53.162 with SMTP id t31ls219801uad.0.gmail; Wed, 21 Feb
 2018 13:33:55 -0800 (PST)
X-Google-Smtp-Source: AH8x224V154cyWWsS49zxmq9iqS2EiuKrb904uIUXSuIpQKK6zZYObulLtStwgaBxfL9LBpOMva4
X-Received: by 10.159.46.25 with SMTP id t25mr2260845uaj.52.1519248835081;
        Wed, 21 Feb 2018 13:33:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519248835; cv=none;
        d=google.com; s=arc-20160816;
        b=RbYbxmg16R1NMHRZGEOM2d4h01Gocz1y+oIFHRS/CWPXo3aIaf6OFY8DqV1CkQJL7N
         9k0Y+OS31QRmiKLQYTua+oWfU6wC1+Fjxe3KA6fQMNRopin03YgUEJR+wV9sQboFanI0
         8tlgVOADofjZS+NN9/n4YJjJSDtbdf4HS4RFsUczstJtHPJ74cW+8WRUJOT7vDAXm6Tv
         6M9P6yiKb8+rnSxA9vIQY3qR2340Tiyw1O8NKcRe+t0KYuExzs/gJaSntlHwMxMaILDy
         Xu7zakqhewU9W8n68Qsr7NNS1qP5RUnssmlUqSFvWhHhO0+1cUyG+1vfbMRP6337txu9
         A3UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=wdG7KSvDVntHr1o6w8RamFiagUUaK0jaCwX1Y5erGyI=;
        b=kRU2u134nVedIGYpW5dobMeB5397qpWDQlVM7XRsadaJxhqBHnZqjfZkuBLrvhTdSN
         pP1xGFSRfslgwM2F1ACDQbKLqzu9klGxAudzI5krUYBk8mSeQbPlg+rELccFG7RIWV7G
         KNe4i+oP4dBFe96yP5Nj/raRqlDMkrNULfT3/3Q9VyIUVMElJzQJudo8jkdxMHP6P5Tt
         PxXCJFc+oBSEPG16th5T28NCLyHsO5ng9RS21bU1wRXhzmWWa3CHn3b5xN00vN6d64ki
         lJ+FBHJcdguHZuwcedUDfxx0HgBMOz/8ItxFlMDOaMoTqtkvDRCQuzL71QPWqaQT4ukZ
         5bfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvEjk2Oe;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id q126si494871vkf.1.2018.02.21.13.33.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:33:55 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvEjk2Oe;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id w21so1658460plp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wdG7KSvDVntHr1o6w8RamFiagUUaK0jaCwX1Y5erGyI=;
        b=HvEjk2Oe6bKxltwu3fTE+maZZb5Q85ywMl04G0LBQ/u8WBgT40MhzRhG2R3UkhyQ3m
         f1KbAw6DePFlh4l6hbGgxsPucZ09O+Rtu3tSnOhtSZBV4dQJlvXzn28s3yrSG8nAjN3t
         mAcRR+OV8u3IH+QWwDrGP/LjP5aosFp3Jy6XCWb65/Rf9o1qpPcdQ2Hu/Zg1id0sP4x5
         fr5/vg3TFPycHnmd4D4GoGIsMF+eSZZ8bqx49sM+kKBba3B2lymt+AYC6ZHwbn2u/uQm
         rJ7ApfU703YAM3C8PxQbN0NhFu14XnejdqDn1/UjLilOvXNCEYGDL9CcGzmxywAaHNHR
         tXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wdG7KSvDVntHr1o6w8RamFiagUUaK0jaCwX1Y5erGyI=;
        b=r89cwq91WlnapYTVMjRpQWvrPnQbyo/dqKPW47hu2JLiT8C2chYeNxy2CzlJIvdFu4
         pUWAXJF0Y6KJnZ6WnHc/a4h5GyCJUZ1XyYcVa75tt/U3P8yJyY7Dv/aDeXpswiVzq1Kl
         iIi8DK88o20U19wEUTu4Yb6OaOSAUXx/aZxTo2cbKB7734Vsb0dgxYRFN/BMiAyJCBbZ
         0DKZKIjHzmM+qPdBzGtNlYrs+2h9rx6nwmyH1Iv2h8S4CLBTZqBXFf/D2/VW7z5CLzCO
         wfu9UdDnx0xnnzSp6+OlPtP9B1nRQv50regzY2i9JQ/g3NhuqNlEIk2IxC7eDDGihJvt
         WBwA==
X-Gm-Message-State: APf1xPAyWEQh86CDx3gn+v4UmIFbKVp6YQ0eN6ZZsikNVP6Ib7c6VBb6
	78e0l7XnU9/inNLEExElq74=
X-Received: by 2002:a17:902:6ecf:: with SMTP id l15-v6mr4365231pln.443.1519248834669;
        Wed, 21 Feb 2018 13:33:54 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id n81sm9295573pfk.152.2018.02.21.13.33.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 13:33:53 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v3 3/3] staging: speakup: remove space after a cast
Date: Wed, 21 Feb 2018 13:33:43 -0800
Message-Id: <1519248823-3468-4-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>
References: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>

Remove blank space after a cast to conform to Linux kernel coding style.
Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change since v3:
 - Nothing has changed.

 drivers/staging/speakup/speakup_dtlk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f109b51..dbebed0 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -266,7 +266,7 @@ static char synth_read_tts(void)
 	outb_p(ch, speakup_info.port_tts);
 	while (synth_readable())
 		cpu_relax();
-	return (char) ch;
+	return (char)ch;
 }
 
 /* interrogate the DoubleTalk PC and return its settings */
-- 
2.7.4


