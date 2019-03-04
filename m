X-GM-THRID: 6664640601666879488
X-Received: by 2002:aca:62c3:: with SMTP id w186mr13104602oib.33.1551732561554;
        Mon, 04 Mar 2019 12:49:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls7939490oti.8.gmail; Mon, 04 Mar
 2019 12:49:20 -0800 (PST)
X-Received: by 2002:a9d:5a09:: with SMTP id v9mr12538356oth.17.1551732560514;
        Mon, 04 Mar 2019 12:49:20 -0800 (PST)
Received: by 2002:aca:5b88:0:0:0:0:0 with SMTP id p130msoib;
        Mon, 4 Mar 2019 10:31:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqwUhxB7uYF/nhnpcJAHmAMYtcXoJPc6mGJqYLRdqBsX2rw4SLyFdzglYkayW/O/drPeKRH9
X-Received: by 2002:a9d:76d9:: with SMTP id p25mr12391471otl.11.1551724292727;
        Mon, 04 Mar 2019 10:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551724292; cv=none;
        d=google.com; s=arc-20160816;
        b=PyrEsQ6nC4u70e00czQBLhLJMcnHmfE6U1rhavGuz0136iGe7XxQ/YJcX2p/0Ahsx8
         kt0MtlZeTdyBX2tV0cLxT7O60qr9VzeBk25BTiTu4Pnu5mTdbzPx5pBbMxtw6eeMonO5
         xelWPnuZ1RgEWQY8jdmfiSZX118QLmw6GFjKSOeNpYjTOdpv+bfsbT+41nHvPEUTq53T
         j0jzN+/qjkbOoaWF39TesX6zL38rg54VRApnJxRRGsd2uh7xzH70SoYlyIGkZLoj4SDg
         DGcIL6gsi7PaCJqGVLt4YTcovfWUQNmDsrwcGF490pG2JFHnWF6zwPgl39/a4OqVtK91
         OJEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=b02rAUtObvt9eZ9Yk3nsAUjbIySMVYR//SNTZjoIf5A=;
        b=td8FNtm3gzWOA+DEBWGqS7UljItZi0bYowG2n1AGQg1UsWu1BjUcEhMJTA3lg5nPvl
         fvokVON9SBVjQq8Yh/io8UJAXxpKJ1O3e4gU4RnCmxa0r7ogQGA9pRguYQ5QtvanqAoM
         CG4atozpS8a8w8TBeQXbkddYS/U5HeyIvETLAJ5Kr2unCCEeE3E+kOggUbCc7aOYAHPK
         1RJK6yyNx8ThLR+mUf76NNhOz/+aSuB/Di+JeJ4r5jDFdfZ7T0mBx2bY1ad5RPDN5iTR
         DYrUOo+B1CihDkPVjAIJoeqdXSw9Q8ONqpBaeP6X7L7DcDakEgPf/GlSJxbAADQF208Z
         HpSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="m31f8Hv/";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id v129si344481oib.0.2019.03.04.10.31.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 10:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="m31f8Hv/";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551724289; bh=b02rAUtObvt9eZ9Yk3nsAUjbIySMVYR//SNTZjoIf5A=; h=From:To:Cc:Subject:Date:From:Subject; b=m31f8Hv/LsY7lyqA3w7qUcrIbmIG6bawXhRhbQ9+v+BZKcWAuDsdejG252tElpzCrbvkoAHmlE9sDjmVz0WpNYmFXs4XG7YS0BCbLlOKfds44D7WMOXTTEyjyL42BlOGU0qh6We/xQuRjg2RMRndo7hfsowcfxttwTnPukbhzs0nuxkLznz7nothXsanApqwU9MMMQ08kdqPu6key5W8kjQp0E5FKH0HrvffUndVxZDt8yOD4OH7ME1J/kTHK2WTi5rJZuKnUq82g7HYgppg7LhU3FD0FDBWknDss4VJ/otEFbsQZRdSHZL8Kj0D0Mq/F1Cwk5eFVYDgQ9+MUp87YQ==
