X-GM-THRID: 6668976439860133888
X-Received: by 2002:a24:5c81:: with SMTP id q123mr4773080itb.34.1552742086961;
        Sat, 16 Mar 2019 06:14:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls2281030ita.0.canary-gmail; Sat,
 16 Mar 2019 06:14:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw9FZ7QwtgWkZBDqd06ArIAhwnBF0SepEnfmKCgq1ER3DnH6swvFH3UX7mnDH16oAzaObYg
X-Received: by 2002:a24:b007:: with SMTP id d7mr4811911itf.8.1552742086242;
        Sat, 16 Mar 2019 06:14:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742086; cv=none;
        d=google.com; s=arc-20160816;
        b=OUSr+ZHhOvGuj1ZosBFWhbpQE4PKSS6k1rfBZvDhPBtmAUUCiB93+8lr9KEEmTnYN9
         K+ccqjpQT2S7xwd3YGYPNa59MLor7ecjfDi+mBHSaKrmv4sPiVmvwW8CvmYRFp/hyy1K
         z2EVfc1Aym6d4PXk/T5s7pBymaZLOOzHmhtgPEEr0XGGDcNioy3P7PxZRJdaOypAIvnP
         6PkmQTMTjPurgyycVZ/JtPq8IzFcgth4tUpcYPSHm8Rwe8y2B4WieSh2ys6H8v23j+Zr
         Z3VbRo0jBypTsdLvB5LEH9Z5i0fFfwVS/3lubQl6CY4dNH93mYNX+uXdpgKSDPS5mdOJ
         b1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=iTZSX0G0epbgYRfDaBjpm9XTedaoJox9dtAbhiwAQZI=;
        b=CdVxQcuKF7aSNjJ7J/AtQA85c4nN2R0/+/SFqDLtPYdBJr9MEj/S8YrZIQOasO3Wrk
         XgSyLw91S6pE0HnXQ3pqHB5wHXFrp0uQhN9JocJez5jGWDouCJLA6KNj6Q8BkDYsOBEh
         nK7kCUy8KzB7hQrt/46G6cgOECfbm/pYEymSdRHUJYf4OOwekFuAvDfx6XCI9RrAHHoe
         Inx53+g1xe/45S5ndC8KaNh2PDWFLVBspKbfVZqgOMw1LPHYrWTNz7MOfvVoNRr35fMg
         36/q/JK4UsqV9o9YkYIXKD5O9ZgqK0i7ztXYFt4brFU/n32pz2m7RhczLRYYBfwVKVX7
         YX2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzUfVE9d;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 186si378990itz.2.2019.03.16.06.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzUfVE9d;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id v21so8213728pfm.12
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iTZSX0G0epbgYRfDaBjpm9XTedaoJox9dtAbhiwAQZI=;
        b=fzUfVE9diiu5KmioM2m7zW4qhyaCeMbnWCyspbmhcbAVMJq5TUukhiUfgIafd90Gc0
         XwX3gq9EN+wrYdDBo5CcmJxFBBV4y//Balx39mLftLTnJkEkvp0NdqCcxOEnn6PsxgGv
         xVOxJ7uikCPGjrmOOV4W+0uk/g+trIBD58r8/MD1Xaw1wiPFCP3kZrJbfqV0j7HJi2mo
         rcDXlgD2b7y4hXYEYHjJUmmjxV/OUNlvdwhZBkNnVoJbZv2aFrj+k1q2JCxr3DFJxpVi
         fW/APUHe2f0KpQ7QYV1g1N+LNcFUZ/6z0nSWW4mzVzy9XCvnfHWY23Pjkla4mAa/A7bb
         ltmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iTZSX0G0epbgYRfDaBjpm9XTedaoJox9dtAbhiwAQZI=;
        b=ZJj+dvcjsXwCV97A40aLJovgC5SiO4ieEm64Fe0RSUINUks6rmHsmuGbqZn1u4khJi
         Wse2QjglaajBM+hf+0kvHMJBSf1nR9GWXZ21VjV5Xgwx0q7kiDo3EVByNurtqdVnliZO
         RGZOqaDy0+tA6DG75MIwVzoQCY6XiIeDE2yLhU2BbfIHYIVhbJ291mQyhvLtKeHrXknX
         UC63F5e1ObCcRMzoaahofUi3RUgx9zC0K+YPR7K+VMIAEx9urVNjzJamaBgUZ3GMJcdd
         m6QsqBhJlAhOaQO8HzEeoHcXExYhboVrdUGQQABFBDwnhQb6nmmNRt/3fPv6oVO2FHA1
         kI6w==
X-Gm-Message-State: APjAAAVb4CBXT3IiEc04EBiuot8chgMuGZbyWRvRu6zPmmkdyg+h24n2
	rWiHdYw6UaOWBWC973Z/4D4=
X-Received: by 2002:a62:574d:: with SMTP id l74mr9575463pfb.9.1552742085576;
        Sat, 16 Mar 2019 06:14:45 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id k3sm17852578pfc.59.2019.03.16.06.14.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:14:44 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 4/4] staging: rtl8723bs: hal: Modify comparision to keep constant at right
Date: Sat, 16 Mar 2019 18:02:51 +0530
Message-Id: <20190316123251.24875-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316123251.24875-1-himadri18.07@gmail.com>
References: <20190316123251.24875-1-himadri18.07@gmail.com>

Modify comparision statement to keep the constant '0' on right hand side
to follow kernel coding style.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Add this new change to the patchset
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 8eb28f97ebcc..406ec74adc2e 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)
 	u32 leftSize;
 
 
-	if (!pStrBuf || (0 == bufSize))
+	if (!pStrBuf || (bufSize == 0))
 		return 0;
 
 	pstr = pStrBuf;
-- 
2.17.1


