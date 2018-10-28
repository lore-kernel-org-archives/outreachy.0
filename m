X-GM-THRID: 6617471709084647424
X-Received: by 2002:a62:8a41:: with SMTP id y62-v6mr5191903pfd.70.1540750316698;
        Sun, 28 Oct 2018 11:11:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5c10:: with SMTP id q16-v6ls1822844pgb.13.gmail; Sun, 28
 Oct 2018 11:11:55 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dxvoT+5KiG7AB5pKNMkDuQe3In1H1ek5XUtUb8Ty3Tq39SRvEGni3ge98uKQwLD5lQsK/U
X-Received: by 2002:a63:d802:: with SMTP id b2-v6mr19642pgh.54.1540750315964;
        Sun, 28 Oct 2018 11:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540750315; cv=none;
        d=google.com; s=arc-20160816;
        b=UwEWse0niJEldiNwVtEBZp1aJjkJjax8gkUqTuDmbPqP0XgVNUoKtQoHiZHiojxcFP
         bMlZ+S+mNK3hbKiBrS67dkSx18NHDaXMaHsIHCLVI17qmFVsvZTlEI5OTUJZNUlhHki8
         AjxrEPmU6MaB08qN73QJ1afhsEFrnhC8f9LNYqtAO2e0VcImLR46NZC4dOqAhylpiz42
         6sdLhgThWicZLwnqfFpfxIly5fBFJVklrBBDYzcFwksAQ8FKTLrMNCW6JQfEeYSTyOE1
         /YQdOyVFpvmzuf75FLqPVSjG/emDTwabmYn5BoakHOsQh9eWyp2S8ysR7tqLVq2ldCfg
         me2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=+1EKJCiMs30mnL/eawo5QHTwykq3Zj+MXPouq/LStfM=;
        b=Galz2id6JwKfPZChOMm8W/FnRSShzDeZyqy3shXWqnkOGBzUcrWDra0jtpseudNiOw
         XCQkwkxlzgoSirnroGdghOodJWIhaLLSKWnm/iPkQXj/ide0+zcoVYVk8b+3FALI9n4k
         B3Sd9mtYi/pPuj2O3P+76xRHUB0AIE7pG3lz6P4jtFZRjrR52U40EW0R5LBn8jWR6Nxd
         riA6D1MQ4ZfeKaT+Ym4gZD8sHP0ksckpaCpWIVF8v/DjHJWlCyWFLtxy9HnlLsQGaMfd
         CojBLYLJQaxHtTeoAjLQU4P8rv6FWkbhmwUuR3k5wmZpbktD6M67Au+YvtvYNnx9VCFW
         ygZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tURwu/AV";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-it1-x12e.google.com (mail-it1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id ay5-v6si646595plb.3.2018.10.28.11.11.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 11:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tURwu/AV";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12e.google.com with SMTP id i76-v6so6982845ita.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 11:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+1EKJCiMs30mnL/eawo5QHTwykq3Zj+MXPouq/LStfM=;
        b=tURwu/AVG0xF86HZK4uQPlsXpkT11Ha0ek0tyC7O2OpTq5s/5wumNZaoToudR0PHOB
         8ePYNgG9dHQAh1kzeulbaVXlobVRr9MHLwJ6v4cAPOEwHftuZ6WmuBYFG4ISa5zvC8wl
         tBPG0WCEbbREiIWQh0IeqQxidVgzy+Nl3YxqVqnIXV4Q4YLLsKIVA0Z4m53ZxD6R9yaI
         clzTM5xAafHVy8oAJ/gah/39Rcyf4XQnPxwejCacUXrxXD1Yege4E+77VRuCX9OQqQCW
         7aQP1HwjKITidI+VS4n1+N5crz/bI4xY/+OL0r+/UuI4dDYhxgwBW2lEN/GSOvJ8IZVk
         F+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+1EKJCiMs30mnL/eawo5QHTwykq3Zj+MXPouq/LStfM=;
        b=i7N5iToo4aHKLS+hOuqNxhQWj7PVE3BEKK+HHSfXzkpwm+mrfe1BgpOhx70/7AcyND
         uKFIjNgTXG8pWdmoanJ2QHYOTiO0ghD5CliE2/iHfLRgOrwew0ph51kBFliomIwBslSR
         aaWk/61q5GWpoq11f4ULPJHxrlH7XPGvw0m13bKiEgfbv/ZRXUrqsrJwV/FkwkvkfsTV
         vcofORjpcS+vaWSPXPEA7OLn0w8YAORH/SicVqDtpsPyq3AgsPVupG83ApMX+tR1DpzF
         qUMUBBOnY9xSpymgvEF0KBrFV3E7ATWyuLHquItE+M7TGhEn15IoIi2S0PdvFqhvs6/o
         8dUw==
X-Gm-Message-State: AGRZ1gL6nNQZeyVQ6sJI1sHBVoAoHxasjyWfxTFdDTegayClfS7f8qLK
	f4u3FJhzCUoTUrxZKtbUyPqcfT1d3vU=
X-Received: by 2002:a05:660c:247:: with SMTP id t7mr9569558itk.107.1540750315400;
        Sun, 28 Oct 2018 11:11:55 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id n2-v6sm5731469iog.75.2018.10.28.11.11.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 11:11:54 -0700 (PDT)
Date: Sun, 28 Oct 2018 14:11:52 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: xgifb: vb_setmode: fix multiple line dereference
Message-ID: <88c24ad8bb609b93e22c6b1884252517750d2ecc.1540749179.git.kimbrownkd@gmail.com>
References: <cover.1540749179.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540749179.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix multiple line dereference by adding a new line and adjusting
indentations. This change improves code readability. Issue found by
checkpatch.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 1fa0dc66406e..62b45a30e0f1 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -656,8 +656,9 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
 	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
 						      RES640x480x60))
 		index = 12;
-	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].
-				Ext_CRT1CRTC == RES640x480x72))
+	else if (ModeNo == 0x2E &&
+		 (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
+								RES640x480x72))
 		index = 13;
 	else if (ModeNo == 0x2F)
 		index = 14;
-- 
2.17.1


