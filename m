X-GM-THRID: 6330466800696819712
X-Received: by 10.107.25.147 with SMTP id 141mr5794810ioz.17.1473926858327;
        Thu, 15 Sep 2016 01:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls260079ita.17.gmail; Thu, 15 Sep
 2016 01:07:37 -0700 (PDT)
X-Received: by 10.98.25.66 with SMTP id 63mr5460244pfz.2.1473926857889;
        Thu, 15 Sep 2016 01:07:37 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si796849pab.1.2016.09.15.01.07.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:07:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so1916590pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IZC41qRurDCEq+7OTLDotgsBz4GF4OfGAGW4S9rwSbI=;
        b=TVwhDmt35+LpYnuobzKcfuz9qgGgpCRo6GkbzU1Jj3ci/5uJq0waHdfpWcmOI+3E+9
         P8Eu+75hvL4tHVjhw7HRecoh8M6Lc0qAkVfdq5iP2++zTL69K4jDkOzXamRZTFapIiw8
         PKTF23aAzIFieus1Gi5gxPl1WssGE65caCZxuUzX8+U79H1Yrv7pV7FWn/O6/iy19Yeo
         HNeqilaYPj1MZb1L0EWQNYDeO4j1ga4oZFM3NPq3d+UlRFFFIRk+Qef1YQqrLAaQYXeb
         dSKPAZH3tqChMasHyU7JPxJjxg1BNwooRbOjWUGIWdGLLaGEZOC0xWjJ3ZmPG2A01/4u
         9vdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IZC41qRurDCEq+7OTLDotgsBz4GF4OfGAGW4S9rwSbI=;
        b=eLUiXzIEyBAqOL3Kd1xx4diGPseRgYkX0TAM7zX3HFgI75hT00OtZrk0wbThbAYL8C
         dKy7TpnXFSvcxWuwtQuxpIFFmkkpmaaMgafgkpX+mMVzsU3tlF2E6p5jOI70p7wAH3E/
         zcT828hUBHZcM2YUi1sc1HDTHzANfbbA+5Gj5zZgJeeyIzR7r6WWDh0StYoeCrEHbRar
         cAfBmcfhFhZiUjiHlBEOfit6OP682S1eoc0cJmj8A25AEdG/36HNBKe2S+A9TQaktzok
         7mauXmqGcA6DqzPLXW4qDNltcjmH+/p4qGK5zIVQUNAMeJDRQw5MhWCwwadvqVS+6fHY
         dFOg==
X-Gm-Message-State: AE9vXwO+vfLs76pHMZLTlEVnRPSGATltxy1c8IgMYBSe79clR+XXmmSOVorlIVi1B3YVdg==
X-Received: by 10.98.8.197 with SMTP id 66mr12456953pfi.76.1473926857725;
        Thu, 15 Sep 2016 01:07:37 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e72sm43020054pfb.49.2016.09.15.01.07.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:07:37 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:37:28 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/6] staging: lustre: Remove unnecessary 'return'
Message-ID: <bfedf0128abd4c08512b015481be1d5fd1d0d01e.1473923837.git.aquannie@gmail.com>
References: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473923837.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning:
WARNING: void function return statements are not generally useful.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/llite/rw.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index bb85d16..23747fa 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -667,7 +667,6 @@ static void ras_update_stride_detector(struct ll_readahead_state *ras,
 	ras->ras_stride_length = stride_gap + ras->ras_consecutive_pages;
 
 	RAS_CDEBUG(ras);
-	return;
 }
 
 /* Stride Read-ahead window will be increased inc_len according to
@@ -883,7 +882,6 @@ out_unlock:
 	RAS_CDEBUG(ras);
 	ras->ras_request_index++;
 	spin_unlock(&ras->ras_lock);
-	return;
 }
 
 int ll_writepage(struct page *vmpage, struct writeback_control *wbc)
-- 
2.7.4


