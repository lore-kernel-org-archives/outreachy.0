X-GM-THRID: 6202772083227754496
X-Received: by 10.182.50.138 with SMTP id c10mr34962849obo.38.1444195587526;
        Tue, 06 Oct 2015 22:26:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls110339igx.22.gmail; Tue, 06 Oct
 2015 22:26:27 -0700 (PDT)
X-Received: by 10.107.18.148 with SMTP id 20mr34694632ios.32.1444195587207;
        Tue, 06 Oct 2015 22:26:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si4923400pbb.2.2015.10.06.22.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 22:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so9884281pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 22:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=AMV62KOL2pw7/3pf5HSqgtt+3wj7IuSdFgydEzN0tfU=;
        b=e0HbK+yujpjOTCd6q96kyunljsuRG+baXgDD6H7cHKPHjU7Ivpg55F3DE7q04CAKwy
         1YlAfIwdBX4OFHRerkwDSH3scRlyWuiIrSsz/gor7pf0Uibk00+ywj6RtVNOFo5gkW4h
         +hoZkSzRAg+r+Tmk89sjg9BIVwZYejP2OpAHUJXQ12pTOWyhfVV+UwcdY+KoQsvVwpsY
         lklP914NvgWrU2ooXpOIsR4NW0wFgXNqFG5ahAIK/nJsJg29ajYG9uz2jLK0JndWVvn9
         QsY+T14wSnCXy57FOCWbAWetWFbsQT3HVrHDaL5iiZk1ZlbmF/wExceoDaxaRzf0IpNC
         EBzg==
X-Received: by 10.66.221.193 with SMTP id qg1mr52954730pac.103.1444195587059;
        Tue, 06 Oct 2015 22:26:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.197.85])
        by smtp.gmail.com with ESMTPSA id ih4sm20593439pbc.28.2015.10.06.22.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 22:26:26 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:56:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8712: Remove NULL comparison
Message-ID: <5630c1511ef95c539fda0f87be365e1bc300380a.1444194896.git.amitoj1606@gmail.com>
References: <cover.1444194896.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444194896.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove NULL comparison by using '!' operator. Problem found
using checkpatch.pl
CHECK: Comparison to NULL could be written "!ptmpchar"

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 897dc77..957f033 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -178,7 +178,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
 		maxlen += txdscp_sz;
 		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_ATOMIC);
-		if (ptmpchar == NULL)
+		if (!ptmpchar)
 			return ret;
 
 		ptx_desc = (struct tx_desc *)(ptmpchar + FWBUFF_ALIGN_SZ -
-- 
1.9.1


