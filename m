X-GM-THRID: 6950201228210995200
X-Received: by 2002:ac8:5e8d:: with SMTP id r13mr25583819qtx.138.1618221707346;
        Mon, 12 Apr 2021 03:01:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls8983589qkm.5.gmail; Mon, 12
 Apr 2021 03:01:46 -0700 (PDT)
X-Received: by 2002:a37:2cc3:: with SMTP id s186mr25616957qkh.270.1618221706656;
        Mon, 12 Apr 2021 03:01:46 -0700 (PDT)
Received: by 2002:a05:620a:4442:b029:2df:fe2e:8653 with SMTP id w2-20020a05620a4442b02902dffe2e8653msqkp;
        Sun, 11 Apr 2021 13:49:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQ46A72bUO6G8iuCOub4t33suVH9+cEOANLE6bq87HXEwUE9r7zRp68BM01Hwxyk3ENKqt
X-Received: by 2002:a17:906:5fce:: with SMTP id k14mr9544359ejv.9.1618174187505;
        Sun, 11 Apr 2021 13:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618174187; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7IhT5nLPvg1VAYrQ4NvLJ26dHc7SwzHzvKuIqb6GfZMpk3zkeraZSA6hfiDxlHlgE
         ZAfEbfVzcQKmZIjNgJzsjCVvTLHU3SMGLnLu6w2ZW6mjkxy4sKQBx04hNbAatXaSPDMX
         tVslYAR0I5GeqAfPqRdEiLcxZuFoSpk+bvumo8IoXDhibe9EBcaYawgilGlQsesz5QPD
         npsSqXgbcbmohusFds+NIbdLXkVRmkXfTB82QqSXKeD/XBnK/Mv3fa2bMQuQaqyg0J0D
         i3uBwxzFOYIAAwaKKrSfRxstxA4Zq+B0I7ASkmuqFO8tWqCssAfK1MtMOuLa03CGS/p4
         zRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=y8zmAuB0V1uZek5By6kezUe2gvROS9UhWxNto8Rl44U=;
        b=OL5vt1LiP0YeHQmnSKltyDJ6z0IkTsiCc0AeSBNtMJrNrH6gukHSrU7Fpq1qoHVrKI
         KggDBppwWc8pTJh/Kct0r/1NaixXNI32HbxZy3GqopqJuOX80JFlhO85KyBq3S8ii4Ax
         7V0/TizgZbW93EgetXpEX46SFydbmH+QgDgJ+3mbC4sYtjG1pIxIefBr9UA3et81LL7r
         icxgABJAyuCmb84pJ6tEYl+BnsTKp3hiZcEx7aPlsboePW4D48TF7YtxovYheAQarbDx
         Bd6KQmNfgDbDdEWxl22SpDuOs+H7ekeIf3zXprGzYvBWWQr1eBPCAp9Z6ONj1VMBc5VO
         l0NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4gznb84;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id b26si796318edy.4.2021.04.11.13.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 13:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M4gznb84;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso5758390wmi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 13:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y8zmAuB0V1uZek5By6kezUe2gvROS9UhWxNto8Rl44U=;
        b=M4gznb84QcKSBB549xNmVxUrXXVflXsDoyhxXQNId/1d7wQU1E2DR0+iSsEhduWIUX
         Bmz04jOkQX/ViVBUtOnIUVFLhoW87y8dismExesc0+Yk8Z955x/t3naySYReAsa4a8eA
         bNfyuSD8kLrbi+9TGce7F8YeZ0knW1Bf6ustTvdUjw//DlrlK2INVFynblezbWTD6Fde
         kk30rty8ShSs3VzwQCKIBP75fQ8oN8F3yLeMGZUgIApzQZgvsWfeJD9NOxxufZGkYLsB
         6pe1w+wsvLzmXLQyRXnfxFPQ33GXmvcYh41UQAIOCfUUvgSipq2Dk9Yge952jUkgKFEZ
         ARuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y8zmAuB0V1uZek5By6kezUe2gvROS9UhWxNto8Rl44U=;
        b=TQAIv4ovd345Ox6quYpHOxWUG1RDt+YJCIQFH1v9C5VW1no/YZyhMhLa9Qmu3TH2WS
         WqLEYYdlbAG+h9LqZ5H+4Glq9bJN9eJronIz4MFe02YUaa3zFVCjqt4L14HC5PmhxouA
         vd9ifTApFJgTSsh/TuzugIf9BQqIcTvwMfqMtrewKVF5n2Yo1JZXtQsnIDgYfZwmQD7i
         nuMgKmGHFoUxCJy8FmYT/Bvtj0Xk/cAu3ZNjGNrgNrLzdzUBOllXyrd1sO4J/E0tqA7l
         cJMsH2ryJ3bK66H/JoQfQDKd2FOqT2sLKOfXzEq7lpodry6kPzawTP2t9GFBCN9jNAMS
         Nabw==
X-Gm-Message-State: AOAM530RDlqT2yrO9NThlM2+hyOrqWoZGfZpUt9t+2yQnRl45cyl5FHm
	41lWRFY7DdTu+z15wNegJiE=
X-Received: by 2002:a1c:3:: with SMTP id 3mr22651982wma.32.1618174187234;
        Sun, 11 Apr 2021 13:49:47 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.206])
        by smtp.gmail.com with ESMTPSA id o18sm6953940wmp.26.2021.04.11.13.49.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 11 Apr 2021 13:49:46 -0700 (PDT)
Date: Sun, 11 Apr 2021 16:49:38 -0400
From: tawahpeggy <tawahpeggy98@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	tawahpeggy <tawahpeggy98@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: Remove line to fix checkpatch error
Message-ID: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

remove one empty line.CHECK: Please don't use multiple blank lines

Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>

---
 drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
 1 file changed, 0 insertion(+), 1 deletion(-)
 create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c

diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c b/drivers/staging/comedi/comedi_pcmcia.mod.c
index 0904b8765afs96..3984db1a39c8
--- /dev/null
+++ b/drivers/staging/comedi/comedi_pcmcia.mod.c
@@ -0,0 +1,31 @@
#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

MODULE_INFO(staging, "Y");

MODULE_INFO(depends, "pcmcia,comedi");

-  
MODULE_INFO(srcversion, "ED971F2E01020DFA2B04486");
-- 
2.17.1
h-Hartman <gregkh@linuxfoundation.org>


