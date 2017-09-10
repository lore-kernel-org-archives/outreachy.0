X-GM-THRID: 6464167912849539072
X-Received: by 10.31.21.140 with SMTP id 134mr5092307vkv.60.1505065134766;
        Sun, 10 Sep 2017 10:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.76 with SMTP id c73ls4509853itb.10.canary-gmail; Sun, 10
 Sep 2017 10:38:54 -0700 (PDT)
X-Received: by 10.13.237.65 with SMTP id w62mr6138913ywe.2.1505065134161;
        Sun, 10 Sep 2017 10:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065134; cv=none;
        d=google.com; s=arc-20160816;
        b=ToMuGb9+ASJiXecG9/NzSZisSjXudg+p9Pm+AL9ceQRB7fLel7HeSVtowWg8rxyKYp
         6wFbC6DJi3EZw3KUmKbPHAGF4kEzNCV3cmWjw3l/H9AvFJHovepJqsCuhnUAJwJraJg+
         m4NZ2PhNeEfnDcVIiOvJTZR8JRhp21yh4yXjOZ0Ndwwq8h81TA2WUj0wv6N0rn/M3QO+
         zbaGPalxui/Pq1YlNZj1lRofarp3JEDVy2uliAb47R8M5Y0FIa8cjvRAk0prKVArT3jT
         nmYaPzoRyIK/YuBLF/zy3lqIwEej8wS8j+KSKou82hcvW8pKCMbIQv7+SWUcCmVRjqaK
         yl4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=kGiUzIRVZqGtQY7IF+jh/8nzcNEm44bMaVQW6/dWiH0=;
        b=IXAE0/wx6MZQaNjg1gapIjsxrFhFx4DHhwRIAhLLrYzA+Czkjt/Ej9MCx9RBv4tSOn
         Fm17IAXTEMblO8YNtz36X2cgFyGl8PDVK/8VEguc+K7CF/P7IJpdP+ctWV2C3bHvaHf2
         7HVM+FFR8edKRVvZbGSPsRlqgohnWcl5mSQSu7m8sugWaCXqmLnyoxZMzFIcEMFWrB9I
         9bZBXkkzq+pAc/4IE/+MFyvneaSWzOHoFs9Kb+qLVSj4vn4/2+4dRd3wzLD5bQnyMKth
         5BxG4EFG57hPuyTQQlHnaRshJns6tD9SqJeQltq9andQHWFYQ3PicdFxOspZ8C3zhZDr
         yASw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9YwoiO3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f189si708283pfa.1.2017.09.10.10.38.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9YwoiO3;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v82so3645421pgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=kGiUzIRVZqGtQY7IF+jh/8nzcNEm44bMaVQW6/dWiH0=;
        b=P9YwoiO3my+685ySTZJLYLh7P23nDJRSsQ9I2+TnwUqjF/XHbkxC7W2NC9EPTg6506
         xdqFUpfggh+iwzQmlOLVYTsuWwbWL9q+hy2p0qqJFKLkK2rZgYGYV2lyVRQxJVH5h7Mz
         +G68l0Q3uEps1J+p9zWL/FOtEWv3+0VM1WFXed9Fuiu8URawIixh7nITGsrrdBIi352y
         zgYfBAh/I5V8TU855tdM2bY7VMtbPgzFFjGMhK3a42eJjXzYR8fYatrHnjsRhQU7uPe/
         i+SmwZ2WVpsRepIClAGahOCV8FhuycOBPvy53TFBs/sN9tnDOCKTCd4r05X3ojWbvDcw
         MRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=kGiUzIRVZqGtQY7IF+jh/8nzcNEm44bMaVQW6/dWiH0=;
        b=qiP0rsOy+s5ArwYyKZ7hCZXZtIrktWxvxvn7bHvQfQTngSwGc+WOwcFwyQqiBF4M9w
         pMVfkqQ1xVMkxr+WY0yzf5AoM/7rlcQZ3Tu01uMZSw9G11cUPfN7A1LxPWsClSfJIxCA
         42xP1fSRPT/CTdKus5byED4eNRHkEGDKxLTTf+XUfPs1KVbUO+ceH1IkttXqY9QUzW5C
         lUzXIF0PNHDe0dI6OcpR2IQDBeL22m/2m8dsUjFj/S4uyhXmKCew4ltp2Gk93/Nf+Vvg
         BaG5TRXhK5u78YV9crulyL4xzB+/wKJUaRk6baCgVUd1aaHJR4EnE2PTb4KC3iFL+yEl
         Hglw==
X-Gm-Message-State: AHPjjUhl6ojr9ZdZhKAfhkIWB4FZxSGQpYLJdNIh+eBPGHl/Crxh7ngt
	ojg7qSQyv8n8VT7A
X-Google-Smtp-Source: ADKCNb4gq5eXH3wECmw7GWpt6jFW5pC6c0E6IKa+5IawYC/Sd0TVYdZouCBl6tC9AD4K35BthTqXbA==
X-Received: by 10.84.129.193 with SMTP id b59mr10764455plb.60.1505065133929;
        Sun, 10 Sep 2017 10:38:53 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id l74sm14067871pfi.9.2017.09.10.10.38.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:38:53 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 08/10] staging: rtl8723bs: Remove unnecessary space
Date: Sun, 10 Sep 2017 23:06:49 +0530
Message-Id: <ef3ac0411d3053cb232629b43445907e39eeaee0.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

Remove space before ';', '++', ','

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 8e13fb3..7a2d088 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -253,7 +253,7 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
 	if (registry_par->channel > 14)
 		registry_par->channel = 1;
 
-	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
+	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense;
 	registry_par->vcs_type = (u8)rtw_vcs_type;
 	registry_par->rts_thresh = (u16)rtw_rts_thresh;
 	registry_par->frag_thresh = (u16)rtw_frag_thresh;
@@ -1240,7 +1240,7 @@ void rtw_dev_unload(struct adapter *padapter)
 				DBG_871X("stop cmdthd timeout\n");
 				break;
 			} else {
-				cnt ++;
+				cnt++;
 				DBG_871X("cmdthd is running(%d)\n", cnt);
 				msleep(10);
 			}
@@ -1907,7 +1907,7 @@ int rtw_resume_common(struct adapter *padapter)
 		pwrpriv->pno_in_resume = false;
 	#endif
 	}
-	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__ , ret,
+	DBG_871X_LEVEL(_drv_always_, "%s:%d in %d ms\n", __func__, ret,
 		jiffies_to_msecs(jiffies - start_time));
 
 	return ret;
-- 
1.9.1


