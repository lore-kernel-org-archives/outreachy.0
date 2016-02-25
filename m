X-GM-THRID: 6255228217759629312
X-Received: by 10.66.102.8 with SMTP id fk8mr42177740pab.44.1456408949364;
        Thu, 25 Feb 2016 06:02:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.134 with SMTP id z6ls376085qgz.32.gmail; Thu, 25 Feb
 2016 06:02:28 -0800 (PST)
X-Received: by 10.140.201.75 with SMTP id w72mr14285555qha.1.1456408948773;
        Thu, 25 Feb 2016 06:02:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x242.google.com (mail-ig0-x242.google.com. [2607:f8b0:4001:c05::242])
        by gmr-mx.google.com with ESMTPS id c8si240906igv.2.2016.02.25.06.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:02:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) client-ip=2607:f8b0:4001:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::242 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x242.google.com with SMTP id hb3so1089829igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mJekFkpf/BSKrm1ZzFqvG4I8koTMtsQl4s+1Si0Tch4=;
        b=HV78G9XDZFniE/R+oDcEQtp73EC3UouAgtGG8mhUKf0sh1pf5i9uNKYpXzRj3uSMXZ
         kspQZXz6ivct8dK7qF9huBFq+gXRJuOkZ6BD9CYUix3Ve0Bs2LriWEhkNT+DY6ADZ2Zb
         v1cP9MrP0Y1eQsRupyaLftBMUm6q6874EJi6D930cscsTQmmhHbxnLpSWNPQY4xXN+nA
         lEKMmETFKEc9JRoJvbyPkx909AdkkcOn3xyTCmMg9JP+qcbKPXcrmKxfU0klUtU4G95m
         NTut/h81frJC0AK/d7oBQ1MtBHt3kmOA81In5sr9x4gJdqwmDaiI7ADGU7Vy4gF7HSou
         246w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mJekFkpf/BSKrm1ZzFqvG4I8koTMtsQl4s+1Si0Tch4=;
        b=kT6ocLOhbc4OEKyx0VRpBtXJpNo5vNFP7aaIz2TyCPBBfXNldrnv17WrA7Z/vihQ4u
         W7MYJp9ASvUsc/hx5ZuG46yc9kV/pWUKfTsWARx1WAc/0VH5RfRudcmUQGpBiA4hnAk8
         oc0q7qybaV/4GrPnsa3jR1zWvuaqi0RBO1sskqcicRCYkcUCtMM7QXETTYh8epVQ/OPn
         yB8Yd7bA/+knSHWIoEJiGMVTR7Q0+YJViUbfTFjVaJp9i3qj2ao+QjZyfO+phrE28nTF
         fL9LI+5/Uua1GS1E04yQ2ZAHxnQy05YnDt8dT05hFJ1aOBZKzuMoblcJtSwLa59Iyxei
         nPeA==
X-Gm-Message-State: AG10YOS+wYu6Dt8S1vIWgnsGzDRU7Q/NTlghTz6i+9IPkDkyN8Qw6Edwdq8MEQWSLcbfwA==
X-Received: by 10.50.78.200 with SMTP id d8mr3013936igx.61.1456408948529;
        Thu, 25 Feb 2016 06:02:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id s38sm3275404ioe.33.2016.02.25.06.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:02:28 -0800 (PST)
Date: Thu, 25 Feb 2016 14:01:40 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8723au: core: Drop unneeded pointer cast
Message-ID: <8a7ae3776012cf0e62b3190a59366926a1f24d9c.1456426552.git.janani.rvchndrn@gmail.com>
References: <cover.1456426552.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456426552.git.janani.rvchndrn@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers don't need to be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
| 
  ((T *)x)->f
| 
- (T *)
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_security.c b/drivers/staging/rtl8723au/core/rtw_security.c
index 038b57b..9d2a013 100644
--- a/drivers/staging/rtl8723au/core/rtw_security.c
+++ b/drivers/staging/rtl8723au/core/rtw_security.c
@@ -1619,7 +1619,7 @@ exit:
 
 void rtw_use_tkipkey_handler23a(void *FunctionContext)
 {
-	struct rtw_adapter *padapter = (struct rtw_adapter *)FunctionContext;
+	struct rtw_adapter *padapter = FunctionContext;
 
 	RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 		 "^^^%s ^^^\n", __func__);
-- 
2.5.0


