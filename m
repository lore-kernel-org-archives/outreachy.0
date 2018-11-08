X-GM-THRID: 6618737831817773056
X-Received: by 2002:a63:7408:: with SMTP id p8-v6mr111956pgc.46.1541661740756;
        Wed, 07 Nov 2018 23:22:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4b16:: with SMTP id y22-v6ls572955pfa.1.gmail; Wed, 07
 Nov 2018 23:22:19 -0800 (PST)
X-Google-Smtp-Source: AJdET5c/WIsR99kI4xcBN/qLKVCPrif3D9CvxdNbwm9X/v3Kssn6p0m4OKDg/4aZ/MKeKiy9szLu
X-Received: by 2002:a62:5011:: with SMTP id e17-v6mr1435700pfb.11.1541661739733;
        Wed, 07 Nov 2018 23:22:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541661739; cv=none;
        d=google.com; s=arc-20160816;
        b=puKVXuNy8U1sh4zj56Tt0iLYsN9j6l0P/VPBIphjpEIfdP3PG6Crx0Z0tVFK95qk6f
         x2h8Z9ZVPENwI7LS0RZKOHNWwwlMQmVGj1sPPiGQCUm81APx/VlZuAM4oteH3+IRCncF
         TjjnPxz8e+EAwcdKhfNR9b/HHToFe9grlGcBln3QQJOa0v88eIHuEBtZuFEcrtvtlZlh
         dI2KPyNjo6u2nX1RxzZ6Wi+HAegn89tKO9UNFPejYuAqvnNk7Hd7nLnL4UVdpwkE5dc0
         RYo3ZK3Vn5v6mwDB6XjFFL0vSTrTEsK7cD1rltKm4lBgoqQMolmlgC4WPNGMfTOaKvRy
         hhsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=V4ChIrK66d1EueFhnAw7Xob8wrBZFtXl0xqMg95IlNU=;
        b=WN3jHj2EAyamG8BHhGG1RPB4/7g7lG9pz7oWpwQaBtx1w6ZJUGmeDGRuH8QJELpjCy
         jyCzU5AIzedCbjF4sNh1upoC4TEHujWrgzgFI+Za5Q0R6avdHrZ2E+/nCCBrTYcEivEs
         9iuXGpRONUl3Cgqig+APam4IXzv5cWDgtdNK5enykgq3ti/caiaqv3f9aveJgTIsAV4S
         JW+I/OEpO4U5U9TzsbnQNZ2AyZc2FkEuPcZi0C+V7s5gsEkbo2sEJgH/NG7hDcXKVccV
         Gq92d+bh8P624zj2VWUAhbubHBcA5mOg/GU4UOawxvatP+DASWLnfPYZlO1Vvcyr2Yrn
         vQZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gGBdsSg+;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o12-v6si140962pfk.4.2018.11.07.23.22.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 23:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gGBdsSg+;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id v9-v6so6611087pff.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Nov 2018 23:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V4ChIrK66d1EueFhnAw7Xob8wrBZFtXl0xqMg95IlNU=;
        b=gGBdsSg+1NiHKpsw5QcH1hxoBaFjfTOkDP8lwqqnqIJvdE28oQz5+zXXV+BswNri4n
         ykcS88wbkj/+6gX2+M/xl3fxTUn+86pO9lH8VZuiFEvIE5u2aV3ljwD0dYslJB1a8WA5
         zFHMnrAoBOKETMK8DrCXgEmWAFVLOuzevFWCetJodhKFQc7wG3ygMNXS6FBymT1gpbq+
         b3rhVJf/7OtCwfPF3qaD2vHj6R8JcO1vk57HxKiM+yk0C2QiJo8HpP7j5VA0pXYzR4eh
         kaWNWm62mSo6N7cRel4sjxO6ke0yxJWpzZooYc+Np8gzZNUEIfPM9cq1ce++ozrYVQCL
         TgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V4ChIrK66d1EueFhnAw7Xob8wrBZFtXl0xqMg95IlNU=;
        b=OrUDSlTDLXXhsekj7KR0beNivAyrIGZKLo8vh+JhaCc28EbiZr/h2AJxcYNJ29poAT
         OvyXl7n1nR+bBxG80kEZNXmYiH0U25FKGVRfnfcoD1kn9Wq/WgErBWIZqjXS3Dgeh9vB
         dXlZ+3e3Y7nYEI2U6qEbeDXpheUihrZbhd0MHJLJCNrqJ5ZmG+Xg6sRNspXs3AkbQH1C
         B89VLh6wz+UQ9HhaDEGF5G7W8PmaxnblWXp5IwUvqfR+F8hZmW/P8aNjealB0Uv9nJnK
         xNIAKXv3xZ9fb0S/FM5zwxsqBCc3iC82Wn2R2+dPJvCgnxGDif7SnbLUDQqflZqkB7fI
         RJwg==
X-Gm-Message-State: AGRZ1gJE7B9iRSh0gR7SkXwfvSuUvMEvf4lLhAgHV0hz9gN6hOQnZQKc
	0YDTzdz0UDwLugxNJv52PYta8ffZ
X-Received: by 2002:a62:b2c9:: with SMTP id z70-v6mr3546711pfl.79.1541661739312;
        Wed, 07 Nov 2018 23:22:19 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id f18-v6sm7050604pfh.0.2018.11.07.23.22.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 07 Nov 2018 23:22:19 -0800 (PST)
Date: Wed, 7 Nov 2018 23:22:18 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtlwifi: Remove empty comment
Message-ID: <30e6bc672ccf9a1fe233d247f2d6dc05a78816c0.1541660015.git.m.maya.nakamura@gmail.com>
References: <cover.1541660015.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541660015.git.m.maya.nakamura@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove a comment that does not contain any text.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
index a0bed52b8255..7eb54d2e48f3 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
@@ -554,7 +554,6 @@ void phydm_lamode_trigger_setting(void *dm_void, char input[][16], u32 *_used,
 			PHYDM_SNPRINTF(output + used,
 				       out_len - used,
 				       "{En} {0:BB,1:BB_MAC,2:RF0,3:RF1,4:MAC}\n {BB:dbg_port[bit],BB_MAC:0-ok/1-fail/2-cca,MAC:ref} {DMA type} {TrigTime}\n {polling_time/ref_mask} {dbg_port} {0:P_Edge, 1:N_Edge} {SpRate:0-80M,1-40M,2-20M} {Capture num}\n");
-			/**/
 		} else if (is_enable_la_mode) {
 			PHYDM_SSCANF(input[2], DCMD_DECIMAL, &var1[1]);
 
-- 
2.17.1


