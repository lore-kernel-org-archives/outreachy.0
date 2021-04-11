X-GM-THRID: 6949988784020652032
X-Received: by 2002:a17:902:b483:b029:e9:eef4:4f16 with SMTP id y3-20020a170902b483b02900e9eef44f16mr12964158plr.38.1618170394591;
        Sun, 11 Apr 2021 12:46:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b50f:: with SMTP id y15ls6093160pge.2.gmail; Sun, 11 Apr
 2021 12:46:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyTTPDHJuVJ/QgMQjzrbEGWJhFW/bSBf8RNXl04a5eHkPaYjlQPspBXQMzwFUbM/r25wfQ
X-Received: by 2002:a63:c741:: with SMTP id v1mr22956698pgg.207.1618170393494;
        Sun, 11 Apr 2021 12:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618170393; cv=none;
        d=google.com; s=arc-20160816;
        b=RxVPtIlQRuOBJCBaleVZsdmPVp3sbr26BC0zB0S5o6q3a1P6Vz9oijgHEVRXacbviS
         JCNPhRmfuyDgsQ5Ut/5/2TdfDG8CvKE46HWHKMluUg80oP1F5ObgyNmHaVnVYZETmWyv
         EK/X3hVmdxKztEyvCzEbxJBCfAZqu8QcUnndvQt50bdV6o+yRm+rvXiGwR1eU1KXudwS
         KmGWbn12EJWQYEp/MRLN5LFLTLtOIAPpnYubwVQkLAtus0xBNh36jEXAdjulY/CG0Y2U
         2lopXtG+W7/D8fc3u7n88kQDcs8gHJS3/YjtAl5iI+IS7Afj56h5UHLPhwL6WSp7cQEt
         gARg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y76UezwuzE5PH7sUsaJ2E75phUC3veEDBvOshQ8tLXg=;
        b=lxXMPC6lXzUYLkADaUIAWyzT8X0SJ96SVybqw8qW7b/HZJzX9AwcXsSXCsHMhSMQb8
         zrswt8VT0fSHIwQomfDF8b0JqzehEkvYgjnJHhXsB9730Tf5SR/NqNVlSReb4vDr6TEU
         WU8uOH6CCs5LldkYEIn/yRP91NvY9MYaqdAts+7guXWKwTN6MKJjTiGDwV+XC0NIQ4Sy
         unnLpUe9rRL3bXL0+EXBpN/tlykwyezFA/ae0YvvoiDaym2RW2oDcCQA/T2ZjKySWY/d
         rFYsZmWkUXfAQC/QbcisqNMpzdO7uSfMKpdZWu+9TFxM/hls0t85IzdFwcFT8TA4uQkz
         iUwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qf1AFR25;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id ci2si623882pjb.2.2021.04.11.12.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 12:46:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qf1AFR25;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id p67so2835409pfp.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 12:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Y76UezwuzE5PH7sUsaJ2E75phUC3veEDBvOshQ8tLXg=;
        b=qf1AFR25jfZ/Nm4XPKUySYL+6Bsrfxo8ELzrMRjh8yblxSjozO8uyE3aJyYU+MreoQ
         Bova3vYiOcsN0/IHHsRIPdxbLE0HfWQ/7aZDRVNv8dWYOqoKGJ1/kuFnKAo5tVeIXBbT
         AMQ0MsFjhZQ/UGlOV8Lp70fp8K9Ju6vtSlP+5wPDRSf/kVpxubwSlJF9zf244wt0cUZ8
         hfyNb4jIQDylML2eURp1i636SUjtSfanDcmA6sbJztJDmTis6OXAfV+WU4qlN+QJHmkK
         A96gw/hZmEEpDB6+q0BJsUUwILahItxzcmNcXGVAl+dBC0cQOsYJyuI1RWuhq7ExHAzb
         F/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Y76UezwuzE5PH7sUsaJ2E75phUC3veEDBvOshQ8tLXg=;
        b=N57NkLlbX0CyCPzXCV0PzgZs3sNxI27oHqYBMOmtDXKN+TFZ0Re/HAwnmnquimHCWk
         F22pmQ8meeOmwZCrdgzlna3A/DkWK4KH8gVM7FiJE0bgyFlUdTQ0sfgtjelDbsUnTcdW
         aipUmSw0KlrqS6vKjMURv4EEDFfBzOLAXFuq9Ke/i5pyDeANTz1rFTc5PrRN6wRVnHYt
         sbq5+wS8O85w5ZwsfDrReO36OM+pCNdUn4687XuVoAJCvsxd8rGJp9Efk831AtH1EsZr
         +Cb1CPy2SMuHpsJTAPvYofRyUyhtNQmxuo8bIqjUJ9UoJqNZO6UYUF8f9RU3YQyTjd5C
         Zbgw==
X-Gm-Message-State: AOAM531sROkEjE+F+5LPw1E/ri+HEZHra1tdbPS2Hq6N80Fdp+xUxYJ5
	pJC0m8wDhi8RR5yclOtjm38=
X-Received: by 2002:a62:1d4a:0:b029:24c:325a:1456 with SMTP id d71-20020a621d4a0000b029024c325a1456mr2867691pfd.45.1618170393090;
        Sun, 11 Apr 2021 12:46:33 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id a25sm3382444pfo.27.2021.04.11.12.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 12:46:32 -0700 (PDT)
Date: Mon, 12 Apr 2021 01:16:25 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 2/2] staging: vc04_services: rectify spelling mistake
Message-ID: <967c328610909bc010b0bb82a1f89b71a57fa7a3.1618169920.git.mitaliborkar810@gmail.com>
References: <cover.1618169920.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618169920.git.mitaliborkar810@gmail.com>

Corrected the misspelled word.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/vc04_services/interface/TODO | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/TODO b/drivers/staging/vc04_services/interface/TODO
index adb28f46ba67..39810ce017cd 100644
--- a/drivers/staging/vc04_services/interface/TODO
+++ b/drivers/staging/vc04_services/interface/TODO
@@ -37,7 +37,7 @@ This should be fixed.
 
 Even the VPU firmware doesn't support a VCHI re-connect, the driver
 should properly handle a module unload. This also includes that all
-resouces must be freed (kthreads, debugfs entries, ...) and global
+resources must be freed (kthreads, debugfs entries, ...) and global
 variables avoided.
 
 5) Cleanup logging mechanism
-- 
2.30.2


