X-GM-THRID: 6806470410125705216
X-Received: by 2002:a2e:99ca:: with SMTP id l10mr6909163ljj.13.1584754886878;
        Fri, 20 Mar 2020 18:41:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:804c:: with SMTP id p12ls1758630ljg.5.gmail; Fri, 20 Mar
 2020 18:41:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvNrQ9xpqWUIgRFcTwnhzrD66fuxfbrLsqrajAFYBDx8gf3w+LQyzE3RQZvdixBSeJGbacn
X-Received: by 2002:a2e:7811:: with SMTP id t17mr7096035ljc.150.1584754885706;
        Fri, 20 Mar 2020 18:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584754885; cv=none;
        d=google.com; s=arc-20160816;
        b=HKmYJjz++wI8Ri1hhPoiaUWFxjJcxwP3onDR9XX7WmaCFuqMXwW6jhpulL3E3O1S7K
         tPK0oAnw27lDn0NYtPUGlfZEaa9Z9v1rux2Llgq66bHXrotoLMawocGKBbeNMubLjuwi
         xa77VzvHE91wdOe0b99PkIPZIpqQ7z6vqKAmYkByy5GjZs9SJqks+32cUh5q7CQ9Gbmw
         8ccrAFh1F4+HH9G6PUugP9oEAbfmATdWzNn2BCS3QkUgGzxsq81oYlKyUFC9hP16IcNh
         l+xAypkILvBf9Sh7W1RDotdOY6mYEYF3ouyZWJ9Cp9vvsXrnKCKYtcrVy7DusJTkX0Lv
         J7Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oDpxSgABHWVumkCekREryZAZ8tXoM8qAoCmMqtDYoI8=;
        b=0Mb2+I9PSpFd9hRK4JBEXSnq9xco5P2iGaBxrF76GO47vhtXFq55qSnJMqgGwCVLla
         TwHKaThbQTTTpPgCAeLl1aP49zoOhiJsR8ZUdX6omxYGbO0Yp/BxtnsPMFKK0a+8zGY+
         h/KO7CODXG+Dn1bWoArx9RxiI1Eo8zdd9aQkjXZ6Kgk+4/ktYW6TIkq9L8YGystIK2Xn
         qLZck7SnMtW23nHSYADHjsdQ2Kb/91Qpf2Ms/xp4qyMrLmxQyfSTAxPOM1+K5CCttBDT
         Lgy6WqvqoPyTv7KqhqqOKx7ik/4+cttohWfdvQYw6uPLsHMzZiwjAGoR2VzmrNecchtF
         mdPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dJ30/BpE";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id w6si364082lfa.1.2020.03.20.18.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 18:41:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dJ30/BpE";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id a2so8497253ljk.6
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 18:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oDpxSgABHWVumkCekREryZAZ8tXoM8qAoCmMqtDYoI8=;
        b=dJ30/BpEzSY1L0EritZlY2RGGHEsfMfoKfMKvH4AWnCmkg0h3vsMtU/3ldruwjvoYS
         DQpivYYyLRhilbFJg8Q5KTygkiyNI1k1LQJvC7iIvOsmKkmMZ+iXUpVhqFAwu/GIjZsI
         mFZwUlNursAv+Ie2s9jh/RFBjGOfcuk912otlWODOaCSo24hPpAvuSgl2xwJ7QQ+xry1
         /PYDhKgzQzNaZKmy7DlPZwSKa7dyQzyPDBBvNrTBzKTbTbv6XwBWMeMuCeWeh1wsGfmO
         +bpRM3KZkkCwStmqcf6UZuwxd4MeCbaijTmddTpso0G+8Ff0iGxKadUOSOBMkuN0MSwA
         7HIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oDpxSgABHWVumkCekREryZAZ8tXoM8qAoCmMqtDYoI8=;
        b=X67oL8m8e3Jdm55te53xh4sdWix/9cXfMdmiXP7flW1FuE3dsBxbaEduxewIQYryyR
         TCqSbaGxUrOZZkRxR0FpmMn+t95IJiSX0Z3bU4IiVoP1cFLfx/RicRxZrMzoISxncfWj
         lCSeLniGa6MbxnRI/gCZe4x44/VS530Y+bo3+M0p11q1bbbVS1rFsfOM+fIh6SrK7u12
         WJrai6/MtLga0/oo4KtsTszBtCF6wcCnCELvAvgogYtU8BFlXpVsimS4Tg+6QpaQt+i7
         IUXd0d4/eerJg+ybgZd47nhCGN35XdgfCSgXK0tRC/eYEC0od+ZH+neLEn3c//INj3Oa
         SgZQ==
X-Gm-Message-State: ANhLgQ0LdFDE28XtaxB6plEOhSgUEEZnZgtvXIooc+6n57SOVZvrZBin
	lNsyEr0gRUEJM26WwlVyEYI=
X-Received: by 2002:a2e:9804:: with SMTP id a4mr7240003ljj.180.1584754885487;
        Fri, 20 Mar 2020 18:41:25 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id w3sm5101675lfe.9.2020.03.20.18.41.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 18:41:25 -0700 (PDT)
Date: Sat, 21 Mar 2020 04:41:23 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] stagin: hp100: space prohibited between function name and
 open parenthesis '('
Message-ID: <20200321014123.GA17832@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete space between funtion name and open parenthesis

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dc..551cd52 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -3020,7 +3020,7 @@ static int __init hp100_module_init(void)
 static void __exit hp100_module_exit(void)
 {
 	hp100_isa_cleanup();
-	eisa_driver_unregister (&hp100_eisa_driver);
+	eisa_driver_unregister(&hp100_eisa_driver);
 	pci_unregister_driver (&hp100_pci_driver);
 }
 
-- 
2.7.4


