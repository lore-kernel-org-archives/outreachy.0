Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481672E229F
	for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 15:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781366302; cv=none; b=XyGGKUWjtpwh/0ps9MWFPrI8QI/mk2KHEnDJ5bOw3+cmiZuo8cCJIvM6rqr6QpuqZYxy3E2YdSc8YMklzA4uoKMSRfBiwqZyh7Am+2V8pOk77bvpvsvey6V0fl/Um8SiwARCsP+vLAnlF7vuLif6Mfm9GHAZDWcLV3tt4N8J7Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781366302; c=relaxed/simple;
	bh=9+Ou08ya/EIgsRHxThJiDirDItH2ZegTIojPtclO47E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kff64QwPr8komaO0ZVpO4Fg+1cC7JiB4zpGlhTo/WXYPoI+FlXDrxO92MdojsuseeBLWJoDK5gzjIR0/aisUsp6HeaFHR6fM5GFH1/RQrfroXJU0i4wTlasrLsSwhYL5iYknI+2PNP4COsKg/zPrKYJFEapW3iKLoV8sJllVrNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sWDxIFBb; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="sWDxIFBb"
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2c27fc587ebso8354805ad.0
        for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 08:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781366299; x=1781971099; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mKipWgHUtmHSGe9NlsV5we6jYGi0UF3OsZVbkNb4DI8=;
        b=sWDxIFBbRTb/N4EWcI9XsTUdQ+LIxIUs03Syql3qBbRQZbcTIJZ7m2ERGSvy41Bzcb
         qbaW3xY+VKbkg9wyVYfky4/cE9pYysKo2Of4ZqjSL6VpQ/bfSiplrFKgUnXafc8veJvF
         LBJXEX3n0Ry8epWns6e1Suq2iQti8Hlq8Rxtw8KMfx/6d1IWPQLmGc2kEtnxnINwsqY3
         VXKHmFZifAbNRoMOwMv72uWtfhzEqTqLMbqaXQvtQRC8qd70SksnLK2KnfzWBIeq+ahE
         axiLosLVfxCysCv6uDM2YUCQx+DK/GQ3O+yy6hgqJ5Kh55iNLN014aBMkn6s7hi52bA7
         AaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781366299; x=1781971099;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKipWgHUtmHSGe9NlsV5we6jYGi0UF3OsZVbkNb4DI8=;
        b=NiBkBJTScVUR+YXixmskGD5c8hCz9xMtJCrcVIepCWdMxKU0/h2B0wN5YLaDeHMsQo
         jCuuA7DKug/VAjj+fGXexkltgV406fs0tCEo8JrVTTjWCHo1YJNKA9IglUBBWOIOr70R
         XH7+GK9YK/JxlILcxTpPofiF6zMMucWW3B4JDH8BhUN5PBg5ADyeLmYmzCBO0A748Ah1
         m3wNp+WVbk/CLa1zn7q5ypQDd+5xKweomFPT4qL9jPJm6D9mPNIf2yAqFZ3gNNyPksV0
         fiis+VpmFJdwplbnQ0MVtPSWevCtHXWaj2NwDvuURFr7yJiDLLAgP7u3Zc4y9GM3NwUP
         FQ8A==
X-Forwarded-Encrypted: i=1; AFNElJ/6nh0I/6ZB8fxkvjE0spsmbN+5Cr68oqETCiSH6/HQjZwsMZisyQB5JYS41xrX5SNELmJoH6WNEns=@lists.linux.dev
X-Gm-Message-State: AOJu0YwTiA75WGAbSQvJrqjiayKyfyf8097HwIjMLO90eRMuvcaZxtCL
	yU8/EkE8W6n9oLY0qkB1Jp+g4SCjHay0jxJp4HDNHNmsIrl1jqECFFKU
X-Gm-Gg: Acq92OF8rZOSbsFgwr8s7l+itFL1MGoq4YfMUG1BOI8oJ5uegDyFsQv75CQwFDjB7n+
	FYosW0RTyEMJaEYVw5snVUyGJQRZXOVay7JXwVHOcgMjDQLyNd+SnQv5fpyG6zJktwSJZ9GHB7v
	aQ/5LPJEbTSLv6wvfvCaVn2EyC9GCHQJPdEI+tYi0EllvmDofiXMhFrB/ZzD2NoVaHsBAwqKP0w
	dJeixL3lwU1KSJp+LsJyDps6m472RJJBftXvcOdxPAb3hAIezISzZ/X1pvN5zeA3kqtUXTEgV05
	m57KLxjnBujg66hvUXzUZDs2AknKHNcQtuX0refEFwcpy0fWboNBDS19kcpCPXDH/P4F9430Pq+
	oE8touEBbm0Jh70SigBJ4xSQGX0mH7Dvcf4icyVa6SBX4rISXf/0SobEE9FOw5vFh9jJtVWYA74
	XF+PX4NcMegVp6zUgU4SOTwbaadQ==
X-Received: by 2002:a17:903:acf:b0:2bf:195d:21d2 with SMTP id d9443c01a7336-2c41206ffc7mr86878745ad.16.1781366299493;
        Sat, 13 Jun 2026 08:58:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:3d08:2474:4800::857b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42fbb4134sm47154115ad.30.2026.06.13.08.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 08:58:18 -0700 (PDT)
From: Brock Haftner <brockhaftner@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Brock Haftner <brockhaftner@gmail.com>
Subject: [PATCH] staging: rtl8723bs: fix spelling mistake in rtw_recv.c
Date: Sat, 13 Jun 2026 08:58:07 -0700
Message-ID: <20260613155807.18623-1-brockhaftner@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the spelling of the word "temporily" to "temporarily"
in the comments within rtw_recv.c to improve code readability.

Signed-off-by: Brock Haftner <brockhaftner@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 86c5e2c4e7dd..0ffa69c38bca 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -815,7 +815,7 @@ static signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *p
 		}
 
 		if (GetFrameSubType(ptr) & BIT(6)) {
-			/* No data, will not indicate to upper layer, temporily count it here */
+			/* No data, will not indicate to upper layer, temporarily count it here */
 			count_rx_stats(adapter, precv_frame, *psta);
 			ret = RTW_RX_HANDLED;
 			goto exit;
@@ -895,7 +895,7 @@ static signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *p
 			process_wmmps_data(adapter, precv_frame);
 
 		if (GetFrameSubType(ptr) & BIT(6)) {
-			/* No data, will not indicate to upper layer, temporily count it here */
+			/* No data, will not indicate to upper layer, temporarily count it here */
 			count_rx_stats(adapter, precv_frame, *psta);
 			ret = RTW_RX_HANDLED;
 			goto exit;
-- 
2.54.0

