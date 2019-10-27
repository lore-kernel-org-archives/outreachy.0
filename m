X-GM-THRID: 6749323707377778688
X-Received: by 2002:a54:4585:: with SMTP id z5mr8968379oib.128.1572144423038;
        Sat, 26 Oct 2019 19:47:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7ac7:: with SMTP id m7ls26296otn.4.gmail; Sat, 26 Oct
 2019 19:47:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVkjmLPlYECDo/+gTHcWSTtaXIUIpLi1ERthyuVm4qQjbnz4sucOcaCF8MEN8o+Wx0abwr
X-Received: by 2002:a9d:5a0b:: with SMTP id v11mr8881451oth.102.1572144422279;
        Sat, 26 Oct 2019 19:47:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572144422; cv=none;
        d=google.com; s=arc-20160816;
        b=gv7YeLf1pF/JUc1170fYpIPbhmtLmvQLdUafiaqdF6qrY/8AFe+GEoQxi6T25FuyJm
         BeW9cGZa9mvFFuGvMQNtbMNHrIh+GlVLVWrTRdkXAgvNdtFXsYAjDw/qapzytnhHAsjc
         fHWTH4lcUz2Y/jem+n34CMVdK5/M3w3SWhPTLmRAcFUeOeBRAwx9Jlx6yqHqGpk3Btxx
         Mpap/+XZmI04dmvCU+br8LVuSUylubRSjAAH6zjJFJaXLs3+hfhMUoMd2j8RpyyjWdR8
         BZdZ723EiqWPBeqSv0dMKBCkEqUll9HdE6U3PKz1UBKTHFHsj8Tnr3cHAH1k7i1vIZXi
         A4og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=TEHBaUYvwjIw2Ei060GFN8NptK8HjsadmZkwVFdDMhMzo4lJRDfSa/mz2prv/wFdKs
         PgepjtwubhutCKVeFQMGQrEzx6bSFX3koG0zjvsi2K4zAG5fTh7Ix8aEFdHakrWlWFmK
         SxfCQ3Wpdeg9uA8gePvcF3haD745oPCotLFMMCXZJPpxGwA+59YLG2zQV4WBckbQavgL
         OVf43XFIpcLzjXeXG81uxLt/1Dn59/ATcAPRhbHRHSekvUnuK1DzVA3M/DL6uZO3XBda
         FbhmrfnZdTS9QSj1syBiNDautKueLVPwe3NjZATznzlb8Z8r+whcXA8F4lXuEiaPTUmP
         EeTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5kquIKK;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id m23si306982oic.1.2019.10.26.19.47.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 19:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h5kquIKK;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id c21so9346444qtj.12
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 19:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=h5kquIKKQfCKo0pN6SVLFxQ08WKJGrKUqo1B/7RNIiTwNQ7sz8n5ckOmgYlBvJGid2
         fma8B766CLwOSHyxEpLwheP25QNCqL7FW1Glhi4Rq/w1haIJ4O2Lj57+NMJLAkTSQ0fm
         hwf957wt98rO3RyzVBr+/FKxDOxrh9Un44nMzn9wiWeq8IMk9pTOj/RK2LF1cotAw4E/
         AZ/udjj+jCuj7rT5uoNKkQW9wizc04n7cYZpsh2Kd7oli9RFS+99+hMXjiDcfk+YfHXI
         /TBMqMWYQ6LPRNUhS720qjsSAHBg/CZM7pOuVt+anyewHppAWlpXhyWljTMbkZbeBZvs
         b5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=RUGkmtZKbCOLeFxeBLI3d7G9s4B6dxY8hcWHGbM8FZE=;
        b=elh00/1fbJjAOLk7iUeSZIzA6WVCmw3EVkl5hl6gWoJ/GIAKYOxOUeI1tXxikUY/+m
         Jimtkqzk7jQSALUiCEnZeDCEFu55x8Gdzx9C3sHUcM2pmJkK1XAuhOwtnSlXAD1FsjTT
         mJufHzd++I6p5pc7z9OtQ/jPq/lm1VBBax5l3bRNySU1Go3Ud7NiGNdRIrrupmnWg51f
         UgUzr6m6Xlk8gJAmVyi8zW3qiqMAJAVG3OTb6CyrHIzTONairsxZI8+fsSMa/dc74pCw
         FiAwbgZOBPCjsRTmp4HRkmddiRC/Tv4YR+xFJFIavemo51YJ3DSSzlXwE4f5E6rMUtrN
         A1ww==
X-Gm-Message-State: APjAAAUdsEQ76pGp01tkpyaTgfmSSUvEBYJlblK5VTldqJFRwKmu326t
	OWVH3cdL8Nq6oaDssFJqDVU=
X-Received: by 2002:ac8:28a1:: with SMTP id i30mr11419351qti.245.1572144421911;
        Sat, 26 Oct 2019 19:47:01 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([172.98.66.16])
        by smtp.gmail.com with ESMTPSA id w15sm4423992qtk.43.2019.10.26.19.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 19:47:01 -0700 (PDT)
Date: Sat, 26 Oct 2019 21:46:58 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v3 2/2] staging: rtl8723bs: Simplify boolean expression
Message-ID: <786c20736f58c090484a4b6ca00502e76f80b0cf.1572144163.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572144163.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572144163.git.jarias.linux@gmail.com>

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
        - Remove the parentheses around the variable.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index 0c2f3b2d4326..6f341d52afb6 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -190,7 +190,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		ODM_CmnInfoUpdate(&pHalData->odmpriv,
 				  ODM_CMNINFO_BT_ENABLED,
-				  ((bBtDisabled == true)?false:true));
+				  !bBtDisabled);
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


