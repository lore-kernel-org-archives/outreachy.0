X-GM-THRID: 6945952502339600384
X-Received: by 2002:a0c:bf47:: with SMTP id b7mr5505448qvj.38.1617230622630;
        Wed, 31 Mar 2021 15:43:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls1034877qvn.6.gmail; Wed, 31 Mar
 2021 15:43:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwifGVLfElldcM4Pm5dWece3rpzA59sh2xERTHkvS+ThtS8ITh2Mo/uupqkTYdwSljo5BoM
X-Received: by 2002:ad4:510d:: with SMTP id g13mr5450040qvp.3.1617230621889;
        Wed, 31 Mar 2021 15:43:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617230621; cv=none;
        d=google.com; s=arc-20160816;
        b=wfk7dJnGWEiTb3uB9tjYJaUZ9XWt3OQxD4JLlt9176QgbdBjljZ/ErIEP/PwswDVTw
         ecdxp6A4shEvQCvSCdyK2FRnAmwrRJk2dvnDi+btx3kKJuaxlLElIcvJ7T2D8V+MTQ8R
         yKWxh0SuteMTdVUWHh6YHfhnn/XktcK7aRIPeUTlSE8ZNTlReyCSnHat1wr86mkdQdhj
         w7CxD+0CxYkrKqomXb3MUwsIhBdpX8w6OJrMzoSb+Wf5UaQo/t84Hs9N2RaG8UVwlNzw
         b/V2JxMVReilPUi5VPTWrf0ECjhpIsI0g5SkDyiQoucEktgwkQbEu4RWhk/gzqrRJhI1
         ElMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=FGiGH5+ml2VgPHsxZs7b2NPl4+G+lB9mceSj+p7XzF8=;
        b=aBNBdSv0Pn8ea0706x07jT87W7W7elogr/A/oZ2d9oWnItKS32/z0tNnnbse30r1zT
         e9qr6tFRfCK4agrL4a3whzZtNnbqVoi4PFf2ptHMaIzni/u8g+FtfB27iTlcTQZy2GZH
         XNhTyActH2s+2cSk5C/6jEhaOoAmdfSGEQ8Cc31/NfjTJuak6DCmbIlFPvbu1At4BDkA
         ek2D0tIeuYQeGee98o+tVFSZRNxgSjtzyFlJWNSPimrOL/MQmB4qS2NmYrR3SC7R1lWB
         LoxtfIgcCXXprFKrTwrQtzASyr4gCQAiK5L9nU6XMbrEgH/LqeFPY/V7zTQaU+Rjhjzq
         VFDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U26e19lw;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b201si281763qkg.6.2021.03.31.15.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 15:43:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U26e19lw;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l76so317747pga.6
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 15:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FGiGH5+ml2VgPHsxZs7b2NPl4+G+lB9mceSj+p7XzF8=;
        b=U26e19lwfmllaO35ttkmS5Q9GUoXvorxglHB11m/WKuLNdhFDwEtcfJzEY5n14zAix
         680wmmGXS3n5yDrhmR90ygfciS5Ntimh6D701yPq13FRDikCpUu3xUQ3/juATCLkj+hO
         NTujkaeoGtFZc91cOpZBzPHUVlzlYJ2vBD2RytvBtjVkWdqoTMiuOMk2J/E9ZXuFpIdH
         ImXVxydqcCoTqTL2l1jSHwFZfmYMxKnO53ecqZ3JCLabBVWJAJFZUQZdVdbQqQs234U1
         chK/EpN71lmh2ZB3pnLUdij4oYmtsRASbHG0g5a94Mj4S7Ns6DlnPwuzPmaGbjOZ6xXl
         Nf1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=FGiGH5+ml2VgPHsxZs7b2NPl4+G+lB9mceSj+p7XzF8=;
        b=jPEIe64Vx522D4FiZR6W4fcbQ5vVhiaf+YOUKd7Ps5Ylf6mviPg80+YO1Y2XffkEFj
         aTtsqpVQGpfL75lK0oh190Vj+h2OF+mFVCdpDgT3+u41Bcm4uUNduCQFG3moTIP+qY2C
         DKdH8zuYaAMNgwxP5YepnqHTMm32Df643K53kCUPbfFMYp3hDmVgaLXHXlOjbN26UsJZ
         +GlzVu2wbv7Vh/CgdvVFZFp6SGHNpQ7l5bCqWA0HjWu2sWU/dtLBMGXsjPw7zYfERumB
         vAA2GO3IvRWtxrNf7t6gkecJGUfahZf1zMdXWwcfzESLpfe36uWQF3iLwVYFzUAuFB1n
         +y7g==
X-Gm-Message-State: AOAM532GrRlM8OZIGvGCa57DOEZ7KEyTzIBg/q4ufOjcbKSZD8TRmTt7
	v4eUqjEfGqCR950C4y4a2s0=
X-Received: by 2002:a62:76c5:0:b029:1f2:e6af:e2ab with SMTP id r188-20020a6276c50000b02901f2e6afe2abmr5159679pfc.10.1617230621174;
        Wed, 31 Mar 2021 15:43:41 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id h19sm3338830pfc.172.2021.03.31.15.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 15:43:40 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH v2 3/3] staging: rtl8723bs: core: remove empty comment
Date: Wed, 31 Mar 2021 15:42:31 -0700
Message-Id: <2362c76457b94895f0b62b59889e80349bb69d8f.1617229359.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>

Remove empty comment because it provides no information.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index cb8d19e4dd3c..3fc4ea02bf15 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -876,8 +876,6 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					*(payload+curfragnum), *(payload+curfragnum+1), *(payload+curfragnum+2), *(payload+curfragnum+3),
 					*(payload+curfragnum+4), *(payload+curfragnum+5), *(payload+curfragnum+6), *(payload+curfragnum+7)));
 			}
-/*
-*/
 	}
 	return _SUCCESS;
 }
-- 
2.17.1


