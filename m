X-GM-THRID: 6885049612383551488
X-Received: by 2002:a17:90a:1b45:: with SMTP id q63mr13771948pjq.21.1603050532545;
        Sun, 18 Oct 2020 12:48:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6a85:: with SMTP id n5ls3049379plk.9.gmail; Sun, 18
 Oct 2020 12:48:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzv85hn5X0JQWbLsFJJbQ5/XJ9V2FnihWP2qAeiLp/9srPQScuK5eI/spSjtiEpxlzvSJS7
X-Received: by 2002:a17:902:9f81:b029:d5:e706:3e73 with SMTP id g1-20020a1709029f81b02900d5e7063e73mr1825131plq.78.1603050530981;
        Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603050530; cv=none;
        d=google.com; s=arc-20160816;
        b=02kh7vS8J6v5YIAE6hnsIsM3kCXyjRu1mv9X6ONnEBYEKtngw0GsMXC3e6O/Umuia1
         uNyFm2B3yrYZ2AYTRpKUmopCQVbfTwJ0CEKDZKczEqQUuGwAxl6JGnY/aPrqvkKrH6cY
         TsRE9uxXvfbkuylkeOZfDFL7qipfmW+ml1sV087Esl9kWINUm4zw533FxGWkc0aJW/RG
         NLJqepY8qL9kh7NgCH4T4Bb3wXI4mtOrVWtlYoueKDV7v5sAqR/UP5fTIcXTss3lVi6m
         E+qbPzchN/C3A45IJPxVX2r8YEHSbay5M3B0FoxgemZ2Jdix3FE9V4xCX33lLhMqOaC5
         PoqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=KVokCa1jQc0NKaYn5u6NnepNorEN9zYqxTNtARgDiTU=;
        b=0TGn9kLZLnf/lQPY+EUHahPbaTn9175aT+fRcBslr5Cc+kRK/rvZWdbcGvdL4b8/Yb
         mLOxk7djgMPqQVbWEwBfa8+pm/qZEpZiBydlNnF+2jz+HpNgj6b6qfLRaTYm/mYsROPw
         eqU7srftf4r32P4lRBSM7MpwV+ZxcLF+YYszuSkvFJtZp2iWLSk22jcLUdTR8BZtONqg
         EpSY+9c96iOD9oL4aTtTQM/oiP/RaCIbnBLqEZLTddXJxaJ4kz66C8vxmV4CHZ+9Q6Rt
         6CobU3crPQNAMtNMyfdIX9CYzgcR5etcEKHXYsY6lnGMl+TC8/s/xf3eKD3NaOFXw8il
         tEBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBg3OTib;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id cq16si598408pjb.2.2020.10.18.12.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBg3OTib;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id j8so4374155pjy.5
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=KVokCa1jQc0NKaYn5u6NnepNorEN9zYqxTNtARgDiTU=;
        b=QBg3OTib9A4b13+lT32wEyMXcPPRx4saCS+IbaCu2uzjuOxPnnnS2QeIijUPZ5SbDu
         VKgpLaujm2Ffse+v2i6t+N9qrWD+GB/ARjXLLUdfaTdrN1XWVRp5z2e3x99t7O1+/Zxn
         mGn1RDQ4G4DOKBT2Kf/V6x9Pa/BW/68aTbDRNEgfZHdr+HPvw2Vg5ADA5gCG3EavKxdF
         nd5FUAsNe/7xFWT+ER55fGmvnznCWH5blxe2VRghVupGJTvgGfXt/oprYicd9zI+xjih
         shah4NuOujroOhO79oLM4Vk8533npQraZwuF3dp6E/NfJ4WoOLYYsE6Alhip4sqD/SDi
         fc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=KVokCa1jQc0NKaYn5u6NnepNorEN9zYqxTNtARgDiTU=;
        b=lxakXjcmX5J4sSzfoMK64uGbvZNciZ9VEhehkyjX3yjHl3Ec1njslBbk93b528iy6a
         EERlybV8eLeDYP9Ob6NCAgFzLQaB/Bro++EgQwDDiNiSVdMDBRbZdNkZcIE/oQz3Tg5M
         ukYRAjombMrIeBxeBrxISLg4GwYw6ujpcnwsHeorPOyz/WlbSFSz7r9ebF5TrzNRddVB
         YyTro3rtTV7/eqPUXnkMqfgc4YVMQMyDK5baGACj7r8C6iWfmkMnhbWBJywgwSS1GvaG
         lgI/sLjddl8B5hTREJ1GQ6Zfm19T3nZmr1pPY8ncYuTGit/eNiAsTgd0fAD50d3mJvS1
         wRVA==
X-Gm-Message-State: AOAM532klLWP2B+7kd1TjvQm3kzgV1KJBId+HKpBcCmJrxsZAoTNVyVL
	TPSr2MARkLMI9ApxGLybd1pjbmhryXwukQ==
X-Received: by 2002:a17:902:23:b029:d5:b88a:c782 with SMTP id 32-20020a1709020023b02900d5b88ac782mr13984226pla.5.1603050530568;
        Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id y11sm1086865pfn.184.2020.10.18.12.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:48:50 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:18:45 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
Message-ID: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Boolean comparison of the condition inside unittest function is
unnecessary and can be simplified by directly using the condition
outcome for evaluation. Issue reported by :
scripts/coccinelle/misc/boolinit.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index eaefaf596a37..7db83cf5e4aa 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(route_register_is_valid(4, O(4), T) == false,
+	unittest(!route_register_is_valid(4, O(4), T),
 		 "check for bad source 4-->4\n");
-	unittest(route_register_is_valid(0, O(1), T) == true,
+	unittest(!route_register_is_valid(0, O(1), T),
 		 "find first source\n");
-	unittest(route_register_is_valid(4, O(6), T) == true,
+	unittest(!route_register_is_valid(4, O(6), T),
 		 "find middle source\n");
-	unittest(route_register_is_valid(9, O(8), T) == true,
+	unittest(!route_register_is_valid(9, O(8), T),
 		 "find last source");
 }
 
-- 
2.25.1


