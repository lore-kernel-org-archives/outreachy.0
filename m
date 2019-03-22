X-GM-THRID: 6670962421189836800
X-Received: by 2002:a17:902:1e6:: with SMTP id b93mr11860159plb.325.1553292622164;
        Fri, 22 Mar 2019 15:10:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls4331823pfj.0.gmail; Fri, 22 Mar
 2019 15:10:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyOGQ/zYTBkpUSoNBV2cpZ9HqN+b4DXSydbOA50k0KpRpQql/R5kG1CcqMOQn6SrdMSQvsC
X-Received: by 2002:a63:e402:: with SMTP id a2mr2017720pgi.268.1553292621455;
        Fri, 22 Mar 2019 15:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553292621; cv=none;
        d=google.com; s=arc-20160816;
        b=nLsERvT7hUrkDey3oOxWi1cwpoLzMWho7WQF+f7pfn0i4puMF7uByokhVKAWF7OB2b
         E7dKTWRreQYa0TrzaQOmaI1faJBLHl37LJPMGFyvRnyhcJT2iwAWrwpBsin5NfbP6dig
         UDnBW85vlvZfOH22c21lwZckUiz4ITsT4gUJuAwfK2V1D+OxeFSM8ZRYzNQNXAz0v2tE
         7TLQJazHNIFg0BZeSr4GzKC7hsfaz3cvaIuuA53bBZtmLG3MIiGxe7hMg1EZoTgIBK+h
         rGjtxvEirxQnPa2HnZ9VakHiMFk/dqLVq0hBU8MhAACS9eBnZoL4JNbISCgDSwJYeiGB
         oIKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=WwmeKKMCCeoBXfGQMbQ7c96TBFqamFb93inRndeoa1Q=;
        b=ioYlTjGKIxYviQhS3fTaUyyHJuxhA6XLxfUXZF5/1nEZ9+eqTlxr0Z4jl/8iiAKM45
         L3WOAzYyymLN60iq1ZXkPO4bWpu9cT2WpaDlWZcDl7gS4WIsbmD+Alc9DmgHYFsT576+
         hw0wJzXwLwB5OXj6oPP/UUvriXY8R/m7vayIjaMYo2oCeX1Kk4L+sTi/XuqP/7iJvAMJ
         DxdnpdgTFj7yEnqYnnBNDQYc1YVBHGubixFBrJfDJpcH3Ei0froPDT+IXnqzTIxwwfRE
         E9SF+3v1N/7cOTZ1LoyVGLTAANR3lHsumpk0BTGK6fyS8PTSBaizfvBJe1FhgCg9wuzr
         xgZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fygd3yzm;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id b19si389348pls.5.2019.03.22.15.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 15:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fygd3yzm;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id a3so2401015pff.11
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 15:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=WwmeKKMCCeoBXfGQMbQ7c96TBFqamFb93inRndeoa1Q=;
        b=Fygd3yzmvrY3aL3mE/HRXd8judCtZwMJ/7pHr/FNLoTIAyz9oTlpQ4RxwSnCDCCKqF
         +oM1hOmbDkvh1FJWRSmW/MS6Lnx8cHDbreYfxsa07Z+f6NFJBM4meZRXms0IYQlazEWP
         TojxJIqQHsZUyugZlbJ89NLVacjHq8f4Q6UjKpPXDn4G9zQAmvc+JRWgb+AdrdNDx/r/
         LakE+O0D6kTpLZ2o0Eo0j0j5WK2yMmAHVllVeFaPK8aJRz7m30IphofsUX/evs3oJBAk
         Gua6CUPvSYjYvinLoPEhkyUhbAjgtc5KdywW1Lck8kHDAJeeXJsOA97QvgxVoI7yEwJe
         zKOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WwmeKKMCCeoBXfGQMbQ7c96TBFqamFb93inRndeoa1Q=;
        b=lGueEDMlozHE3287B/v73fDg2ShVh50Ko5T20N+g6CGQUX6TdJH1vYnDpZx4HjYzPP
         zbAIqr/sCV8qADbcNeK+t2iRAu+6wzZAMrW1dcbL0qj0m9iYhDa6vXWutB67OlZfAY00
         PrBjUuONdrqG6A71Xcky3qZYiVIfE7kgK+1QF6suWai7P9D9VXZOSq/BA1VSf3kAn4FT
         Ymym0wqiD0VzGVqKK7RrxxfhSzsmmZc7YDE3+5MRixHhVd0JHSQ9WZGv7P0nRaG6Nb++
         glAib7X1+hZyDpsBtZjrUoNP4P6pPKPcrS/P5eunb+mgMoObUN6blGk263gZ0kZZslHI
         tbwg==
X-Gm-Message-State: APjAAAWIGcjSbZQgB6hbk+Ywq1kYUy+peiv12vGfkfDClyW8PJ2PHORV
	L0kHrTB5+fntWhxSrTEaunUj4ja0LFw=
X-Received: by 2002:a63:28c:: with SMTP id 134mr6035435pgc.278.1553292621050;
        Fri, 22 Mar 2019 15:10:21 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.101])
        by smtp.gmail.com with ESMTPSA id c13sm14155380pfm.34.2019.03.22.15.10.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 15:10:20 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2 3/3] staging: vt6655: lines should not end with a parentheses
Date: Sat, 23 Mar 2019 03:39:56 +0530
Message-Id: <20190322220956.27128-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust code to fix the style issue-lines should not end with a
parentheses

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v2:
 -to align function in one line

 drivers/staging/vt6655/rf.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 97b90bbf5770..72475586a5ee 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -766,11 +766,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbSetPower(
-	struct vnt_private *priv,
-	unsigned int rate,
-	u16 uCH
-)
+bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 {
 	bool ret = true;
 	unsigned char byPwr = 0;
@@ -905,11 +901,7 @@ bool RFbRawSetPower(
  *
  */
 void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long *pldBm
-	)
+RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI, long *pldBm)
 {
 	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
 	long b = (byCurrRSSI & 0x3F);
-- 
2.17.1


