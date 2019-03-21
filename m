X-GM-THRID: 6670749314487156736
X-Received: by 2002:a67:fac9:: with SMTP id g9mr935833vsq.22.1553154856585;
        Thu, 21 Mar 2019 00:54:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e3d1:: with SMTP id k17ls1062311vsm.0.gmail; Thu, 21 Mar
 2019 00:54:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxo6rMI9dkpwC+8h2OhBFDj6uHwBRdTWot6tudNAC5F6o+4lQfgjjkdyVkEbJe06v8zzZDB
X-Received: by 2002:a67:f948:: with SMTP id u8mr943803vsq.2.1553154855787;
        Thu, 21 Mar 2019 00:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553154855; cv=none;
        d=google.com; s=arc-20160816;
        b=yvCnw/isuTy4as1XOgOFFC/kgOnTck/PeFpOar9vNqZqam19HrNIc+V99Aw9wOdOjU
         9mDjlgM52e/aVHQ4HeaJ/OrDzzFfqtC9R5nw1URUzJYolP1OipdyS470hS510Gy7kAPf
         GEQ+zlj7+xjZMQpST5cNA6d9tuSKdw+2kYh4I6Rrw3QOVGDVuNWU86BsaZlo8re8tWFg
         giLRV/qHo+EEYiA1zuqUCA3UHGqc1E2wI6gD3MrgxGKqXTZaovBh4ty2wBZXeMwc3gHe
         p5nh6jJSCgY7QvCFTOPZli57O4AvP6bLcaw+AqXOesVXmS4o3ahXegybn8SCBjhEiYMd
         ll0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DAEyrX4BJH9JxDUheC4wN2jZazBMJ+QI74r7oEkUi6A=;
        b=KQdfHRlLMGzrw8wP8B7Bp6IVrpL+u1KKLNEIJlLJMe4PkKOCvybkeSqv9DHVB+bSJg
         /hjEyRAK8HOajyD+Ksi8HUIpoJ5A92M9IMnSBEu9fmUbxSp31WuAhJ+EHnbOsQ5bT5Fw
         gB06NU0fDYfAAhrBlSpDHIbvfUY324sK5f4CbQZho5VCcP18/fuOJusZHYRLkhu8ps/V
         xkiInFFcHaAKM9OixpA25WA9uyNcSW2LlGPZ7xVwNdKDA+TjSVoOmt9vfT5xNdTqf44O
         Wg+Cd39uIscfxhj7TLM1I3cHQgQR8B1xJjSj8M9imYXZG4qb2o6zfDVi8FlOIKRDrwxS
         Hfvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U3hFG0No;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e17si210552vke.0.2019.03.21.00.54.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U3hFG0No;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c207so3780502pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DAEyrX4BJH9JxDUheC4wN2jZazBMJ+QI74r7oEkUi6A=;
        b=U3hFG0Noz83hMVSrvbV2u+xXq7oFdzOagCvQu0+CCir6MZYYkVJbWgNnEVykGDMggv
         N5I/aOIx3SkwxtAB6ThFtHbgCS2YpueCOHcPAtM+G6BwooHD+2NYniYUwgQ7IfboZKFs
         J725GePPKbgkG7zx2dnkyIXLPkIhZZ/H/cO7/p4RjqH/rw63gQghOpWO974a2KVK72cu
         3UnnN07CBIF057uYbOkQ1jmNaiCoXPeGMBEbOQIbXGkh2DlmAvYcdvnHwZk0ZTemKo6F
         9pwsywEVJhIan9sZljB2RpX017wUzheKljJbyyYfAIIZiKiv1qqk2kBryldMPV8Y2h2/
         zelg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DAEyrX4BJH9JxDUheC4wN2jZazBMJ+QI74r7oEkUi6A=;
        b=oKa+65LprhJXQkRQ76ZRLAlua/t3mwC8/BgEf2USjmr5kYreHW0zh2tkgfgChC1QOd
         N3GgljNaBQ89mfqwrqNyDXmAqYDy9NVM478wVh+dNrMV40aCR7Ugc23Rkv4B9H5wmXYr
         vlQR8TFrAUc3V6AABcr7baAoRxrU0si+/t1kxV689FXw7XcpodA2AuZAiJ4NUZLukD2U
         +cLWHw1bnGoN8xHPVjo7tUHOiDicB605e7cO2G/tt1zG8fpj5bdrDI1itYBZ7VU6kGop
         QxeJFpxchrBE6fGzuf+TMwzm5Twue2UnP59nnwHMmGXn1cEl0ReDNPxrLDbfM5uAZaCI
         LYEw==
X-Gm-Message-State: APjAAAWtXVwOAI4w8sRudQFcyXjpCr4Aoczrj/c2EdaC5Fsq1kiR3lC8
	+5IhqkuQtPYubIWe1S5pPKCKm86+gy8=
X-Received: by 2002:a63:2045:: with SMTP id r5mr2078715pgm.394.1553154854910;
        Thu, 21 Mar 2019 00:54:14 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.183.81])
        by smtp.googlemail.com with ESMTPSA id z77sm8052618pfi.155.2019.03.21.00.54.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:54:13 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: rtw_mlme: Remove return variables.
Date: Thu, 21 Mar 2019 13:24:04 +0530
Message-Id: <20190321075404.8565-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

The last two lines in the function could
be compressed into one. Avoid usage of local variable.
Issue found with Coccinelle using ret.cocci.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 2b5aaa940957..9a4aad5ec365 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1632,8 +1632,7 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
-	res = rtw_enqueue_cmd(pcmdpriv, pcmd);
-	return res;
+	return rtw_enqueue_cmd(pcmdpriv, pcmd);
 
 err_free_parm:
 	kfree(psetkeyparm);
-- 
2.17.1


