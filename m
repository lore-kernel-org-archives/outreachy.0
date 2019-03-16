X-GM-THRID: 6669000631583244288
X-Received: by 2002:a63:2584:: with SMTP id l126mr3028751pgl.139.1552747709527;
        Sat, 16 Mar 2019 07:48:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8d4b:: with SMTP id s11ls1650535pfe.8.gmail; Sat, 16 Mar
 2019 07:48:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweX/P66IN6EzuqFYKgb3cPSXbJO6hVYUsrwqWb4LHNjyUFcclDQzj74T8CyrLqViLk2cf6
X-Received: by 2002:a62:e90b:: with SMTP id j11mr3513214pfh.21.1552747708650;
        Sat, 16 Mar 2019 07:48:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552747708; cv=none;
        d=google.com; s=arc-20160816;
        b=ncHfCTPbmE/iyPy97wMiMW0mFakyTg8XyBUhZGKuZCELJzW1aqfyGr8NKheiTqFq2d
         qI+0vG7LAXp+v0qfLj42qHg8k5H8yY2FjieR91OyaTAfe2csHnYeU4V3WoMjkXebhbCL
         SHjql4mOYKyYaYJxGuYN//2yWlpqgHp0PKkIQjL5B4Cg3rRMaM6+i157N+vu60b48Zle
         caw/cmsugCla8ExW090UReUJKcM5aWfJmEfdmMbvErv6yCjPDP8SA2+vQugeu0TFgoQs
         xuXCTcMuR9O9tv+W3m8adDXGql+FbJ+H7/1xWrdHOezXtBmpOG5Jvbg0Ytxps3abc3uS
         7IQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GearSIuf/x0nD//J9WKEWrh0t+55xWDTvhbuebI2mG8=;
        b=L1JrNKUI/aCsvQSQ6hcGmzEE2dESHyRG//sSCnKo4rjPe+ZMTx+MCLoQqJDJSq+yNd
         a24y8jDdFrYGnxc4i5qv2mMbHDC+Dtr9Jz4r/3yH3xeDhjK90CaB6/vYSIwhRKej50bY
         cMmwC1NkC/4CWk6q9ZWCqN2NCto+lmkBdiI/sCGM+0a77sdzWUPYjv5z9FqVSCJEN4Pj
         8mroQslIvGQ17JwLCVQ5ROyh8NIqYcYtU/4WkkHwvp+JmG9KWBv6m2Fdzmxlu4K6TE7E
         OpuceGqNeLkJEjZCTZVoZsJ/shWYvWfvnXwUOjdynDTOMoZmVdT4c+M4Gm2RfN0KCvq5
         WNHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRqRFIx1;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e124si297863pgc.3.2019.03.16.07.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRqRFIx1;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n125so8317416pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 07:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GearSIuf/x0nD//J9WKEWrh0t+55xWDTvhbuebI2mG8=;
        b=BRqRFIx1gXHbQKow278MRji9H7Oua7nZsOv+hSf9kXQOAuHXkabgSafQMV/YyabATk
         DHDvC2T/Y0t9GJNegdq9tK/r+Ce7lO3kLRYmf0aP1y4iZqwZpH61y8x3PNV6ID3bJeol
         kq8nsOYyNsUGs9yfiGVbtGhlNk3qaMB6zAK3RMvlwjy+aMJKR0F/nFr+Mqne7YRUfeXI
         1ou8WNAAhdS03NzsRxVGX9a6vhFPuYqseSV1VCBfpeuD8ZkJShy47SGDkqCq+dProbd/
         0RMgTErnuO/nbOHntUQ2oX81rniQL7Fdfm7HJmRNAE4EUP6AYS9LZbVuDmtoJ80CKRVN
         gmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GearSIuf/x0nD//J9WKEWrh0t+55xWDTvhbuebI2mG8=;
        b=cBzOVLWykCPN0tj9sAPv/q6neym7wHvPNdXJSM66QsYveLauPXoqj8AZ/ONDm8Kkp5
         2wx+xyJWuivLjgh6mDLg7RuRa86f9wnk9Un4Qo3xWhqXwTLDg4oYDxXdvrvjWTb7Zo0T
         i4Peu+O9UKCNNgbHyfPJxhOhqf23ZC0OXTmSmn3PoQc6iZqnznSKp/Vv6E6rBhKPAonC
         HStxe/WRwgvrmM0yP7pnUANdoU3EsnbIVJ1Wf6ays37qIORcSUk54N3m+wlONxgBp8W/
         CxR47a2kYIS+aldBfI6QoSEkrToDpp86gEIb3KIj3kdWiwUwba1OsFkIrBpgLVFINk5K
         1HnA==
X-Gm-Message-State: APjAAAUyg9fZUKoUx1Unn68SjAoKDD9n8HQPd5OLAzZn4tdUs7k87I6G
	t9h8047By+lvks4fPFmDSvZca7aM9SI=
X-Received: by 2002:a62:17d4:: with SMTP id 203mr9615910pfx.244.1552747708076;
        Sat, 16 Mar 2019 07:48:28 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t10sm7997761pfa.151.2019.03.16.07.48.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:27 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 0/2] Staging: mt7621-mmc: Remove ret.cocci warnings
Date: Sat, 16 Mar 2019 20:18:10 +0530
Message-Id: <20190316144812.7427-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series clears the ret.cocci warnings and removes unused locl
variables.

Bhanusree Pola (2):
  Staging: mt7621-mmc: Fix ret.cooci warnings
  Staging: mt7621-mmc: Remove unused local variable

 drivers/staging/mt7621-mmc/sd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
2.17.1


