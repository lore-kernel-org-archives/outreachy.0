X-GM-THRID: 6749323707377778688
X-Received: by 2002:a92:7701:: with SMTP id s1mr21660722ilc.217.1571606872807;
        Sun, 20 Oct 2019 14:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:db48:: with SMTP id w8ls2808732ilq.3.gmail; Sun, 20 Oct
 2019 14:27:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1aIQJ1cP5XApiipncdmsAn1vL7/rGXVKxAf1yYirJVcW81JU9+ozHvX8HfI2l0czPdWNg
X-Received: by 2002:a92:255:: with SMTP id 82mr21253835ilc.61.1571606871648;
        Sun, 20 Oct 2019 14:27:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571606871; cv=none;
        d=google.com; s=arc-20160816;
        b=SCLahjQXm2doDMIrfeKDj7FeunTK3NiZhvYUHensoXql0qf9dQ7CeTo9vzakPr20Hd
         NpwdPx//uzDh6UCzMQVH9Qo55jEpl9Pv0SIJ7FeLKoN7zUEgRonBNGfpb5TvLnStWZ/I
         GXcnbi0TZgsRhx0gxbBgU4KVGCJDaH9j9X5HTH6icjR/SOyU88i/3Ti4k6g2E9yNbRTh
         L5M0CBXS6Pmp1Cr5Upp+T0quSawUjZYrabVdviBv9roYvmjRjauI1BLx+y0GwYQMtGOQ
         JmCXfP9KYhKZMk32gTD4hpLg+hYwK5F/wc6exzuX/PLscCuROxMOBMhL4YkH491eGoRh
         PmGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=tDGQk0L5zpIK5s9lIlDGe87tZV07V1y+YT9mpr4zb12YUL9Hv8WOp1/D7skpU8u9UK
         YqUQbpF1IDT1dr2ZWrj9ohgL8Waqp7xl+SLgRoSXBFdLAhWMgFoX5Hq1DRos59WvzPzh
         jmtm3sbsINtKKKLUAhFVN9t3of5XhHrUJkh47GT04qcjMtvT0hh/e4pi1hOQ85ryFJ6L
         aJ90VKTx4ifY+0PgMbaNG1xlnHLTG2Y2jKBs5rpmA9vp3Yqo4DRtL/1OQkpzNGBIteaI
         A3VuyW6qbRx7AvEVwqhmYDF2ISWnrktSsKMB+7Ww4Yfn62DfGkGm3lvYXIrInv8akn+5
         Xmqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YekFHw1E;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id i8si658314ilq.4.2019.10.20.14.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 14:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YekFHw1E;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id w195so7551340vsw.11
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 14:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=YekFHw1EZR38Dzw83ZInu59nivsn5TqGrkU0YOJ+bfKYcaLhY00B/DtWP3n4S4Wh+t
         9A9m9fC2OqHmktw/abmmv/8SKDJDTYULuuMxVKph3L5c49k2+xiDGeLSeiVBkZSNmv7C
         HTem+3N/Qbxg7MCV1vu38TfFkDaeioKKS7u8x3YXsOor6se8op6PxlUIsUoCASu8x61V
         tMK8jtubiu+PrPmV9gFcvhgbYgdes6BtmNBmtmC/Fcajhb+MV3slpsdpBTmH5AwvlQ9N
         xxQK5bYZpsLIBA4XikfJbndatIMy4FXDTgMGi2QQ8pv0os5sDyFV59sCR2S1l4HhKAtY
         +jYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=7Bjd6RvvtpuGu/rFOKts2a1lY7ruRXYCnbXWP1/EeCM=;
        b=AnfsuUb/zwlDsceO+wuHPz90FiZgYZdsbHw+193Js6s/EB1orjKTfJEr/mQla+5Uka
         SJF+d+a/UqwrJDZy4SS+W+FHnB5wUuwbAjPuK0IJG3kRp2orknd+3xz8aXTz/Eq4vXp8
         bYkLXJMGdWuS66BS7cGTmpPJ0ocfIjxnaGV5FtGAXwfYbU6uoMj+blDZ7TMkZv3hdl40
         kWyWb6ZFSJcT9SuwNAVsjU+hz4XTfBrAXbtK5Gp4jlx7GLI4rpefpEXL29WzqHqqBM4A
         QZ2Vr64Ggtbt+d5uSrIwQ2wCjIn5j4iaG+DjZRQmAXTn8tv4bz5yylZ1h2ONPH/FdlWv
         ZT7w==
X-Gm-Message-State: APjAAAVeHAH7dRM7J+p5mZUss67auXYu3sz8rKblzlSHBjEzaXVAEqjV
	zl1oTHe4gu1QYVdWuiZ0Nv8guzijdGGNXQ==
X-Received: by 2002:a67:fe47:: with SMTP id m7mr11966852vsr.100.1571606871160;
        Sun, 20 Oct 2019 14:27:51 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-28-46-160.dynamic.etb.net.co. [186.28.46.160])
        by smtp.gmail.com with ESMTPSA id a23sm3551042vkl.54.2019.10.20.14.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 14:27:50 -0700 (PDT)
Date: Sun, 20 Oct 2019 16:27:48 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571605959.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571605959.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571605959.git.jarias.linux@gmail.com>

Fix line over 80 characters by wrapping arguments in function call.
Suggested-by: Julia Lawall <julia.lawall@lip6.fr>.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Edit the commit message to use the Suggested-by tag.

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..0c2f3b2d4326 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv,
+				  ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


