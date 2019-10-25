X-GM-THRID: 6751743425868988416
X-Received: by 2002:a25:760c:: with SMTP id r12mr3465366ybc.240.1572012767140;
        Fri, 25 Oct 2019 07:12:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls314560ywc.14.gmail; Fri, 25 Oct
 2019 07:12:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyG+Vor33yfXhB1oO82AYDsA9b4oWOzoWYIReAYgKnwYKwMAddoyo70u2Ea7wImXQBpI+CI
X-Received: by 2002:a0d:d6d5:: with SMTP id y204mr2550777ywd.338.1572012765632;
        Fri, 25 Oct 2019 07:12:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572012765; cv=none;
        d=google.com; s=arc-20160816;
        b=acRAlLvLjMjriTgkvh1Eavc7mdfqjZbbUfaC5jHvOtPjxQ///97vWDuuomYENPwevJ
         elk2ZBYo7gttaLnTKytTiFzX94V+ruSFf9eqxTLkfDqyFc9058jhq34zU8m4B9vAjK71
         YbFYjrAFr6a/Spg2dXIiT8wj/FqaHvGwVYPCRxa48sb1oTu5TYeDhUFDoHCvtP8/v9Re
         zbP/5Q6KuCtVlOnBIEBLBziGPZhdooJzY7vrTRW/ZP5rAtPULnk+yNfHO24/h0CjtOEs
         tIduEc9d+hMvAP9+O9ULMMZLLij8Jl/qlida7+rmtMX7IDgZF3QcLoXd59GghC78TnD6
         5/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=B3QNGQaRfRP3JxiuDzrTC4XuUl3K70Q06jgbwqGq/fY=;
        b=UykXBUl8KO0AuP22pu+es86CX6bUqr7wvVxc8xcVfO/OL76QLrRHdt0RRP3nH47zAJ
         aj/jXhuvohuo0eIRsNe5clo96ve/NH8TUKn7ufo6tWLKQjp3/QMVeEIwTvFCPLxEriB9
         au2oKelXOE2XEmtyhJ2U7xWoLAtK4ArTYM1cxAmlarRnlTneJ7s5P/DHWrEmhpIipgPj
         s9jeXz+65tKHoHH/1FkSLBCUpBgBmNiCS5HIsgSLFrsth2/aEL3a998cCo5aqV1TOka9
         9Flfvk1OYUSI8VT+MkiOj6jrvg8A8zb6NOSi2KU1ACfJX4wSDGpww1t8yN0jFFYPQgZ/
         3qrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZfocA9c+;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x7si158096ywd.5.2019.10.25.07.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:12:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZfocA9c+;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id w14so3402834qto.9
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 07:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=B3QNGQaRfRP3JxiuDzrTC4XuUl3K70Q06jgbwqGq/fY=;
        b=ZfocA9c+Vfpz7YXih1cyLCfA2sF6ubYtLj39U1xirNijZgrnSxvobYdnpyoVzgD6CW
         t+uH7n6cu8lsFQ1Y+MhsG8mQ0LYanKLuRUDtVX98+tpu0RK2TfZJwuEhksC9X7SbH7PN
         tbidiiPFAkuQvz1LHaslqhZ5x2dl0Dibr645ovHpaSxbwx22wccf4Wxwtj7AXJkEBPR2
         7MciGuIVfurNyz9qdDZxoQ8LDIOgY9hKKMxl1TwfdMgSnWBiSY0S4z2jeujB0VNn18hy
         hJssj+Fgjp8IvuEjpnvgNvNO8ZHMRsouGxmHdpZ0KEx5tnOlnZLCKrIHlS85xyPwZNrd
         GR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=B3QNGQaRfRP3JxiuDzrTC4XuUl3K70Q06jgbwqGq/fY=;
        b=Ps6+0N7qHt0RUn1lStglltS0XvrU3tJFkzmfRG0iHhpoNeVwV20cMyYk/Ul6cJGXuJ
         hTNC9XAd/NigfZVMfewypJzVqly2zi4u0Om5uRlVYU9B/4XZ5nY5umoB076kp99pWxof
         7i0VuI/dedF5B1yLRP2f9QghD0YtFkmjxN/9U9U8j9sENajzQ0trAqOegAq9WaCBiIAK
         qTzYmMh7Z2FNZOg7TNMpVsc0xrKLX2ZNbbbN3P4IDmcrcCxF7v0omoyyAScA6TNFFVKL
         55NfLnZLIw1kpNsA7u4R4JCHDpExxRjoOJreFnBOqPwnWAMfx1M0n7nLkws6SkJ8N7WH
         Vx+w==
X-Gm-Message-State: APjAAAVNaUukFejWfVX04yYQs/WfMHfMQWroQEjTIz1enrYya53IfoT+
	MVmKhC7ELub1TOkVVDn7xAJIToEl30akEQ==
X-Received: by 2002:ac8:384a:: with SMTP id r10mr3260746qtb.261.1572012765089;
        Fri, 25 Oct 2019 07:12:45 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id c195sm1421388qkg.6.2019.10.25.07.12.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:12:44 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:12:40 -0300
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Joerg Roedel <joro@8bytes.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH] iommu : Remove var of return
Message-ID: <20191025141240.GA30575@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the variable of return. Issue found by
coccicheck(scripts/coccinelle/misc/returnvar.cocci)

Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
---
 drivers/iommu/virtio-iommu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 3ea9d76..d8f29c8 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -153,7 +153,6 @@ static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
  */
 static int __viommu_sync_req(struct viommu_dev *viommu)
 {
-	int ret = 0;
 	unsigned int len;
 	size_t write_len;
 	struct viommu_request *req;
@@ -182,7 +181,7 @@ static int __viommu_sync_req(struct viommu_dev *viommu)
 		kfree(req);
 	}
 
-	return ret;
+	return 0;
 }
 
 static int viommu_sync_req(struct viommu_dev *viommu)
-- 
2.7.4


