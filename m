X-GM-THRID: 6749323707377778688
X-Received: by 2002:a05:6830:1d8e:: with SMTP id y14mr967099oti.130.1572144400446;
        Sat, 26 Oct 2019 19:46:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:f44c:: with SMTP id s73ls2737537oih.1.gmail; Sat, 26 Oct
 2019 19:46:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtNk3AZpm5Lca0pTtMHQFacXUJhm18QSuuMAmF1ysJ6O3h1xN63+XSxHERSqiMfALr8LS/
X-Received: by 2002:a05:6808:87:: with SMTP id s7mr9226006oic.47.1572144399432;
        Sat, 26 Oct 2019 19:46:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572144399; cv=none;
        d=google.com; s=arc-20160816;
        b=dDHR9uVf2ONF7TtUC4TZsQZOPcGqDUenQZ1308E5rRZ7Mt6+J2vrZxo1rAJUinn4Si
         PjHR9WfERZ2eMXbt7UOhLn9Dv2NMpkVrZMkKxzSRm89uUkHhQHBLIZRCd5LO3p06kwRV
         8mqmiHeAGxK2jcct2s1duzj0QlUkhQW0KgzoAYJYBXKfibX/FQqob9J/ZOOAAMmFf1qI
         n+fGx1zA5MSI1nE/+ecV0cZBkYTqV6XOfp+A56mEH0vfOjA7F/gUYO/zWh6+9gn34o8s
         ZLQQaf/spf8K0BxBemyn8YiItn5g+HXOmV+3y5FBPz9yJ7Q/55Pq7rmutbbW4/vpoqIz
         eR1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=q02rHt+MHULdshe5VsAmJAzoQaGYcRNto49riB7hYWPaNY2xAIkvBT3LTa938w9/7F
         LjANSxV+4AObx8oFvfs5cBcCpWV8WlcOssWzRK6sKWqT4dg/n0Sc/44iaOhCM+7qRtBz
         V/X3WM47oUNfwrruQ3zSPRNianVj+J0QlqXJ+ORHXeNqRdILOkMH/Zs6voRvxx1jtnOA
         pDUYxBVXmA6gX20kOWPQVbP4K/+3pPtwhq8BdysSnEHr204XNWzDhukaWZe9Vgh85/u4
         vYodQjcykgwQ3VXJCNOPHmV6ZF11u0ePiY0i/vlTn1HKXh9ShT2qIc6QHLClVwnHzezL
         Ycrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jTn7ZBzU;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id m23si306968oic.1.2019.10.26.19.46.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 19:46:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jTn7ZBzU;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id 71so5420029qkl.0
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 19:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=jTn7ZBzUuH5SvHah4vIfAoru87goIijOd5izpPkIZ4z6gS5e4D8+rKJX3pWr47fEw/
         fyX31uJrMO5cqjDPF/C6qat9l2HHikVWdUy7ZcQvQQECmdjCrOKnEqDLSUOlWxRxNc5h
         6aVNGCf3SuOf66f0Vs00VNAADVJbIVCTSpCp2y5Rgh1iZBPUUd7jOxXVp2lbLfRBbgdW
         mGh6eJ9C/D/GcPpieXRYK1u0+SHK7CBXOaE0g69oJGpC2BlY39nrAQq3jFwt0PLOPXLD
         Ddqo/cMl66aAV33h8Cm/qhMrydc6FPJNQiVj32Kz7Xs5Il2psKouOi79CeroiAXYAPMz
         kHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=NCIMsmUX5TaHm/zybeJV2XJv0gFVSuRLEFa2kT57yV4SONkC3Mkc+pu0UQ5nzmpECU
         32UmjYAA1abkhsZwK/tNadoiiFvlElwqdUESd3OC/n9O8H5kgmgaF/Y/ggPWuRJ5BW+E
         zwCDWCNT51Z1yI3GZjSydJ3QvGGyysJtknA4u82oARnsuXJo5lpS12ko7wsDIRhcswLk
         Vge4eGlvWqQ/891/X1mRhQ/jS1VHxtYkvBu13WVp7xxpK7xmVSTYBLsJGDX5PAPyiH86
         VMOnFJxj7dTFzM8n64ZfZRjJW4WwsuY3s7OpyIkLb8LPecsaLuE1Z/Re/dP0Z828RuD0
         IqwQ==
X-Gm-Message-State: APjAAAW9a4KImR0VzJqcVMNK6ATlATosbylFtfcIykurd0PQgSEsDf4j
	wKATLuGSvghAS5By8e3aIOwD6v7ztIZO2A==
X-Received: by 2002:a37:4146:: with SMTP id o67mr6954673qka.232.1572144399010;
        Sat, 26 Oct 2019 19:46:39 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([172.98.66.16])
        by smtp.gmail.com with ESMTPSA id 104sm3523691qtc.6.2019.10.26.19.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 19:46:38 -0700 (PDT)
Date: Sat, 26 Oct 2019 21:46:35 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v3 1/2] staging: rtl8723bs: Fix line over 80
 characters.
Message-ID: <6186e531d4cc59bed09329b2c9c4cac7352702bf.1572144163.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572144163.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572144163.git.jarias.linux@gmail.com>

Fix line over 80 characters by wrapping arguments in function call.
Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
        - Edit the commit message to use the Suggested-by tag.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..0c2f3b2d4326 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv,
+				  ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


