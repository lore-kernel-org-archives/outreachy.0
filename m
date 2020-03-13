X-GM-THRID: 6803435195586314240
X-Received: by 2002:a05:620a:20c9:: with SMTP id f9mr12676622qka.271.1584107101131;
        Fri, 13 Mar 2020 06:45:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls4853265qkb.10.gmail; Fri, 13
 Mar 2020 06:44:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuDsnCvNpmxk90OYSqm0VynegzApWUK/e2NS7zz9AI0MFR8AbTG7P7EA6cWFganDfyS/nN9
X-Received: by 2002:a37:496:: with SMTP id 144mr12792193qke.403.1584107099765;
        Fri, 13 Mar 2020 06:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584107099; cv=none;
        d=google.com; s=arc-20160816;
        b=NUSp2HyRS/eJMzw42MizgEV1MKLOGfiAvpz7Vvb2qRuZdT4WYS+sigW1v9DHA/zYnb
         9wXN+tlKOSgfbIHsq048GrV/WLZEubZcvmZ0r5K6vgoDvjHlZT77g5xOgfexXekQ5340
         B2ywomAa1gAzbGmb3h5g0uwJf/HFRTrnBqWvG2zlN5g71DzCQkDTNARrzauQW80tRAc8
         HGfGwfwTLBs5g6optiLqm3VMydMYmwQzvltAwr9HtEZwaKINfobIWG9KrZRIR0w1gbvg
         3tbGAZ2CavRgGok4PFqk/d4Xmj4fB+1qq58iO3yEnZ75lECnmLdSpmSkdDGi5BUoKhBW
         wT1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=tVhNLBfv4gHjSfiIs6ah5teTiVinYORFZLJivV1ihYmeKfhyvK5uQ6cJTUIz3ABQwD
         R7ye+kIqnz2JY1ZAAGw/8qQjMDFOVmTXMGOB+ZdR8V8G2nuxGrRG+z62fm8N7MX9ZmZN
         xdUvffsIFx5Gr2wG8vhZBcOyYz2zfgkXhbJly740aL0D6blf861seOFK4k/s7P45X0t5
         wyDAE7oesqe87ccJ+/I1A2WEcVuEBczvpFczFCOS2n25M8+5nhIKgGs2L5ZUo/1akCPV
         9NmvFDoerRoveOx5U0f6jMbDQ7fMzStWtJ1+OspJA+DHEk+McxT9v2YdAjs1cRdo+Dmh
         6VWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQuonnfF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id d34si245948qte.4.2020.03.13.06.44.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQuonnfF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id hg10so235472pjb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=PQuonnfF46FJdskp7eVZxLKIisOPGSEvMug4vlyLpDK9kP31d9jXEihu8vaI6mBTvd
         8Ozjc76k1jLabdy4rPN0nJas8xcDvxsNXMIkor0kmidP3U0XY6eGrrnujIBm73iKkXOi
         U+oZ+HEurVALFqEfzZnL6vVjXB6EfgLt8rCs2yemy36DNErTshe9Zkde+TN68/YvQhW/
         Cv1+q75iA6cU/EzYNbcCjW55CVZOUbKOhzIy3eCTYY28MAWV86X+C+EzvIg4DQbqgFrZ
         BB9xOVluzc6tMh5X0R5nDzKxaKu980kA/9wXOh+tqjcjTtHUPAEDO3gHMCgx7J3EAcc6
         9kFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OiYFiN7r5PZBfEI5nNvWaJtuVilNOB3Hezn8WfxUlVo=;
        b=stPAiw0gh2IU/M9dRQCV7zfDjDLBRIyrVB/hBlM3NUHBUUVuz6YrxPTtCa0cotuvkg
         fWUvvyugK3HxtR8+H8xY7+YjMVBg6+88RTj827Lk1mzM/zn9EwrQWeu2tA3jljw5K6OE
         VqaG1J/jsx3vJIEUuLQo5+2ho/2Q4V4Q/XiQekiD7M1Q28dYaTuZJubFiFqXtYtgb2Yj
         jImaxkIchTuvaqtpI8uh+hUA/uUti/dJ2iKrx6RX0Ms98d47awweV41yhuRYohQjRcxf
         v35J7KGaxwsa8FgP/y1wPW1pFzS44gByOJpGaEdIbvQuacseXlHBtr5NnfSmyFF+xB0V
         zAkw==
X-Gm-Message-State: ANhLgQ3oXK/zC9mg6eARPqq867iJoEEj63kIO0ASxvzJUq34mQYeJXDM
	2FB0q72QVC+0CLGO3syRmeIHsxWU
X-Received: by 2002:a17:902:8d93:: with SMTP id v19mr13540716plo.327.1584107098784;
        Fri, 13 Mar 2020 06:44:58 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id i4sm542243pfq.82.2020.03.13.06.44.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 06:44:58 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:14:54 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2 4/4] staging: fbtft: Avoid potential precedence issues
Message-ID: <97a589cd5c311026e08380752c342be23d1cdbd4.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584105606.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Put parentheses around uses of macro parameters to avoid possible
precedence issues. Problem detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 81da30f4062e..76f8c090a837 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -406,8 +406,8 @@ do {                                                         \
 
 #define fbtft_par_dbg(level, par, format, arg...)            \
 do {                                                         \
-	if (unlikely(par->debug & level))                    \
-		dev_info(par->info->device, format, ##arg);  \
+	if (unlikely((par)->debug & (level)))                    \
+		dev_info((par)->info->device, format, ##arg);  \
 } while (0)
 
 #define fbtft_par_dbg_hex(level, par, dev, type, buf, num, format, arg...) \
-- 
2.17.1


