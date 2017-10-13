X-GM-THRID: 6476511892724514816
X-Received: by 10.237.37.82 with SMTP id w18mr2134254qtc.28.1507930432667;
        Fri, 13 Oct 2017 14:33:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.28.9 with SMTP id a9ls3798017qtk.1.gmail; Fri, 13 Oct 2017
 14:33:52 -0700 (PDT)
X-Received: by 10.55.74.3 with SMTP id x3mr2060811qka.58.1507930432220;
        Fri, 13 Oct 2017 14:33:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507930432; cv=none;
        d=google.com; s=arc-20160816;
        b=i+c4Gg5ZPX5hlko6U1l8vRq1d02BnjiZWYpjq4hEvbQlDFDKU2tgAC7DAONEiDKz2C
         nAYk2Ki8NXQwffvSKPNQVhpCp3/ysz5Rphg6GzQivhVKuL4uX84CMG8FU98tliSIhl4L
         sDCbx4fmxa+DXtlI36psICYM/d3f09LRf8Q03ui+YRgaLbzASRHRyYPltNlHncVGEmHt
         ch+WkfyvOxVtjj6Ihvkt2btTFLyh1wLKtYZezVhzJ5jTOGHKooAgRFNs9/a6anqNTA1t
         HA7A0gRVSLAIrDrl9iyIv5doHHcACadD/hKHSa8ra69dkvKHDR11EEI6dp3zon77UuLl
         xNCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9/NYXKH8YwJSQKKB3FtrfF03A0LUnKD5kciyGR50lPc=;
        b=s2bPwWB+aXg/owcoQ3trjkNjhSiy5I9qA37nEVSCHnZXdBEXPY1H8pgrLhy0Rg+CCP
         U9TDAgKeRLl5gF34RMPTekT7AOAis07FcFsUZGw3ngFjJIc6zfCrDn23MrZIsjOZYcbc
         b+lhDaGhkY2xdLxR6HEZkq/OoACcQARLDXts7Rm5D2uXHBD3oGr+RRSCdW8D/ySJ5UXC
         bXW/Pge3tdAFRPR4K/7q4YTBSe6HAHGNCveYV7YMTs9+u7qClSH8qT8ROZxJQEN6rfK0
         P4oomRhVMF0jRW5Le0QzXyzHjwZ+Cnh/xsXtum5vFlbiG6SGj1YkmN9N7kLLf/7bZd0u
         lzLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4nHLXZk;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f30si82292qtg.5.2017.10.13.14.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 14:33:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4nHLXZk;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b79so11343752pfk.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 14:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9/NYXKH8YwJSQKKB3FtrfF03A0LUnKD5kciyGR50lPc=;
        b=M4nHLXZkHO5VElMeSyP49uC1ujhVcYyOojA78AM6HiE919DzV070sCIM6AXcnaTeoM
         fI3sf2ebwUl9dRN7Pr52pXayfTpedmYiTFhASqX0J+GvWEUF/B2lTwehiPoyDYRZyL3K
         cHZLTM3DyBG7SWZwlkFz8ch8WmhUwjENN+GWZtCLGOrHeWxYeyvqb/sFm5B6P7ljEHZM
         ATTJKysSS1Brn4iP29U0tdNj0Xeka9iG8gl6wYdKtFm/dWko6U4/Dy5H3qWg1jTaNCUJ
         tDrz2ophwLOJJ4/2euddt7GOyyh6ce4HUDo4hcNswYuwahW9Xx1eG9PLq30uRdFY+kEX
         vl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9/NYXKH8YwJSQKKB3FtrfF03A0LUnKD5kciyGR50lPc=;
        b=DSGNIXiFJr8GRAQT17atrmgIv0IZwbwIkO/SaNfGgBpfeneX7G5B2S796oysNxVTG3
         2OQ5FA860aLPfMcU5/Kq+CBgtf73/Z3Wr9s61oQ7hRT7ik+PCBgOvmKHfa/kXxdA+XFV
         fJPI65NU+DPRMCDdT0nGaW3iCh1wsD+0TJ7wj4H3idcVD4NZU3076KJeEVDpTVNnI3he
         qqYL/tFpThCKzQQH6GQhIhfK7WBawaoifFS/D2g0l5pgNwJ8vTN4Ocyp/kbxR1TBFLKG
         n8LsteZwJhrYG+B1rb9iRezI47ixUzjlJKevRgcfuS4J5thtRsq2VtI52dnY61Aczy/4
         iL2g==
X-Gm-Message-State: AMCzsaWoyLfvn3EETTRMoRB6kVFbv04w7eU+kFp7T/TiCENBapqOdgBy
	btw29umqrmMYKotfG9wCuus=
X-Google-Smtp-Source: AOwi7QBPMpyjqJUR/IacpK15UMAVLsCR35PZcdqGVptWqohKHRpwMyKXUlSFYgFCuVIqwODp+6wh0g==
X-Received: by 10.84.198.164 with SMTP id p33mr2466327pld.89.1507930431416;
        Fri, 13 Oct 2017 14:33:51 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.79])
        by smtp.gmail.com with ESMTPSA id d27sm4375417pfb.121.2017.10.13.14.33.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Oct 2017 14:33:50 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH] Staging: speakup: Replace symbolic permissions with octal permissions
Date: Sat, 14 Oct 2017 03:03:45 +0530
Message-Id: <1507930425-5471-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

Resolve following checkpatch issue:
WARNING: Symbolic permissions 'S_IRUGO' are not preferred.
Consider using octal permissions '0444'.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/speakup/speakup_bns.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_bns.c b/drivers/staging/speakup/speakup_bns.c
index 60bcf0d..402b0fb 100644
--- a/drivers/staging/speakup/speakup_bns.c
+++ b/drivers/staging/speakup/speakup_bns.c
@@ -120,7 +120,7 @@ static struct spk_synth synth_bns = {
 };
 
 module_param_named(ser, synth_bns.ser, int, 0444);
-module_param_named(dev, synth_bns.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_bns.dev_name, charp, 0444);
 module_param_named(start, synth_bns.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


