X-GM-THRID: 6342321503270338560
X-Received: by 10.13.247.7 with SMTP id h7mr5314120ywf.99.1476686797746;
        Sun, 16 Oct 2016 23:46:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls11949799otr.17.gmail; Sun, 16 Oct
 2016 23:46:37 -0700 (PDT)
X-Received: by 10.31.56.74 with SMTP id f71mr6641201vka.26.1476686797438;
        Sun, 16 Oct 2016 23:46:37 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z76si4472602pff.1.2016.10.16.23.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 23:46:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i85so8739838pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 23:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KyBs5cIAO/QyVx5w1nyGJukA3UFJSG14Ub+FI9axio8=;
        b=pxhm+F5dNuQArIkjVMj5yOUfpN/aSHG9LXKRLT1RswRbyc8mjIDabbTyjayb8vY2Qy
         zv0KzoFDbJ621kTojZLSQO9aHH1xOn8OvxSzhjKD5+k7/tRi5ry3NCzi3OLCBV0j7UEH
         1QlBxH6FU9ds/pkxgZd8lbkxxCZw5+ZxSnJLh6tMlRAERHDx0Ae/Fble/iFV9USVd6+J
         rHrKZO5Wp0HfRDxn+2X+eEt/pLHI3Tzo4D/UyVN9HWKHWMy8rdH98H39XPl5lbolF1Rb
         jKfW7oxJy9/VHkIBVsvEE8DNX5UK0R3fE32msBzOWTOg4AIycFYVCpCfeQ9kdPdQn1X7
         LLVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KyBs5cIAO/QyVx5w1nyGJukA3UFJSG14Ub+FI9axio8=;
        b=hBnL68weVFzpcuHw+67eB4hpbY1HWD7KYmHKquCz7mA/cWZo9vJLxa03JxzJOP2OFs
         DpDdKFsdIyOm0yGb/3x/28ro/D5bxf71Jx5jIGXSCuuE+U4q/qBE0fArK9jSH6R5l+o2
         KEO1maVCmERzBmesPU9mcjsTmkYUpXEajV4m2YkCh+ruiqc3+9Y3Uglhc+688mN5tXLV
         Kwz+krKnGkNT/aroWfFZIA90aQO9OQy5lfbg5NDm1OxGZB2pDl5DG3MXO/TBXpNbncuL
         szCnGeIbpWFGHLhCCQnPF7wFuJ76UanDXada1awBjqGBAZ1kGYyGErnrnYMAxoaIWnWD
         LaEw==
X-Gm-Message-State: AA6/9Rns1fwLKj1sSJRN8VxwiNEI47BZ9Gg3jB9UytCYrire+qbrFazpmlnK4m4cDKXmVw==
X-Received: by 10.99.39.130 with SMTP id n124mr29159893pgn.85.1476686797112;
        Sun, 16 Oct 2016 23:46:37 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id z11sm30748142pfd.49.2016.10.16.23.46.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 23:46:36 -0700 (PDT)
Date: Sun, 16 Oct 2016 23:46:30 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: core: constify local structure
Message-ID: <20161017064620.GA21653@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Constify the static struct RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.

The only other instance was one of its properties being assigned to a
variable:
Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;

Therefore this is a good candidate for constification.

Running size did not show any difference:
Before/After:
text    data     bss     dec     hex filename
44122     408    2974   47504    b990

Lastly, break up the long line to fix the checkpatch warning and conform
to kernel coding style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index fb13df5..c94700c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -133,7 +133,9 @@ static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
 	{0x03},	/* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
 };
 
-static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
+static const struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {
+	0x03
+}; /* use the combination for max channel numbers */
 
 /*
  * Search the @param channel_num in given @param channel_set
-- 
2.1.4


