X-GM-THRID: 6950506572644614144
X-Received: by 2002:a17:902:52a:b029:e9:496d:4a55 with SMTP id 39-20020a170902052ab02900e9496d4a55mr32577188plf.83.1618327765334;
        Tue, 13 Apr 2021 08:29:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls9770837plb.11.gmail; Tue, 13
 Apr 2021 08:29:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4Zby1BdbnV1XW/bcwTmflnfpr0oltUjS3mubvansSa6he9hNr2Wuztjo6eVvSxryrG/P3
X-Received: by 2002:a17:902:f212:b029:e9:56f2:18ba with SMTP id m18-20020a170902f212b02900e956f218bamr32309063plc.75.1618327764326;
        Tue, 13 Apr 2021 08:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327764; cv=none;
        d=google.com; s=arc-20160816;
        b=pSkgPdnsiI8sF9UVI1Q9L05SZ2v+SbUEeTwE8CDE6g6ELoEeN8LqU/I8gS6rtKkRKw
         bysZ5lN1IHxSVmVAycnlN16gNdprrsWX5kqfWJu3zlEPKWCA66lzwsbycL1lihtfpwRE
         1UKrHwjbzPUYIPy8zHGXHkhbVOM6VFWdkKDeP3utNxs+70hAwGMf9YPOqdSEb8XEQJTG
         rRqJaPrgEg8E46yxKsre6sXB7pRvX+cTcs8BLw0QBkTFSigt079nrLSo7+kkypxgMehM
         OldIjM14VIAriAscKET8mE4o7RYO5B8c36Q7WUHAB5m5DcCnXiVACEIshvBeb2Y0898M
         qwkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=p944sU1HlsGK+JAM7pfhxbxu763gDyxFzptVVENEtWM=;
        b=iCID806RYf1/y92KzCcx15vrJjS0SyglXysaDkmuj4NqyNTJa/tILyMATukAwvz8uW
         KxAaGu0BhU4NSJd91Vf3ODVsJVaIJcsCWQ27ZNBtv+hHEPG95jtRItfe8tWKmhBCUBnC
         WRXFs9volft1FWMWP20+AANinZKyNK2nE0t8rDsmRkg7kuwKshEhqekuRdELciRprhzk
         UE1k22nxDCEchOqlBdR2WUGRf6QrIsw3ffGxgBdOvbB/S2jMrhYExfWEnbFl/7z2ccN6
         sb8gNqAkZMM7KbOQEBjXeBFb1Focnit6BGbd9Uk5oXXO8UYIB9M2TJe0PAQh8ybUx08w
         WAVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MYJ+RCjm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id k8si272010pjq.1.2021.04.13.08.29.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MYJ+RCjm;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x630.google.com with SMTP id c2so968406plz.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=p944sU1HlsGK+JAM7pfhxbxu763gDyxFzptVVENEtWM=;
        b=MYJ+RCjmhTgTQSRLqy50VLuGxZjkC35EJmvzA+8K08hZVM+Nt90l2NgkOIYRROoPwC
         2+eMwcbDyVOAyYW0cY2KxoCEQJHb5jtqbQtIA+5lC4M84Qnvx+c+BJN2QXGX0PpERSl6
         J4WhRIZCEodU4A8gMeFzAidKEkZ/xO07aS/kVE6MJh6Plv0IDHqFsiIj+nIHdsj/Fa4C
         tctzypyDmW1tTIQkWJgwzPEFyTXI8VUnzoL1Z0yW3gLvmGat8a9DhLv9MW8VM5EYY5oW
         Qj49syhLGZBR7tbSbphWNBlKc4azgXvVNQVMBYnmV01uHQVPcls/dVUd05NGTGQUTtdr
         c8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=p944sU1HlsGK+JAM7pfhxbxu763gDyxFzptVVENEtWM=;
        b=V9Jueo+xWsYLRdwPB/8vobQrxKEszm1awHPVs3y/y5Rf7Dsfv0WAOyRdbQfHxAJ72c
         kEJw+j6G1FpDt40v5zQ6GU+Md+VkCW197cymm0En9I7xZohOF67URWbtoUMJqKzyVVg3
         iGaC2j3yPF9Ya16HY3fhXTUU+sRgGSTo6tANHviErpzTqvv4t9EX7A5du2Df8zjSTexa
         PSuOWW3UdQT6rAa2OSHF6RaLXi7EYCgUyIdd0X6DLiyd85AGBm+4LricNtd9cqQ9loAb
         uvEKOVQemO8Wd/0lH6aQcZPXiOXVwfJJTknfHv4C1nfl0wNeB78v9ZqIIz/uLltbzbjg
         TTMg==
X-Gm-Message-State: AOAM533p+X2/e8XgNKXUpGP7bRefXF+d7wevVnCQ5z/zgeQ/1phQqiFR
	jmiKAbMyFga//ZtcYGq6VGan8keNPakdow==
X-Received: by 2002:a17:902:e8c1:b029:e9:3c98:2dd2 with SMTP id v1-20020a170902e8c1b02900e93c982dd2mr32793993plg.17.1618327763995;
        Tue, 13 Apr 2021 08:29:23 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id r10sm2852104pjf.5.2021.04.13.08.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:29:23 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:59:17 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 3/4] staging: media: intel-ipu3: line should not end with
 '['
Message-ID: <dcd55cb415194a5e0246b0103e791d9684de03f0.1618326535.git.mitaliborkar810@gmail.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618326535.git.mitaliborkar810@gmail.com>

Fixed the issue of line should not end with '[' by moving argument
from next line to line ending with '[' and made it under 80
characters.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v2:- No changes
Changes from v1:- Made line length under 80 characters

 drivers/staging/media/ipu3/include/intel-ipu3.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
index eb21cbc63af6..47e98979683c 100644
--- a/drivers/staging/media/ipu3/include/intel-ipu3.h
+++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
@@ -247,8 +247,8 @@ struct ipu3_uapi_ae_ccm {
  */
 struct ipu3_uapi_ae_config {
 	struct ipu3_uapi_ae_grid_config grid_cfg __attribute__((aligned(32)));
-	struct ipu3_uapi_ae_weight_elem weights[
-			IPU3_UAPI_AE_WEIGHTS] __attribute__((aligned(32)));
+	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
+						__attribute__((aligned(32)));
 	struct ipu3_uapi_ae_ccm ae_ccm __attribute__((aligned(32)));
 } __packed;
 
-- 
2.30.2


