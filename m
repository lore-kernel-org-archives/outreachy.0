X-GM-THRID: 6808597928719941632
X-Received: by 2002:a2e:854e:: with SMTP id u14mr65567ljj.182.1585331046358;
        Fri, 27 Mar 2020 10:44:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls2401078ljk.8.gmail; Fri, 27 Mar
 2020 10:44:04 -0700 (PDT)
X-Google-Smtp-Source: APiQypIYpqmPn0iDqHHdB/Xozyl/2QFJba/VhIIyPmbg/z7RKrw0r0f6SGQ0u2AwwxrdpXzI0DVe
X-Received: by 2002:a2e:9585:: with SMTP id w5mr70877ljh.178.1585331044529;
        Fri, 27 Mar 2020 10:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585331044; cv=none;
        d=google.com; s=arc-20160816;
        b=B+h2geNnjeNSwYYQgRdvqL8qFXbUALpso35ApDyxX2XsCRi7QP8Xgfq4XbcJ+yQtlZ
         th37EysaYr+mUlCPgNXo1M2Q8BdiHnXHnkkIWnS5rlCQfSegz9lpfYLuf9ddh4sWkF+Y
         5KLBfjh+sRLZYJmLPqZX4t0a31H+cLn794Fpqzst+tg7B1VlzzwqvdyApLksD3ToKxW2
         ETTyEqvIJ7c6/WFmeYpJbg8JDO0h6+xteqoDUe+qJmqqeyB+HwdUvmsvzynDpmj6o0i6
         Vb6CxuB72kISTZj8TaWzif9n49uDAffcPKNhxyZRqjKTFSj80M/HfhQRngAKvXRidmaN
         KfHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DrXYvERUH2v/B8mXpZbzudiGaj/dNkSplFituTatYpA=;
        b=Dd1C2qyXKJfAutdJqWXefGsSl+kChKmSCuVleROg1zZ8vSq6qAd7ALAY+UASJGzF2C
         +jKyfxlsHCZlZwh4uJRq/VtFbG4QfbMq6rJiDpAxd5TY8SDblhs51aE3fpmtpQqCM7lx
         xIqv4V1Uol7C/68LhvPJD1hQvDKx4fiQzxYlc+59a5YrzKtCZDQEkATAm2W1kzb0sase
         O3H3Wz1a0FKIPBHmSI7F3U7QWjftK/Muyhyx8rd42B96aGWOCgYT4Iqa3/EjtNH8D68C
         UH4i1JWgBPhvI68MKS2DCrbNuTPsopKH69CsEr6uQ3mSvHzNBY6X+nfbxRQw0fiBIZ6O
         vnTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlmVjxjD;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id w186si84621lff.4.2020.03.27.10.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlmVjxjD;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id h6so2805967lfp.6
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 10:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DrXYvERUH2v/B8mXpZbzudiGaj/dNkSplFituTatYpA=;
        b=DlmVjxjDIvi/J3kWr5k1NpUHw+6mTcaLMsRSrqNUpIVv4NcrRdN3idr/HtQ96bMaww
         C9ZKT1wZfVpB5XiWqwX4MfGsM+peVyJGGaYKJ8R4vNwA3il9ZQxTFuzkxsGxq4f+Ik3y
         big0aAdYS1GSQy5sUBH8Kc1aVtFb5x62pn6ACxoe5DSaQBUo8KoywX4CZw7sBdmLStAC
         00fuOfQ72CbypqvgavgaSLHXKKsB2yT+Yzf4KcS9CDuhq5hvJcwyRJ4E90Bafe35Q9VG
         FXJ6KjVTuuvOPpUS1jbiLH9M+Sim/cHxA6igKTXj9RlGKKlPZiAxSHSUeFwnNrPl/1Uv
         /DAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DrXYvERUH2v/B8mXpZbzudiGaj/dNkSplFituTatYpA=;
        b=P3V8bpvvNrAZsxOBtQ37zVYvb6WPugwqPhqIG5KFN1Nn4HQuF2arj3+3e+0u5tXzxc
         zdw0q3xNi6XIPc5SKvEtFzGzsJN+L6NyWJlk957F5mon3iKau5hd3IVJ3j0RpYA4S2zr
         ih66nVlaTGYno01utTQAu5cFMbp+x69a8wRL/5f3mJ+u5dFENCfbOu8TT9hxPbC/MZub
         4DUI4X5SUI2Fv5/xAetKEqaeP3ibpfV3BXemVh2Y5kJUbzKf9RlpL3YXIKIpQsNAMnYh
         vS8aVfKBTmULzezw6soef3mGilEubRCPPdytFjjCJUE+xwSHVPmvsPe+0YKm/w2kYDWd
         Ie+g==
X-Gm-Message-State: AGi0Puay1RUjVIvlVfjbsYa+3ZRGF3NCJKkup74QExGlLa6YJkSiyfG7
	nJFlwPbiZs3apfiHOQd5AF720CuKHfk=
X-Received: by 2002:a19:4cc3:: with SMTP id z186mr261527lfa.69.1585331044211;
        Fri, 27 Mar 2020 10:44:04 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id h9sm2917240ljk.96.2020.03.27.10.44.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 10:44:03 -0700 (PDT)
Date: Fri, 27 Mar 2020 20:44:01 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v5] staging: qlge: Adjust end of block comment
Message-ID: <20200327174401.GA7763@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Drop an unnecessary * on the last line of a block comment to follow the Linux kernel coding conventions.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
Changes in v5:
-Add a line before Signed-off-by: line
Changes in v4:
-Odd line-wrapping to message.
Changes in v3:
-Add v2 and v1 changes in e-mail.
Changes in v2:
-Edited the subject line and the log message.
Changes in v1:
-Drop an unnecessary * on the last line of a block comment.
---
 drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9..31322ec 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.7.4


