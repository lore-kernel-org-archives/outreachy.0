X-GM-THRID: 6464947819093426176
X-Received: by 10.101.93.79 with SMTP id e15mr9642970pgt.30.1505238920936;
        Tue, 12 Sep 2017 10:55:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.73 with SMTP id h70ls1551173iod.49.gmail; Tue, 12 Sep
 2017 10:55:20 -0700 (PDT)
X-Received: by 10.176.24.100 with SMTP id j36mr10461282uag.6.1505238920306;
        Tue, 12 Sep 2017 10:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505238920; cv=none;
        d=google.com; s=arc-20160816;
        b=mTeKOeYOeoMgRUnqi6xNQTGlATUhtbwoRJlAv0n8X1WIXZak54SDOattJT+MmJGuLt
         frvCxCsu1Oa39cJFALf+SJpW7aX5KJGyNr7M3SkLELfU4ksNjoG7NQaT9+HLprlrBJDA
         c5P0QZJtZhmein71SdcNtys+g6EArsT7fT2pKuwgw/LS9NGEMBTiDswIfMUYtuOcyO+d
         3WceattirszZugNRKfZipc8akB4sj9OPkS81UkINJvHGHWuA12GX6KaWBzNGEN5RNzFf
         L+IDmem7uiYHeQj5/mUQG/3Sj2Aefhnrj7I+gHUHk5YVA4UhBSL/S4dWnyWGFHHPXr6m
         mmfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=KmGU5US6qOIba/KETEJE8GD1+QOKyhGSgDuTTHiSn1E=;
        b=zuV4HKb+cpvya9qENC61TVVWFwNVWzvsSxMJVIxNWhVIGFQ9KqhqGmWy7y4rAFlrGa
         h7hnbEnAC9qq9ULwmHw0kr3QDT22e0cf0Ctw5q/sqPaOS/Z9aIIZad0ZfI1SCzoCarn4
         u0kIl7CXWYCNLXi2T+xWjDeBi42lTgrE8stf8vOrt7wdgruKPZ/oT4OIrdf+Abt4koUa
         XUiFghIurf1K0kpSFTgwiEy8F0qATYYfr0lMW3DUfF8QuxYD5+DUi5uJrK6qijXVWbq5
         ZL2ZsLU9lqD/tY8+yubTAognLhD6VXIj6PRfRTU11KwuqdW+e2x1kXhiMYTo82OJh6LB
         SRrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eO47oZgs;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c200si344460pfb.14.2017.09.12.10.55.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eO47oZgs;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so6286069pfe.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 10:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KmGU5US6qOIba/KETEJE8GD1+QOKyhGSgDuTTHiSn1E=;
        b=eO47oZgsptzWLzo+AFkoQ4P/ZsS5KFlvYpNBcS3CpY08/v87+9PWrhl8ucAaYKYbae
         t0qUGmbSn0yag0B4ghebLB3xRG2H14+TZzKNl1oGVn1Tgd56pydQEmlTJ1rx5ypfsFpE
         o5kvRRH2TSwjnodpkc1GYHbHtWRTD4PJ2nYaHLfrs5otEouNjZp/uW27yxIU3VbK4ZMX
         m2Z4sDkowZ1IZkX94wPaA++JceKdljpLXPNjnQ9cbrQqPa/BTHXWi94tLy9EkJS8jhIk
         le3wwgQf+vB3BkGWBHWv08v/ncMkgpJoaqEj5dL8lpjQNrfC5KASUfuduMp4AsN7PLyZ
         cKag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KmGU5US6qOIba/KETEJE8GD1+QOKyhGSgDuTTHiSn1E=;
        b=J/H7s3PoneF2P9DokHttgLn9loFufpvUf3drU1CGxXZZcJjNgPG1gkMaQhdHVbFm+J
         zyTYu5BkJvQhDTmD8hxJepbT5I+di4uw1Du10FezoxkShah7L4flIXUspX6i/2yXho1u
         tIEidoAztFtM6QnTPK7c5bNjCzKSoK2nPfvs27sEFS4tJrSo6fFtkxiSTARJ0mxxZH+/
         KeC36Sx5e4AR/EDQTjBOX2j6MrWIZV8mMHbLr0t/To9OohOZgOWgkoh5yHRO1BP4N1NN
         eKM3c6iLyVXoRCSSPRkm0Wl9Lh1s3Iny/SwBwiaVDGhC5vlzUddjdssfPmAbcyW8ehro
         gbXg==
X-Gm-Message-State: AHPjjUikmzdJLMFuYm8JGKN2Z1U1WMdS1AOBANaC2PavAGXQr+6rpnqw
	LyIabx98HzhM5CktiDs=
X-Google-Smtp-Source: ADKCNb576drOkI3ooKzlliI0aDWB7UpCEnF4koXIU9RtdE0NWIxDqvF6nDVs7jHn/YuG1eW6GaWn1w==
X-Received: by 10.101.69.74 with SMTP id x10mr15237727pgr.294.1505238920061;
        Tue, 12 Sep 2017 10:55:20 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id u184sm21730316pfb.126.2017.09.12.10.55.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:55:19 -0700 (PDT)
Date: Tue, 12 Sep 2017 23:25:14 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: vc04_services: Remove 80 columns error
Message-ID: <6e9dad833457dde01cfa9597920c2e6940a328cd.1505234866.git.meghana.madhyastha@gmail.com>
References: <cover.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505234866.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Split the line into multiple lines to enhance readability
and to adhere to standard codingn style.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 23eb7a9..6fea154 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,8 +159,9 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api_t * function_table,
-                                                   const VCHI_MESSAGE_DRIVER_T * low_level);
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
+	const struct opaque_vchi_connection_api_t * function_table,
+	const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
 // Routine used to initialise the vchi on both local + remote connections
-- 
2.7.4


