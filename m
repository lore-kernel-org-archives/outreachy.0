X-GM-THRID: 6946316684199198720
X-Received: by 2002:a65:5b06:: with SMTP id y6mr9271726pgq.58.1617315392999;
        Thu, 01 Apr 2021 15:16:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls1574532pgw.1.gmail; Thu, 01 Apr
 2021 15:16:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyX3FdLuMVKP7rkmIsp2zgaRiAjmPpM+Wt8U7Blltmz20Y9FggBlU/vNeZPirUVjkmsRzi2
X-Received: by 2002:a65:5ace:: with SMTP id d14mr9285486pgt.249.1617315391767;
        Thu, 01 Apr 2021 15:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315391; cv=none;
        d=google.com; s=arc-20160816;
        b=OYjoPlRC40q9yXhPS4WorL4+5++hbnNsuRTSU72efSNCyoNDR0JrFMpao0pPDHWlzg
         Gl0/YvE+5uempGZMAPMLur4BW+XxvubSM4hW3RKvqwfVbOEW4d8NlgMGLnBfnuIHqTMr
         e/v8wB9KUgV0zLcKB+3AMjDmBe3tUOYMwY5mx4zNFeSF3FjnARunk5Qs/umVxcLaCpgx
         XI/6ueKNDMQvgceIyOGA0onDX7CZzDAbbKvu6C6VwmBKj/6BHEEfKksuzyDXz0lIrEXi
         R25dzutv1MMORNoZ9tJIyOTbvemy7vUzyaimohPBv8Nsg4YyPV5m/Yj6PhykQIAFnCWh
         aa+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=y67WIBj6mBIl1Wp751rFrF2l12F5d/MqUqEWEaYV53g=;
        b=Y94aKHkek+C4nEJI5Jn95WXT+nci+HaeclZzVn8pVYpWgMb53Nn4i84jQw3M5DSliu
         6RRBtwzR5KEJFUEGTkLMMaMP+Tn612mQ1v5fajlYnlLTH059G24DudP2QOMotb2v17CK
         kMG7prpNjTHaxKauswDqOMlG+ZIxI67yBkqjeDPcFX12R8MmfHTJvgYKSwddCd1s5D4w
         f3cgMn11TkJ7RBVb+1gZfBmggNudArgbl4+COZpaoxJUffh4/jbxNMeozhhwLYAb/iTY
         PohQBJBI4o4zcUsKkg0C3Ow8piMPwaySvMPsUtsDgVbx+yAa49W0G5RyyrUGBccC9fcE
         /t9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fx4VPA8o;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m9si562848pgr.3.2021.04.01.15.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fx4VPA8o;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id x26so2463588pfn.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 15:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=y67WIBj6mBIl1Wp751rFrF2l12F5d/MqUqEWEaYV53g=;
        b=fx4VPA8okP1oGSngsHs6mosUQnkJAtCA714LP1AnHVisvlJU8j9EPH/uLeUyyUf6nm
         IDednCvGELB9CILV3BLreT7bkDSWjFVQDLDwOMooydNk4buy+7SHNFDu82K+8gdWCjeK
         deKseZF5AEhl+6K/LBB9TWtQ4VaPneXHqxTaEQiwig8pohu3jQ6rqeztqd99rLDEVHKv
         vDmwn22KLVtcg40L/ufqBGNDF/0InCi+IVWlbbt+Y2mE0IBj/iWZ0JyZZFx6E4osSjWf
         7n69PGzjlHtVcSRjR8LXFGJYNm5Dsw7YQDb2g+TGAyNqwBNc/S9XGaUDsAK1qZwnT/TI
         bItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=y67WIBj6mBIl1Wp751rFrF2l12F5d/MqUqEWEaYV53g=;
        b=puhgvyFDjbsVkZCKwv0AQsTDvalCANO6i2v7XbJgxDNNhiifvFkvOzpNFmhZEHUPU+
         dltMeH9ghpW0VGkTTNF5wvLZ2UsBMGYJeTUdv0BqoJzzkNh49v0JgpMHfod8aysmQCgU
         HmrCKiTF++lxXW/1XCp7fBXu7MQ2/ipwkWQAc8KABSKm3KHMSWqiZgtgMNLfqezBq0YQ
         kk7OVdB1xqm0vlGj7GnIhgEKMggpkAoQ3QSFsOVBDB2Bh1bpqXiMn844sz/7gm4AZWJ9
         3KwmonPHzUTRUNZg5uYosHxKY8XTglajEhUMV+UX5vMhvBI3r8W7OUSSGVM82l3hEWkM
         WhTg==
X-Gm-Message-State: AOAM530s+4fR2NovSUKEDinN354hidyYEKv8ROwrybxiJvfrzJ1Sgp0s
	Z+rAoQ/7zYpxCAVvDZtFmwc=
X-Received: by 2002:a62:cd4d:0:b029:216:8c86:bf5c with SMTP id o74-20020a62cd4d0000b02902168c86bf5cmr9173867pfg.27.1617315391559;
        Thu, 01 Apr 2021 15:16:31 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d13sm6671494pgb.6.2021.04.01.15.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:16:31 -0700 (PDT)
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
Subject: [PATCH v3 3/3] staging: rtl8723bs: core: remove empty comment
Date: Thu,  1 Apr 2021 15:15:42 -0700
Message-Id: <afe3c8846c555e1852ae1a760b73a19daaf1dc82.1617314121.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>

Remove empty comment because it provides no information.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 428c71ce0334..7b4c0f22cd90 100644
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


