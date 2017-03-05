X-GM-THRID: 6392835608825298944
X-Received: by 10.200.49.99 with SMTP id h32mr3483009qtb.71.1488690337269;
        Sat, 04 Mar 2017 21:05:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls3816381iof.24.gmail; Sat, 04 Mar
 2017 21:05:36 -0800 (PST)
X-Received: by 10.99.39.6 with SMTP id n6mr3886081pgn.98.1488690336492;
        Sat, 04 Mar 2017 21:05:36 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si794882pfh.2.2017.03.04.21.05.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 21:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so3844328pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 21:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FmfhtZ0lTiGC9i85x2VhHSOTEaAPP4UBcJxco6uPR6A=;
        b=OAEd/397XVVVyQE63QIdzzbHKAI5PR461hblLOzp4mLBY9vFLH8qsVn+ymCkQy277M
         fYkIEXCn0t4wEcouWZSuPohpdCkjqm/WILybE7Y1+Cv6jsMtC2ENE4hQOR+7+DQmMj8n
         Dl67OMsanV2TBdDf4eaySYXB5mgAHq32lw6ZEcFOFRiiGvrhlGmnGNuUxm5WRe1hqT7M
         ayhxrDr1U/gOL60GcPDWLpZPkomQt9VGgmhWWchcUteGf2l9uepBK8z5w0EtijHvyjHy
         F6YR7UiQREHSivkTV0Thwo0vzwH4pKzuZ+DcBQ6jtUGWnCIRFraJgED0QivCzW+oyiEK
         yq3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FmfhtZ0lTiGC9i85x2VhHSOTEaAPP4UBcJxco6uPR6A=;
        b=BX98TTUeWA1o6cJY1ec21DFQh+NMJLFosL6oLo6HFePQ0VX05NgTG6tQWup7P0cqdL
         GLgHsuF3BcVo0vxVj4RJCYyCFlyZAab3Xv4/0zcSI4dGIhj9retutv4LH9nX240UkRRY
         RTpFQylQqwvm+z6vQBhYfqywWjwpDf7+Ukd2fWz44+ft0HnOa0CvCagwlli9hdOLhpKN
         aXJnpB3+vxCvh/3Y/i1adsxjgY5LoqX+oww09hPv2n4X7kThkpyFLm+1+pTCwDARhmma
         IeM4xZaNzqcOAh1fWcF5wMWKPMwaB9JILl7ybyJjbXfdMoSMXfBb+NzQGwawpPTXUR1A
         brmQ==
X-Gm-Message-State: AMke39lGQY9xbxFC7k/KxtaJfP8a0jx4a8+o7G63smSmds68ZAQtPVIDToXPWOnuMQ53zA==
X-Received: by 10.84.231.200 with SMTP id g8mr16598322pln.100.1488690336319;
        Sat, 04 Mar 2017 21:05:36 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n63sm31737567pfk.64.2017.03.04.21.05.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 21:05:34 -0800 (PST)
Date: Sun, 5 Mar 2017 10:35:33 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com, juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/6] staging: fbtft: Fix sparse warnings of incorrect type
 in assignment
Message-ID: <20170305050533.GA10169@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following sparse warnings:

drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v3:
   -Change commit message
   -Drop the changes did in fbtft-bus.c
  
 drivers/staging/fbtft/fbtft-io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index d868405..ffb9a3b 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 			src++;
 		}
 		tmp |= ((*src & 0x0100) ? 1 : 0);
-		*(u64 *)dst = cpu_to_be64(tmp);
+		*(__be64 *)dst = cpu_to_be64(tmp);
 		dst += 8;
 		*dst++ = (u8)(*src++ & 0x00FF);
 		added++;
-- 
2.7.4


