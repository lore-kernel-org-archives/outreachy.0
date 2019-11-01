X-GM-THRID: 6749323707377778688
X-Received: by 2002:a9d:3e1d:: with SMTP id a29mr2871429otd.277.1572642184069;
        Fri, 01 Nov 2019 14:03:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f0b:: with SMTP id d11ls1534920otl.0.gmail; Fri, 01 Nov
 2019 14:03:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrubvhaDTwfXfRZVzJF8y+aPEQOaMXTyU1EZnWyZ5KZM2bYw65YWW2A4zu4WkQhrZpqdyW
X-Received: by 2002:a9d:6c46:: with SMTP id g6mr6582147otq.203.1572642182766;
        Fri, 01 Nov 2019 14:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572642182; cv=none;
        d=google.com; s=arc-20160816;
        b=qgkMWItmDVu2V6QSnmFzaS01xFWQS+1wsvRVAtxASQY1Suimoo4qXdivgxPHC1b0f/
         IloENVwhi6qDFd1sbngNl6CLb2SML+ous/J316QeezBmI2bvEq4Q43HbhwSgN3tBgPj9
         1DX+EE3Pf7slnPYkG7F5zqc4Em0XdaDwXqZx7nA4i8AvH2M/WUsCONxXjenl26cAM8Ei
         qhbUNXkA2iBh8QKXJMoWiQvmVHNrPyH+O39+o1XsNqW8AIqREOwjMs+Z5z3LqUKuxQHc
         ah9Tutv962a+1u8rMj+ubG21fCFVMlucGWiWqChxC7Y7g2ouUh6zDKGYVMQW5X0FGiXj
         qIQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mW76cIgGpFe9VFBYe4+a+YlxP+dlTnMtxoeconxlX+c=;
        b=lKHgLTRS7fE3ZKNmY9RbUO6ZprchHNMZMKvuSjfdSKc0Ub/rree6lf6ziG07gsqOyT
         66YuZPUwUO94ngjeQkjkHLXC9jSkxxmgwwPYvO2jBpMp/vzadboUitGEwhzlwmNLDmSb
         7ShhLgV62RuesyBN37AXjdCt5k/c+Z1z088oWlMP8U70f8OqoTR3ZcITj8r/7Mctp/NC
         uDHeII3w37XE0XKVJrB2zGduJ15KkZcW5y5IgNcsy3aXir0PWMK3U88uNK/BOwKuP2pT
         rTmtYT3tkPnxaGC8tWNn3AxTQMtQSIz0paQ5CT7vJQUGdvh1ZP2p0IYG98HeC0lJTniT
         TenQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XyTAF2aZ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j190si114807oib.0.2019.11.01.14.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XyTAF2aZ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id e4so7223448pgs.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=mW76cIgGpFe9VFBYe4+a+YlxP+dlTnMtxoeconxlX+c=;
        b=XyTAF2aZiH74UY2WNYO2z8rofYBtK68YjEmPSfHQu+VbjrLQAbBfAj+Bzi8SkLDCcg
         PAVd/p1tYOSjEwYgrP73UMv5Wb4ImFe+fkMqr9p4keKBq/x5qVDAI0kNUGwPNV62LVHc
         uMSXJT1uDohFIKzhbRnFb+Dg9T0Wf7j5wjgX3EA0aIkC+e2fRaCCy60ZHvcTeajoLIgY
         iRo1aYIR4OzJl+jnRpqihfcJ2uiB+JniEFq6n3cE40cMSXHFPNfjN8v5AOOfMRNLrLLG
         yYIo7Ti1Niq+ol1Ggdtmmo3rDKO6we4KDh4h08EntV2FGPgglRTOR4fcuzqlEq5xbzXy
         SNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=mW76cIgGpFe9VFBYe4+a+YlxP+dlTnMtxoeconxlX+c=;
        b=oDwDD3skjS129H83PpC2+JcuFPzx1aO7MiLVEzvHY3JABM8WplUuPRiTgoSFzcyyZm
         9KIAKBYZ3ZxqUvzRMtFQ4/u3d4UIJ2SWA1czi3iFqWWs51s+oCEpJTstZQpnMjX5sN7C
         O9FoTBMfC7eL6N5mu8tIUF9AyrHdv6FSYZYOYIr7BTPdc31jaziobqY4xHojAzVSUQIw
         ncekkKLLDmdfSC/06Sus3V0OmdQz+VhzqlX0KP8IAgOyAS1M8rGN9y8qNGS+qnv6QI/t
         fAWshSq27z+IQM7xOiB3oszx6CnCUC9p5JznTr8il0OF02VR4jcxhrFBVtRBMuFqeCCI
         vOKw==
X-Gm-Message-State: APjAAAVJ+mPr44pz0jiT7IyiFEtDhPPSdE0jh3bDmXTwzDFCFS06Uklz
	LsdAqrfdJKDNX5HydrWDHyA=
X-Received: by 2002:a17:90a:3807:: with SMTP id w7mr2230888pjb.33.1572642182070;
        Fri, 01 Nov 2019 14:03:02 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id z25sm7284218pfa.88.2019.11.01.14.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:03:01 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:02:58 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v4 2/2] staging: rtl8723bs: Simplify boolean expression
Message-ID: <9799bed4370f8cc1bd6a1735721fcd91fac30e09.1572640293.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1572640293.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572640293.git.jarias.linux@gmail.com>

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V4:
	- No changes.
Changes in V3:
	- No changes.
Changes in V2:
        - Remove unnecessary parentheses.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index a94462a48692..650fbedd34e8 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -189,7 +189,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
 		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED,
-				  ((bBtDisabled == true)?false:true));
+				  !bBtDisabled);
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


