X-GM-THRID: 6802585330019991552
X-Received: by 2002:a37:a346:: with SMTP id m67mr10176608qke.313.1583850358138;
        Tue, 10 Mar 2020 07:25:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls923094qtc.9.gmail; Tue, 10 Mar
 2020 07:25:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUM0vwBQaF/XLUPVVVLwU3zQyqKJDDHF9poIdFib0dIKuCbmNMBzMl1orUKCVw+xRMIVos
X-Received: by 2002:ac8:4e43:: with SMTP id e3mr19376198qtw.129.1583850356682;
        Tue, 10 Mar 2020 07:25:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583850356; cv=none;
        d=google.com; s=arc-20160816;
        b=qObenu3FGxXLQKq1SezguTddhAVNizuK3oBP3qo9UDr9GTKSkcELOCO9H8HPSeITLz
         vDCa34CvcPoc2jR+eFJTbLPNfl21vjVB+RStNK1sQHNZutReggVxnVvkv0PSFhIDgmKZ
         JjIP4anZk0B4/8pIAahnfjx2ZvuwrdrirrDWvx93pEBOMkNRPmEzkxynL1b54Ir+BCeV
         c1KR9UhU10D1JEDhsCYdH9fJxUQSZBGT9qXbuPZnDWua7KKv0aEgHByFk+4J/UmO7zhC
         Gd6iBvf5XEzPVH3JpZNFKjjwQ+i1pGob6J0oAqRThq5akxLMyHYHg/CqPaNAs9Qlg/Qy
         e0rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=uL2/sD/V2f5yGy+rL2G+WtRK26JFi3DCDGUOt+xuFjE=;
        b=KeBblyUxFVikpzh243/mfHt3Y1rAHNjDLlEJXCmIiuF/12qISOh+3GZ9oSR23NsUsX
         erBSjWYaAVOyPnaknFvgvP2IHakSMzlJwORwndfMzhi5SyNwCES6MazOQJglJojImGEI
         RhvujfuKUVztKngxCf83/Lh2nmiZMBab9/UHexc5t/QF6ub1aHwr/rnYprwbTVKu6GJf
         zUwIZw3D0c5PTRH9/yoa2RQSBhIA0V4aRlTlz238w8IgpxF0/b8Bgqj2z1bjWCmKouc4
         gz5OhDZixkpEKxIVzGJUb/bUajG+VZ4nHbs3ox1BjI7dlZ7joRR3OXj2bIVYrsz9WeI9
         9NwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=AVpBldlF;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 42si117086qtf.2.2020.03.10.07.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:25:56 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=AVpBldlF;
       spf=neutral (google.com: 2607:f8b0:4864:20::441 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x441.google.com with SMTP id c144so6542546pfb.10
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=uL2/sD/V2f5yGy+rL2G+WtRK26JFi3DCDGUOt+xuFjE=;
        b=AVpBldlF2Orh7R6NRN6feqf502n4TwCJ6QK1rTsR7B32hLanyeKS+Q+dIkWoXYOuUH
         3B22zP7rUrNHfu1ojz+nH/NZAcrqTT7xsd7JgxWQjiL8lP1o36HhbKKZu7LhKJ98Nsai
         LyE/i+s1M/mVT2owl2c4HiJiNh0EinuUdxChQMvCgXF7ki8bP4bqXvTAeZRG1qOXByMw
         DwE8xqoVKD0zRSG/W4A6DjfwfaEac5V2/vhJiRJkdiTHRO6IJ+W+sqKCFSsxqBn79WUc
         neCOwaGUYVQtL2vfVMzVw5F+LeMYQmWO2xqCWKfKDJmEskxn3qXddTsf8hSCWMWtN1m7
         JVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=uL2/sD/V2f5yGy+rL2G+WtRK26JFi3DCDGUOt+xuFjE=;
        b=UBaMfUX7+wpoivMTqwEyIy2P2bkSRet4W8VPUL7DetKQsJGLFU3I0k5GnC0+syMYr+
         f4X4+7feBkZCE0QSEv9sGrX6n092NhleXgRMTOteuMB2tHXU/suewiRF5SuEFR0U5cBD
         rJIqAOD7DJ0jFqtH5yPaMVJdLGMxmAPnV4exoISxa5a9uEAOyskfeA2bpqlzV+qm9C2e
         L1DX8OBOB/XZb0ZQBaTKFQYpB8jd8P2xhPG78RWzYeUkP8xMqkLdc7sUdEln9aVBvyu4
         vGOzIngwf67wtOdU4wWiswuHDK0fnXSRt+EMClbXfRbw3lj1n9IqCMxnUzq0uwN/E6ja
         XkZQ==
X-Gm-Message-State: ANhLgQ20vOtFUrnVVhqsLpm7RXNYS5CvCVLU3UEluwizJskLmGEM6tBD
	qX+7TbDV/8+zqHS5xJMHhquStQ==
X-Received: by 2002:a63:741c:: with SMTP id p28mr19149417pgc.402.1583850355711;
        Tue, 10 Mar 2020 07:25:55 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id o126sm851521pfb.140.2020.03.10.07.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:25:55 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	kgupta@es.iitr.ac.in
Subject: [PATCH 6/6] staging: wfx: remove unused structure
Date: Tue, 10 Mar 2020 19:55:09 +0530
Message-Id: <20200310142509.25632-7-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>

struct hif_cnf_reset is not used anywhere in wfx. It's parent file
hif_api_cmd.h is imported form some other driver, hence some functions
in it are not used. This is one of them. Hence remove it.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/hif_api_cmd.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/wfx/hif_api_cmd.h b/drivers/staging/wfx/hif_api_cmd.h
index 5554d6eddbf3..071b71e2a107 100644
--- a/drivers/staging/wfx/hif_api_cmd.h
+++ b/drivers/staging/wfx/hif_api_cmd.h
@@ -95,10 +95,6 @@ struct hif_req_reset {
 	struct hif_reset_flags reset_flags;
 } __packed;
 
-struct hif_cnf_reset {
-	u32   status;
-} __packed;
-
 struct hif_req_read_mib {
 	u16   mib_id;
 	u16   reserved;
-- 
2.17.1


