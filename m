X-GM-THRID: 8039524466688
X-Received: by 10.70.63.37 with SMTP id d5mr34105350pds.3.1426233552726;
        Fri, 13 Mar 2015 00:59:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.33 with SMTP id c33ls1038040iod.44.gmail; Fri, 13 Mar
 2015 00:59:12 -0700 (PDT)
X-Received: by 10.42.251.69 with SMTP id mr5mr352926icb.8.1426233552543;
        Fri, 13 Mar 2015 00:59:12 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ri9si240945pdb.1.2015.03.13.00.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 00:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fa1so27526838pad.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 00:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=1bjCPP3f93YFuO/adMiNkKxl1YH2Oz35AvZwxlqdIuQ=;
        b=XSEYy1xcVDvVtZ3AA/rQGz1Z/rylLL6qbvaDHxnRaCKPTx+ZZcC29G7uB12pEJK1EB
         NK9+aQY629pyjxOhJerI6FWq4goUYs/vDhe2EV9ytt9wG9Clcw6foiMZhSkrHqQ3Y4tR
         EdgS1pw1fPaeCrag85mdxF9S92j26498zs4sfCPgAAMJAb6PkAL4aGbHLYtMMauBuaAz
         GHg3pFs/R+ry5iThqEh7C+fMbuHpgAv4H0gdYukpbx+F6lBPIe/1NzvHHqW3RW2JD7gD
         KUw+cw++OMoixN89Hyq4Zmz05KA/WjwkwOnoeFkiISbqu9B7mpWERgA+lzT2eEdKdWIJ
         oy6w==
X-Received: by 10.66.63.72 with SMTP id e8mr97395832pas.3.1426233552398;
        Fri, 13 Mar 2015 00:59:12 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id z4sm2017947pdi.90.2015.03.13.00.59.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 00:59:11 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rtl8188eu: remove break after return
Date: Fri, 13 Mar 2015 16:58:40 +0900
Message-Id: <d157b2264493e152e84862c77446bb0c57adeca5.1426233142.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>

Remove "break" statement after a "return" statement as
it does not get executed.

Found by checkpatch.pl - break is not useful after a goto
or return

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
index be0663e..73e1f8b 100644
--- a/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
+++ b/drivers/staging/rtl8188eu/hal/pwrseqcmd.c
@@ -109,7 +109,6 @@ u8 rtl88eu_pwrseqcmdparsing(struct adapter *padapter, u8 cut_vers, u8 fab_vers,
 				RT_TRACE(_module_hal_init_c_, _drv_info_,
 					 ("rtl88eu_pwrseqcmdparsing: PWR_CMD_END\n"));
 				return true;
-				break;
 			default:
 				RT_TRACE(_module_hal_init_c_, _drv_err_,
 					 ("rtl88eu_pwrseqcmdparsing: Unknown CMD!!\n"));
-- 
2.1.0