X-YMail-OSG: k7oJyQ0VM1m_MFxkQ0qCFnOCJcnxD_6m.AoFGwpV6WMrQ1n2L86ND7anY_VFO75
 RIA9xi5O5GEKg96jr2oj.Ftv5hkm5hxvQbHSpvqPt_6K9Op3Cr3ejNw0NVDiczjrhvo0CFQFpn3F
 6Hq8wHbBMDyvLn0kpTGhIb3iaU6JmUbucWjscfbkIHPzF9iT1GL.M9TZcZsrNsqWRVMCJl7RbQkx
 EU0EIJb2U7JX4aQHUoZbXunM6pyQuCEkiCE5tepIQv3a6hyN6FNc2om_f9bSDebp0oHb1aTZEqkB
 hF_YNWWevSWiQLBjIiNQ0IN.i5pprxxgoFPsZO9sR9qiLOGOSDX9dITxwiwqS5h7wqZDJoayeSsN
 QuTfQ1CTnfdN.mCXyZHXEmEMGoh_5WWJT0_mK87kW9AVGh.l85VPOACwOW2UStnYAyFnlXkUIwGe
 mJRZN1l1DFzik6jx0N2W2fEp4EsoJwNgtIVykpT7aaScfftpn1HZ7FEBSASXNKakENWqMuYgJBzb
 wAFynUCHKCkByWanmz.sNoZaktRGz41VWgr2XnA.EO6ss6d7ruKwpxi8sBwWvMTlYOPlWKihkee4
 ilwdM_y_A0riLtJz3_oP8iHd8NYSTxPzHNUYOIdtHq2rFnhJpT18m9qCaTzMEqmGRQ3WEqpFkl5V
 ppa4qmmoRyvftBre0ZzqDnz08vPsNRw_dGZZzWl.oP45jWKe.hQXo93qIhhdjfumqpE.H11iUlS5
 Jk9Nyg97FVCKfEjnp2MSXUuFPWvFCpQb4XUVcLVnQ8PMBu6cRTD2Jruukm_EktD.ux6kpXVppgY5
 eCHihJbztd2Xlhz8OxRP.H6p3DIcTjUSWatT94pP0w2doxXnoJf9kdYIErrA5dMPFONoaX5OJeTF
 I_HdJVL5qqLN_g7QQoePG1Ohn04jtuA9arJsB4YMtErMbFDeGtzr0szz1XdnNSpqm0brQkho9rWW
 etzOHeHdql_84HbOXt6uFxE1SM5QT4J5pbJPzhIxa6LHgDOYxL362uqP41TcFZytegjvxYaU7XFM
 hgYGONeYB_GRtBssFV5jkcirMNxTfURemwwTPuqmzPpjok7_2SxA_UwFav7nmgpA.VMHHS4xPaFx
 Bibb8etm7NmHUzn0S9579
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 18:31:29 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp416.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b81e19112d742fcc27c5658a4e982e99;
          Mon, 04 Mar 2019 18:31:28 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: sm750fb: Avoid multiple assignments
Date: Tue,  5 Mar 2019 00:01:10 +0530
Message-Id: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Avoid multiple assignments in the same line. Issue found with
Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/sm750.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e9f10c2669ea..739841c3b5d6 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 		0x800f0 + (int)crtc->channel * 0x140;
 
 	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
-	crtc->cursor.maxH = crtc->cursor.maxW = 64;
+	crtc->cursor.maxW = 64;
+	crtc->cursor.maxH = crtc->cursor.maxW;
 	crtc->cursor.size = crtc->cursor.maxH * crtc->cursor.maxW * 2 / 8;
 	crtc->cursor.vstart = sm750_dev->pvMem + crtc->cursor.offset;
 
-- 
2.19.1


