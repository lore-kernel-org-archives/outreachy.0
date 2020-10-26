X-GM-THRID: 6888111628863143936
X-Received: by 2002:aca:f003:: with SMTP id o3mr92699oih.64.1603763464948;
        Mon, 26 Oct 2020 18:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cf15:: with SMTP id f21ls1368021oig.8.gmail; Mon, 26 Oct
 2020 18:51:04 -0700 (PDT)
X-Received: by 2002:a05:6808:696:: with SMTP id k22mr74253oig.107.1603763463993;
        Mon, 26 Oct 2020 18:51:03 -0700 (PDT)
Received: by 2002:aca:2408:0:b029:d5:77d6:7138 with SMTP id n8-20020aca24080000b02900d577d67138msoic;
        Mon, 26 Oct 2020 13:17:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJza+W5u5wlEK7gAAdP6z/2ZQ3hf0ypOWs49yk+P1WhCiqoiGLvGrdxOLQd4ITJb528z6tB8
X-Received: by 2002:a62:cd85:0:b029:163:9274:b391 with SMTP id o127-20020a62cd850000b02901639274b391mr9649392pfg.30.1603743437577;
        Mon, 26 Oct 2020 13:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603743437; cv=none;
        d=google.com; s=arc-20160816;
        b=elX4QWLj0R9T/lWfmovxj2ifup2FDoyKpqmuuEUPh9Fc9Q70phM7m4VYYNZqdWhjm2
         HU8vc1+FmnpqKJn3uAOHgn3hKBSwrje6lgvFtk2Bz+1d2A4jrQEWzQqqpXiRVXSdIQ34
         zs8n8FSF4IldpG8aDNU3F23fYdtNLSQ1YqNMgJXWZEOD83Nm8BUBWgJ3ShztDczU9R5c
         P/kuAVWAtVO4WC3bkpVff2Yz/7+aWCuDUChISwGJqkRvfXz9FCmrOIEoMtpMlb9ZtOXD
         3evbeEyPLKTHzconUldkREuAgK2w0T2EcRSzAusI+Gwx+8tdPOlCEKnEoqIKIqyTqsGW
         0Ngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=DQIGVM9zqgJj8rbulhkeCgoSFSNRE/OmxD4I/REebpE=;
        b=QF4s5mMNYq1c3rq7+0lbvvk4nUgDTHuDRznuzrzk/CxaqH6jrbgbrx8LysjtcSQkgx
         umDBctOzrwC6di0wUBXuk8HgAqSWJ8QxGt4JQeOWHkKI6FNy8pOfXcO2WXHjkBS+0DaG
         E0uLssrcyh+pfmPkJFMdnI5JWS85LtDb1oRdAgEevaeAh55KsRafAn5fPFM56yXgSTRh
         xtaZnVJiMseWqmZny/F/O4ydgEVCrgauL9I2ZOQZ4j1fgM9ITGH/vllIP+U37HIKHZ1q
         6glChURsVjzy3Hl7ojLzQAVoAhnlZvvaq+p5kGwOGF3DFSSf9mvDo3a3H3h+pQlh+psS
         tHCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OOi8bxCM;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h24si709894plr.0.2020.10.26.13.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 13:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OOi8bxCM;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id o1so3826551pjt.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 13:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=DQIGVM9zqgJj8rbulhkeCgoSFSNRE/OmxD4I/REebpE=;
        b=OOi8bxCMPx/R/GDQQrhUJT8zENW3v0tccCD6NzNEqdmW7NzpNLSGV53OaFwJPs/9JX
         2hd9CTHvcomqiji7ZdEmmQvTYEsB8X395rNitagEO4vcd8gYMIK9GXXVtMIqRXJn27ap
         nIO4lM4tU+APMXeASOUJ4D2S52abhy/8HvpdO5e83YHfWkBK4krhIG3kC2YXaJBGTkHN
         D53knFRqm/oBHrwsmqj0qRIRGDC2iwz/LJf7tmD9o63Bvzj8xWrgrt11+1f4m8mocvur
         2U7DTjgFvLPsU2aWThYM37/D1oZGYrcefNROXctTZ4TUFaM7HcMyqHDZidq/NMdTt0T1
         PDhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=DQIGVM9zqgJj8rbulhkeCgoSFSNRE/OmxD4I/REebpE=;
        b=ld47xlwTpvaveIIZe/4DgNVgg9FrVPadjeFIxbloJ6aSos5G2iEJZdkjPYyABXpVH8
         uRJH+RuwRTYbCTKXZcS9YqgQHMUUnO/XiL/qe1iORJRGCSIrGN3b9JAvOuVBjRLNiV3q
         ESS9aRE6dNU4nyJwhSi9q/jcpvtWlHqcMwdH0kC8l/+ZW7SGwllf5p//uwS0AQWT0ZvM
         yZxHHQ/rFk4fpSFKktkWtoJs/uJ7ykU3o/WbXJRKPzEZGERCLcBQpGL6+h3Iu44yULJ0
         /mi2zcUNk4TJepz9guyoE7NUsPFREOhlK23zU0otUe6tLiIjX4A8urb2/ZkNY390ICko
         4JcA==
X-Gm-Message-State: AOAM5312jjfv6yaUC7zBb2g7Ld5/19Vt/Vv3U7Is4pDBwMCrOaIgPUML
	LjK9wa/0W3AUv4M61rLHzO0v7LeLyPCaJJxW
X-Received: by 2002:a17:902:6ac4:b029:d5:edd9:43c with SMTP id i4-20020a1709026ac4b02900d5edd9043cmr13713304plt.16.1603743437201;
        Mon, 26 Oct 2020 13:17:17 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id y13sm12368624pfl.166.2020.10.26.13.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 13:17:16 -0700 (PDT)
Date: Mon, 26 Oct 2020 13:17:14 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Fix typo
Message-ID: <20201026201714.GA24239@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fix typo reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6148310c06d6..29086189c53a 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -20,7 +20,7 @@
  *
  * Revision History:
  *      06-10-2003 Bryan YC Fan:  Re-write codes to support VT3253 spec.
- *      08-26-2003 Kyle Hsu:      Modify the defination type of iobase.
+ *      08-26-2003 Kyle Hsu:      Modify the definition type of iobase.
  *      09-01-2003 Bryan YC Fan:  Add vUpdateIFS().
  *
  */
-- 
2.28.0


