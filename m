X-GM-THRID: 6332057580597149696
X-Received: by 10.107.150.133 with SMTP id y127mr4407480iod.7.1474297071577;
        Mon, 19 Sep 2016 07:57:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls10585978otw.27.gmail; Mon, 19 Sep
 2016 07:57:51 -0700 (PDT)
X-Received: by 10.129.37.11 with SMTP id l11mr4458977ywl.165.1474297071223;
        Mon, 19 Sep 2016 07:57:51 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si4846043pab.2.2016.09.19.07.57.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so4449245pfl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=5SJMVKcy7GA8Qjgk4hQbOWtdxA4Zt7ZoxZgT6gEnoaM=;
        b=rEnTujZXyyQfbg8cj5N58dAACYF8pusoJqGy8ji0lj9Ju62JUIEiTjR9nOBS7+oo50
         Z39cVNTHA6OvP8st6nH00Jq0ezXzqaRS3qUdUAJPMiHX36kGdfa7WB3Y/dtwXUWAbrig
         eCJBQwBYYi0bzaecBfiFP/YKeKywYXQZ3DeccQL02CDweLYFuacpcDbF346pdtWWGnD3
         q3MUhKEczIn0piXQ8bGeQn1amIrVFp+s3uWGoeab0Z+Sl4cB0UlhRK3wkZe2HXzmH7P3
         Uh9rVbm0ZhzfMzegvUzFeZRtW/4HHp14GDWY3UES/+WPZCi2WjAtcIBbg1UQiUvP3Qc2
         Fp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5SJMVKcy7GA8Qjgk4hQbOWtdxA4Zt7ZoxZgT6gEnoaM=;
        b=ZpRiRXSU2xsYJq7t5W/NjpddK2f5xY4nbiZrHBZwtvIQmFNO4mxhkPIHXti5yneK1S
         +CA8cgoSc7TFDHJqx/T2AeKMfdSklJi/Cd07lK5kTKfEVTsmpmYBPilrSHhIV1XE3Ars
         aiQ5jRpbo4Amx+AU4i36iNLqKejG335PGRAc98flkgn8QIMv0V6wSn4uhtcIUVvDjPdx
         T6MYjwXgaRqZolf29yAAThmtlO0wFMKOtopHQFArBugBeorSHo0QToAWS/UmAtil63cW
         MdW4V4qlFNbtwCiLb1+P3wJFzZd2h15GYH43LR0Hxx16d/TOpujPUqTYW2xouoYZwbCW
         bRhg==
X-Gm-Message-State: AE9vXwO2wKCnT1CogN9Kclq0uA9/moFJk0Yh+fBW6J4LGCE4Gh72Fv61iQb6XGEsWwLUVQ==
X-Received: by 10.98.110.4 with SMTP id j4mr47220305pfc.56.1474297071025;
        Mon, 19 Sep 2016 07:57:51 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id c145sm39436627pfb.15.2016.09.19.07.57.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:50 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:27:46 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mateusz Kulikowski <mateusz.kulikowski@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] staging: rtl8192e: Add space around binary operator '+'
Message-ID: <bc9ae06c49ff170e60c3b565ce3635bc462f9487.1474296026.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474296026.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add space around binary operator '+' to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index 735a199..bdb5392 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -47,8 +47,8 @@ struct rt_dot11d_info {
 	u8  CountryIeSrcAddr[6];
 	u8  CountryIeWatchdog;
 
-	u8  channel_map[MAX_CHANNEL_NUMBER+1];
-	u8  MaxTxPwrDbmList[MAX_CHANNEL_NUMBER+1];
+	u8  channel_map[MAX_CHANNEL_NUMBER + 1];
+	u8  MaxTxPwrDbmList[MAX_CHANNEL_NUMBER + 1];
 
 	enum dot11d_state State;
 };
-- 
2.7.4


