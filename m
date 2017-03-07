X-GM-THRID: 6394683804598927360
X-Received: by 10.25.196.68 with SMTP id u65mr2655645lff.0.1488878346294;
        Tue, 07 Mar 2017 01:19:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls1690811ljo.45.gmail; Tue, 07 Mar 2017
 01:19:05 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr2648897lfs.29.1488878345756;
        Tue, 07 Mar 2017 01:19:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id y19si1560426wmd.0.2017.03.07.01.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 01:19:05 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u108so20823384wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 01:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wH3c0vxaGxWZcdiB7VUdve0qtDrxSPrSz4ty6jWW5/k=;
        b=AveKJdB3OBlCJc+MxT0vHRizcNatfwBwpOHwTWnU7lxcBeesZ4Z4K/Xs+rkOSnBhgv
         gJVKjkOdQ6meVtrAEMwv/pkUEEnphTHDgtNLdde2bFe55JOGS7mOW/6f09bwPEV7hw3H
         wFZ3WLRbqCgg2Wc2cRl0p4Qbml4zX/3G9HLa+AscZ72WadmX90+KzcsVJ28mJNSKsDBi
         bzr2fKZptLFRtgSZuRQe6IjXefQJU8UCrjCWKvYMUQboAO1xt4k7/0K5B70g+l8vL9bw
         K5lzKY8nbV13lRDYX9gVAhy/mix2jiM6q3mio87YO2h+nFW80/bHUMPgZrLXER8IRbcZ
         +znQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wH3c0vxaGxWZcdiB7VUdve0qtDrxSPrSz4ty6jWW5/k=;
        b=RS/pG7oRiFKeSAKsALrb/s39R0vv236X1gCjfvwsAlM2ZdEi9w8bQGrLBQBptMEh3+
         QGplyhY+ZQv4y9J0XysWvLSD/cCfFtbP6yEkGUcSs6/n5ws2XoBoDPVa6xaCXRGuFKn6
         qy3n6pfy6YZ4fix0r7HtvwgV+N9M1CUj66wBGPWT6oQFiCxNCF0Mn3j40zRKdtLLl3Sy
         GOAKw3nP2FPxxa5rCyLdMO3WoUZDHkbUJyeWhA8CFW6dXtpPbzf6h+kzETkG6j1+fVLp
         PzegHE+hhkOqRAd4O0qcM4tOQeNg8H4C7MtuwCuBAgmgegjv2/qRg73LlNmSLnyHSDMb
         l3Uw==
X-Gm-Message-State: AMke39lGNj1DgaQu3EJyhOTAcrRgdWgrvxS7ye6LHNTvulVE+Tb3K+rMDt6cXRkUggPDIA==
X-Received: by 10.223.160.243 with SMTP id n48mr19893877wrn.198.1488878345574;
        Tue, 07 Mar 2017 01:19:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d457:4c45:37be:7df3])
        by smtp.gmail.com with ESMTPSA id x16sm18156263wma.0.2017.03.07.01.19.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 01:19:04 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: speakup: kobjects: Delete blank line
Date: Tue,  7 Mar 2017 11:19:00 +0200
Message-Id: <20170307091900.14267-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delet the blank line after an open brace '{' to fix the checkpath.pl issue:
CHECK: Blank lines aren't necessary after an open brace '{'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 0cd5384..cd8eb12 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -761,7 +761,6 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	enum msg_index_t curmessage;
 
 	while (cp < end) {
-
 		while ((cp < end) && (*cp == ' ' || *cp == '\t'))
 			cp++;
 
-- 
2.9.3


