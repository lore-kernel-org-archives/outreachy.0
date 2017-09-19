X-GM-THRID: 6467514574021066752
X-Received: by 10.129.117.10 with SMTP id q10mr955459ywc.112.1505835660944;
        Tue, 19 Sep 2017 08:41:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls13180417iog.38.gmail; Tue, 19
 Sep 2017 08:40:08 -0700 (PDT)
X-Received: by 10.176.82.75 with SMTP id j11mr1044107uaa.10.1505835608451;
        Tue, 19 Sep 2017 08:40:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835608; cv=none;
        d=google.com; s=arc-20160816;
        b=OCn2yyufHI3wwM0IOEs79Wo26XquZIOYrI3BDXA5Llc8G0YQEfPyfdDcrcFBH/fywZ
         X0Qz/uAFr8xS0OlTTMpVJEjydLiOu6K3B2gx78eT9F8I+GOYwJ8THnUy1WbXKUImjqfr
         KUVXCotsu929aJcCPB/1Qizq59x+VU9hAMItL3TR2KY6Y16gZbqlnaeDc1c5mTd/qigg
         fdsMQ42MJUNddDB1HUGE8znB3bXAuRO6KhZJAdVeU89AVtjofhMCEs3XUFAKn+/i/9yN
         LZlVIaNanYDpDOtbl5CH57AxZFXvdw+5uFZnBn0n7scBHDiszHNPSuJMMnfb3OTS+NxK
         KhsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=vtCmyg33xlYO6mYwPD1jWqga9inahi0G65kW3mgm7P8dT+gHWlcvONxZw4Mi8Amn9G
         REoYeL0Dzj6+hfw8E2nrlTX1tiTdYJGa8OTTFMtHTRar60dpijYiNkT5PrznsYYRZKFM
         ooTOn+Sc4EABwnXgfWfUiWzo42C89NlJUS+EuqLpV32ShvhBbYL30zP5Nh7mvL6jZSQH
         tJeWVV+cHwq2PIqKLSb5/WTbKefe/iWoE85KQ7FRooOubghwtIoOMelZSnQT1gV2SgKI
         UuqzoeMT3nH2uionaBjJMU6VnRoW3QC7sq1OaANUrGRsFM50DEwPNIEWvSun7usfqZkc
         alXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6S5AZbn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c200si267092pfb.14.2017.09.19.08.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E6S5AZbn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so5130pfk.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=E6S5AZbnC1QoufpkCtoiRpjn0g4vCd7hGyYZGuvgIkddez978iiunxRJP61IW62vaC
         DwqvMZtlPj4VWBMgjme/7c4hGfasYJxZK6S9u+chFUsizz86JEncTfdnRCzFtZ8vqxdp
         hz7RLLAIhSow8zvp3VtgkEV1PV7Gk37/j49Ue6EzWnOf+B11lwtN0Cdlw+lqmqKJM2tw
         yZi0MIjcKxquVYq+kfqu5qr/EouTjRfHS032iujS/SsZuiQTr+PCTLzTijDmOBHs6yoR
         cgolPxgbsi2b4DZovO9PIwOEO2CvQGfNQqubLGtjh/Bfj+oDv5iIqBGpJ3W8qKlrbLH8
         Qm+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=SrnIhH0C5GG0riTFd8bsaclOxp4G8STGtrfncDJhTqGnYWYC20QzcG4hCH6cXBtppG
         VjAtS/f/+iqcpQn1GHVO60ur39CuS52/rIaDSpTkifRWkFLNgUPcxJyWY6UIvK5p9nW4
         No5o85r/mFQ2/eCJNyuvDzjN5tUdKmHvlpFgC2G6eBODxgByvwTsRVykxVwDd/dLgXx9
         pYbOWXBKF3QGEl+tZeokoGMhMq08U+GEid28CVWGOsA4UwHv8XaagOZsu/8f4Kl2dybn
         6mHGZ0jRtggZRLXT/RyIcbxIYWmwB70MZ5e6WJ7ThTg+5aR2BobgE4Kys2eHKi6HfgD7
         sBdQ==
X-Gm-Message-State: AHPjjUjJrEFircvXJJutOrQkHkDXbWwmHG0mMTWlV2ibGmpzx7uG1ayi
	ZSKrfc3B3FdC1vhe+xTY59c=
X-Google-Smtp-Source: AOwi7QAgZIl5ApJQi3HbD7oedT9L2TA5hhySooEz6D8iIk1t0PhHHOjk+f8KNHEG2i9TN3vR6/lY3w==
X-Received: by 10.99.109.139 with SMTP id i133mr1695437pgc.29.1505835608054;
        Tue, 19 Sep 2017 08:40:08 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id u73sm3844230pfi.58.2017.09.19.08.40.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:40:07 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 05/12] staging: lustre: put trailing */ on separate line
Date: Tue, 19 Sep 2017 21:09:17 +0530
Message-Id: <263e69d3edce76b3db6ec48077408305c09070e0.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning 'put the trailing */ on a
separate line'.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_dlm_flags.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
index 11331ae..635eca9 100644
--- a/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
+++ b/drivers/staging/lustre/lustre/include/lustre_dlm_flags.h
@@ -136,7 +136,8 @@
 #define ldlm_clear_cancel_on_block(_l)  LDLM_CLEAR_FLAG((_l), 1ULL << 23)
 
 /**
- * measure lock contention and return -EUSERS if locking contention is high */
+ * measure lock contention and return -EUSERS if locking contention is high
+ */
 #define LDLM_FL_DENY_ON_CONTENTION        0x0000000040000000ULL /* bit 30 */
 #define ldlm_is_deny_on_contention(_l)    LDLM_TEST_FLAG((_l), 1ULL << 30)
 #define ldlm_set_deny_on_contention(_l)   LDLM_SET_FLAG((_l), 1ULL << 30)
@@ -144,7 +145,8 @@
 
 /**
  * These are flags that are mapped into the flags and ASTs of blocking
- * locks Add FL_DISCARD to blocking ASTs */
+ * locks Add FL_DISCARD to blocking ASTs
+ */
 #define LDLM_FL_AST_DISCARD_DATA        0x0000000080000000ULL /* bit 31 */
 #define ldlm_is_ast_discard_data(_l)    LDLM_TEST_FLAG((_l), 1ULL << 31)
 #define ldlm_set_ast_discard_data(_l)   LDLM_SET_FLAG((_l), 1ULL << 31)
-- 
2.7.4


