X-GM-THRID: 6948753197090471936
X-Received: by 2002:ae9:f706:: with SMTP id s6mr8142736qkg.163.1617882679641;
        Thu, 08 Apr 2021 04:51:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:5189:: with SMTP id b9ls1538319qvp.7.gmail; Thu, 08 Apr
 2021 04:51:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRPhTD6FuUeBNeienyqRiHi+o97EaWN+bHYzYeEU2HviCZyDXBLzKoE0/JjVHSujAfWJJr
X-Received: by 2002:a05:6214:370:: with SMTP id t16mr8115033qvu.16.1617882678836;
        Thu, 08 Apr 2021 04:51:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617882678; cv=none;
        d=google.com; s=arc-20160816;
        b=wZ5mmU1KCu2HiWi/7w8Ek5B6pZ0j41Qg5M5XpweRD8qztppMVddXePsNV/T87hKlKh
         s62/8WSfJr2sGRVoAnJ8WtunRIr1hFx02ycsqhPEh8LwZYGdHvHfcGo8X1AaSnGV1uTj
         XdBN1iqRoFrNgWEZqJpDVisQfpvheYtF5NVAy3F7JWuyJr0HXd13jD6I2rNx8pXh8PrT
         tfvxsisD3nspPfHevON/G4oeM2PHLHW2pijrjTeyGa/rqohxy3cHGVPJ2etawPivC5ow
         bAiVxCykvp3JrbuudcxIT7eMgAzFsQNRm3kAvfHFSGUACYfrVo/8ORuGftMGELUtZAAC
         w1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=i9s9BkLvRdlumIZwdRHabgMYGpHTAnHPSYT3zj0wSJ4=;
        b=URVpnXCO0PK1x0XpQR1hMQBfmc/nBrSJL+AEpottYPMLnEN40MhbQ7JT3F4LrLL4ng
         28P137aLmP89G3EYucA1qSvDey81R+lzJA4JsCqS7dQCkbZOD+3DVN657rgqX2RRr56L
         TrKC5Gqr9/Zh/qGhV9MEKlPYKjwnNj1fASp6PXnNKHsibJCL033kjNcmUpeTeuLc28dO
         cC3n7yerH3/0O2I590p2bOjadVflj78TmxtKk4QJ8mxM+FPjhoGu6Z6hTvLYgVEM3e0r
         F+Z37LDkkcmXlFkuyYAku6o6lC7n0cunLnyArJRy6fVT3ZKfkZO1BO2rbQUeJ83Rzb0i
         M/8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rz7Wb35M;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id h28si1723294qkl.1.2021.04.08.04.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 04:51:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rz7Wb35M;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id a12so1618541pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 04:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=i9s9BkLvRdlumIZwdRHabgMYGpHTAnHPSYT3zj0wSJ4=;
        b=Rz7Wb35MSnfgOdBmx+0oOrmFk7TaMhak5y/1PKg7A63DQqMc7bao3B4L//s4n8ViUB
         My65OmynzFNM0EP1ctF+nOY97dx7RnG0yWcpVP2/PnP+qSVHsRW2PTCt+JpM50qjW96F
         e7X0Km1r3NN7MRrafpZ3sAFD0LNoyzhiagsdpP5ZSk5GYqczy8F1cCVHPDk3PCL/co7U
         YNXHyLekJyiH/HKKbxNpVdAzgUTzJ4cue9/jfofhYGit2btwMVKhIePRBe1x/DjGX6Ca
         rqAR/1lVp05cyQrOPRTHLmY4dgXxAmF/y7synx2PzBxX32pd3ebaQ/wf9q9ne0uHCowO
         Zxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=i9s9BkLvRdlumIZwdRHabgMYGpHTAnHPSYT3zj0wSJ4=;
        b=MyE+/5FmDp1Tze1vh8D2SGv9WsQY0Z3e9YmpuCj3Ws3sknQ7u5UB6DT7RgxMvcf2H5
         92anHuS1plmsyVml7wqPTJsIoPzdsudcKl5ogK4cti8ABvIWFzmpkpunz2xcJaWA7tBs
         sw1mIEU9lz0nqCNx2f3rU82Q8DkdydZzrfQb64Ca3hRHIKsfR98Kg9G7+OmbC+ptkHBR
         J0OeQEmvRJrvKj0jUJ2rHpp8rHNGEgonu0PGeZhhogVjwXKX7Ins1bjdP0u1/rS1eu4A
         dMPLt1P+j31rWf9MyJvJp2RZqfYL4BbjdaKDWA4y/xq+CsPhjNIIkFglITqpkKGXCz7Z
         WN0Q==
X-Gm-Message-State: AOAM530AqdAQDW2mN8PPwQaNZRHRTIQpt2NcPkx2QSbJ2AdNPC21CMzi
	0jmDpdQMhTq35urWAiuMvez8KM8qoG7vZpiJ
X-Received: by 2002:a63:d153:: with SMTP id c19mr7601140pgj.311.1617882678294;
        Thu, 08 Apr 2021 04:51:18 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.11.236])
        by smtp.gmail.com with ESMTPSA id c9sm22688550pfl.169.2021.04.08.04.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 04:51:17 -0700 (PDT)
Date: Thu, 8 Apr 2021 17:21:09 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2] staging: rtl8712: add spaces around '+'
Message-ID: <YG7uLQLGmAh97xB1@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Added spaces around '+' to improve readability and adhere to linux
kernel coding style.
Reported by checkpatch

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1: No changes in the code, but only to subject description
and patch body. 
Changed the subject decription according to PatchPhilosophy and made
patch body more clearer.

drivers/staging/rtl8712/wlan_bssdef.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/wlan_bssdef.h b/drivers/staging/rtl8712/wlan_bssdef.h
index b54ccaacc527..ec3749813728 100644
--- a/drivers/staging/rtl8712/wlan_bssdef.h
+++ b/drivers/staging/rtl8712/wlan_bssdef.h
@@ -176,7 +176,7 @@ struct NDIS_802_11_WEP {
 #define MIC_CHECK_TIME	60000000
 
 #ifndef Ndis802_11APMode
-#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
+#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
 #endif
 
 struct	wlan_network {
-- 
2.30.2


