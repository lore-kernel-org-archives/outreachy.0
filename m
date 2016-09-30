X-GM-THRID: 6336120731935440896
X-Received: by 10.66.156.228 with SMTP id wh4mr2069480pab.65.1475243114783;
        Fri, 30 Sep 2016 06:45:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls592270ith.10.canary; Fri, 30 Sep
 2016 06:45:13 -0700 (PDT)
X-Received: by 10.98.130.11 with SMTP id w11mr1903292pfd.5.1475243113321;
        Fri, 30 Sep 2016 06:45:13 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si4746298pab.2.2016.09.30.06.45.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:45:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so5050174pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 06:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wnv+2HoVh2/o9TR00OiHyooUpbhukhi5Qnb9DZ932Ig=;
        b=DV2hU11FtA/EhEmMxUAka9ZZlP6k1RWsf76e+i5euvMDgfhS1CbYtuGjasKjThfBAb
         LxvLeU7T+aeUR8mO/73Dz59QkWjWHDsI/WZcwjb7cnYkQQSeqtFENjrBziYvo1Y48NDr
         gtVtg3QErpKcpR1rSWazzipwS4Q1XPvSHqE17v/2LjnOA3FLs6kBfI9oGEAnLE34hWq9
         6affIR54cfa+n6rleXdQgiZBVlYwIOq3Jw8izBPSNh6O5gWPckRP3wGGWhkZqWKgy6Tz
         iHsvBxJPh5F9hzCytVR/rQlI19NYnRtcXYVXo6y8tTN4IDQ1f/xBCJ24jyMPlN8IphNG
         ByzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wnv+2HoVh2/o9TR00OiHyooUpbhukhi5Qnb9DZ932Ig=;
        b=TK959rhpP8ayLVDRrMoByMsijHdIlFoFbHbo7fipgSLxbHhItKQZuKDvz3fMrAhaZw
         ijw93WhV3kH+0ZzjBNnzc1IgeRsxM34koNSOBGnZOzuPX+Za1P7pY69BCAqjmaR2RBCu
         Jeb3NIn65CwLrOJnoxXH+qCy5RjyQM3jmyOneRMZvpQ+oUDjvjWfXEmL6OEU5QIN8KuD
         BzvGvxFjtbA+za/Pp2I2YmXpFWW1j8U01UWtQAChIveymLivW1+oo1nAVkr6ox0zg10C
         7z9zwaXsnC+ybtxUe09mH7U/bJSKJo0lfxwXkx2/PvpSBZvqjluH/kWe1LdTHrGK2TTG
         VQGg==
X-Gm-Message-State: AA6/9Rn730dwPkTI0LQ/XhdYeyvH68rmpCT21q9+Gu4gPXnzTT3f2Nb/rHF9VX0lZuyaJQ==
X-Received: by 10.98.5.133 with SMTP id 127mr11888777pff.40.1475243113169;
        Fri, 30 Sep 2016 06:45:13 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id cu2sm28277430pad.18.2016.09.30.06.45.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:45:12 -0700 (PDT)
Date: Fri, 30 Sep 2016 19:15:05 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] staging: wilc1000: wilc_spi: Remove unnecessary blank
 lines
Message-ID: <ee57c414d0e793fad3c2272c94a2e64541d3a33c.1475241561.git.namrataashettar@gmail.com>
References: <cover.1475241561.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475241561.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary blank lines to resolve checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index d865fb1..f08cf6d 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -544,7 +544,6 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 					}
 				}
 
-
 				ix += nbytes;
 				sz -= nbytes;
 			}
@@ -580,7 +579,6 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 				if (result == N_FAIL)
 					break;
 
-
 				/**
 				 * Read bytes
 				 **/
@@ -680,7 +678,6 @@ static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
 		sz -= nbytes;
 	} while (sz);
 
-
 	return result;
 }
 
@@ -843,7 +840,6 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 	static int isinit;
 
 	if (isinit) {
-
 		if (!wilc_spi_read_reg(wilc, 0x1000, &chipid)) {
 			dev_err(&spi->dev, "Fail cmd read chip id...\n");
 			return 0;
@@ -883,7 +879,6 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 		g_spi.crc_off = 1;
 	}
 
-
 	/**
 	 *      make sure can read back chip id correctly
 	 **/
@@ -924,14 +919,10 @@ static int wilc_spi_read_size(struct wilc *wilc, u32 *size)
 		*size = tmp;
 	}
 
-
-
 _fail_:
 	return ret;
 }
 
-
-
 static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
@@ -986,7 +977,6 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		}
 
 		*int_status = tmp;
-
 	}
 
 _fail_:
-- 
2.7.4


