X-GM-THRID: 6255628757507244032
X-Received: by 10.107.133.10 with SMTP id h10mr7241765iod.8.1456502380644;
        Fri, 26 Feb 2016 07:59:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.137.73 with SMTP id qg9ls513001igb.36.gmail; Fri, 26 Feb
 2016 07:59:40 -0800 (PST)
X-Received: by 10.50.13.101 with SMTP id g5mr2713954igc.6.1456502380249;
        Fri, 26 Feb 2016 07:59:40 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si1974999pfb.1.2016.02.26.07.59.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:59:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so4857976pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Dta0QUPdNRtbxWTv+4i2XCQox9vYQUkhrXxAbEHp6nQ=;
        b=QyNzA0QYCFkWBJ5lJSTMPOYlZujqAmh7PkI7HWQmolZXtaRnlfP8oCENG++02w/8nW
         MFL3eTzvIAAMyWzxt4b6TMfi5yZw+NfJsGa1oKVr42vhJtyMSSVrRtapEmvXJQRqgv5w
         kjeMAMY8BpuPaD4o7hoz8uexxW47RiWdOR2u4XrH54DkfS9BxxfILQwHCNWICldGoJtX
         I5DnyYo+uxCcAuQ+I3w5UTLS7nSseXlmZYx0fSzu/MHlCySPdtNVgvO8MyQYMshMC60R
         oVnlEGFvhPIjFOwqq16KMSyqJCu/26VK/hKBcXbb9DvcJ+xQLAfv/UMWmVhNuSCZ8MK2
         UJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Dta0QUPdNRtbxWTv+4i2XCQox9vYQUkhrXxAbEHp6nQ=;
        b=B7giMvh46Fft+YsnoXgmZg0qX6bC87ZnDYULrMDjSn3kmHXKymJmeL/vZBrTX8s/ds
         KaUnNAHgS5UbDU9N3sEugJC//jV7z9J8ZzD1Q4TAMVjEYELz5N2HwQIk+5Ei0V7pLIeH
         GSoKTY6TTFUnw65zp1wqxJRpQyCX6KEox//XvunQWEjrexVHuCdc1MtTQl1WuLw5nZzk
         YNtVc3xYV6jnlml8deHS15uTKSA+0Us9ltavCDt2x7O4r70NFo8tquF776rEnRPcAw+O
         Kjipm1fL5evFwVRU3sDdV7Zw/p+h4B1WRrxDZ1/kmEu6jdiZdUKyUggWRlEeA19nl1sz
         Nf2g==
X-Gm-Message-State: AD7BkJKXRAlW8Pdt6i8pZDQm+Jm6lmLqQJkOmjkygn7E3h0pCCHbOD+arym/FhaQzJxSMg==
X-Received: by 10.98.2.197 with SMTP id 188mr3089500pfc.3.1456502380078;
        Fri, 26 Feb 2016 07:59:40 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b63sm20353826pfj.25.2016.02.26.07.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 07:59:39 -0800 (PST)
Date: Fri, 26 Feb 2016 21:29:41 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: dgnc: Break line after boolean operator
Message-ID: <b39850f7ccd16ae216e25b0851437ce9e58ea3b9.1456501665.git.aquannie@gmail.com>
References: <cover.1456501665.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456501665.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

The preferred way to break up long math lines is to break after an arthimetic
or boolean operator. This patch fixes the checkpatch.pl warning:
Logical continuations should be on the previous line.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 88355c5..48b942d 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -1796,8 +1796,8 @@ static int dgnc_tty_write(struct tty_struct *tty,
 	}
 
 	/* Update printer buffer empty time. */
-	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0)
-	    && (ch->ch_digi.digi_bufsize > 0)) {
+	if ((un->un_type == DGNC_PRINT) && (ch->ch_digi.digi_maxcps > 0) &&
+	    (ch->ch_digi.digi_bufsize > 0)) {
 		ch->ch_cpstime += (HZ * count) / ch->ch_digi.digi_maxcps;
 	}
 
-- 
2.1.4


