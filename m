X-GM-THRID: 6659981654376841216
X-Received: by 2002:a67:ee8e:: with SMTP id n14mr21798526vsp.45.1550647815256;
        Tue, 19 Feb 2019 23:30:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:76cd:: with SMTP id w13ls1895427uaq.2.gmail; Tue, 19 Feb
 2019 23:30:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibp/3WWottwvlKnhGRjawpt619bfeVWWlx3gmU8z5VXArmihjS9sA0iGwXZfi6HLsRAmgN0
X-Received: by 2002:a9f:2f17:: with SMTP id x23mr21230785uaj.24.1550647814619;
        Tue, 19 Feb 2019 23:30:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550647814; cv=none;
        d=google.com; s=arc-20160816;
        b=B37gdftV0frQVu+402JGkBGvWmGYf65/56lgq9ZwWN2d13/dr+6ahx1D/TnX4cMevh
         shNACJdm4gXnrMQsmRMEO6y2Ha713ovi6vMFbqONysLT7BSvMDpt6Z+K6yqrlHmvLAiR
         +mGsKeR6HUutX8z6fltNbgsdz+oGsbK0vFmEf1qeWe4Xc1jfOANRIRnmol/pSmGgeD38
         y64Cy7ugwQCpYm5HAlAhu1Ou1GIOlT98uUp1puUZ3UanIv4RJKGRvLIHSkmoZQLmIQou
         tXgo70xzSc1TqFpRNCdY6IdFKN2FZg6Isy5F3vhIpBZJu/GFlff5YnGEAQkuByYPXkkg
         MkeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HSQLJcFjQwnBej5gQJtLdLmN0pKyMZBACrMvKN4d2Qk=;
        b=erhEc4cHyq5HYUs/kq6LpehAdW1+9Zp/4rEUB9Yc9ZJAkILlmzVEVLM/qtH/guTohS
         uFI3F5/8t/01aHRRT+80UYkhJmjA5ekXySMZE7dphVj79etNQFT1cJ2PCTECNJQ39NLU
         SpL7EeV6dJAUFHkIzJh2D01tGWPjFJjD7tV+RoPrw7uiwIcu8/MOxA0GR+7NUaHBTVFj
         NDrbrIK8O8mHBeVHlRiacwarB7u3pqvtmUyQIwVMinKU1HWV4YHviXpC0uTsXkpwAOn+
         77Z9bVRcwssnnGkiw+tqIp0kZ2IFnWnTnUvLeuviVuAHX6kLWV/8i9K8oOzY5orgBzMU
         0XCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnxACSSJ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id e64si840487vsd.2.2019.02.19.23.30.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 23:30:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnxACSSJ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id a3so1665962pff.11
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 23:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HSQLJcFjQwnBej5gQJtLdLmN0pKyMZBACrMvKN4d2Qk=;
        b=dnxACSSJSMOy+v029XIHjg6SF6cWOb0oOKk9mxQeE1he2fstPvsXRRFTkaDcVA+24V
         bgO+BGV1oiEuTk26UJ2kJO2eCXalS7KpL8fEtjVvTtfy0rnSawkgAZUp8nHTaHafdhXY
         hSuil2fCmzODKKv8oOG7ESvBZV7F0azuj5KCaO5bJt0eyJweJWvbJ4To6gLcHThMW7zT
         Wz2qdE3HA90ew6jCgR73th1z+Eu2vzoWcLeY+8wVIcctRXrbPwwO9M0vxmBOp4/ePmKb
         qHsczDqgnzUaKqwkzMplrzdOmWb0EZ38iyQSHPCvW9sp+0RkZKTxI8/qjCyP1Safaq2+
         YTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HSQLJcFjQwnBej5gQJtLdLmN0pKyMZBACrMvKN4d2Qk=;
        b=jAMwou5fYh2oRO+HQNM0FXHu/tm8zWH01OMW/Ps84j4G1QB+0hJHzO/oOFXrgLrZv9
         sViYmYdrnqIhsmFgR+vVgLJONv81HDYAom1HVPuN9ZkGTzcDMqnWUc0fn+ai3MlPqwDa
         OK18DOpmHRy5Ks+syot9YTHhKzc3B+5Zirl9Zfz947I6o6cGMi7ZjyQPVboW2Zt87cjZ
         tlMB05uUm6iZf51tq8tLXT4ohrtQi+/Z9aKvAl3L8iNdBMvRgVs1mZPQVPa5QKwru4ke
         QF4jS/lDIUzaTgeFYE8HR/Hwvdml4c5IEZhcriQB5Rgtp2/dcATwpXxBd7teF9Hrw4+u
         MmWg==
X-Gm-Message-State: AHQUAubqT9+ulAOwMGOQnt2LnFIGGEW9dUdtlpBrR5mf0qZjOoXYWKxv
	fubjGOv/AW3BxceMBcfh5qE=
X-Received: by 2002:a63:9402:: with SMTP id m2mr26981559pge.93.1550647814264;
        Tue, 19 Feb 2019 23:30:14 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id s2sm34862947pfa.167.2019.02.19.23.30.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 23:30:13 -0800 (PST)
Date: Wed, 20 Feb 2019 13:00:11 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] Staging: rtl8192e: Avoid using bool structure members
Message-ID: <20190220073011.GA21216@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Use 'u8' with bitfield instead of 'bool' to avoid alignment
issues and remove checkpatch.pl check:
CHECK: Avoid using bool structure members because of possible alignment
issues

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index 44f11f629922..f3e8373b1312 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -29,7 +29,7 @@ enum dot11d_state {
  */
 
 struct rt_dot11d_info {
-	bool enabled;
+	u8 enabled:1;
 
 	u16 country_len;
 	u8  country_buffer[MAX_IE_LEN];
-- 
2.17.1


