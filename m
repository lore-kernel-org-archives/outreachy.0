X-GM-THRID: 6465698558718771200
X-Received: by 10.200.36.210 with SMTP id t18mr12185366qtt.29.1505412757185;
        Thu, 14 Sep 2017 11:12:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.29.86 with SMTP id 83ls5690931itj.19.gmail; Thu, 14 Sep
 2017 11:12:36 -0700 (PDT)
X-Received: by 10.129.157.20 with SMTP id u20mr14573426ywg.223.1505412756382;
        Thu, 14 Sep 2017 11:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505412756; cv=none;
        d=google.com; s=arc-20160816;
        b=AdEF5LzXkzp47JW/z53e9f/VzmE5/DoA3ptIJwGYcolnXl9HVtyTSHrLz2CX5QAr3N
         Tq9E4NR+NQl2/rLwsG2dZUJ6SVNlsO6LxrpxjQvufEvFWDWRA+R3UQr87wx1uXM17Oks
         UFaheQjWA+/IVdBuuKP+FAg44VtzAU9I2z7comA6rv6hie+plErQde7SVXWIsg1QdBEU
         EreK/B7+HvMS1lp7cHsmtfWPySast0KWFcRDkqvIsMgtxs/EsALWIjftfs/5awKL4vjd
         JsvuiNVwf52eid+jOOX2skfXLH/WbXYlR+d1xKpgtl7b03z2hVW+pWovzX28EhrAmzcc
         JhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=WzXhmg3ee/KAU9hNpZ22b+mE1z74zX1BgqLjWU+bcHKO0wBAPowNBUDdl7C2Dni9XT
         IWMSPmqhxV/LhuYVVtP7i2/smW7jqYiNVtCXwe+GhpWL5suncTztiDybg0/vic4VunoD
         yjdDYnjew8mMOBWJho61mmAoVKugOiWYm6qAkSRbjfXSx8VBWihJgqnNhV7+O+QjV/yB
         MMZQZWsMFlqlOKDHrTQE2v8t7vl9qAKnjcBEU4ef+kd5ca/k1GGnm90DIbcVOUG5Ezpq
         NTUWOQ2CsvZa8YAVPfv02BizeCWnb1HY6XOtvS53bCNiny54IqonIOMsEsRJLcHqA+jp
         CoZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P4zCel6l;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y18si989172pfj.18.2017.09.14.11.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 11:12:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P4zCel6l;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so73332pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 11:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=P4zCel6l14L9A0TVpQuE1+JupKyomDUMahwVv8KRVN8tuQjI+mEE/6ixSr+/EbsceN
         9/fum1NTH9SlLX/usnVTNmIoqSuRu81QcM0WfenP96hgPAsDwDAMupDzDfnCv2os6yt1
         QfuJgl7q6Hucv51myyGn415I+lRPOBDDWN8AHJwZCOIFY/1Ghipwt5DvYXXRYSdQKj6b
         qn5gTHfR96n4qn04daN4vckxfNV+pk+wyMoAtRlSS7dwO3xc5ojqB/ECBNUmufC6p+dA
         mw5h63lCBG5H8RlDTfTrhwL/ex7ZbB+boUrB6EEzdBn9661gW9q0tgg8evZl1LL2KLCA
         gRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=ny4HSEF2vSXMqR7mslSAcFNfvxUv3J7sXEj/Id9tYFaNTWKt7xLkzssehpm/lDOK1a
         kcWwKFqblOGtMKOIB5s9iQvLuI/40l74sbD4ENzYJ8go4it5tLchxi3BH30ANCzDRYpi
         /r3FoGuEirmQde9lHk3JNbb9jUhE09Kz5+6x+hBQ8We6oaBIarkwY1tD7a+GMmb9AuPJ
         BOtAhqOFzcxFGuPvPv9Cgn6m05DkIjg0jGB9bEVhsa52l7MmUc7FC/QZ1x8s/sJaHpKy
         1FiTQlJCEhOfSnejv63DfpETvfrvOrYRTw/LFUWncACdWl0gTnAFjw/VePDqA75ZwUk1
         72Sw==
X-Gm-Message-State: AHPjjUiCTkVYNqB7W4M15FxNJYDblWzp30oLHYlVgTeOPu6Y+GTGqvrr
	bG+RtEHaJlF39A==
X-Google-Smtp-Source: AOwi7QBfQ0IoRX6rzSZWE7MFTrjQmeYn7E90LAG49V4ncNav4WHC9Y3x6rSuKoyJPqSWJLUcmx0xIw==
X-Received: by 10.84.129.193 with SMTP id b59mr10610263plb.76.1505412755706;
        Thu, 14 Sep 2017 11:12:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id h90sm35411942pfj.32.2017.09.14.11.12.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 11:12:34 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: lustre: drop macro definitions with no users
Date: Thu, 14 Sep 2017 23:42:23 +0530
Message-Id: <1505412743-5008-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---

This patch is as instructed by Andreas Dilger in one of the previous mails.

 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


