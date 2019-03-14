X-GM-THRID: 6668237128275591168
X-Received: by 2002:a62:8894:: with SMTP id l142mr758867pfd.48.1552569942821;
        Thu, 14 Mar 2019 06:25:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls3079216plq.0.gmail; Thu, 14
 Mar 2019 06:25:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDpWSmJ9FlBxxoM1266OMV293ZuoeZqnJbc2e1svgTPIzfISArfLxHDLCEnJErdlIUXqg/
X-Received: by 2002:a17:902:234b:: with SMTP id n11mr13849285plg.22.1552569942189;
        Thu, 14 Mar 2019 06:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552569942; cv=none;
        d=google.com; s=arc-20160816;
        b=QWkoec/mX1IfjyEsIVYGtTixIGwpyE1DJM7poJR2dNdewID+XoR5t1uin+fcNr7wpS
         s2cLfATRL+DcJ54KbY9YH/Jsm0CxJlzB+FLGnPlYAE6nfaRH1xrl1AdsQ2ZGLWtYblO9
         IqNcTT/78zR39+qTjiQGbQBsp5GsIJ4ejrx5qQrBPtQCU58fzMDIa+v3nSkPZ5KWnrqh
         RtYcDjWCRMYqFLso+gcKU496+j6X2ixUgEAyc17L/JaIcs88uNxqe9GuWEZbrj1W5i6B
         zhRimIEsKrM8pAvH+TSJsu7YKpzH6yVo2rA1gQUpTrp+tRVoVIsuxar0FmpVADbJvHIx
         j+Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=bSwPUAfQk2B49nOqvh7LdxybXa+cGe42GnYqetHEZEs=;
        b=rj+EjMOAyKtUrUlGVmielsXQ9p6SyhQKrKboHHW4DJ14H+lT6JAkBZmLkfHUeEwRuV
         FEn+LoWG2IuXIM0q1fQ+PnGEsRARH/Mfz1WdArBhRA67UUMtFMEa0fX3d42XhSh4RW0y
         Rwaqhv3WElKa9IUQt7g4IDyqzKFdynrIqKM4yWUaJTRhQXdQNunJKEpCq9gNsqG9yRXo
         F5iqFSDoPPy9ORKfoAJCauLHTEjphEHyQSa5bDCrgaMc0YE2ApXNL7jWIBUHHQVNGqhf
         31CZLhjO3EimVzTceD5tlNHhnQyBbB+O6CIxs/Bn1O3Yeka4aHNg4oYM6ExXLJqAKPco
         +1GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H3eIl/T5";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p15si865745plr.4.2019.03.14.06.25.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 06:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H3eIl/T5";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u9so3971480pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 06:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bSwPUAfQk2B49nOqvh7LdxybXa+cGe42GnYqetHEZEs=;
        b=H3eIl/T5hQQNadKB1Dic0/sz10GIpyCK5KKhzCT3vf0RmpJgpC8hBJFG3zLZ/HpDL3
         YDeX2g5yIHzUZq4jhSd5e5tfeOCHvb6VKLb2zapFADYl/m06w1QGt5RNwhdBe8yYYNjG
         YbG2verwtx3hEaZQ7uWPBjGhhMAtO/M6Q2KkIr+z0olRf3Lnqqm+QzNocrjU760jdes5
         GsIYhkBVXf0rxojWSdvtkzHlLRRym8Oc8dJrh00yzotlgRVLO3mVWDvkNcMwx8ytBtkQ
         ranrlDPMG1UK43pXXZpwNvYGaGayobH1KtJP0JuDF8So0gRNaXs1F9ejiVpSMrltvs8U
         2nRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bSwPUAfQk2B49nOqvh7LdxybXa+cGe42GnYqetHEZEs=;
        b=ORemOEr4cmAn3YSuLXS1iRnUs8UV+8xxUgD++95f/j+zXj4XlfNAceRAl69yslJ3pr
         5jftFckLLtL6L+K0Dt7pRO2IbLHlpAtQa5W4eKuma5zbKOrpCvxPa8CLagsSq7Jk58lV
         A0RpXjPdI90FL3qOrdSJWgxP7CVp5J1+74GcnI50JwFkllZ5s2vqn4tH+k2iMmsNQSaJ
         JT/0s11HpcBWts0X2/qqnnrxLSK+mIsLZWYhxGyDEBOTEpbThwgWKpdZGKJbxOo+pVz5
         jBvMqACRE1CLwEs2dARjeB8OM0PyrtIIuufERfkTH+9FdZuYCjjsMkZ/yWnrF28SEKgJ
         ZDZw==
X-Gm-Message-State: APjAAAWLIW6tuRR8fiOywCa2K7Ej3Y7Qr1KRrd+aWv1WI/WQ8lV0Of8/
	GeIz6h6dnCfF9ropkwTVhsADDfpj5BM=
X-Received: by 2002:a17:902:59c1:: with SMTP id d1mr50455039plj.324.1552569941366;
        Thu, 14 Mar 2019 06:25:41 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570 ([123.201.105.15])
        by smtp.gmail.com with ESMTPSA id f4sm18399771pgq.94.2019.03.14.06.25.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 06:25:40 -0700 (PDT)
Date: Thu, 14 Mar 2019 18:55:37 +0530
From: Sanjana <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] Staging: rtl8188eu: rtw_recv.c: fix a space issue
Message-ID: <20190314132537.GA4409@sanjana-Inspiron-5570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:

CHECK: spaces preferred around '%' (ctx:VxV)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 443a62d6ee24..39a03f253338 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1763,7 +1763,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			rtw_recv_indicatepkt(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return _SUCCESS;
 		}
 	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
@@ -1771,7 +1771,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			retval = amsdu_to_msdu(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return retval;
 		}
 	}
-- 
2.17.1


