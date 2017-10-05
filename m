X-GM-THRID: 6473410411176656896
X-Received: by 10.99.104.67 with SMTP id d64mr2345944pgc.106.1507208333387;
        Thu, 05 Oct 2017 05:58:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.65.193 with SMTP id o184ls5055912pga.0.gmail; Thu, 05 Oct
 2017 05:58:52 -0700 (PDT)
X-Received: by 10.98.237.18 with SMTP id u18mr662028pfh.38.1507208332650;
        Thu, 05 Oct 2017 05:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208332; cv=none;
        d=google.com; s=arc-20160816;
        b=QKM4cnT1LwtltBGeQdgIAr2GdAsXhcEw60Ovp+xvHWEiSBf+yTZ46b5e5QV8zgau+H
         ZLwLvY2ZBqatcuHlb+I7cg5wXlWjM6oCexzlImlMO2cHBBUDUcA2Z4Ot+ewhWJp+vIA4
         59IzaUunEC07/t8Iok2LeBPBo7PLtqE9hOuSAXKjpXk2fmfyrWaJ1x8Q5aTJzZQfnbu1
         ovHAyjYedICCNpvdBYnoWNOf51b7FAATqKlTf6PPoIzWR3gX6OXhY8bCfoS1Tmn58rKu
         6Hobs//SJOZy79il4u9WkBtKM2rYwrRJEmAkUj8Wefc3tJOC79LJCpLqjjHqpssnfnZC
         GHVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=v4VNp7NG+kiAJKpT5C3vEX/qjTmi87wZfn1uA+rxp8KBsNgRW39C6mSZyOGpMWl66K
         MtY3WTpS+DgI9c/7k7c57CQYuPbIBEqgwcJoZA+yJEO5AlzepgM9EA5dR4y45NKXtgrW
         AXXd2E2fucBnp2/4mPGQxfhug24qxyObc27+DkxP7l/mHL8oJ+UEOq4qfH670dTgoihh
         Q87WFQJ5TQbNoPaOdXDLmEABDfd+FAuseoRDWqj8miKW9YiJcqSPWcdCB4q+f1JWaW4S
         3I57IjoLrTEmz1fY+HlVwUliAbnZOCJOY0X3OQT1WbR6b+zTXnvtj9sUh/vRgWFxkx0v
         d1Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DeEXsdMc;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id n63si514588pfb.10.2017.10.05.05.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:58:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DeEXsdMc;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o1so14413079pga.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=DeEXsdMcWoP0AIYiu8eu6Gidkhlfz8TYaBz3kIRp0tgasoysAcvMaIGRQ7J+tIM6hR
         3fGdhFrcN7XsKfK4dGeBmRpVSNly+6NXRppe/7kwk6rnq0m79kN7qENw9Ks/F0Ih/Oi+
         AUZZzg0rerF5oG824bvF8G8HouBkxGuQM/FLJ00ne+3+IflY0fEBTnqRLg7gqzDiN+EJ
         G8Wcgnz4/QdAYZkssAiUj1dHEsiCVifZiv2x4yi1dJQb0nzEr837iYdoUm6gRjZr4sSd
         hzKn6NZm2fkNluORwIb0K9RwE6DVjtAJ9IlRgH7lOR8vv3S8JUOGcULBXDUCQeUQGX2F
         sMNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=M6IDh/Yo5acu6TQ2irUuarE1yWsHjNFM+sSx3xJl4is=;
        b=HOwFDpw7ARilj7Tt5QAd8Gb02R6OvQ4n9PWZTNUFfC781e2cWB4+ipMk9LvLx9mYfw
         K7QIDymj/ON2PWNgI/pJZ85CzaWjCXLLuAv2C0ZBUqPNIwlqfUGaiUQlm+jj5Ypi5aeY
         et4AK9okki3FhcRtKST3syQDgFeeLzaecJX834F56NJcIHif6v48C5+eGJFhrrlr/pKZ
         f0VtqxwEE93eC5VLyE/SrLzG6FX0dxKOIQdD7zXEm0au3kk7Ng1p9my77390OV4rmVL5
         jD9tYZmOGUPnn1NrrsSfWg1/eAaO9AfNyWhwHgQObErBX3WuxoDZNSrnT0EvWkC7hO18
         hYXQ==
X-Gm-Message-State: AMCzsaVJAUw1iJkiJGCClmogrSVt6advuH/a5axfwjctykE6BrST12Am
	RB9dLRnqywFptniwTH7R8PhVVfgz
X-Google-Smtp-Source: AOwi7QCeObItIDKwZodE0f3Ixx67FmhCQ2Mky+QCCpGpEnSeLocSzGuteAjlJq0BMc4fL6vB3OM47g==
X-Received: by 10.99.181.68 with SMTP id u4mr15607482pgo.317.1507208332407;
        Thu, 05 Oct 2017 05:58:52 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id b79sm30842314pfd.37.2017.10.05.05.58.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:58:51 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 05/11] staging: lustre: put trailing */ on separate line
Date: Thu,  5 Oct 2017 18:28:17 +0530
Message-Id: <1507208303-17615-6-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

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


