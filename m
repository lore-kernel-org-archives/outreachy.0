X-GM-THRID: 6261397198909472768
X-Received: by 10.66.124.200 with SMTP id mk8mr13250524pab.27.1457845288763;
        Sat, 12 Mar 2016 21:01:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.82 with SMTP id d79ls1750405iod.24.gmail; Sat, 12 Mar
 2016 21:01:28 -0800 (PST)
X-Received: by 10.107.43.147 with SMTP id r141mr13605803ior.15.1457845288505;
        Sat, 12 Mar 2016 21:01:28 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id w69si989413ywa.3.2016.03.12.21.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 21:01:28 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id y89so129943143qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 21:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KRRuEVFIE3u8vrM4+42bmZQCdWat+ff6qWxmx/9Zepc=;
        b=R1RUAggRM2grOFj0Mpj9+wPMPT5jb3crsJnQg+gJgGpom2JC6Z2OjvjZvaaw/0A3bE
         UGW6mkLhSqUlnjTpVWQ/3dZEkdfcAEGb/fpIvUoDaR4wIDIC857dVGsMnVq2bvBCDLvF
         dWeJPMS6pCWuYH1bQb3xWEQGPlN/0LY969dHRtSJZ0+ya91n0WhJKH2zTqDeLeEMALoH
         DXH/lg98+DIJHribUNkurpHtJbbAqQb8EGPBM58f8iBA0iexE7Eq83InnMu8OvqeEXIO
         GhiXqP4qLixpohrMmARLsqsmqxNVrs2mOAacvqt4p56aj4ZdMZEAJkPQR62YKcImidry
         Rqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KRRuEVFIE3u8vrM4+42bmZQCdWat+ff6qWxmx/9Zepc=;
        b=GlfW/yeHK5s9dZalenH23IZ/jbNAjCKSmdvHFJ/zpXnLetEgTYZxUeMSH8M8Rk4j/1
         YzWOOFoXGbwldanQKTzMUjX+r5ypI9K03pVf9FNNoI8ueFWak6he0n8Gl1Oo3JGM2IwD
         mh9D7GtOeIBgEb09JXjNZsVy0U18qNFL5UCsmOd9edzsUALo3Ou6hSP6MXAEIr8VYT8r
         0oDiIpKd747omx4twH53TqFCOIUkMwu27Z8hDksnfHhjbmEQhygBxwp0xBo05Di/rDIY
         CAbOlChsuJAZgFR2uvCkTfP6CDy1yY1EZKswod4tR3rJVDzsG4+F31IPtToEOzSJISbn
         VCeA==
X-Gm-Message-State: AD7BkJJ0mqQ7XZsZ/Zgf4TGRoarP/xrMyy4+11QRWsy0etBuZBlMraIJvSDo6vqoHpoAXw==
X-Received: by 10.140.107.182 with SMTP id h51mr21797258qgf.53.1457845288190;
        Sat, 12 Mar 2016 21:01:28 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id w188sm7458467qhb.37.2016.03.12.21.01.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 21:01:27 -0800 (PST)
Date: Sun, 13 Mar 2016 02:01:23 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: dgnc: renamed variable to avoid camelcase
Message-ID: <8966784d84ed11b876b8304b06ddde77d5032da4.1457844581.git.juliana.orod@gmail.com>
References: <cover.1457844581.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457844581.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a CamelCase issue on checkpatch.pl
by renaming dgnc_Major_TransparentPrint_Registered
to dgnc_major_transparent_print_registered on
dgnc_driver.h.

CHECK: Avoid CamelCase: <dgnc_Major_TransparentPrint_Registered>
+       bool            dgnc_Major_TransparentPrint_Registered;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 98ff648..6d91abd 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -211,7 +211,7 @@ struct dgnc_board {
 	char		PrintName[200];
 
 	bool		dgnc_major_serial_registered;
-	bool		dgnc_Major_TransparentPrint_Registered;
+	bool		dgnc_major_transparent_print_registered;
 
 	uint		dgnc_Serial_Major;
 	uint		dgnc_TransparentPrint_Major;
-- 
2.7.2


