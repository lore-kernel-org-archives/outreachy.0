X-GM-THRID: 6437751500856885248
X-Received: by 10.99.114.29 with SMTP id n29mr92972pgc.106.1498905825754;
        Sat, 01 Jul 2017 03:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.100 with SMTP id x97ls4229865ioi.9.gmail; Sat, 01 Jul
 2017 03:43:44 -0700 (PDT)
X-Received: by 10.31.160.197 with SMTP id j188mr13736896vke.10.1498905824918;
        Sat, 01 Jul 2017 03:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1498905824; cv=none;
        d=google.com; s=arc-20160816;
        b=mFMHAlSLSYA1j617bUaY+tlEqXZ/SNzdWY2M1UNsRArSD9HvRbyLPCEPv9I7x0N1Bd
         zcFF6rzwIwjk5kixLXPxhngM00ptPto0VyN8FO2bVzbkirgdxBRr8VFMCcJ6LqhWPiKD
         E9O3XF7vZb9KhsENp46kAkqL59qWqsDWSl0k6m0d/LHxDfvFbnpNl+ILnx5q+xwLhbt2
         BfD7o0cswsN3IRBpU9Ln3lkWHsCCQE30LOX7LF3TsxOc4cS8aHYEIuan1/XduaQ613Jf
         HgVrdz8F0D5kL4Ew/CWnxveh8JrfPHxFYr5kJ4ucdVAn7zQjd3iY2xwXElo3xfZdRkWA
         orvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=/I6OcN9MZu/OFuBB3LizJ1gtU8fn3UNvjrjsYEVYOU8=;
        b=OXq7ZyxGEoWNtSWxTs1gsfa4A/CBOeIKGY5dXqDJywVQsFG9/W+nm4E0l3SEvIORln
         1WKEIXcYAKirnv8UbJH4iiiLswEFu55c5LB2Qmvnu/Ov40xvQgzPfEtCEMgrLou3LXL6
         QGPdda44dw7O3ICEDY/6RCR/dt6Xv69uXA4JmfvYXfwaJmeDRCnbX5nUEezQFGPcAA83
         qXJnEdrarH7BXKQgtVHIDEwX/cdNoCy7yfN8v8m1tuFRNxsrQTrym99Hj9yqjC+e9yHG
         GHRyW70cv/BgliqjJM/lU7epB2qk/FzQEhB1TmD79iQLTq9YJ1CpTBpTSJVLIcbkQW1U
         OClQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.b=hs5SeLGV;
       spf=pass (google.com: domain of salonibhartia1996@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=salonibhartia1996@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <salonibhartia1996@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 82si2116125pfi.11.2017.07.01.03.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Jul 2017 03:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of salonibhartia1996@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.b=hs5SeLGV;
       spf=pass (google.com: domain of salonibhartia1996@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=salonibhartia1996@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u36so17957031pgn.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Jul 2017 03:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/I6OcN9MZu/OFuBB3LizJ1gtU8fn3UNvjrjsYEVYOU8=;
        b=hs5SeLGVamt8zjQpj73bdV/JYyuZcFSWWd2eEMGufHxTKgkovadFOWRc+epgU4Mpwf
         ebPPGxKxp43gyFMogMOCRSst3fxN89ZYxxto8c2z89RM1r7SoAuFVfRXxjl2ICPfSIQW
         oR7mOk3JwrzY4r3/BCxIJki/jSsECJBwo0dXt4aZhhdNHuuDZHKgQi5qfg2yD2H57KJW
         rc1QYP+q6lDOwb7fCoHALv7ujViTRuuyYRALawqtUVJ9BnICLmoFMbfvgBv3pYFsAfgQ
         s15Qz8ELG2m2ZLLcfywo1LRQWKnKLCDi967GXwEbTlqgfz6Z5kvBEi1jJ06XCKKKWdp/
         4nAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/I6OcN9MZu/OFuBB3LizJ1gtU8fn3UNvjrjsYEVYOU8=;
        b=D3r1k0H87X9ie9fydyLMmSSAmMFnd06KpoTLAEk9yZPpJiQDyuC8iNFnRt8OZROYEV
         nt3EQk4rT7VaCMaUNjsfa9iV1y+5LrbT5tzZ7Y1IhGPrqcEYaTXkPzcxZdJz+QubIZcb
         qPQid9t3+Rp2249g58uY8hZArJ7AnsWa9xhJy1Ap77DHyS46b1QqvnQXGdmQ25tPKV5g
         7SeEqkeM5b1YyiFEEu4Y7pv0CI3XSyTEPncgXVJdB9mjrl9nkRVcOb7+y7eI7rwiQ6/w
         XlQDCU14q1BiNjqt+q6cdWhJvdasU1pyq+/Fc8Da0Kdy/9z/cCWmEDb4TrirjcwRMeD7
         F+pQ==
X-Gm-Message-State: AIVw110ENVntr8k7xgamc2mxAc/3dsqN8S/HhUXGmxasRuitDSZS0Mvg
	7UFXQDeKGu5xhVi3hj0R0Q==
X-Received: by 10.99.23.100 with SMTP id 36mr205283pgx.118.1498905824218;
        Sat, 01 Jul 2017 03:43:44 -0700 (PDT)
Return-Path: <salonibhartia1996@gmail.com>
Received: from mmps-mmps-5558 ([2405:204:31ae:6411:1443:1231:8dd2:ade0])
        by smtp.gmail.com with ESMTPSA id s9sm28245064pfe.67.2017.07.01.03.43.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Jul 2017 03:43:43 -0700 (PDT)
Date: Sat, 1 Jul 2017 16:13:34 +0530
From: saloni1996 <salonibhartia1996@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging : rtl8188eu: Fix Camel Case warning
Message-ID: <20170701104334.GA24233@mmps-mmps-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove Camel Case warning found using checkpatch.pl
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 647a922d79d1..6c63a9bbb876 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -90,7 +90,7 @@ static void update_BCNTIM(struct adapter *padapter)
 
 		/* calculate head_len */
 		offset = _FIXED_IE_LENGTH_;
-		offset += pnetwork_mlmeext->Ssid.SsidLength + 2;
+		offset += pnetwork_mlmeext->ssid.ssidlength + 2;
 
 		/*  get supported rates len */
 		p = rtw_get_ie(pie + _BEACON_IE_OFFSET_, _SUPPORTEDRATES_IE_,
-- 
2.13.0


