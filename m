X-GM-THRID: 6947067005002317824
X-Received: by 2002:ab0:3445:: with SMTP id a5mr6805104uaq.6.1617490082930;
        Sat, 03 Apr 2021 15:48:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7742:: with SMTP id s63ls1502066vsc.9.gmail; Sat, 03 Apr
 2021 15:48:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKIJ88eDi2c0BKYL/UCS573+CFXJYIE1JQ7fVQMcjDiLjltlO6Ljryof9uMDuSMkdounDs
X-Received: by 2002:a05:6102:2e5:: with SMTP id j5mr11301441vsj.38.1617490081987;
        Sat, 03 Apr 2021 15:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617490081; cv=none;
        d=google.com; s=arc-20160816;
        b=r5wlDIm5Sp/tJKjjCY5HK1jvUt13Co+i9GvQUr2DSAdIHjzEqQR5qnSmZ2REWBJR0l
         IAPC3dvnKkDxLHtlsEUp5oCNvQRq+0cigk45VzrEwhxtCZ7Hu4i4V6z3IIzn9ZYAb42t
         9gci4qZe20FZa0zdPxkQKXc0AggD8R2P6XykeNmztX5PbIKmJzteyPzB1gPibr2POh2n
         MLvoHpbce1xVeDdb3hnYlyqZZtEi+Y26NuqGq2a9u6+qS6/xiLT29dOKXE1c0ISMwEEi
         in0ZyMVnKPTq8EHXrPWFDt6v0UM1JR4EbgjuY3ydV326Y/+06UacfRXH5DbU21JeVzYS
         Eyuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eQbPmNKd6q5cxqNb392vci+n3O0DxCpP0TsR6lsd/sk=;
        b=gQMYcuYZgUpqtIAUUGyvXzBccTbUfCC+xE61xSHH7yFT2WTzbYWsXl+2mjuZ/K8KXO
         4nw64TPZLrCG+dHP566hnUndJB+So4SrjOqSljRwLK0MsVm5bgjiyjNLT3ckVYW4HbXE
         /TXGGTWl3ryxN9lmdDU7sg8jTd9OGKqDbl+S0mpDmwxFVqk+ZvzqaDnGCUyY4+EJcbl9
         oKOVWGCqndeonv1FRAbWIvWEZYHD+MuLGQx9aGHLAZMLPJWb19cL1TTBUOeuqytf9dQ8
         2MOLz+sWsmaLMdW0/HvFQ9Nq+b/6ztPUqCy3o8TgRLA2aoSChQiSWCvvoJ2OxgbE6y+i
         Hgjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYpvcSH1;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id r17si717403vsf.2.2021.04.03.15.48.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 15:48:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OYpvcSH1;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso4121186pjb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 15:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eQbPmNKd6q5cxqNb392vci+n3O0DxCpP0TsR6lsd/sk=;
        b=OYpvcSH1s7ZZJJ9eOhyf9KT6eNy2WRAjx3+1TjP3yrZ2B09h5QWtkPg/25Nt9dhCyY
         D5U7Ei74aAkuThc5n4u3gIcIhOylM0Li13LtDF2SlKjgMkyuiPThHlYwV5DXFpUgpUDO
         sdSZyYwPb6Y7wJa0mCnR4uPiAXZ5xHM5pioOTqSpCgh3+AGPPsUN0GPSMCisi5KKPqGO
         SJ0eZJeHFiKLYny2x8kqisvmibAns9ki4C8Lu/yZUOgiWk/avpeUDZyx33kQlTo+7wIX
         KxJKBH8BM+ILHQUMtfi5GCUYGSkv3gzl+/JAag/c1bpvnK//MuCTq1G9nc6A5F4wwtrP
         HbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eQbPmNKd6q5cxqNb392vci+n3O0DxCpP0TsR6lsd/sk=;
        b=rxODgXiZHjmz9ojRjzSK8lJveNn70ej+R1WxzdedCXfm9ag1DyL4Bz4NUqOq6HGlaA
         boYV3/RH+aQUFBFKtOkB3xgleZxP+tKkILix7Tl6wYJ49MYssjxmKfcis6hMHlUHIY+R
         EimVvv8U5TKzshAcuQZ1Ck3eBksLji3iobpe3obwQJdYKQdvcXCHj4YzyuRH+KXfqHRd
         6nbhPLXxf2xF5n5qno4XqcIrLnd6auO8HGxwLnTchK0wennyQVvCgoy3Wwh2XsUnDc9g
         4YrFUF26xfDkY2zNf/GdiFAtJ8koLb9fSeRktz8YXaq0AkEmtvW7+alK5hkbnfI4fEZw
         kfEQ==
X-Gm-Message-State: AOAM532zyNRRZvlHQUKX0Jxt2ZzFxCbvlW7OVAy7GNgUUXQiZJmKdDHe
	/z0UsBFoHmrUiZ7hHHu9+BU=
X-Received: by 2002:a17:903:2284:b029:e7:1490:9c60 with SMTP id b4-20020a1709032284b02900e714909c60mr18300487plh.62.1617490081197;
        Sat, 03 Apr 2021 15:48:01 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id mr5sm11703665pjb.53.2021.04.03.15.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 15:48:00 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	straube.linux@gmail.com,
	insafonov@gmail.com,
	rahul.blr97@gmail.com,
	anant.thazhemadam@gmail.com,
	suryashankardas.2002@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH] staging: rtl8188eu: core: replace spaces with a tab
Date: Sat,  3 Apr 2021 15:47:38 -0700
Message-Id: <20210403224738.28957-1-deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

To conform to Linux kernel coding style, a tab replaces the two spaces
that were previously used to indent brackets.  Identified by the
checkpatch warning: WARNING: please, no spaces at the start of a line.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index da26a3c705f8..617f89842c81 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -425,9 +425,9 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0x2DB6, 0x3C22, 0x1592, 0xC920, 0x8749, 0xAAFF, 0x5078, 0xA57A,
 	0x038F, 0x59F8, 0x0980, 0x1A17, 0x65DA, 0xD731, 0x84C6, 0xD0B8,
 	0x82C3, 0x29B0, 0x5A77, 0x1E11, 0x7BCB, 0xA8FC, 0x6DD6, 0x2C3A,
-  },
+	},
 
-  {  /* second half of table is unsigned char-reversed version of first! */
+	{  /* second half of table is unsigned char-reversed version of first! */
 	0xA5C6, 0x84F8, 0x99EE, 0x8DF6, 0x0DFF, 0xBDD6, 0xB1DE, 0x5491,
 	0x5060, 0x0302, 0xA9CE, 0x7D56, 0x19E7, 0x62B5, 0xE64D, 0x9AEC,
 	0x458F, 0x9D1F, 0x4089, 0x87FA, 0x15EF, 0xEBB2, 0xC98E, 0x0BFB,
@@ -460,7 +460,7 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
 	0xB62D, 0x223C, 0x9215, 0x20C9, 0x4987, 0xFFAA, 0x7850, 0x7AA5,
 	0x8F03, 0xF859, 0x8009, 0x171A, 0xDA65, 0x31D7, 0xC684, 0xB8D0,
 	0xC382, 0xB029, 0x775A, 0x111E, 0xCB7B, 0xFCA8, 0xD66D, 0x3A2C,
-  }
+	}
 };
 
 /**
-- 
2.17.1


