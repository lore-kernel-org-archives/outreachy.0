X-GM-THRID: 6249738568007155712
X-Received: by 10.182.148.71 with SMTP id tq7mr38012180obb.21.1455130653945;
        Wed, 10 Feb 2016 10:57:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.225 with SMTP id x1ls289828obf.81.gmail; Wed, 10 Feb
 2016 10:57:33 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr38185966obh.23.1455130653469;
        Wed, 10 Feb 2016 10:57:33 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ff2si494406pad.2.2016.02.10.10.57.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 10:57:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so16269396pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 10:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bVBeX+I5spusvNYED3xRlsonoRft4SgPPMpy1xZIwOc=;
        b=QsU+PuP2okmonhh7OmtIrsPI4wiYNsqQUljiUQihwdSOLoDzIRpalOSSmYEtW15DG4
         I+oKKz0tRFZiP/YxhyNOGlrqIzSLudUOl2RLI680DO/3tjLgXSiApuVgzbsYvZj55J3t
         4EFGmh5hZVQ+ij/ws1bbS6a0InP2uZtlNVYxMehiM+E5vwIqLMSJMnEzX+Kd2cCAmkxd
         9Tq6o55HUC+ROzCJhEkQKqAIJFwhv6DiQfs3bE54hpgEsI2A1iSxyAC851eDlBzwORnT
         jVRE30IK5jciWyPk/m/1C6folLlZHjWIlNmYDquLGITGH4OPaZbig0Q6x/sYa4OPcKfb
         1emA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bVBeX+I5spusvNYED3xRlsonoRft4SgPPMpy1xZIwOc=;
        b=QKtjWf2ttNucgJ8uE+cmgE68LL3TSnp/DAPsnKVr3U9tuaaBQtpgRzOk929Cj54x56
         oCz0UCFos3IfdrRbfrLY18srmDpxlKysfbIphDjymQo4GX+lIEvmzVOZXwLkMzjgnS0N
         1C2D4FePOt6rj6AsI48Dm661nxRcnEEzL51C1a6H+No41GEas7qHx5TiSkEiqW2KKS7f
         ELfWBO+F3/+99xe5Bnv6Q3HvaWSM5gTJgcDKwNS8fweUG4XrO8OHfi1A4Sav1dNJKK4i
         OLqdWYmr26CJODT3V/vA+Yrhg43zcxckv7ihWCOjUAtSx6LQDIseOqqCw2SrHB+0PJ39
         J1YQ==
X-Gm-Message-State: AG10YORmdTF3BsrhNujDmwzv6028ooHvt+SYo2Z0fvYdN9Dof2095HQ79YhUElAHXMUTUA==
X-Received: by 10.98.15.135 with SMTP id 7mr45116990pfp.142.1455130653306;
        Wed, 10 Feb 2016 10:57:33 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id o73sm6889987pfa.37.2016.02.10.10.57.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 10:57:32 -0800 (PST)
Date: Wed, 10 Feb 2016 10:57:31 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: compress return logic into one line
Message-ID: <20160210185723.GA15085@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simplify function return by merging assignment and return into
one command line. Remove (now) unused local variable.

Found using Coccinelle:
@@
expression e, ret;
@@

-ret =
+return
	e;
-return ret;

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/speakup/i18n.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 12f880e..8960079 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -393,10 +393,7 @@ static const  int num_groups = ARRAY_SIZE(all_groups);
 
 char *spk_msg_get(enum msg_index_t index)
 {
-	char *ch;
-
-	ch = speakup_msgs[index];
-	return ch;
+	return speakup_msgs[index];
 }
 
 /*
-- 
2.1.4


